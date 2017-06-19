#! /bin/sh
#
# This is a harvester cron job that not only harvests registered archives, but
# also does other post-processing including updating integrity information and
# metrics scores.
#
# Usage: run.sh          # for regular daily harvest
#        run.sh MONTHLY  # for monthly harvest
#
# It's okay to run this multiple times per day.
#

#######################################
#       configuration variables       #
# (edit them to fit your environment) #
#######################################

# harvest log
HARVEST_LOG=harvest_log.txt

# mysql
MYSQL="mysql -h $(olacvar mysql/host) -u $(olacvar mysql/user) -p$(olacvar mysql/passwd) $(olacvar mysql/olacdb)"

PYTHON=python

# admin email address
ADMIN_EMAIL="olac-admin@language-archives.org $(olacvar tech_email)"

# xml dump directory
XMLDUMPDIR=$(olacvar xmldumpdir)

# static record pages directory
SRECDIR=$(olacvar static_records/dir)

# logger
facility=$(echo $(olacvar syslog/facility) | sed 's/LOG_//' | tr '[A-Z]' '[a-z]')
LOGGER="logger -t 'run.sh[$$]' -p $facility.info"
#########################
# DO NOT EDIT FROM HERE #
#########################

TMP_LOG=/tmp/${HARVEST_LOG}-$$
FIFO=/var/tmp/fifo.harvester.cron.olac

if [ ! -p $FIFO ]; then
	mkfifo $FIFO
elif [ "$(file -b $FIFO)" != "fifo (named pipe)" ]; then
	rm -rf $FIFO >/dev/null 2>&1 || FIFO=$FIFO-$$
	mkfifo $FIFO
fi

cat $FIFO | tee $TMP_LOG | $LOGGER &
exec 5>&1 6>&2 1>$FIFO 2>&1

echo
echo
echo "** `date`"
echo
if [ "$1" = "MONTHLY" ]; then
	echo 'Do monthly full harvest first.'
	echo
	$PYTHON `olacvar harvester/monthly`
	echo
	echo 'Now regular incremental harvest.'
	echo
fi
$PYTHON `olacvar harvester/main` -u
$PYTHON `olacvar harvester/dbcleaner`
flock `olacvar locks/integrity` $PYTHON  `olacvar harvester/integrity`
flock `olacvar locks/metrics` $PYTHON `olacvar harvester/metrics`

exec 2>&6 1>&5
cat $FIFO | tee -a $TMP_LOG | $LOGGER &
exec 1>$FIFO 2>&1

new_records=`grep -e "updated records:" -e "new records:" $TMP_LOG | awk '{sum+=$5} END {print sum}'`
if [ ${new_records:-0} -gt 0 -o "$1" = "MONTHLY" -o -f "$(olacvar dirty)" ]; then
    echo
    echo "Resubmitting google sitemap ..."
    echo
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/general"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/0"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/1"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/2"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/3"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/4"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/5"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/6"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/7"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/8"
    curl -s -o /dev/null "http://www.google.com/webmasters/tools/ping?sitemap=$(olacvar baseurl)/google-sitemap.xml/items/9"

    #echo
    #echo "Copying METADATA_ELEM to METADATA_ELEM_MYISAM ..."
    #echo
    #echo "delete from METADATA_ELEM_MYISAM" | $MYSQL
    #echo "insert into METADATA_ELEM_MYISAM select * from METADATA_ELEM" | $MYSQL

    #echo
    #echo "Updating search database..."
    #echo
    #$PYTHON `olacvar harvester/update_soundex_tab`

    echo
    echo "Creating an XML dump and static record pages..."
    echo
    dumpnam=$XMLDUMPDIR/ListRecords-`date +%Y%m%d`.xml.gz
    $PYTHON $(olacvar xmldump) $dumpnam $(olacvar static_records/xml).tmp 2>/dev/null
    mv $(olacvar static_records/xml).tmp $(olacvar static_records/xml)
    ln -sf $dumpnam $XMLDUMPDIR/ListRecords.xml.gz
    find $XMLDUMPDIR -name "ListRecords-*.xml.gz" | sort -r | sed -n '29,$p' | xargs -Ix rm -v x
    cat > $SRECDIR/index.html <<EOF
<html>
<head>
<title>OLAC: Pre-generated GetRecord Responses</title>
<script type="text/javascript" src="/js/gatrack.js"></script>
</head>
<body>
EOF
    zipinfo -1 $(olacvar static_records/xml) | sort | \
    sed -e 's@.*@<li><a href="./&">&</a></li>@' >> $SRECDIR/index.html
    cat >> $SRECDIR/index.html <<EOF
</body>
</html>
EOF

    echo
    echo "Creating RDF description of each item..."
    echo
    base=$(olacvar static_records/dir)
    rm -f $base/rdf.zip
    $(olacvar batch_xslt)/batch-xslt2 -- $(olacvar docroot)/OLAC-item-to-LD.xsl $base $base/rdf.zip >/dev/null
    chmod 644 $base/rdf.zip

    echo
    echo "Creating RDF description of each archive..."
    echo
    $(dirname $(olacvar harvester/main))/make_archive_rdfs.sh

    echo
    echo "Creating concatenated and compressed RDFs for datahub..."
    echo
    $(dirname $(olacvar harvester/main))/make_datahub_rdf.sh

    echo
    echo "Creating static HTML pages..."
    echo
    $PYTHON $(olacvar static/generator) >/dev/null

    rm -f "$(olacvar dirty)"

    echo
    echo "Creating static data tables..."
    echo
    $PYTHON $(olacvar data/coverage.script) > $(olacvar data/coverage)
    $PYTHON $(olacvar webapi/coverage.json)
    $PYTHON $(olacvar data/submission_policies.script) > $(olacvar data/submission_policies)
fi


exec 1>&5 2>&6 5>&-
cat $FIFO | $LOGGER &
exec 2>$FIFO
cat $TMP_LOG | /usr/bin/mail -s "OLAC Harvester Log: `date +\"%b %e, %Y\"`" $(olacvar tech_email)

rm -f $TMP_LOG
rm -f $FIFO

exec 2>&6 6>&-

