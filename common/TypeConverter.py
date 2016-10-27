#coding=utf-8
#!/usr/bin/python
__author__ = 'lianshaohua'

#数据类型转换

#整数
def  printnumber(string,base):
    print "(", string, ")=", int(string,base)
    return

str1 = "1010"
printnumber(str1,2)

#长整型
str1 = "21"
printnumber(str1,3)
#浮点数
str1 = "432.1"
print "(",str1,")=",float(str1)

#复数
cn = complex(3,20)
print "complex number:",cn
str1 = str(cn)
print "complex number:",str1

#字符
def printASCII(ch):
    print ch,"=",ord(ch)
    print ch,"=",hex(ord(ch))
    print ch,"=",oct(ord(ch))
    return

printASCII('A')
printASCII('@')