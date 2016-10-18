import sys
import os

def start():
    print "running..."
    map={}
    for i in xrange(5):
        map[i]=i+1
    print map.items()
    for i in range(5,10):
        map[i]=i+2
    print map.items()
    print "run"




if __name__=="__main__":
    start()
