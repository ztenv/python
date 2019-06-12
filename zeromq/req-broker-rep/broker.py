# -*- coding: utf-8 -*-
# @file   : broker.py
# @author : shlian
# @date   : 2019/6/11
# @version: 1.0
# @desc   :
import zmq
import zmq.asyncio
import asyncio
import signal
run_flag=True

async def start():
    context=zmq.asyncio.Context(io_threads=2)
    front_socket=context.socket(socket_type=zmq.ROUTER)
    backend_socket=context.socket(socket_type=zmq.DEALER)
    poller=zmq.asyncio.Poller()
    poller.register(front_socket,flags=zmq.POLLIN)
    poller.register(backend_socket,flags=zmq.POLLIN)
    front_socket.bind("tcp://*:55558")
    backend_socket.bind("tcp://*:55559")

    global run_flag
    while(run_flag):
        for event in await poller.poll(timeout=1):
            if event[1] & zmq.POLLIN:
                msg=await event[0].recv_multipart()
                if event[0]==front_socket:
                    print("front recv:{0}".format(msg))
                    await backend_socket.send_multipart(msg)
                    print("backend send:{0}".format(msg))
                else:
                    print("backend recv:{0}".format(msg))
                    await front_socket.send_multipart(msg)


def sig_handler(signum,frame):
    global run_flag
    run_flag=False
    print(signum,run_flag)
    asyncio.sleep(2)
    try:
        asyncio.get_event_loop().stop()
        asyncio.get_event_loop().close()
    except Exception as ee:
        print(ee)

if __name__=="__main__":
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    asyncio.get_event_loop().run_until_complete(future=start())









