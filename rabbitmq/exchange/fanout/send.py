#-*- coding:utf-8 -*-
##
# @file send.py
# @brief direct exchange send demo
# @author shlian
# @version 1.0
# @date 2017-02-10

import sys
import time
import pika

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)
channel.exchange_declare(exchange='fanout_exchange',exchange_type='fanout')

msg='{index} hello'
msg2='{index} fffff'
for i in range(1,10):
    sendmsg1=msg.format(index=i)
    res=channel.basic_publish(exchange='',routing_key='hello',body=sendmsg1)
    print 'send message [{0}] {1}'.format(sendmsg1,res)

    sendmsg2=msg2.format(index=i)
    res=channel.basic_publish(exchange='',routing_key='ff',body=sendmsg2)
    print 'send message [{0}] {1}'.format(sendmsg2,res)
    time.sleep(1)

channel.close()
connection.close()
