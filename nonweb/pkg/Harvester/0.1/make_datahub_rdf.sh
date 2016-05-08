#! /bin/sh

set -e

(
    echo '<RDF xmlns="http://www.w3.org/1999/02/22-rdf-syntax-ns#">'
    unzip -p $(olacvar static/root)/archive/rdf.zip
    unzip -p $(olacvar static_records/dir)/rdf.zip
    echo '</RDF>'
) | gzip -c - > $(olacvar static/root)/olac-datahub.rdf.gz


