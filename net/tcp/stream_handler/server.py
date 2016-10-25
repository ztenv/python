from SocketServer import TCPServer,ThreadingMixIn,StreamRequestHandler
from time import ctime

class Server(ThreadingMixIn,TCPServer):pass

con={}
def senddata():
    for key in con.keys():
        data=ctime()
        print "response:",key,data
        con[key].send(data)

class Handler(StreamRequestHandler):
    def handle(self):
        addr=self.request.getpeername()
        con[addr]=self
        print "got connection from",addr
        while True:
            try:
                data=self.request.recv(1024)
                if len(data)==0:
                    print "recv no data"
                    con.pop(addr)
                    break;
                else:
                    print "recv %s" % (data)
                    senddata()
            except Exception as e:
                print e
                break;
                con.pop(addr)

    def send(self,data):
        self.wfile.write(data);

if __name__=="__main__":
    server=Server(('',10000),Handler)
    server.serve_forever()

