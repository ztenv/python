# -*- coding=utf-8 -*-
import os
import sys
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class lbm_info(object):
    def __init__(self,name="",entry="",lbm_file=""):
        self.Name=name
        self.Entry=entry
        self.LbmFile=lbm_file

class processor(object):
    def __init__(self):
        self.current_dir=os.getcwd()
        self.work_dir="I:\\kbss_ums\\src\\branches\\2.5.2.0_REMOD_38555\\lbm"
        self.lbm_files=[]
        self.write_lbm={}

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

    def scan_lbm_info(self):
        self.lbm_list=[]
        self.lbm_map={}
        index=0
        for filename in self.lbm_files:
            f=open(filename)
            lbmname="\""+filename[filename.rfind("\\")+1:filename.rfind(".cpp")]+"\""
            lbmentry=""
            index+=1
            #print index,"    ",filename
            for line in f:
                if line.find("extern")!=-1 and line.find("DLL_EXPORT")!=-1:
                    lbmentry=line[line.find("*")+1:line.find("(")];
                if line.find("szLbmName")!=-1:
                    lbmname=line[line.find("\""):line.find(";")]
                    break
                elif line.find("ST_CALL_LBM_INFO")!=-1 and line.find("(")!=-1:
                    lbmname=line[line.find("\""):line.find(")")]
                    break
            f.close()
            self.lbm_list.append(lbmname.strip())
            self.lbm_map[lbmname.strip()]=lbm_info(lbmname.strip(),lbmentry.strip(),filename.strip())
            #print "    ",lbmname,lbmentry
        self.lbm_list.sort()
        for item in self.lbm_list:
            pass
            #print self.lbm_map.get(item).LbmFile
            #print item,self.lbm_map.get(item,"").Entry

    def write_spd_file(self):
        filename=os.environ.get("KCBP_PATH")+"\\bin\\KCBPSPD.xml"
        spdfile=open(filename)
        self._line_template="<program acm=\"public\" cache=\"no\" comment=\"\" concurrence=\"-1\" name={0} " \
                            "path=\"KBSS_ACCT.DLL\" module=\"{1}\" node=\"0\"  priority=\"1\" rsl=\"1\" " \
                            "timeout=\"60\" type=\"biz\" userexitnumber=\"10\" xa=\"0\"/>\n"
        index=0
        spdnewfile=open(filename+".new","w")
        for line in spdfile:
            if line.find("program")==-1 and len(line)>0:
                spdnewfile.write(line)
            else:
                break
        for name in self.lbm_list:
            index+=1
            #print index,"  ",self._line_template.format(name,self.lbm_map.get(name,"").Entry)
            if not self.write_lbm.has_key(name):
                self.write_lbm[name]=""
                spdnewfile.write(self._line_template.format(name,self.lbm_map.get(name,"").Entry))
        spdnewfile.write("\n")
        for line in spdfile:
            if line.rfind("xa=")!=-1:
                item=line[line.rfind("xa=")+4:line.rfind("\"")].strip()
                if item!="0":
                    if line.find("name=")!=-1:
                        lbmname=line[line.find("name=")+5:].strip()
                        lbmname=lbmname[:lbmname.find("node=")].strip()
                        if not self.write_lbm.has_key(lbmname):
                            spdnewfile.write(line.strip()+"\n")
        spdfile.close()
        spdnewfile.write("</kcbpspd>")
        spdnewfile.close()

        if index!=len(self.lbm_files):
            print "*************************scan_lbm_info has bugs,please check the function code......"

if __name__=="__main__":
    con=processor()
    con.scan_lbm_files()
    con.scan_lbm_info()
    con.write_spd_file()
    #print sys.argv[0]

    print "lbm file's number:",len(con.lbm_files)


