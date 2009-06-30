#!/usr/bin/python
# iso_extractor.py
# Joshua S Hou
# June 2009

import sys
import pickle
from tabdbreader import *
import string
from operator import itemgetter
from iso_extract_modeler import *

class isoClassifier:
    def __init__(self, model_file):
        self.model = pickle.load(open(model_file,'rb'))
    
    def classify_record(self, record, debug):
        """This method goes through the title, subject, and descriptions fields of a record, and returns
        an intersection of the sets of ISOs found from language names, country names, and regions found
        in the above mentioned fields.  The method backs off region and country if the intersection returns
        a null set."""
        bag_of_words = ''
        try:
            bag_of_words += record['title']
        except KeyError:
            pass
        try:
            bag_of_words += ' '+record['subject']
        except KeyError:
            pass
        try:
            bag_of_words += ' '+record['description']
        except KeyError:
            pass

# DEBUG MODE 
        if debug:
            print "---------------------------------------------------"
            print record['Archive_ID'], record['Item_ID'], record['title']

        iso_set = set()
        for lang_name in self.model.c_iso_lang:
            if lang_name in bag_of_words:
                iso_set.update(self.model.c_iso_lang[lang_name])
                if debug:
                    print "lang_name:", lang_name, self.model.c_iso_lang[lang_name]
        
        country_iso_set = set()
        for country_name in self.model.c_iso_country:
            if country_name in bag_of_words:
                country_iso_set.update(self.model.c_iso_country[country_name])
                if debug:
                    print "country name:", country_name, self.model.c_iso_country[country_name]
        
        region_iso_set = set()
        for region in self.model.c_iso_region:
            if region in bag_of_words:
                region_iso_set.update(self.model.c_iso_region[region])
                if debug:
                    print "region:", region, self.model.c_iso_region[region]
        
        country_intersection = iso_set.intersection(country_iso_set)
        if country_intersection:
            iso_set = country_intersection
        region_intersection = iso_set.intersection(region_iso_set)
        if region_intersection:
            iso_set = region_intersection
        # title, subject, description
        if debug:
            print "final iso set:", iso_set
        return iso_set

if __name__=="__main__":
    if len(sys.argv)!=4:
        print "Usage: python iso_extractor.py model.pkl debug[0 or 1] outfile"
        sys.exit(1)
    
    ic = isoClassifier(sys.argv[1])

    reader = TabDBCorpusReader('../oai_classifier_trn', '.*db\.tab')
    olac_records = reader.records('olacdb.tab')
    
    outfile = open(sys.argv[3],'w') 
    
    debug = sys.argv[2]=="1"
    if debug:
        olac_records = olac_records[:100]
    for record in olac_records:
        results = ic.classify_record(record, debug)
        try:
            title = record['title']
        except KeyError:
            title = 'TITLE_UNKNOWN'
        try:
            id = record['identifier'].strip()
        except KeyError:
            id = 'IDENTIFIER_UNKNOWN'
        print>>outfile, '\t'.join([record['Archive_ID'], record['Item_ID'], id, title, ' '.join(results)])