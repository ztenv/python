# -*- coding:utf8 -*-
##
# @file recv.py
# @brief 向队列直接发送消息
# @author shlian
# @version 1.0
# @date 2017-02-10

import sys
import time
import pika

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)
channel.queue_declare(queue='hello_dispatch')

msg='{index} hello rabbitmq'
for i in range(1,100):
    sendmsg=msg.format(index=i)
    res=channel.basic_publish(exchange='',routing_key='hello_dispatch',body=sendmsg)
    print 'send message [{0}] {1}'.format(sendmsg,res)
    time.sleep(0.1)

channel.close()
connection.close()
