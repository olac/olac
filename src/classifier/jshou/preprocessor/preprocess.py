#!/usr/bin/python
import sys
import os

if len(sys.argv)!=2:
    sys.exit("Usage: python preprocess.py output-file.tab")

if os.path.exists(sys.argv[1]):
    a = raw_input("File %s already exists.  Overwrite? [yn]: " % sys.argv[1])
    if not a.lower()=='y':
        sys.exit(2)
    else:
        print "Overwriting..."

if '/' in sys.argv[0]:
    header = sys.argv[0].rsplit('/')[0]+'/'
else:
    header = ''
headout = {'header':header, 'output':sys.argv[1]}
os.system('python %(header)sEthnologue_data_preprocessor.py %(header)sEthnologue-classifier-training-data.xml > %(output)s' % headout)
os.system('python %(header)sLinguistList_preprocessor.py %(header)sGetListOfAncientLgs.html >> %(output)s' % headout)
os.system('python %(header)siso-639_preprocessor.py %(header)siso-639-3_20090210.tab.dld >> %(output)s' % headout)
os.system('python %(header)sCountryCodes_preprocessor.py %(header)sCountryCodes.tab >>%(output)s' % headout)
output = open(headout['output'],'a')
print>>output, open(headout['header']+'extra_data.tab').read().rstrip('\n\r')
print>>output, open(headout['header']+'Data for language classifier.tab').read().rstrip('\n\r')
print>>output, open(headout['header']+'LCSH_names_trainingdata.tab').read().rstrip('\n\r')
