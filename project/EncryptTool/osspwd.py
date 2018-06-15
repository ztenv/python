# -*- coding:utf-8 -*-
#function： 把用户表AUTH_INFO的insert语句写入txt脚本,其中密码固定为123123
import sys
import ctypes
import math
from ctypes import *
#test = cdll.LoadLibrary(r'C:\Users\st.PJHom\AppData\Local\Programs\Python\Python37-32\encrypt.dll')
#如果有问题请输入加密dll库的绝对路径
test = cdll.LoadLibrary(r'.\encrypt.dll')

code_buffer = input('请输入一个数字类型的起始客户号:')
num_bufer = input('请输入需要加密的客户号数量:')
page_size=input('请输入每个txt文本中记录数量:')
user_code = int(code_buffer)
num = int(num_bufer)

sqlHead = 'INSERT INTO dbo.AUTH_INFO' + '(' + '' + 'USER_CODE, USER_ROLE, USE_SCOPE, \
    AUTH_TYPE, AUTH_DATA, SET_DATE, FAIL_NUM, LOCK_TIME, LAST_LOGIN_TIME, LAST_LOGIN_SITE,\
    LAST_LOGIN_CHNL, CHK_FLAG' + ')' + 'VALUES' + '('
sqlDiffer =  ", '1', '0', '0','"
sqlDiffer2 = ", '1', '1', '0','"
sqlTail = "', 20180606, 0, '2018-06-06 13:29:05.19', '2018-06-06 13:29:05.19', \
    '1:192.168.40.90;192.168.150.1', '0', '1'" + ')'+';\n'

#参数变量类型定义
test.kbss_encrypt.argtypes=[c_char_p,c_int,c_char_p,c_char_p]
buffer = create_string_buffer(b'\000'*32)

interval = int(page_size)               #每一个txt文本中insert记录的数量
segment = math.ceil(num/ interval)      #txt文本数量
prev = 0                                #用户码起始序列
next = prev + interval
for i in range(0,segment):
    with open('a' + str(i) + '.txt', 'w') as file_object:   #打开txt,没有则新建
        if i < segment-1:                                     #非尾页txt
            next = prev + interval
        else:
            next = prev + num - interval * (segment - 1)      #最后一个txt
        j = prev
        code_base = user_code+1
        #加密并写入txt，一次写两条
        for j in range (prev,next):
            user_code = code_base + j - prev
            test.kbss_encrypt(buffer, 256,b'123123',str(user_code).encode('utf-8'))
            strSql = sqlHead + str(user_code)+ sqlDiffer + (buffer.value).decode('utf-8') + sqlTail
            file_object.write(strSql)
            strSql = sqlHead + str(user_code) + sqlDiffer2 + (buffer.value).decode('utf-8') + sqlTail
            file_object.write(strSql)
        prev = next+1