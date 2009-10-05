#! /usr/bin/env python

"""
Dumps OLAC database into an XML file of ListRecords format.
Also creates static XML pages for individual OLAC records.

Takes 3 arguments:

    1. MySQL options file (for connection to the OLAC database)
    
    2. file name of the ListRecords dump file
    
    3. directory to store the static pages (any xml files (files with
    .xml extension) and empty directories are removed before the main
    routine begins)

It takes about 5-7 minutes to complete the task on a P4 2GHz machine
with the OLAC database connected with gigabit ethernet. It will get slower
if an NFS filesystem is used to store the static pages.

To alleviate the burden of the MySQL server, the OLAC MySQL database is
copied into a sqlite database and after that only the sqlite database is
used to produce XML files. To copy MySQL database, mysqldump is used,
and this turned out to be very quick, therefore making the server less busy.

This program replaces both old olacaxmldump.py and gensrec.py.  The old
olacaxmldump.py queried OLACA to get ListRecords response and used
gensrec.py to generate static pages.
"""

import os
import time
import gzip
import codecs
import sqlite3.dbapi2 as sqlite
from xml.dom.minidom import getDOMImplementation
from subprocess import Popen, PIPE
try:
    import olac
except ImportError:
    olac = None



db = "/tmp/olacaxmldump-%s" % os.getpid() # sqlite database
doc = None      # dom document; initialized by init()
schema = None   # OLAC database schema for SQLite
conn = None     # db connection
csr = None      # cursor 1
csr2 = None     # cursor 2
extdb = None    # extension db
dctagmap = None # dc tag map
myopts = {}     # mysql connection info
lrfile = None   # path for ListRecords.gz
spdir = None    # dir for static pages



lrheader = """<?xml version="1.0" encoding="UTF-8" ?>
<OAI-PMH
        xmlns="http://www.openarchives.org/OAI/2.0/"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd"
>
<responseDate>%s</responseDate>
<request verb="ListRecords" metadataPrefix="olac">
        http://www.language-archives.org/cgi-bin/olac3.pl
</request>
<ListRecords>
""" % time.strftime("%Y-%m-%dT%H:%M:%S", time.gmtime())



lrfooter = """
</ListRecords>
</OAI-PMH>
"""



recheader = """<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/xsl" href="/static-records/staticrecord.xsl" ?>
"""


def process_cmdline_options():
    import sys
    try:
        from optionparser import OptionParser
    except ImportError:
        print >>sys.stderr, """
Can't find the 'optionparser' module, which can be obtained from here:
http://olac.svn.sourceforge.net/viewvc/*checkout*/web/lib/python/optionparser.py
"""
        sys.exit(1)

    usageString = """\
Usage: %(prog)s [options] dumpfile static_pages_dir

    options:

      -h         print this message and quit
      -c mycnf   MySQL option file, e.g. ~/.my.cnf
                 If not given, system configuration is consulted.
      -H host    host name of the MySQL server
      -d db      name of the OLAC database
      -s schema  sqlite schema for OLAC database
""" % {"prog":os.path.basename(sys.argv[0])}
    
    def usage(msg=None):
        print >>sys.stderr, usageString
        if msg:
            print >>sys.stderr, "ERROR:", msg
            print >>sys.stderr
        sys.exit(1)
        
    op = OptionParser(
        "*-h",
        "*-c:",
        "*-H:",
        "*-d:",
        "*-s:",
        )

    try:
        op.parse(sys.argv[1:])
    except OptionParser.ParseError, e:
        usage(e.message)

    if op.get('-h'): usage()
    if len(op.args) != 2: usage("invalid number of arguments")

    global myopts, lrfile, spdir, schema

    if op.get('-c'):
        myopts['read_default_file'] = op.getOne('-c')
    elif olac:
        myopts['host'] = olac.olacvar('mysql/host')
        myopts['db'] = olac.olacvar('mysql/olacdb')
        myopts['user'] = olac.olacvar('mysql/user')
        myopts['passwd'] = olac.olacvar('mysql/passwd')
    if op.get('-H'):
        myopts['host'] = opt.getOne('-H')
    if op.get('-d'):
        myopts['db'] = opt.getOne('-d')
    if op.get('-s'):
        schema = op.getOne('-s')
    elif olac:
        schema = olac.olacvar('sqlite_schema')
    if schema is None or not os.path.exists(schema):
        usage("can't find sliqte OLAC schema")
        
    lrfile, spdir = op.args
    lrdir = os.path.dirname(lrfile)
    if not os.path.exists(lrdir):
        parser.error("directory %s doesn't exist" % `lrdir`)
    if not os.path.exists(spdir):
        parser.error("directory %s doesn't exist" % `spdir`)
    if os.path.exists(lrfile):
        if not os.path.isfile(lrfile):
            parser.error("%s is not a file" % `lrfile`)
        elif not os.access(lrfile, os.W_OK):
            parser.error("file %s is not writable" % `lrfile`)
    elif not os.access(lrdir, os.W_OK):
        parser.error("directory %s is not writable" % `lrdir`)
    if not os.path.isdir(spdir):
        parser.error("%s is not a directory" % `spdir`)
    elif not os.access(spdir, os.W_OK):
        parser.error("directory %s is not writable" % `lrdir`)
    
def get_extension_db():
    sql = """
    select Extension_ID, NS, Type, NSPrefix, NSSchema from EXTENSION
    """

    extdb = {}
    csr.execute(sql)
    for row in csr.fetchall():
        extdb[row[0]] = row[1:]

    return extdb

def get_dctag_map():
    sql = """
    select e1.TagName, e2.TagName
    from   ELEMENT_DEFN e1, ELEMENT_DEFN e2
    where  e1.DcElement = e2.Tag_ID
    """

    dctagmap = {}
    csr.execute(sql)
    for k,v in csr.fetchall():
        dctagmap[k] = v

    return dctagmap


def create_db():
    cmd = ["mysqldump", "--no-create-info", "--compact",
           "--extended-insert=FALSE", "--quote-name=FALSE",
           "--complete-insert"]
    if 'read_default_file' in myopts:
        cmd.append('--defaults-file="%s"' % myopts['read_defaults_file'])
    if 'host' in myopts:
        cmd.append('-h')
        cmd.append(myopts['host'])
    if 'user' in myopts:
        cmd.append('-u')
        cmd.append(myopts['user'])
    if 'passwd' in myopts:
        cmd.append('-p%s' % myopts['passwd'])
    if 'db' in myopts:
        cmd.append(myopts['db'])
    cmd += ['ARCHIVED_ITEM', 'ELEMENT_DEFN', 'METADATA_ELEM',
            'SCHEMA_VERSION', 'CODE_DEFN', 'EXTENSION', 'OLAC_ARCHIVE']

    mysql = Popen(cmd, stdout=PIPE)
    sqlite = Popen(['sqlite3', db], stdin=PIPE)
    sqlite.stdin.write(".read %s\n" % schema)
    sqlite.stdin.write("BEGIN TRANSACTION;\n")
    for l in mysql.stdout:
        l = l.replace(r"\'","''").replace(r'\"','"').replace(r"\n","\n").replace(r"\r","\r")
        sqlite.stdin.write(l)
    sqlite.stdin.write("COMMIT TRANSACTION;\n")
    

def init():
    global doc, conn, csr, csr2, extdb, dctagmap

    # get mysql options file, ListRecords dir, static pages dir
    process_cmdline_options()

    # cleanup the static pages dir
    for root, dirs, files in os.walk(spdir,False):
        for f in files:
            if f.endswith('.xml'):
                os.unlink(os.path.join(root,f))
        for d in dirs:
            dr = os.path.join(root,d)
            if len(os.listdir(dr)) == 0:
                os.rmdir(dr)
    
    # get dom doc
    impl = getDOMImplementation()
    doc = impl.createDocument(None,None,None)

    # initialize database
    create_db()
    conn = sqlite.connect(db)
    csr = conn.cursor()
    csr2 = conn.cursor()

    try:
        csr.execute('drop table t')
    except sqlite.OperationalError:
        pass
    
    init_sqls = [
        'create table t (tag,lang,content,extid,code,extlabel,codelabel,itemid)',
        'create index t_idx on t (itemid)',
        """
        insert into t
        select TagName,  Lang,     Content, me.Extension_ID, cd.Code,
        ex.Label, cd.Label, Item_ID
        from METADATA_ELEM me
        left join EXTENSION ex on me.Extension_ID=ex.Extension_ID
        left join CODE_DEFN cd on me.Extension_ID=cd.Extension_ID and me.Code=cd.Code
        """,
##         """insert into t
##         select TagName,  Lang,     Content, me.Extension_ID, cd.Code,
##         ex.Label, cd.Label, Item_ID
##         from   METADATA_ELEM me, EXTENSION ex, CODE_DEFN cd
##         where  me.Extension_ID=ex.Extension_ID
##         and    me.Extension_ID=cd.Extension_ID
##         and    cd.Code=''
##         """,
##         """insert into t
##         select TagName,  Lang,     Content, me.Extension_ID, cd.Code,
##         ex.Label, cd.Label, Item_ID
##         from   METADATA_ELEM me, EXTENSION ex, CODE_DEFN cd
##         where  me.Extension_ID=ex.Extension_ID
##         and    me.Extension_ID=cd.Extension_ID
##         and    cd.Code!='' and me.Code=cd.Code
##         """,
        ]

    for sql in init_sqls:
        csr.execute(sql)

    dctagmap = get_dctag_map()
    extdb = get_extension_db()

    
def get_olac_container():
    e = doc.createElement("olac:olac")
##     e.setAttribute(
##         "xmlns:dc",
##         "http://purl.org/dc/elements/1.1/")
##     e.setAttribute(
##         "xmlns:dcterms",
##         "http://purl.org/dc/terms/")
    e.setAttribute(
        "xmlns:xsi",
        "http://www.w3.org/2001/XMLSchema-instance")
##     e.setAttribute(
##         "xmlns:olac",
##         "http://www.language-archives.org/OLAC/1.0/")
##     e.setAttribute(
##         "xsi:schemaLocation",
##         """http://purl.org/dc/elements/1.1/
##         http://www.language-archives.org/OLAC/1.0/dc.xsd
##         http://purl.org/dc/terms/
##         http://www.language-archives.org/OLAC/1.0/dcterms.xsd
##         http://www.language-archives.org/OLAC/1.0/
##         http://www.language-archives.org/OLAC/1.0/olac.xsd""")
    return e

def get_metadata_element(row, nsinfo):
    tag = row[0]
    lang = row[1]
    content = row[2]
    extid = row[3]
    code = row[4]

    if tag in dctagmap:
        me = doc.createElement("dc:%s" % tag)
    else:
        me = doc.createElement("dcterms:%s" % tag)
    if lang:
        me.setAttribute('xml:lang', lang)
    if content:
        txt = doc.createTextNode(content)
        me.appendChild(txt)
    if extid in extdb:
        ns, tt, nsprefix, nsschema = extdb[extid]
        if ns:
            if ns in nsinfo:
                nsprefix, nsschema = nsinfo[ns]
            else:
                nsinfo[ns] = (nsprefix, nsschema)
            me.setAttribute('xsi:type', '%s:%s' % (nsprefix, tt))
            if code and nsprefix=='olac':
                me.setAttribute('olac:code', code)
        
    return me

def get_record_container(row):
    oaiid, dstamp, itemid = row
    r = doc.createElement("record")
    h = doc.createElement("header")
    i = doc.createElement("identifier")
    txt = doc.createTextNode(oaiid)
    i.appendChild(txt)
    d = doc.createElement("datestamp")
    txt = doc.createTextNode(dstamp)
    d.appendChild(txt)
    m = doc.createElement("metadata")

    r.appendChild(h)
    h.appendChild(i)
    h.appendChild(d)
    r.appendChild(m)

    return r, m


def main():
    init()

    utf8encoder = codecs.getencoder('utf-8')
    utf8writer = codecs.getwriter('utf-8')
    lrout = utf8writer(gzip.open(lrfile,"w"))
    nsinfo0 = {
        "http://purl.org/dc/elements/1.1/":
        ("dc", "http://www.language-archives.org/OLAC/1.1/dc.xsd"),
        "http://purl.org/dc/terms/":
        ("dcterms", "http://www.language-archives.org/OLAC/1.1/dcterms.xsd"),
        }
    print >>lrout, lrheader
    
    sql = """
    select OaiIdentifier, DateStamp, Item_ID
    from ARCHIVED_ITEM
    order by Item_ID
    """

    csr.execute(sql)
    row = csr.fetchone()
    while row:
        r, m = get_record_container(row)
        olac = get_olac_container()
        sql = "select * from t where itemid=?"
        csr2.execute(sql, (row[2],))
        nsinfo = dict(nsinfo0)
        for mdata in csr2.fetchall():
            me = get_metadata_element(mdata, nsinfo)
            olac.appendChild(me)
        schemaloc = []
        for ns, (nsprefix, nsschema) in nsinfo.items():
            olac.setAttribute("xmlns:%s" % nsprefix, ns)
            schemaloc.append(ns)
            schemaloc.append(nsschema)
        olac.setAttribute("xsi:schemaLocation", " ".join(schemaloc))
        m.appendChild(olac)
        s = r.toprettyxml()
        print >>lrout, s

        oaiid = row[0].strip()
        path = os.path.join(spdir,oaiid) + ".xml"
        if '/' in oaiid:
            d = os.path.dirname(path)
            if not os.path.exists(d):
                os.makedirs(d)
        olacout = utf8writer(file(utf8encoder(path)[0],"w"))
        olacout.write(recheader)
        olacout.write(s)

        row = csr.fetchone()

    print >>lrout, lrfooter
    
main()
os.unlink(db)

