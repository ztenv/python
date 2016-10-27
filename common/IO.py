#coding=utf-8
#!/usr/bin/python
__author__ = 'lianshaohua'
import os;
import time;
# write content to screen

print "write content to screen"

# read from keyboard
con1=raw_input("please input one string:")
print "your input string is:",con1
con2=input("please input one expression:")
print "your input string is:",con2

# file I/O

#删除悠文件、目录
basepath = "./tmp/"
filename =basepath+"tmp.o"
if os.path.exists(basepath):
    os.rename(filename,basepath+"WillBeRemoved.o")
    os.remove(basepath+"WillBeRemoved.o")
    os.rmdir(basepath)

#创建目录
if not os.path.exists(basepath):
    os.mkdir(basepath)

#写文件
i = 65
fileobj = open(filename, "w+")
while(i< 65+26):
    fileobj.write(str(chr(i))+"\n")
    i+=1
fileobj.close()

#读文件
fileobj = open(filename, "r")

for line in fileobj:
    print line[0]," ",
print "\n"
fileobj.close()

