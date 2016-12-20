#!/usr/bin/python
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

import threading
import time

class thr(object):
    def __init__(self):
        pass

    def _r1(self,name,):
        print "_r1",name ," is running"
        for i in xrange(1,10,1):
            print i
            time.sleep(1)

    def _r2(self):
        print "_r2 ", " is running"
        for i in xrange(1,10,1):
            print i
            time.sleep(1)

    def start1(self):
        self._t1=threading.Thread(target=self._r1,args=("t1",))#这两个线程将会被并行执行
        self._t1.setDaemon(True)
        self._t1.start()
        self._t2=threading.Thread(target=self._r1,args=("t2",))#这两个线程将会被并行执行
        self._t2.setDaemon(True)
        self._t2.start()


    def start2(self):
        self._t11=threading.Thread(target=self._r2())#这两个线程将会被串行执行
        self._t11.setDaemon(True)
        self._t11.start()
        self._t12=threading.Thread(target=self._r2())#这两个线程将会被串行执行
        self._t12.setDaemon(True)
        self._t12.start()

    def wait(self):
        try:
            if self._t1 and self._t2:
                self._t1.join()
                self._t2.join()
            if self._t11 and self._t12:
                self._t11.join()
                self._t12.join()
        except Exception as err:
            print err

if __name__=="__main__":
    t=thr()
    t.start1()
    t.start2()
    t.wait()
