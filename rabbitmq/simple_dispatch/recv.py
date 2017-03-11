# -*- coding:utf8 -*-
##
# @file recv.py
# @brief 启用负载，多个消费者轮询消费消息
# @author shlian
# @version 1.0
# @date 2017-02-10


import sys
import time
import pika

def callback(ch,methon,properties,body):
    print "Received %r" %(body)
    time.sleep(1)
    print "done"

connection=pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel=connection.channel(channel_number=1)

channel.queue_declare(queue='hello_dispatch')
channel.basic_qos(prefetch_count=1)
channel.basic_consume(callback,queue='hello_dispatch',no_ack=True)
channel.start_consuming()

channel.close()
connection.close()
