#-*- coding:utf-8 -*-
##
# @file recv.py
# @brief direct exchange recv demo
# @author shlian
# @version 1.0
# @date 2017-02-10


import sys
import time
import pika

def callback(ch,methon,properties,body):
    print "Received %r" %(body)
    time.sleep(2)
    print "done"

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)

channel.exchange_declare(exchange='fanout_exchange',exchange_type='fanout')
result=channel.queue_declare()
channel.queue_bind(queue=result.method.queue,exchange='fanout_exchange')

channel.basic_consume(callback,queue=result.method.queue,no_ack=True)
channel.start_consuming()

channel.close()
connection.close()
