# -*- coding=utf-8 -*-
import json
import codecs
import os

class item(object):
    def __init__(self,name=""):
        self.Context=[]
        self.Name=name
    def addItem(self,code="",name=""):
        self.Context.append({"code":code,"name":name})

class processor(object):
    def __init__(self):
        self.fileName="sys_dd_item.sql"
        self.content=[]
        self.subf=""

    def writeFile(self):
        print(os.getcwd()+"\\files\\"+self.subf)
        f=codecs.open(os.getcwd()+"\\files\\"+self.subf+".txt","w+")
        f.write(json.dumps(self.content,ensure_ascii=False))
        f.close()

    def Convert(self):
        f=open(self.fileName)

        ln=0
        for line in f:
            line=line.strip()
            comCount=line.count(',',0,len(line))
            if line.find("EXEC")!=-1 and comCount>=3:
                line=line[line.find("\'"):].strip()
                items=line.split('\'')

                if(len(items[3])<=0 or len(items[5])<=0):
                    print("invalid code or name")
                    break

                if(self.subf!=items[1]):
                    if(len(self.content)>0):
                        self.writeFile()
                        print(self.content)
                    self.subf=items[1]
                    self.content=[]
                    print("filename=",items[1])
                    self.content.append({"code":items[3],"name":items[5]})
                    ln=ln+1
                else:
                    self.content.append({"code":items[3],"name":items[5]})
                    ln=ln+1
        f.close()
        print("line number=",ln)
        if(len(self.content)>0):
            self.writeFile()
            print(self.content)


if __name__=="__main__":
    p=processor()
    p.Convert()


