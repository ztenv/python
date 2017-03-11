##
# @file recv.py
# @brief direct exchange recv demo
# @author shlian
# @version 1.0
# @date 2017-02-10


#-*- coding:utf-8 -*-
import sys
import time
import pika

def callback(ch,methon,properties,body):
    print "Received %r" %(body)
    time.sleep(2)
    print "done"

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)

channel.exchange_declare(exchange='direct_exchange',exchange_type='direct')
result=channel.queue_declare()
channel.queue_bind(queue=result.method.queue,exchange='direct_exchange',routing_key='hello')#只接收routing_key为hello的消息

channel.basic_consume(callback,queue='hello',no_ack=True)
channel.start_consuming()

channel.close()
connection.close()
