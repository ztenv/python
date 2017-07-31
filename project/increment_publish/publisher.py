# -*- coding=utf-8 -*-
import os
import sys

from context import context
from lbm import lbm
from lbm_manager import  lbm_manager

reload(sys)
sys.setdefaultencoding("utf-8")

class publisher(object):
    def __init__(self):
        self._context=context()
        self._lbm_manager=lbm_manager()
        self._publish_list=[]

    def _analyze_lbm_dependency(self):
        print "start analyze lbm dependency..."
        lbm_file_count=len(self._context.lbm_files)*1.0
        pos=0
        for item in self._context.lbm_files:
            _lbm=lbm(self._context,item)
            _lbm.parse_dependency()
            self._lbm_manager.add(_lbm)
            pos+=1
            sys.stdout.write("process:{0}{1}".format(str(int((pos/lbm_file_count)*100)),"%\r"))
            sys.stdout.flush()
        print "\nstop analyze lbm dependency"

    def start(self,work_dir="",r1="",r2=""):
        print "publisher starting..."
        res=self._context.compare_svn_version(work_dir,r1,r2)
        print  "    ","changed file count=",len(self._context.changed_file_list)
        if(res==False):
            print "    ","there is no file changed"
            return False
        res=self._context.scan_all_files()
        print "    ","all file count=",len(self._context.all_file_map)
        if(res==False):
            print "    ","there is no .h or .cpp file to process"
            return False
        res=self._context.scan_lbm_files()
        print "    ","lbm file count=",len(self._context.lbm_files)
        if(res==False):
            print "    ","there is no lbm file to process"
            return False
        self._analyze_lbm_dependency()

        print "publisher started"
        return True

    def analyze_dependency(self):
        print "publisher analyze_dependency..."
        _lookup_file={}
        _file_map={}
        for item in self._context.changed_file_list:
            item=item[item.rfind("\\")+1:]
            item_id=item[:item.find(".")]
            print "changed file name=",item
            if (_lookup_file.get(item_id) is None):
                _lookup_file[item_id]=item_id
                for lbmitem in self._lbm_manager.lbm_list:
                    if (lbmitem.is_file_dependency(item)):
                        print "    publish lbm:",lbmitem.full_name
                        _file_map[lbmitem.full_name]=lbmitem.full_name
            else:
                print "    {0} dependency is analyzed".format(item)
        _lookup_file.clear()
        for k,v in _file_map.items():
            self._publish_list.append(v)
        _file_map.clear()

        print "    ","publish lbm count=",len(self._publish_list)
        print "publisher analyze_dependencyed"

    def stop(self):
        print "publisher stopping..."
        self._lbm_manager.clear()
        self._context.clear()
        print "publisher stopped"

    def get_publish_file_list(self):
        return self._publish_list


