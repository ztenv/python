# -*- coding=utf-8 -*-
import os
import sys
import struct
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class processor(object):

    def __init__(self):
        self.current_dir=os.getcwd()
        self.work_dir="I:\\kbss_ums\\src\\branches\\2.5.6.0_40469\\lbm\\src\\"
        self.file_struct={}
        self.line_count=0
        self.struct_count=0
        self.is_find_struct_head=False
        self.is_in_struct=False

        self.is_field_list=False
        self.is_init_list=False
        self.is_in_ctor=False

        self.building_struct=struct.struct()
        #self.wf=open("result.cpp","w+")

    def start_process(self):
        self.file_struct.clear()
        self.fc=0
        for parent,dirnames,filenames in os.walk(self.work_dir):
            for filename in filenames:
                if (parent.find("_ora")==-1)and(parent.find("_sql")==-1)and(parent.find("json")==-1)\
                        and(filename.find("tinystr.h")==-1)and(filename.find("tinyxml.h")==-1):
                    file=parent+"\\"+filename
                    if self.file_struct.has_key(file):
                        print "warning::",file," exists!!!"
                    else:
                        self.fc+=1
                        self.file_struct[file]=[]
                        self._analizy_struct(file)

    def after_process(self):
        print "has ",len(self.file_struct)," files to process"
        print "process ",self.line_count," lines"
        print "find {0} structs ".format(self.struct_count)
        #self.wf.close()
        for k,v in self.file_struct.items():
            for item in v:
                item.sub_list()
                if len(item.diff_list)>0:
                    print item

    def _analizy_struct(self,file=""):
        f=open(file)
        try:
            #print self.fc," process :",file
            self.is_in_struct=False
            self.is_find_struct_head=False
            self.is_field_list=False
            self.is_init_list=False
            self.is_in_ctor=False
            line_number=0
            for line in f:
                #print "    ",line.decode("gb18030"),
                self.line_count+=1
                line_number+=1
                if self._is_struct(line):
                    self.struct_count+=1
                    st_name=line[line.find("struct")+6:].strip()
                    st_name=st_name[:st_name.find(" ")].strip() if st_name.find(" ")!=-1 else st_name
                    self.is_find_struct_head=True
                    self.building_struct=struct.struct(file,line_number,st_name)
                    #print self.building_struct
                    # print "struct ",st_name
                    #self.wf.write("struct "+st_name)
                if (self.is_find_struct_head)and(not self.is_in_struct):
                    if line.find("{")!=-1:
                        self.is_in_struct=True
                        self.is_field_list=True
                        #print ("{")
                        #self.wf.write("{\n")
                        continue
                if self.is_in_struct:
                    self._process_struct(line)

        finally:
            f.close()

    def _process_struct(self,line=""):
        #print line.decode("gb18030"),
        #self.wf.write(line)
        if self.is_field_list: #analizy field list flag
            self._process_struct_field(line)#process struct's data fields
        if self.is_init_list:  #analizy init list flag
            self._process_struct_init(line)#process struct's data fields init list
        if self.is_in_ctor:  #analizy fields in struct constructor
            self._process_struct_ctor(line)#process init fields in struct constructor

        if (line.find("};")!=-1)or(line.find("} stCallLbmPara;")!=-1)or(line.find("}stCallLbmPara;")!=-1)\
                or((line.find("}")!=-1)and(line.find(";")!=-1)and(line.find("}")<line.find(";"))):
            self.is_in_struct=False
            self.is_find_struct_head=False

    def _process_struct_field(self,line=""):
        #print line.strip().decode("gb18030")
        if line.strip().find("//")==0:
            return
        if line.find(";")!=-1:
                line=line.replace("\t"," ").replace("*"," ")
                field=line[:line.find(";")]
                field=field[:field.find("[")] if field.find("[")!=-1 else field
                field=field[field.rfind(" "):]
                self.building_struct.add_field(field.strip())
        if (line.find(self.building_struct.name+"()")!=-1)and(not self.is_init_list):
            self.is_field_list=False
            self.is_init_list=True
            #self.process_struct_init(line)

    def _process_struct_init(self,line=""):
        #print "*******",line,
        pline=line
        if (line.find(self.building_struct.name)!=-1)and(line.find(":"))!=-1:
            pline=line[line.find(":")+1:]
            if (pline.find("{")!=-1):
                pline=pline.replace("{"," ")
                pline=pline.replace("}"," ")
        #迭代处理初始化列表
        if pline.find(",")!=-1:
            fields=pline.split(",")
        else:
            fields=pline.split(" ")

        for field in fields:
            if(len(field.strip())>0)and(field.find("{")==-1)and(field.find("}")==-1):
                self.building_struct.add_init(field[:field.find("(")].strip())
        if((line.find("{")!=-1))and(not self.is_in_ctor):
            self.is_init_list=False
            self.is_in_ctor=True
            #self.process_struct_ctor(line)

    def _process_struct_ctor(self,line=""):
        #print "%%%%%",line,
        fields=line.split(";")
        for field in fields:
            index=field.find("[") if field.find("[")!=-1 else field.find("=")
            if index!=-1:
                field=field[:index]
            if field.find("memset")!=-1:
                field=field[field.find("(")+1:field.find(",")]
            if field.find("{")==-1 and field.find("}")==-1:
                self.building_struct.add_init(field.strip())
                #print field.strip()
        if((line.find("}")!=-1)):
            self.is_in_ctor=False
            self.file_struct.get(self.building_struct.file_name).append(self.building_struct)

    def _is_struct(self,line=""):
        flag=False
        if line.find("struct")!=-1:
            if(line.find(";")==-1)and(line.find(",")==-1)and(line.find(".")==-1)and\
                    (line.find("*")==-1)and(line.find("::")==-1)and(line.find("(")==-1)and\
                    (line.find("=")==-1):
                #print "    ",line.strip().decode("gb18030")
                flag=True
                #if (line.find("////")!=-1):
                #    if(line.find("struct")<line.find("////")):
                #        print "*******    ",line.strip().decode("gb18030")
                #        flag=True
                #    else:
                #        flag=False

        return flag


if __name__=="__main__":
    pro=processor()
    pro.start_process()
    pro.after_process()

