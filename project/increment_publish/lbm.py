# -*- coding=utf-8 -*-
import os
import sys
from context import context

reload(sys)
sys.setdefaultencoding("utf-8")

class lbm(object):
    def __init__(self,context,lbm_file=""):
        self.id=lbm_file[lbm_file.rfind("\\")+1:lbm_file.rfind(".cpp")]
        self.full_name=lbm_file
        self.context=context
        self.dep_files={}

    def _parse_dependency_header(self,full_name=[]):
        for item in full_name:
            if(os.path.exists(item)):
                sub_files=[]
                file=open(item)
                pos=0
                #print "file_name=",item
                for line in file:
                    ++pos
                    if line.find("#include")>=0:
                        start_index=line.find("<") if line.find("<")>=0 else line.find("\"")
                        stop_index=line.rfind(">") if line.rfind(">")>0 else line.rfind("\"")
                        header_file=line[start_index+1:stop_index]
                        header_file=self.context.all_file_map.get(header_file,header_file)
                        if(header_file is not None)and(self.dep_files.get(header_file[header_file.rfind("\\")+1:]) is None)and(os.path.exists(header_file)):
                            #print header_file
                            sub_files.append(header_file)
                            self.dep_files[header_file[header_file.rfind("\\")+1:]]=header_file
                    elif (pos>100):
                        break
                file.close()
                #print ""
                if(len(sub_files)>0):
                    self._parse_dependency_header(sub_files)

    def _parse_dependency_cpp(self,full_name=[]):
        for item in full_name:
            if(os.path.exists(item)):
                sub_files=[]
                file=open(item)
                #print "file_name=",item
                pos=0
                for line in file:
                    ++pos
                    if (line.find("#include")>=0)and(line.find(item[item.rfind("\\")+1:item.rfind(".cpp")])<0):
                        start_index=line.find("<") if line.find("<")>=0 else line.find("\"")
                        stop_index=line.rfind(">") if line.rfind(">")>0 else line.rfind("\"")
                        header_file=line[start_index+1:stop_index]
                        cpp_file=header_file[header_file.rfind("\\")+1:header_file.find(".h")]+".cpp"
                        cpp_file=self.context.all_file_map.get(cpp_file)
                        if (cpp_file is not None)and(self.dep_files.get(cpp_file[cpp_file.rfind("\\")+1:]) is None)and(os.path.exists(cpp_file)):
                            #print cpp_file
                            sub_files.append(cpp_file)
                            self.dep_files[cpp_file[cpp_file.rfind("\\")+1:]]=cpp_file
                    elif (pos>100):
                        break
                file.close()
                #print ""
                if(len(sub_files)>0):
                    self._parse_dependency_cpp(sub_files)

    #分析lbm文件所依赖的文件
    def parse_dependency(self):
        self.dep_files.clear()
        self.dep_files={self.id+".cpp":self.full_name}
        self._parse_dependency_header([self.full_name])
        self._parse_dependency_cpp([self.full_name])

    #file_name 是否被当前lbm依赖
    def is_file_dependency(self,file_name):
        header=file_name if file_name.find(".h")>0 else file_name.replace(".cpp",".h")
        cpp=file_name if file_name.find(".cpp")>0 else file_name.replace(".h",".cpp")
        return True if ((self.dep_files.get(header) is not None) or (self.dep_files.get(cpp) is not None)) else False

if __name__=="__main__":
    lbm_file="I:\\2.4.8.3_33292(code)\\lbm\\solution\\src\\sett\\lbm\\L2100101.h"
    context=context()
    lbm=lbm(context,lbm_file)

    print "lbm_id=",lbm.id
    print "lbm_full_name=",lbm.full_name

    context.scan_all_files()
    lbm.parse_dependency()

    print "**************************LBM:",lbm.id," dependency ",len(lbm.dep_files)," files***************************"
    for k,v in lbm.dep_files.items():
        print k,":",v
