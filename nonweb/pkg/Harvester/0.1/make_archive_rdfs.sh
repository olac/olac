#! /bin/sh

set -e

target=$(olacvar static/root)/archive/rdf.zip

grep -m1 'repositoryIdentifier\s*>' $(olacvar static/root)/identify_downloads/* |
    sed -r 's@:.*repositoryIdentifier\s*>(.*)<.*repositoryIdentifier\s*>.*@ \1@' | sort -u |
    while read a b; do
        g=`dirname $a`/$b.xml
        mv $a $g
        echo $g
    done |
    $(olacvar batch_xslt)/batch-xslt -- $(olacvar docroot)/OLAC-archive-to-LD.xsl $target

chmod 644 $target

find "$(olacvar static/root)/identify_downloads" -mindepth 1 -delete

