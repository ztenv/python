# coding=utf-8
#!/usr/bin/python
__author__ = 'lianshaohua'
from common import ReadNumber

# if 语句

a = 0x1234
b = 0x665512
c = a * b
if c % 2 == 0:
    print c, "is even number"
elif c % 2 == 1:
    print c, "is odd number"
else:
    print c, "is not real number"

del a
del b
del c

# while 语句
count = ReadNumber.readint()
a = 0
s = 0
while (a <= count):
    s += a;
    a += 1;
print "sum(1..", count, ")=", s


#for 语句

li1 = "abcdefg1234567890"
for item in li1:
    print item,  #注意加个逗号即不会换行了
print "\n"

#########################################################
print "九九乘法表"
i = 1
while (i <= 9):
    j = 1
    while (j <= i):
        print j, "*", i, "=", i * j, " ",
        j += 1
    i += 1
    print ""
##########################################################
