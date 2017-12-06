import threading
import time

def stepbystep():
    for i in range(1,10,1):
        for j in range(1,i+1,1):
            com=j*i
            print "%d*%d=%d" %(j,i,com),
            if(com<10):
                print "  ",
            else:
                print " ",
        print 

def stepbystep2():
    for i in range(1,10,1):
        for j in range(1,i+1,1):
            print "%d*%d=%2d " % (j,i,j*i),
        print 

if __name__=="__main__":
    th=threading.Thread(target=stepbystep,args=())
    th.setDaemon(True);
    th.start()
    th.join()

    th=threading.Thread(target=stepbystep2,args=())
    th.setDaemon(True)
    th.start()
    th.join()
