#coding=utf-8
#!/usr/bin/python
__author__ = 'lianshaohua'
import traceback
# IOError

filename = "asd2x.txt"
try:
    f = open(filename,"r")
except IOError,e:
    print "open",filename," file error:",e
    traceback.print_exc()
else:
    f.close()
del filename

# ZeroDivisionError

try:
    value = 100/0
except ZeroDivisionError,e:
    print "error:",e
    traceback.print_exc()
else:
    print value



# user-defined exception

class MyException(RuntimeError):
     def __init__(self,arg):
         self.arg = arg
try:
    raise MyException("test user-defined exception")
except MyException,ex:
    print ex.arg
    traceback.print_exc()
