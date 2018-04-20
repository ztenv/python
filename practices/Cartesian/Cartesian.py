# -*- coding=utf-8 -*-
import itertools

a=[1,2,3,4]
b=[5,6,7,8]
c=[9,10,11,12]
d=[13,14,15,16]
e=[17,18,19,20]

l=[a,b,c,d,e]


for item in itertools.product(*l):
    print(item)