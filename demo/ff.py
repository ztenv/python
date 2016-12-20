#!/usr/bin/env python
# -*- coding: utf-8 -*-# Copyright (C) 
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
# 

import time
import json
import threading

ss="abcdefg"
print ss.capitalize()
print ss.encode(encoding='utf-8')

map={1:"1",2:"2"}
list=[1,2,3,4,5]
tup=(1,2,3,4,5)

var="{\"1\":\"2\"}"


def test(aa,bb,cc,dd):
    pass

def fff():
    pass

def www():
    print "www"

if __name__=="__main__":
    print ss
    print map
    print list
    print tup

    try:
        json.loads(ss, encoding=None, cls=None, object_hook=None,parse_float=None, parse_int=None, parse_constant=None, object_pairs_hook=None)
    except Exception as err:
        print err

    map["list"]=list
    map["tup"]=tup
    print "json.dumps map object:", json.dumps(map)
    time.sleep(0.1)
    print json.dumps(var)
    print time.localtime()
    print "exit"

