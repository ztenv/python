from socket import *
from time import ctime
import time


if __name__=="__main__":
    tcpclient=socket(AF_INET,SOCK_STREAM)
    tcpclient.connect(('192.168.72.143',10000))

    while True:
        try:
           print "sending..."
           tcpclient.send("hello server %s" %ctime())
           print "sent"
           data=tcpclient.recv(1024)
           if len(data)!=0:
               print "recv:",data
           else:
               break
        except Exception as e:
            print "send error:",e
        finally:
            time.sleep(1)

