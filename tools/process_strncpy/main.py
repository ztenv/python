# -*- coding=utf-8 -*-
import os
import sys

reload(sys)
sys.setdefaultencoding("utf-8")

class Processor(object):
    def __init__(self):
        pass

    def process(self):
        self._scan_file("I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm\\src\\sett\\")
        self._scan_file("I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm\\src\\bkps\\")
        self._scan_file("I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm\\src\\base\\lbm\\")
        self._scan_file("I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm\\src\\base\\cls\\")

    def _processFunc(self,filename=""):
        if ((filename.find(".cpp")==len(filename)-4)or(filename.find(".h")==len(filename)-2))and(filename.find("dao_")==-1):
            print filename
            fr=open(filename)
            fw=open(filename+".tmp","w")
            for line in fr:
                if ((line.find("strncpy")!=-1)and(line.find("sizeof")!=-1)and(line.find(" - 1);")!=-1)):
                    print line.decode("GBK")
                    line=line.replace(" - 1);",");")
                line=line.replace("strncpy","KBSS_STRNCPY")
                fw.write(line)
            fr.close()
            fw.close()
            os.remove(filename)
            os.rename(filename+".tmp",filename)

    def _scan_file(self,work_dir=""):
        for parent, dirnames, filenames in os.walk(work_dir):
            for filename in filenames:
                self._processFunc(os.path.join(parent,filename))

if __name__=="__main__":
    print "process strncpy is starting..."
    processor=Processor()
    processor.process()
    print "process strncpy is stopped"
