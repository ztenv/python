#coding=utf-8
#!/usr/bin/python
__author__ = 'lianshaohua'
import traceback;

def readint():
    """


    :return: 输入的整数
    """
    num = 0
    while 1:
        num = raw_input("please input one number(such as:10):")
        try:
            num = int(num,10)
            break
        except ValueError, e:
            traceback.print_exc()
    return num



