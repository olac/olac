from marcOlacCrosswalk import CrosswalkPipeline
import os
import sys
from optparse import OptionParser
from os import sep
from ConfigParser import ConfigParser

# for temporary testing only: remove after refactor is complete
sys.path.append('..')
sys.path.append('../../classifier')
# the real classifier dir: sys.path.append('../classifier')
#from iso639_trainer import iso639Classifier

class Marc2OlacCrosswalkRunner(object):

    def __init__(self):
        self.projectName = 'default_project'
        self.debug = 0
        self._path = None
        self._log = sys.stdout

    def Log(self, msg, isDebug = 0, newline = 1):
        if (not isDebug or 
                (isDebug and self.debug)):
            self._log.write('Runner: ' + msg)
        if newline:
            self._log.write('\n')


    def UpdatePaths(self):
        p = dict()
        p['base'] = os.getcwd()
        # figure out base path (i.e. are we in the lib directory or not?)
        #if os.path.exists(basepath + sep + __file__):
        #    paths.base = os.path.dirname(basepath)
        p['lib'] = p['base'] + sep + 'lib'
        p['tmp'] = p['base'] + sep + 'tmp'
        p['proj'] = p['base'] + sep + self.projectName

        # are these going to be used anymore???
        #state.set('system','sep',sep)
        #state.set('system','projpath',p.proj)
        #state.set('system','tmppath',p.tmp)
        #state.set('system','projectname',self.projectName)
        #state.set('system','libpath',p.lib)
        #state.add_section('stylesheet')

        self._path = p


    def GetCmdParser(self):
        usage = "usage: %prog [options] [projectname]\n'projectname' is the directory name of all of your project files, including the config file 'setup.cfg'."
        clparser = OptionParser(usage)

        clparser.add_option("-d", "--debug", action="store_true",
            dest="debug", default=False,
            help="include extra debug information in the output XML, useful for analysis of the generated OLAC repository.  Warning: debug information will cause the OLAC repository not to validate.")

        clparser.add_option("-g", "--html", action="store_true",
            dest="do_html_output", default=False,
            help="generate a human-readable HTML version of the OLAC repository")

        return clparser

    def ProcessConfigFile(self, filename):
        # return state object, a product of the config file and the options
        state = ConfigParser()
        try:
            fullfilename = self._path['proj'] + sep + filename
            state.read(fullfilename)
            if not os.path.exists(fullfilename):
                raise IOError
        except:
            print "Unable to read state file %s" % (fullfilename)
            sys.exit(2)

        if self.debug:
            state.set('system', 'debug', 'yes')

        return state

    def ProcessCmdLine(self, clparser):
        (options, args) = clparser.parse_args()
        if len(args) == 1:
            self.projectName = args[0]
        elif len(args) > 1:
            clparser.error("more than 1 argument specified")

        self.debug = options.debug
        if self.debug:
            self.Log("\tNotice: --debug option in use; OLAC repository will NOT validate")

def main():
    runner = Marc2OlacCrosswalkRunner()
    parser = runner.GetCmdParser()
    runner.ProcessCmdLine(parser)
    runner.UpdatePaths()
    state = runner.ProcessConfigFile('setup.cfg')
    runner.Log("Processing %s" % runner.projectName)
    pipeline = CrosswalkPipeline(state)
    pipeline.Start()

if __name__ == "__main__":
    main()
