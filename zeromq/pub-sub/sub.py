# -*- coding: utf-8 -*-
# @file   : sub.py
# @author : shlian
# @date   : 2019/6/5
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import signal

run_flag=True

async def start_sub():
    context=zmq.asyncio.Context(io_threads=3)
    sub_socket=context.socket(socket_type=zmq.SUB)
    sub_socket.connect("tcp://127.0.0.1:56789")
    sub_socket.setsockopt(zmq.SUBSCRIBE,b'')

    poller=zmq.asyncio.Poller()
    poller.register(sub_socket)

    while(run_flag):
        for event in await poller.poll():
            if event[1]==zmq.POLLIN:
                data=event[0].recv_json()
                print("recv:{0}".format(data))
        #recv_data=await sub_socket.recv_json()
        #print("recv:{0}".format(recv_data))

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,frame)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    asyncio.get_event_loop().run_until_complete(future=start_sub())
