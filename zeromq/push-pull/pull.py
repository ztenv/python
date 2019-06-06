# -*- coding: utf-8 -*-
# @file   : pull.py
# @author : shlian
# @date   : 2019/6/6
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import signal

run_flag=True

async def start():
    context=zmq.asyncio.Context(io_threads=5)
    pull_socket=context.socket(socket_type=zmq.PULL)
    pull_socket.connect("tcp://127.0.0.1:46789")

    while(run_flag):
        data=await pull_socket.recv_json()
        print("recv:{0}".format(data))


def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,frame)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    asyncio.get_event_loop().run_until_complete(future=start())






