# -*- coding=utf-8 -*-
import os
import sys
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class struct(object):
    def __init__(self,filename="",linenumber="",name=""):
        self._field_list=[]
        self._init_list=[]
        self.diff_list=[]
        self.file_name=filename
        self.name=name
        self.line=linenumber
    def add_field(self,field_name):
        if len(field_name)==0:
            return
        try:
            self._field_list.index(field_name)
        except Exception as ee:
            self._field_list.append(field_name)

    def add_init(self,init_field):
        if len(init_field)==0:
            return
        try:
            self._init_list.append(init_field)
        except Exception as ee:
            self._init_list.append(init_field)

    def sub_list(self):
        field_sub_init=[item for item in self._field_list if item not in self._init_list]
        #init_sub_field=[item for item in self._init_list if item not in self._field_list]
        self.diff_list=[]

        for item in field_sub_init:
            self.diff_list.append(item)
        #for item in init_sub_field:
        #    try:
        #        self.diff_list.index(item)
        #    except Exception as ee:
        #        self.diff_list.append(item)

    def __str__(self):
        return "{0}({1}):{2}\n {3}".format(self.file_name,self.line,self.name,[item for item in self.diff_list])

def test_struct_sub1():
    st1=struct()
    st1.add_field("aa")
    st1.add_field("bb")
    st1.add_field("cc")
    st1.add_field("dd")

    st1.sub_list()
    for item in st1.diff_list:
        print item
    print "______________________"

def test_struct_sub2():
    st1=struct()
    st1.add_init("cc")
    st1.add_init("dd")
    st1.add_init("ee")
    st1.add_init("ff")

    st1.sub_list()
    for item in st1.diff_list:
        print item
    print "______________________"

def test_struct_sub3():
    st1=struct()
    st1.add_field("aa")
    st1.add_field("bb")
    st1.add_field("cc")
    st1.add_field("dd")

    st1.add_init("cc")
    st1.add_init("dd")
    st1.add_init("ee")
    st1.add_init("ff")

    st1.sub_list()
    for item in st1.diff_list:
        print item
    print "______________________"

if __name__=="__main__":
    test_struct_sub1()
    test_struct_sub2()
    test_struct_sub3()




