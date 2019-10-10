# -*- coding: utf-8 -*-
# @file   : decorator.py
# @author : shlian
# @date   : 2019/10/10
# @version: 1.0
# @desc   :

def invoke_logger(func):
    def wrapper(*args,**kwargs):
        print("starting invoke {} with args:{}".format(func.__name__,args))
        res=func(*args,**kwargs)
        print("res={}".format(res))
        print("stopped invoke {}".format(func.__name__))
        return res
    return wrapper

@invoke_logger
def sum(a,b):
    return a+b

@invoke_logger
def sub(a,b):
    return a-b

if __name__=="__main__":
    sum(10,100)
    sub(10,100)