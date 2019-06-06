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
import datetime

run_flag=True

async def start():
    context=zmq.asyncio.Context(io_threads=5)
    dealer_socket=context.socket(socket_type=zmq.DEALER)
    dealer_socket.connect("tcp://127.0.0.1:19876")
    poller=zmq.asyncio.Poller()
    poller.register(dealer_socket)

    global run_flag
    index=0
    interval=1
    while(run_flag):
        for event in await poller.poll():
            if event[1] & zmq.POLLIN:
                data=await event[0].recv_json()
                print("recv:{0}".format(data))
            elif event[1] & zmq.POLLOUT:
                data={"name":"dealer",
                      "timestamp":datetime.datetime.now().timestamp(),
                      "date":datetime.datetime.now().strftime("%Y-%m-%d"),
                      "time":datetime.datetime.now().strftime("%H:%M:%S")}
                data_str=json.dumps(data,ensure_ascii=False)
                await event[0].send_json(data_str)
                print("send:{0}".format(data_str))
                index+=1
                if index%100==0:
                    index=0
                    print("sleeping...{0} seconds".format(interval))
                    await asyncio.sleep(interval)
            elif event[1] & zmq.POLLERR:
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






