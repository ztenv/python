#!/usr/bin/python
# -*- coding: utf-8 -*-

import os

if __name__=="__main__":
    li=[]
    for i in range(0,10,2):
        li.append(i*i)

    for item in li:
        print item,
    print

    li.pop(1)
    print li