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
#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import socket

def reslove_dns():
    dns=sys.argv[1]
    try:
        results=socket.getaddrinfo(dns,None)
        print results
        for res in results:
            print res[4][0]
    except Exception as err:
        print err
    return


if __name__=="__main__":
    if len(sys.argv)==1:
        print "usage:python {0} {1}".format(__file__,"www.163.com")
    else:
        reslove_dns()

