# -*- coding: utf-8 -*-
# @file   : push.py
# @author : shlian
# @date   : 2019/6/6
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import datetime
import signal
import sys
import json

run_flag=True

async def start(name):
    context=zmq.asyncio.Context(io_threads=2)
    push_socket=context.socket(socket_type=zmq.PUSH)
    push_socket.bind("tcp://*:46789")
    send_count=0
    interval=1
    index=0
    while(run_flag):
        index+=1
        data={"timestamp":int(datetime.datetime.now().timestamp()*1000),
            "index":index,
            "date":datetime.datetime.now().strftime("%Y-%m-%d"),
            "time":datetime.datetime.now().strftime("%H:%M:%S"),
            "name":name}
        data_str=json.dumps(data,ensure_ascii=False)
        push_socket.send_json(data_str)
        print("push:{0}".format(data_str))
        send_count+=1
        await asyncio.sleep(interval)
        if send_count%10000==0:
            print("sleeping......{0} senconds".format(interval))
            send_count=0
            await asyncio.sleep(interval)

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,frame)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    name=sys.argv[0] if len(sys.argv)<=1 else sys.argv[1]
    asyncio.get_event_loop().run_until_complete(future=start(name))
