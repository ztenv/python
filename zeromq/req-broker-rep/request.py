# -*- coding: utf-8 -*-
# @file   : request.py
# @author : shlian
# @date   : 2019/6/10
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import datetime
import json
import signal
import sys

run_flag=True

async def start(name):
    context=zmq.asyncio.Context(io_threads=2)
    req_socket=context.socket(socket_type=zmq.REQ)
    poller=zmq.asyncio.Poller()
    poller.register(req_socket)
    req_socket.connect("tcp://127.0.0.1:55558")

    global run_flag
    while(run_flag):
        for event in await poller.poll(timeout=-1):
            if event[1] & zmq.POLLIN:
                data=json.loads(await event[0].recv_json())
                print("recv:{0}".format(data))
            elif event[1] & zmq.POLLOUT:
                data={"name":name,"timestamp":datetime.datetime.now().timestamp()}
                data_str=json.dumps(data,ensure_ascii=False)
                await event[0].send_json(data_str)
                print("send:{0}".format(data_str))
                await asyncio.sleep(1)
            elif event[1] & zmq.POLLERR:
                print("poll error:{0},{1}".format(event[0],event[1]))

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,run_flag)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    name=sys.argv[0] if len(sys.argv)<=1 else sys.argv[1]
    asyncio.get_event_loop().run_until_complete(future=start(name))
