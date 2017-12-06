import os
import sys


class info(object):
    def __init__(self,fileName="",dest="",src="",length=""):
        self.fileName=fileName
        self.dest=dest
        self.src=src
        self.length=length

    def __str__(self):
        return self.fileName+" "+self.dest+" "+self.src+" "+self.length

class Processor(object):
    def __init__(self):
        self.list=[]

    def process(self):
        f=open("KBSS_STRNCPY.txt")
        for l in f:
            fn=l[l.rfind('\\')+1:l.find(')')+1].strip()
            l=l[l.find("KBSS_STRNCPY"):l.find(";")].replace(':','').strip()
            dst=l[l.find('(')+1:l.find(',')].strip()
            src=l[l.find(',')+1:l.rfind(',')].strip()
            leng=l[l.rfind(',')+1:l.rfind(')')].strip()

            self.list.append(info(fn,dst,src,leng))
        f.close()

    def cacl(self):
        for item in self.list:
            leng=str(item.length)
            #if leng.find("sizeof")==0:
            #    leng=leng[leng.find('(')+1:leng.rfind(')')]
            #if leng.find(".")!=-1:
            #    leng=leng[leng.find(".")+1:]
            if leng.find("sz")!=0:
                print item.fileName,item.dest,leng
            elif str(item.dest).find("sz")!=0:
                print item.fileName,item.dest,leng

            #if leng.find("ch")==0:
            #    print item.fileName,leng

if __name__=="__main__":
    print "run test"
    runner=Processor()
    runner.process()
    runner.cacl()
