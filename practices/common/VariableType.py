# coding=utf-8
# !/usr/bin/python
__author__ = 'lianshaohua'

#Numbers  数值型变量
i = 5
j = 10.0
print "i=", i
print"j=", j
print"i+j=", i + j

del i
del j
print "\n"

#string  字符串型变量
world = "world"
hello = "hello "
hw = hello + world
print "hw=", hw
print "hw[4:8]=", hw[4:8]
del world
del hello
del hw
print ("\n")

#list 列表类型变量
l1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
l1[0] = -1
l2 = ["a", "b", "c", "d"]
l2[3] = "z"
print "l1=", l1
print "l2=", l2
print "l1[0:5]", l1[0:5]
l3 = l1 + l2
print "l1+l2=", l3
del l1
del l2
del l3
print "\n"

#tuple  元组类型变量

t1 = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
t2 = ("a", "b", "c", "d")
print "t1=", t1
print "t2=", t2
t3 = t1 + t2
print "t1+t2=", t3
del t1
del t2
del t3
print "\n"
#dictionary  字典类型变量

dic1 = {}
dic1[1] = "a"
dic1[2] = "b"
print "dic1.keys=", dic1.keys()
print "dic1[1]=", dic1[1]
print "dic1[2]=", dic1[2]
print "dic1=", dic1

dic2 = {0: 1, 1: 2, 2: 4, 3: 8, 4: 16, 5: 32}
dic2[6] = 64
dic2["FF"] = 255
print "dic2.keys=", dic2.keys()
print "dic2[3]=", dic2[3]
print "dic2[6]=", dic2[6]
print "dic2[FF]=", dic2["FF"]
print "dic2=", dic2
del dic1
del dic2
print "\n"
#datetime 日期时间类型
import time;

print "ticks=", time.time()
ltime = time.localtime(time.time())
print "localtime=", ltime
time.sleep(2)
ltime = time.asctime(time.localtime(time.time()))
print "localtime=", ltime

import calendar;

ltime = time.localtime(time.time())
print "calendar:", calendar.month(ltime.tm_year, ltime.tm_mon)

