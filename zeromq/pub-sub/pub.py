# -*- coding: utf-8 -*-
# @file   : pub.py
# @author : shlian
# @date   : 2019/6/5
# @version: 1.0
# @desc   :
import sys
import zmq
import zmq.asyncio
import asyncio
import signal
import json
import datetime

run_flag=True

async def start_pub(name):
    context=zmq.asyncio.Context(io_threads=1)
    pub_socket=context.socket(socket_type=zmq.PUB)
    pub_socket.bind("tcp://127.0.0.1:56789")
    interval=1

    send_count=0
    while(run_flag):
        data={"timestamp":int(datetime.datetime.now().timestamp()*1000),
              "date":datetime.datetime.now().strftime("%Y-%m-%d"),
              "time":datetime.datetime.now().strftime("%H:%M:%S"),
              "name":name}
        json_str=json.dumps(data,ensure_ascii=False)
        await pub_socket.send_json(json_str)
        print("pub:{0}".format(json_str))
        send_count+=1
        if(send_count%10000==0):
            print("sleeping......{0} senconds".format(interval))
            await asyncio.sleep(interval)

def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,frame)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    name=sys.argv[0] if len(sys.argv)<=1 else sys.argv[1]
    asyncio.get_event_loop().run_until_complete(future=start_pub(name))
