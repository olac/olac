import sys
import os
import shutil
import MySQLdb
import olac
from optionparser import OptionParser

def list_archive_ids(cur):
    sql = "select ID from ARCHIVES"
    cur.execute(sql)
    return cur.fetchall()

def delete_file(path):
    print("DELETE: %s" % path)
    os.remove(path)

def delete_directory(path):
    print("DELETE DIR: %s" % path)
    shutil.rmtree(path, True)

def visit_archive(archives, dirname, names):
    for n in names:
        if n == 'rdf.zip':
            continue

        p = os.path.join(dirname, n)
        if os.path.isdir(p): continue
        p1 = p.split('/archive/')[1]
        repoid = p1.split('.html')[0]
        if repoid not in archives:
            delete_file(p)

def visit_item(archives, dirname, names):
    for n in names:
        p = os.path.join(dirname, n)
        if os.path.isdir(p): continue
        p1 = p.split('/item/')[1]
        try:
            repoid = p1.split(':')[1]
        except IndexError:
            print("unrecognized file name format: %s" % p)
            continue
        if repoid not in archives:
            delete_file(p)
        
def visit_archive_records(archives, dirname, names):
    for n in names:
        p = os.path.join(dirname, n)
        if os.path.isdir(p): continue
        p1 = p.split('/archive_records/')[1]
        repoid = p1.split('.html')[0]
        if repoid not in archives:
            delete_file(p)

def visit_checks(archives, dirname, names):
    for n in names:
        p = os.path.join(dirname, n)
        if os.path.isdir(p):
            if n not in archives:
                delete_directory(p)
        elif n == 'download.html':
            continue
        else:
            p1 = p.split('/checks/')[1]
            repoid = p1.split('.html')[0]
            if repoid not in archives:
                delete_file(p)

def visit_cite(archives, dirname, names):
    for n in names:
        p = os.path.join(dirname, n)
        if os.path.isdir(p): continue
        p1 = p.split('/cite/')[1]
        try:
            repoid = p1.split(':')[1]
        except IndexError:
            print("unrecognized file name format: %s" % p)
            continue
        if repoid not in archives:
            delete_file(p)


if __name__ == "__main__":
    usageString = """\
Usage: %(prog)s [-h] -c <mycnf> [-H <host>] [-d <db>]

    options:

      -h          print this message and exit
      -c <mycnf>: mycnf file; if not given, system configuration is used
      -H <host>   hostname of the mysql server
      -d <db>     name of the olac database

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
        )
    try:
        op.parse(sys.argv[1:])
    except OptionParser.ParseError, e:
        usage(e.message)
    if op.get('-h'): usage()

    mycnf = op.getOne('-c')
    host = op.getOne('-H')
    db = op.getOne('-d')

    if mycnf:
        opts = {"read_default_file":mycnf}
    elif olac:
        opts = {
            'host': olac.olacvar('mysql/host'),
            'db': olac.olacvar('mysql/olacdb'),
            'user': olac.olacvar('mysql/user'),
            'passwd': olac.olacvar('mysql/passwd')
            }
        for k in opts:
            if opts[k] == '/null/value':
                del opts[k]
    else:
        opts = {}

    if host: opts["host"] = host
    if db: opts["db"] = db
    con = MySQLdb.connect(**opts)
    cur = con.cursor()
    archives = set(x[0] for x in list_archive_ids(cur))
    cur.close()
    con.close()

    root = olac.olacvar('static/root')
    archive_path = os.path.join(root, 'archive')
    os.path.walk(archive_path, visit_archive, archives)
    archive_records_path = os.path.join(root, 'archive_records')
    os.path.walk(archive_records_path, visit_archive_records, archives)
    item_path = os.path.join(root, 'item')
    os.path.walk(item_path, visit_item, archives)
    check_path = os.path.join(root, 'checks')
    os.path.walk(check_path, visit_checks, archives)
    cite_path = os.path.join(root, 'cite')
    os.path.walk(cite_path, visit_cite, archives)

