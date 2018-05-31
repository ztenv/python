#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @file   : callC++.py
# @author : shlian
# @date   : 2018/5/31
# @version: 1.0
# @desc   :
import ctypes

class interface(object):
    def __init__(self):
        self._dll_file="calc.dll"
        self._calc=ctypes.cdll.LoadLibrary(self._dll_file)

    def sum(self,a,b):
        self._calc.sum.restype=ctypes.c_double
        return self._calc.sum(ctypes.c_double(a),ctypes.c_double(b))

    def sub(self,a,b):
        self._calc.sub.restype=ctypes.c_double
        return self._calc.sub(ctypes.c_double(a),ctypes.c_double(b))

    def multi(self,a,b):
        self._calc.multi.restype=ctypes.c_double
        return self._calc.multi(ctypes.c_double(a),ctypes.c_double(b))

    def div(self,a,b):
        self._calc.div.restype=ctypes.c_double
        return self._calc.div(ctypes.c_double(a),ctypes.c_double(b))


if __name__=="__main__":

    inter=interface()
    print(inter.sum(100,200))
    print(inter.sub(100,200))
    print(inter.multi(100,200))
    print(inter.div(100.0,200))

