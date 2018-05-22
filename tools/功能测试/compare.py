# -*- coding: utf-8 -*-
# @File  : compare.py
# @Author: shlian
# @Date  : 2018/5/22
# @Desc  :
import json
import sys

class data_list(object):
    def __init__(self):
        self.lbm=""
        self.old_data=[]
        self.new_data=[]
        self.config={}
        self._oclist=[]
        self._nclist=[]

    def _old_key(self,ele):
        _old_key=self.config.get("old").get("key") # read sort column index
        return ele[int(_old_key)]

    def _new_key(self,ele):
        _new_key=self.config.get("new").get("key") # read sort column index
        return ele[int(_new_key)]

    def sort(self):
        self.old_data.sort(key=self._old_key)
        self.new_data.sort(key=self._new_key)

    def _parse_column_list(self):
        old_column=self.config.get("old").get("column")
        new_column=self.config.get("new").get("column")
        self._oclist=old_column.split(",")
        self._nclist=new_column.split(",")
        if len(self._oclist)!=len(self._nclist):
            print("old column count {0} is not equal new column count{1}".format(len(self._oclist),len(self._nclist)))

    def dump(self):
        f=open(self.lbm+"old_sort.txt",mode="w")
        for item in self.old_data:
            for col in item:
                f.write(col.strip()+"|")
            f.write("\n")
        f.close()

        self._parse_column_list()
        f=open(self.lbm+"new_sort.txt",mode="w")
        data_template={}
        for item in self.new_data:
            index=-1
            for col in item:
                index+=1
                data_template[self._nclist[index].strip()]=col.strip()
            for item in self._oclist:
                f.write(data_template.get(item.strip())+"|")
            f.write("\n")

class compare(object):
    def __init__(self):
        self._lbm=""
        self._config={}
        self._data=data_list()

    def _load_data(self):
        f=open(self._lbm+"_new.txt",mode="r",encoding="utf-8")
        for line in f:
            li=line.split("\t")
            li.pop(0)
            li.pop(0)
            self._data.new_data.append(li)
        f.close()

        f=open(self._lbm+"_old.txt",mode="r",encoding="utf-8")
        for line in f:
            li=line.split("\t")
            li.pop(0)
            self._data.old_data.append(li)
        f.close()
        self._data.sort()
        self._data.dump()

    def _load_config(self):
        f=open(self._lbm+".json")
        self._config=json.load(f)
        f.close()
        self._data.config=self._config

    def load(self,lbm_id=""):
        self._lbm=lbm_id
        self._data.lbm=self._lbm
        self._load_config()
        self._load_data()

if __name__=="__main__":
    lbm_id=sys.argv[1]
    co=compare()
    co.load(lbm_id)
