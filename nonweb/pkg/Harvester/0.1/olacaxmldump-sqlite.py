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
"""

import os
import time
import gzip
import zipfile
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
dctags = None # dc tag map
myopts = {}     # mysql connection info
lrfile = None   # path for ListRecords.gz
xmlzip = None   # output zip archive to store individual xmls



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
Usage: %(prog)s [options] dumpfile zipfile

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

    global myopts, lrfile, xmlzip, schema

    if op.get('-c'):
        myopts['read_default_file'] = op.getOne('-c')
    elif olac:
        myopts['host'] = olac.olacvar('mysql/host')
        myopts['db'] = olac.olacvar('mysql/olacdb')
        myopts['user'] = olac.olacvar('mysql/user')
        myopts['passwd'] = olac.olacvar('mysql/passwd')
    if op.get('-H'):
        myopts['host'] = op.getOne('-H')
    if op.get('-d'):
        myopts['db'] = op.getOne('-d')
    if op.get('-s'):
        schema = op.getOne('-s')
    elif olac:
        schema = olac.olacvar('sqlite_schema')
    if schema is None or not os.path.exists(schema):
        usage("can't find sliqte OLAC schema")
        
    lrfile, xmlzip = op.args
    lrdir = os.path.dirname(lrfile)
    if not os.path.exists(lrdir):
        usage("directory %s doesn't exist" % `lrdir`)
    if os.path.exists(lrfile):
        if not os.path.isfile(lrfile):
            usage("%s is not a file" % `lrfile`)
        elif not os.access(lrfile, os.W_OK):
            usage("file %s is not writable" % `lrfile`)
    elif not os.access(lrdir, os.W_OK):
        usage("directory %s is not writable" % `lrdir`)
    
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
    return set([
        "any", "title", "creator", "subject", "description", "publisher",
        "contributor", "date", "type", "format", "identifier", "source",
        "language", "relation", "coverage", "rights"
        ])


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
        cmd.append('--password=%s' % myopts['passwd'])
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
    sqlite.stdin.write(".quit\n")
    sqlite.stdin.close()
    sqlite.wait()

def init():
    global doc, conn, csr, csr2, extdb, dctags

    # get mysql options file, ListRecords dir, static pages dir
    process_cmdline_options()

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
        'create temporary table t (tag varchar(255),lang varchar(255),content text,extid int,code varchar(255),extlabel varchar(50),codelabel varchar(255),itemid int)',
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

    dctags = get_dctag_map()
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

    if tag in dctags:
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

    r.setAttribute('xmlns', 'http://www.openarchives.org/OAI/2.0/')

    return r, m


def main():
    init()

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

    zip_file = zipfile.ZipFile(xmlzip, "w", zipfile.ZIP_DEFLATED, True)
    
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
        if 'http://www.language-archives.org/OLAC/1.1/' not in nsinfo and 'http://www.language-archives.org/OLAC/1.0/' not in nsinfo:
            nsinfo['http://www.language-archives.org/OLAC/1.1/'] = ('olac', 'http://www.language-archives.org/OLAC/1.1/olac.xsd')
        for ns, (nsprefix, nsschema) in nsinfo.items():
            olac.setAttribute("xmlns:%s" % nsprefix, ns)
            schemaloc.append(ns)
            schemaloc.append(nsschema)
        olac.setAttribute("xsi:schemaLocation", " ".join(schemaloc))
        m.appendChild(olac)
        s = r.toprettyxml()
        print >>lrout, s

        oaiid = row[0].strip()
        zip_file.writestr(oaiid, (recheader + s).encode('utf-8'))

        row = csr.fetchone()

    print >>lrout, lrfooter

    zip_file.close()
    
main()
os.unlink(db)
