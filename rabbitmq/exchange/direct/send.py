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
channel.exchange_declare(exchange='direct_exchange',exchange_type='direct')

msg='hello'
msg2='fffff'
for i in range(1,10):
    res=channel.basic_publish(exchange='',routing_key='hello',body=msg)
    print 'send message [{0}] {1}'.format(msg,res)

    res=channel.basic_publish(exchange='',routing_key='ff',body=msg2)
    print 'send message [{0}] {1}'.format(msg2,res)
    time.sleep(1)

channel.close()
connection.close()
