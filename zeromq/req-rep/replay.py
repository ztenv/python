# -*- coding: utf-8 -*-
# @file   : replay.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
import asyncio
import zmq
import zmq.asyncio
import signal

run_flag=True

async def start():
    context=zmq.asyncio.Context(io_threads=5)
    rep_socket=zmq.asyncio.Socket(context,zmq.REP)
    rep_socket.bind("tcp://*:5555")

    global run_flag
    while(run_flag):
        msg= await rep_socket.recv_json()
        print(msg)
        await rep_socket.send_json(msg)

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,run_flag)


if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    asyncio.get_event_loop().run_until_complete(future=start())

