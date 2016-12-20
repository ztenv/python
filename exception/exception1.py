#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 
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
__version__ = '1.0.0.0'
import traceback
import os


class Base(object):
    def __init__(self):
        pass

    def process(self):
        print 'invoke process'
        try:
            i=10
            j=0

            k=i/j
        except Exception as ee:
            print 'Exception:'
            traceback.print_exc()
            print '--------------------------------'
            print traceback.format_exc(ee)

    def process2(self):
        print 'invoke process2'
        mm={1:"1",2:"2"}

        try:
            item=mm[3]
            print item
        except Exception as err:
            print traceback.format_exc(err)


if __name__=='__main__':
    b=Base()
    b.process()
    b.process2()




