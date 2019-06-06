# -*- coding: utf-8 -*-
# @file   : broker.py
# @author : shlian
# @date   : 2019/6/6
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import signal
import sys
import json

run_flag=True

async def start():
    context=zmq.asyncio.Context(io_threads=5)
    router_socket=context.socket(socket_type=zmq.ROUTER)
    router_socket.bind("tcp://*:19876")
    poller=zmq.asyncio.Poller()
    poller.register(router_socket)

    global run_flag
    while(run_flag):
        for event in await poller.poll():
            if event[1] & zmq.POLLIN:
                data=await event[0].recv_multipart()
                print("recv:{0}".format(data))

                msg_data=json.loads(json.loads(data[1]))
                msg_data["name"]="router"
                data[1]=json.dumps(msg_data,ensure_ascii=False).encode("utf-8")
                await event[0].send_multipart(data)
            elif event[1] & zmq.POLLOUT:
                pass
            elif event[2] & zmq.POLLERR:
                print("error:{0},{1}".format(event[0],event[1]))

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,frame)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    name=sys.argv[0] if len(sys.argv)<=1 else sys.argv[1]
    asyncio.get_event_loop().run_until_complete(future=start())






