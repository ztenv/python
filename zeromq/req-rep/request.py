# -*- coding: utf-8 -*-
# @file   : request.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
import asyncio
import zmq
import zmq.asyncio
import json
import datetime
import signal
import sys

run_flag=True
async def start(name):
    context=zmq.asyncio.Context(io_threads=1)
    req_socket=zmq.asyncio.Socket(context,zmq.REQ)
    req_socket.connect("tcp://127.0.0.1:5555")

    global run_flag
    while(run_flag):
        msg={"time":datetime.datetime.now().timestamp(),"name":name}
        await req_socket.send_json(json.dumps(msg,ensure_ascii=False))
        print("recv:{}".format(await req_socket.recv_json()))
        #await asyncio.sleep(1)

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,run_flag)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    asyncio.get_event_loop().run_until_complete(future=start(sys.argv[1]))
