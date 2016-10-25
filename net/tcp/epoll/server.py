#!/usr/bin/python
#-*- coding:utf-8 -*-

import socket, logging
import select, errno
    
logger = logging.getLogger("network-server")
    
def InitLog():
    logger.setLevel(logging.DEBUG)
    
    fh = logging.FileHandler("network-server.log")
    fh.setLevel(logging.DEBUG)
    ch = logging.StreamHandler()
    ch.setLevel(logging.ERROR)
    
    formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
    ch.setFormatter(formatter)
    fh.setFormatter(formatter)
    
    logger.addHandler(fh)
    logger.addHandler(ch)
        
        
if __name__ == "__main__":
    InitLog()

    try:
        # ���� TCP socket ��Ϊ���� socket
        listen_fd = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
    except socket.error, msg:
        logger.error("create socket failed")

    try:
        # ���� SO_REUSEADDR ѡ��
        listen_fd.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    except socket.error, msg:
        logger.error("setsocketopt SO_REUSEADDR failed")

    try:
        # ���� bind -- �˴�δָ�� ip ��ַ���� bind ��ȫ������ ip ��
        listen_fd.bind(('', 20003))
    except socket.error, msg:
        logger.error("bind failed")

    try:
        # ���� listen �� backlog ��
        listen_fd.listen(10)
    except socket.error, msg:
        logger.error(msg)
    
    try:
        # ���� epoll ���
        epoll_fd = select.epoll()
        # �� epoll �����ע�� ���� socket �� �ɶ� �¼�
        epoll_fd.register(listen_fd.fileno(), select.EPOLLIN)
    except select.error, msg:
        logger.error(msg)
        
    connections = {}
    addresses = {}
    datalist = {}
    while True:
        # epoll ���� fd ɨ��ĵط� -- δָ����ʱʱ����Ϊ�����ȴ�
        epoll_list = epoll_fd.poll()

        for fd, events in epoll_list:
            # ��Ϊ���� fd ������
            if fd == listen_fd.fileno():
                # ���� accept -- ����������� client �� ip �� port���Լ� socket ���
                conn, addr = listen_fd.accept()
                logger.debug("accept connection from %s, %d, fd = %d" % (addr[0], addr[1], conn.fileno()))
                # ������ socket ����Ϊ ������
                conn.setblocking(0)
                # �� epoll �����ע�� ���� socket �� �ɶ� �¼�
                epoll_fd.register(conn.fileno(), select.EPOLLIN | select.EPOLLET)
                # �� conn �� addr ��Ϣ�ֱ𱣴�����
                connections[conn.fileno()] = conn
                addresses[conn.fileno()] = addr
            elif select.EPOLLIN & events:
                # �� �ɶ� �¼�����
                datas = ''
                while True:
                    try:
                        # �Ӽ��� fd �� recv 10 �ֽ�����
                        data = connections[fd].recv(100)
                        # ����ǰû�н��յ����ݣ�����֮ǰ���ۼ�����Ҳû��
                        if not data and not datas:
                            # �� epoll ������Ƴ��� ���� fd
                            epoll_fd.unregister(fd)
                            # server �������رո� ���� fd
                            connections[fd].close()
                            logger.debug("%s, %d closed" % (addresses[fd][0], addresses[fd][1]))
                            break
                        else:
                            # �����յ�������ƴ�ӱ����� datas ��
                            datas += data
                    except socket.error, msg:
                        # �� ������ socket �Ͻ��� recv ��Ҫ���� ���� �����
                        # ����ʵ���������� ���� �� �쳣 �ķ�ʽ����������к�������
                        if msg.errno == errno.EAGAIN:
                            logger.debug("%s receive %s" % (fd, datas))
                            # ���ѽ������ݱ�������
                            datalist[fd] = datas
                            # ���� epoll ���������d ע���¼�Ϊ ��д
                            epoll_fd.modify(fd, select.EPOLLET | select.EPOLLOUT)
                            break
                        else:
                            # ������
                            epoll_fd.unregister(fd)
                            connections[fd].close()
                            logger.error(msg)
                            break
            elif select.EPOLLHUP & events:
                # �� HUP �¼�����
                epoll_fd.unregister(fd)
                connections[fd].close()
                logger.debug("%s, %d closed" % (addresses[fd][0], addresses[fd][1]))
            elif select.EPOLLOUT & events:
                # �� ��д �¼�����
                sendLen = 0
                # ͨ�� while ѭ��ȷ���� buf �е�����ȫ�����ͳ�ȥ        
                while True:
                    # ��֮ǰ�յ������ݷ��� client -- ͨ�� sendLen �����Ʒ���λ��
                    sendLen += connections[fd].send(datalist[fd][sendLen:])
                    # ��ȫ��������Ϻ��˳� while ѭ��
                    if sendLen == len(datalist[fd]):
                        break
                # ���� epoll ��������� fd ע���¼�Ϊ �ɶ�
                epoll_fd.modify(fd, select.EPOLLIN | select.EPOLLET)
            else:
                # ���� epoll �¼������д���
                continue
