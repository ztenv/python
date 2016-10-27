#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import sys

if __name__=="__main__":
    map={}

    for i in xrange(1,10,1):
        map[i]=i*2

    print "keys={0}".format(map.keys())
    print "values={0}".format(map.values())
    print "itmes={0}".format(map.items())
