# -*- coding=utf-8 -*-
import os
import sys
import subprocess

reload(sys)
sys.setdefaultencoding("utf-8")

class person(object):
    def __init__(self,name="",length=0,demo=""):
        self.Name=name
        self.Length=length
        self.Demo=demo
    def __cmp__(self, other):
        return cmp(self.Length,other.Length)

def process(filename=""):
    file=open(filename)
    li=[]
    for line in file:
        l=line.strip().decode("gb18030")
        tmp=l[l.find("、")+1:]
        name=tmp[:tmp.find(" ")]
        high=tmp[tmp.find("1"):tmp.find("cm")].strip()
        demo=tmp[tmp.find("cm")+2:].strip()
        print demo
        li.append(person(name,high,demo))
    file.close()
    sli=sorted(li)
    return sli
if __name__=="__main__":

    girl=process("girl.txt")
    boy=process("boy.txt")

    result=open("result.txt","w")
    result.write("男孩身高情况：\n")
    index=0
    for item in boy:
        print item.Name,item.Length,item.Demo
        index+=1
        result.write("    "+str(index)+"、"+item.Name+"  "+item.Length+"cm  "+item.Demo+"\n")
    print "_____________________________"
    result.write("女孩身高情况：\n")
    index=0;
    for item in girl:
        print item.Name,item.Length,item.Demo
        index+=1
        result.write("    "+str(index)+"、"+item.Name+"  "+item.Length+"cm  "+item.Demo+"\n")

    result.close()
