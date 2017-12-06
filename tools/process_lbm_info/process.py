# -*- coding=utf-8 -*-
import os
import sys
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class processor(object):
    def __init__(self):
        self.current_dir=os.getcwd()
        self.work_dir="I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm"
        self.lbm_files=[]

    def scan_lbm_files(self):
        print "start scan_lbm_files..."
        self.lbm_files=[]
        __root=self.work_dir+"\\src\\bkps\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if((os.path.isfile(full_file))and(full_file.find(".new")==-1)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)

        __root=self.work_dir+"\\src\\sett\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if((os.path.isfile(full_file))and(full_file.find(".new")==-1)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)

        __root=self.work_dir+"\\src\\base\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if((os.path.isfile(full_file))and(full_file.find(".new")==-1)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)
        print "stop scan_lbm_files"
        return True if len(self.lbm_files) >0 else False

    def process(self):
        for file in self.lbm_files:
            print "process file:",file
            f=open(file)
            lbmName=""
            lbmvar=""
            newf=open(file+".new","w")
            for line in f:
                if (line.find("szLbmName")!=-1)and(line.find("\"")!=-1):
                    lbmName=line[line.find("\""):line.find(";")]
                    continue
                    #print lbmName
                elif line.find("ST_CALL_LBM_INFO")!=-1:
                    lbmvar=line[line.find(" st")+1:line.find(";")]
                    #print lbmvar
                    line=line[:line.find(";")]+"("+lbmName+");"
                    #print line
                elif (line.find("memset")!=-1)and(line.find(lbmvar)!=-1):
                    continue
                elif (line.find("KBSS_STRNCPY")!=-1)and(line.find("szLbmName")!=-1):
                    continue
                #print line.decode("gb18030"),
                newf.write(line)

                #print line.decode("gb18030"),
            f.close()
            newf.close()
            os.remove(file)
            os.rename(file+".new",file)

    def after_process(self):
        for file in self.lbm_files:
            print  "process file:",file
            before_lbm_info=True
            after_retcode=False
            f=open(file)
            newf=open(file+".new","w")
            for line in f:
                if line.find("ST_CALL_LBM_INFO")!=-1:
                    before_lbm_info=False

                if before_lbm_info:
                    if line.find("iRetCode")!=-1:
                        after_retcode=True
                    if (after_retcode)and(len(line.strip())==0):
                        continue

                newf.write(line)
            f.close()
            newf.close()
            os.remove(file);
            os.rename(file+".new",file)

    def check_modify(self):
        for filename in self.lbm_files:
            f=open(filename)
            for line in f:
                if line.find("ST_CALL_LBM_INFO")!=-1 and line.find("stCallLbmInfo")!=-1 and line.find("memset")!=-1:
                    print filename
                    break
            f.close()


if __name__=="__main__":
    con=processor()
    con.scan_lbm_files()
    con.check_modify()
    #con.process()
    #con.after_process();

    print "lbm file's number:",len(con.lbm_files)



