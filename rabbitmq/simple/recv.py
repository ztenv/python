# -*- coding: utf-8 -*-
##
# @file recv.py
# @brief 直接从队列接收消息
# @author shlian
# @version 1.0
# @date 2017-02-10
import sys
import time
import pika

def callback(ch,method,properties,body):
    print "Received %r" %(body)
    #time.sleep(2)
    print "done"

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)

channel.queue_declare(queue='hello')
channel.basic_consume(callback,queue='hello',no_ack=True)
channel.start_consuming()

channel.close()
connection.close()
