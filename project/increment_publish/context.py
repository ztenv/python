# -*- coding=utf-8 -*-
import os
import sys
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class context(object):
    def __init__(self):
        self.current_dir=os.getcwd()
        self.work_dir=os.getcwd()

        self.changed_file_list=[]
        self.lbm_files=[]
        self.all_file_map={}

    def _parse_changed_list(self,res_list):
        lastline=""
        print "changed file list:"
        for line in res_list:
            if (line.find("====")>=0):
                changed_file=os.path.join(self.work_dir,lastline[lastline.find(":")+2:lastline.rfind("\n")].replace("/","\\"))
                print "    ",changed_file
                self.changed_file_list.append(changed_file)
            lastline=line
        os.chdir(self.current_dir)

    def compare_svn_version(self,work_dir="",r1="0",r2="0"):
        print "current_dir:{0}".format(self.current_dir)
        self.work_dir=work_dir
        os.chdir(self.work_dir)
        print "work_dir:{0}".format(self.work_dir)
        res_list=os.popen("svn info").readlines()
        url=""
        for res in res_list:
            if res.find("URL:")>=0:
                url=res[res.find("URL:")+5:res.rfind("\n")]
                break
        print "start compare_svn_version:[{2} {0}:{1}]...".format(r1,r2,url)
        res_list=os.popen("svn diff {0} -r {1}:{2}".format("src",r1,r2)).readlines()
        self._parse_changed_list(res_list)
        print "stop compare_svn_version"
        return True if len(self.changed_file_list)>0 else False

    def test_changed_list(self):
        self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\Base64.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\dao\\global.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\tinyxml.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\clbmapi.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\common.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\exception.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\include\\runtimemsg.h"))

        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\dao_cpp\\dao_base.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\dao_cpp\\dao_sysmsg.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\common\\dao_cpp\\dao_dynamicsql.cpp"))

        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\cls\\ymtinfoexport.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\cls\\otcothercfg.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\include\\userlog.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\include\\dao_post.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\include\\settlog.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\include\\dao_usermenu.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\base\\include\\dao_stksett.h"))

        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\sett\\cls\\stkpbu.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\sett\\cls\\itfbiz.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\sett\\lbm\\99000363.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\sett\\dao_cpp\\dao_shregisterbizlog.cpp"))

        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\agent.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\coacct.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\videolbmscancfg.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\webcreditlog.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\webbizlog.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\uservideoinfo.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\broker.h"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\include\\customer.h"))

        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\cls\\uservideoinfo.cpp"))
        #self.changed_file_list.append(os.path.join(self.work_dir,"src\\bkps\\cls\\operator.cpp"))

    def scan_lbm_files(self):
        print "start scan_lbm_files..."
        self.lbm_files=[]
        __root=self.work_dir+"\\src\\bkps\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if(os.path.isfile(full_file)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)

        __root=self.work_dir+"\\src\\sett\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if(os.path.isfile(full_file)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)

        __root=self.work_dir+"\\src\\base\\lbm\\"
        for lbm in os.listdir(__root):
            full_file=os.path.join(__root,lbm)
            if(os.path.isfile(full_file)):
                #print full_file.decode("gb18030")
                self.lbm_files.append(full_file)
        print "stop scan_lbm_files"
        return True if len(self.lbm_files) >0 else False

    def _scan_all_files(self,root=""):
        for item in os.listdir(root):
            full_file=os.path.join(root,item)
            if(os.path.isfile(full_file)):
                #print full_file.decode("gb18030")
                #print full_file[full_file.rfind("\\")+1:].decode("gb18030")
                self.all_file_map[full_file[full_file.rfind("\\")+1:]]=full_file
                #self.all_files.append(full_file)
            elif(os.path.isdir(full_file)):
                self._scan_all_files(full_file)

    #扫描所有的文件
    def scan_all_files(self):
        print "start scan_all_files...."
        self.all_file_map.clear()
        self._scan_all_files(os.path.join(self.work_dir,"src\\common\\"))
        self._scan_all_files(os.path.join(self.work_dir,"src\\base\\"))
        self._scan_all_files(os.path.join(self.work_dir,"src\\bkps\\"))
        self._scan_all_files(os.path.join(self.work_dir,"src\\sett\\"))
        print "stop scan_all_files"
        return True if len(self.all_file_map)>0 else False

    def clear(self):
        self.changed_file_list=[]
        self.lbm_files=[]
        self.all_file_map.clear()

if __name__=="__main__":
    con=context()
    con.compare_svn_version()
    con.scan_lbm_files()

    print "lbm file's number:",len(con.lbm_files)
    print "change files:",con.changed_file_list



