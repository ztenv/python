#-*-coding:utf-8 -*-
import sys
import requests
import time

reload(sys)
sys.setdefaultencoding('utf-8')
base_url="http://www.lanseshuba.com/seshu/5853/"

def request_context(title="",url=""):
    print "begin request:",title,url
    res=requests.get(base_url+url)
    res.encoding="gbk"
    str=res.text[res.text.find("contents"):res.text.rfind("</dd>")]
    str=str[0:str.find("</dd>")]
    str=str.replace("contents\">","").replace("&quot;","").replace("<br />","").replace("&nbsp;","").replace("......看书的朋友，你可以搜搜“蓝色书吧”，即可第一时间找到本站哦。","")
    print "end request."
    #print str
    print str.encode("gb18030")
    #write_file(title,str)
    time.sleep(1)

fi=open("灵车.txt".decode("utf-8"),"a")
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
            url=line[line.rfind("=\"")+2:line.find(".html")+5]
            if len(url)>0:
                title=line[line.find(".html\">")+7:]
                title=title.replace("</a></td>","")
                request_context(title,url)
                print url
                print title.replace("</a></td>","")
                print line
    fo.close()

if __name__=="__main__":
    try:
        read_url()
        fi.flush()
        fi.close()
    except Exception as ee:
        print  ee


