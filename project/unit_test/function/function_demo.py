# -*- coding: utf-8 -*-
# @file   : function_demo.py
# @author : shlian
# @date   : 2019/8/22
# @version: 1.0
# @desc   :
import math

def add(a,b):
    return a+b

def sub(a,b):
    return a-b

def multi(a,b):
    return a*b

def div(a,b):
    if b==0:
        raise ValueError("invalid value:0")
    return a/b

def sqrt(a):
    if a<0:
        raise ValueError("invalid value:{0}".format(a))
    else:
        return math.sqrt(a)
