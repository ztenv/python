#-*-coding:utf-8 -*-
import sys
import requests
import time

reload(sys)
sys.setdefaultencoding('utf-8')
base_url="http://www.yangguiweihuo.com"

def request_context(title="",url=""):
    print "begin request:",title,url
    res=requests.get(base_url+url)
    res.encoding="gbk"
    print res
    content=res.text[res.text.find("book_text")+11:res.text.rfind("热书推荐")]
    content=content.replace("&nbsp;","")
    #print content
    f=open(".\\context\\"+title+".txt",mode="w")
    f.write(content)
    f.close()
    #str=str[0:str.find("</dd>")]
    #str=str.replace("contents\">","").replace("&quot;","").replace("<br />","").replace("&nbsp;","").replace("......看书的朋友，你可以搜搜“蓝色书吧”，即可第一时间找到本站哦。","")
    print "end request."
    #write_file(title,str)
    time.sleep(2)

def write_file(title="",content=""):
    #print title.decode()
    #print title.decode("utf-8").encode("gb2312")
    fi.write(title.decode("utf-8").encode("gb18030"))
    fi.write("\n")
    #try:
        #print content
    fi.write(content.encode("gb18030"))
    fi.write("\n")
    #except Exception as ee:
    #    print  ee


def read_url():
    fo=open("url.txt")
    for line in fo:
        if len(line.strip())<0:
            continue
        url=line[line.find("\"")+1:line.rfind("\"")].strip()
        title=line[line.rfind(">")+1:].strip()
        if len(url)>0 and url.find("/16")!=-1:
            print url," ",title.decode("gb18030")
            request_context(str(title),url)
    fo.close()

if __name__=="__main__":
    try:
        #fi=open("温柔的背叛.txt".decode("utf-8"),"a")
        read_url()
        #fi.flush()
        #fi.close()
    except Exception as ee:
        print  ee


