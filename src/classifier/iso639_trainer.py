# coding=utf-8
'''A classifier that processes records and returns ISO 639-3 codes.

Created on Jul 6, 2009

@author: Joshua S Hou

Contains a class definition for a classifier that process OLAC records and
returns a dictionary of ISO 639-3 codes and associated scores.  Has methods for
loading data, classifying a whole list of records and printing results to file,
and classifying a single record, returning a list of records that is above the
score threshold provided.

If run from shell, main method loads data and saves classifier as a pickle.

Usage: python iso639_trainer.py datafile classifier.pickle
'''

import sys
import os
import pickle
import operator
import optparse
import codecs
from nltk import *
from utilities.util import *

class iso639Classifier:
    '''Classifier to identify an ISO 639 language code given a language name and
    other contextual clues.
    
    classify_records -- classifies a list of records and prints results to a provided printstream
    classify_record -- classifies a single record and returns a list of results
    classify -- classifies a record and returns the country, region and language names found in the text with proposed ISO 639-3 codes
    _identify -- identifies country, language and region names; helper method for classify
    weighted -- returns a dictionary of ISO 639 codes and weights given the language, country and region names found
    _populate_dict -- helper method for weighted
    train -- reads in a datafile and stores the information.
    _add_item -- method for adding country, region and language name data to the classifier's training.
    save -- pickles the classifier to a file.
    '''
    def __init__(self):
        '''Initializes the four dictionaries that comprise the classifier's
        data.  
        
        country_lang is a simple dictionary that goes from iso3166
        country codes to iso639 language codes.  
        
        tree is what contains the language, country, and region name data for
        the classifier.  It is a nested dictionary that functions as a tree that
        can be traversed token by token of a language, country or region name.
        It returns a list of ISO 3166 codes for country names and ISO 639 codes
        for language and region names.  
        
        xxx_data[token1][token2][token3]['<<END-OF-item_type>>'] -> [iso1, iso2]
        '''
        self.tree = {} # token1 -> token2 -> token3 -> <<END-OF-item_type>> -> [iso1,iso2]
        self.country_lang = {} # iso3166 -> list of iso639 codes
        self.spaces = re.compile(r'\s+')
        self.first_chars = u"‡!’/'"
        self.stoplist = set(['the','some','central','western','eastern','northern','southern','north','south','east','west']) # stoplist of tokens that are too common
        self.gs = None # if it exists, this is a list of lines from the gold standard
        self.ending = "<<END>>"
        
    def classify_records(self, debug, records, outstream, threshold, snw, wnw, a, b):
        '''Classifies a list of records and prints the results to outstream.'''
        i = -1
        for record in records:
            title = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'title')))
            subject = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'subject')))
            descr = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'description')))
            i += 1
            iso_dict, NE_results = self.classify(record, snw, wnw, a, b)
            iso_results = filter(lambda x:iso_dict[x]>=threshold, iso_dict.keys())
#           if iso_dict:
#               top_choice = sorted(iso_dict.items(),key=operator.itemgetter(1),reverse=True)[0][0]
#               if top_choice not in iso_results:
#                   iso_results.append(top_choice)
            print>>outstream, '\t'.join([record['Oai_ID'], ' '.join(iso_results), title])
            if debug:
                if self.gs:
                    print>>outstream, '# gs:', self.gs[i].rstrip().decode('utf-8')
                print>>outstream, '# isos: ', iso_dict
                print>>outstream, '# subject: ' + subject
                print>>outstream, '# description: ' + descr
                for item_type in NE_results:
                    if NE_results[item_type]:
                        for NE in NE_results[item_type]:
                            print>>outstream, "# " + item_type + "\t" + NE + "\t[" + ' '.join(NE_results[item_type][NE])+']' 
                print>>outstream, "#--------------------------------------------------"

    def classify_record(self, record, threshold, snw, wnw, a, b, debug=False):
        '''For a single record, returns a list of ISO 639-3 codes that have a
        weight higher than a given threshold'''
        iso_results, NE_dict = self.classify(record, snw, wnw, a, b)
        if debug:
            return iso_results
        else:
            return [i for i in iso_results if iso_results[i]>threshold]

    def classify(self, record, snw, wnw, a, b):
        '''For a string of text, uses _identify to identify language, country
        and region names and creates sets of ISO 639 codes for the language,
        country and region names identified.   Uses weighted to determine
        weights for each iso code.
        '''
        title = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'title')))
        subject = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'subject')))
        descr = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'description')))
        bag_of_words = title + ' \\n ' + subject + ' \\n ' + descr # purposely adding a token here so that we won't get NEs recognized "over the borders"

        tokens = wordpunct_tokenize(bag_of_words)
        NE_dict = {'sn':{}, 'wn':{}, 'cn':{}, 'rg':{}}
        i = 0
        while i<len(tokens):
            first_l = tokens[i][0]
            #if first_l.isupper() or first_l in self.first_chars:
            if True:
                NE, iso_types = self._identify(tokens[i:])
                if NE:
                    i += len(NE.split()) - 1 # increase counter by num_words(NE) - 1 so that we don't find another NE inside this one.
                    for type in iso_types:
                        if type=='cn':
                            isos = reduce(set.union,[self.country_lang[j] for j in iso_types[type]])
                        else:
                            isos = iso_types[type]
                        NE_dict[type][NE] = isos
            i += 1
        
        results = self.weighted(NE_dict, snw, wnw, a, b)
        return results, NE_dict

    def classify_round_robin(self, record):
        '''For a string of text, uses _identify to identify language, country
        and region names and creates sets of ISO 639 codes for the language,
        country and region names identified.   Uses weighted to determine
        weights for each iso code.
        '''
        title = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'title')))
        subject = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'subject')))
        descr = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'description')))
        bag_of_words = title + ' \\n ' + subject + ' \\n ' + descr # purposely adding a token here so that we won't get NEs recognized "over the borders"

        tokens = wordpunct_tokenize(bag_of_words)
        NE_dict = {'sn':{}, 'wn':{}, 'cn':{}, 'rg':{}}
        i = 0
        while i<len(tokens):
            first_l = tokens[i][0]
            #if first_l.isupper() or first_l in self.first_chars:
            if True:
                NE, iso_types = self._identify(tokens[i:])
                if NE:
                    i += len(NE.split()) - 1 # increase counter by num_words(NE) - 1 so that we don't find another NE inside this one.
                    for type in iso_types:
                        if type=='cn':
                            isos = reduce(set.union,[self.country_lang[j] for j in iso_types[type]])
                        else:
                            isos = iso_types[type]
                        NE_dict[type][NE] = isos
            i += 1
        results = []
        params = []
        for a in range(1,11):
            for b in range(1,11):
                for c in range(1,11):
                    # not varying snw
                    params.append(1.0,a*0.1,b*0.1,c*0.1)
        for j in params:
            results.append(self.weighted(NE_dict, params[j][0], params[j][1], params[j][2], params[j][3]))
        #results = self.weighted(NE_dict, snw, wnw, a, b)
        return results, NE_dict, params

    def classify_records_round_robin(self, debug, records):
        '''Classifies a list of records and prints the results to outstream.'''
        i = -1
        thresholds = [0.5,0.6,0.7,0.8,0.9,1.0]
        for record in records:
            title = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'title')))
            subject = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'subject')))
            descr = remove_diacritic(self.spaces.sub(' ',get_or_none(record, 'description')))
            i += 1
            #iso_dict, NE_results = self.classify(record, snw, wnw, a, b)
            iso_dicts, NE_results, params = self.classify(record)
            outstreams = [open('subject_language_classifier_output_'+str(i)+'.txt','w') for i in range(len(iso_dicts)*len(thresholds))]
            for z in thresholds:
                for j in range(len(iso_dicts)):
                    print>>outstreams[j], '# threshold:', thresholds[z]
                    print>>outstreams[j], '# params:', params
                    iso_results = filter(lambda x:iso_dicts[j][0][x]>=thresholds[z], iso_dict.keys())
                    print>>outstreams[j], '\t'.join([record['Oai_ID'], ' '.join(iso_results), title])
                    if debug:
                        if self.gs:
                            print>>outstreams[j], '# gs:', self.gs[i].rstrip().decode('utf-8')
                        print>>outstreams[j], '# isos: ', iso_dict
                        print>>outstreams[j], '# subject: ' + subject
                        print>>outstreams[j], '# description: ' + descr
                        for item_type in NE_results:
                            if NE_results[item_type]:
                                for NE in NE_results[item_type]:
                                    print>>outstreams[j], "# " + item_type + "\t" + NE + "\t[" + ' '.join(NE_results[0][item_type][NE])+']' 
                        print>>outstream, "#--------------------------------------------------"


    def _identify(self, tokens):
        '''For a list of tokens, goes through the tree and returns the longest
        language, country or region name it can find, along the item_type, and
        the associated list of ISO 639 codes.  Normalizes case, because the
		data stored in the tree is all lower case.
        '''
        token_0 = remove_diacritic(tokens[0].lower())
        if token_0 in self.tree:
            type_isos = {}
            curr_NE = token_0
            final_NE = ''
            node = self.tree[token_0]
            i = 1 # a counter
            while i<len(tokens):
                if self.ending in node:
                    if curr_NE not in self.stoplist:
                        final_NE = curr_NE
                        type_isos = node[self.ending]
                token_i = remove_diacritic(tokens[i].lower())
                if token_i in node:
                    node = node[token_i]
                    curr_NE += ' '+token_i
                else:
                    break
                i += 1
            if self.ending in node and i>=len(tokens): # checks the last word
                if curr_NE not in self.stoplist:
                    type_isos = node[self.ending]
                    final_NE = curr_NE
            return final_NE, type_isos
        else:
            return '',{}
        
    def weighted(self, NE_dict, snw, wnw, a, b):
        '''Returns a dictionary of ISO 639-3 codes and associated weights
        calculated from the language, region and country names found by
        classify.'''
        results = {}

        langdict = {}
        countrydict = {}
        regiondict = {}
        self._populate_dict(NE_dict['sn'], langdict, snw)
        self._populate_dict(NE_dict['wn'], langdict, wnw)
        self._populate_dict(NE_dict['cn'], countrydict, 1.0)
        self._populate_dict(NE_dict['rg'], regiondict, 1.0)

        if NE_dict['cn'].values():
            country = reduce(set.union, NE_dict['cn'].values())
        else:
            country = set()
        if NE_dict['rg'].values():
            region = reduce(set.union, NE_dict['rg'].values())
        else:
            region = set()

        for iso in langdict:
            l = langdict[iso]
            c = 0.0
            r = 0.0
            if iso in country:
                c = 1.0
            if iso in region:
                r = 1.0
            results[iso] = l + a*(l*c) + b*(l*r)

        return results

    def _populate_dict(self, input_dict, langdict, C):
        '''Helper function for weighted'''
        for NE in input_dict:
            NE_len = len(NE.split())
            for iso in input_dict[NE]:
                try:
                    langdict[iso] += NE_len*C
                except KeyError:
                    langdict[iso] = NE_len*C   

    def train(self, datafile):
        '''Reads in a data file in format specified in wiki:iso639_trainerDatafileFormat
        and loads data into the classifier dictionaries.  
        '''
        data = codecs.open(datafile, encoding='utf-8').readlines()
        for line in data:
            if line.strip(u'\n\t\r﻿')[0]=='#' or not line.strip():
                continue
            iso, item_type, item = line.strip('\r\n').split('\t')
            if item_type==u"cc":
                try:
                    self.country_lang[item].add(iso)
                except KeyError:
                    self.country_lang[item] = set([iso])
            else:
                item = remove_diacritic(item.lower())
                if (item_type=='sn' or item_type=='wn') and '-' in item and ' ' not in item: # prevents Judeo-Iraqi Arabic from being split up
                    for subitem in item.split('-'):
                        if len(subitem)>4: # so we don't get Af-Tunni split into Af and Tunni or something
                            self._add_item(wordpunct_tokenize(subitem.strip()), self.tree, item_type, iso)
                if "'" in item: # also add version without apostrophe
                    self._add_item(wordpunct_tokenize(item.strip().replace("'","")), self.tree, item_type, iso)
                self._add_item(wordpunct_tokenize(item.strip()), self.tree, item_type, iso)
    
    def _add_item(self, tokens, node, item_type, iso):
        '''Recursive method for adding item_type:iso to one of the nested data
        dictionaries.  If there are more tokens left, keep descending into the
        dictionary.  Otherwise, enter <<END>> -> { item_type:iso }.  Normalizes
		case.
        '''
        if not tokens:
            ending = "<<END>>"
            if ending not in node:
                node[ending] = {}
            try:
                node[ending][item_type].add(iso)
            except KeyError:
                node[ending][item_type] = set([iso])
        else:
            if tokens[0] not in node:
                node[tokens[0]] = {}
            self._add_item(tokens[1:], node[tokens[0]], item_type, iso)
    
    def save(self, filename, force):
        '''Checks to see if the file already exists and asks for confirmation to
        overwrite if it does.  Pickles the classifier.
        '''
        if force:
            file = open(filename,'wb')
        else:
            file = check_file(filename, 'wb')
        pickle.dump(self, file)

def main():
    '''Saves a pickled classifier.  Meant to be called from command line.'''
    parser = optparse.OptionParser(usage='python iso639_trainer.py [options] datafile classifier.pickle')
    parser.add_option('-f', '--force', action='store_true', dest='force', help='Forces overwrite')
    (options,args) = parser.parse_args()

    if len(args)!=2:
        parser.print_help()
        sys.exit(1)

    iso639c = iso639Classifier()
    iso639c.train(args[0])
    iso639c.save(args[1], options.force)
if __name__=="__main__":
    main()
