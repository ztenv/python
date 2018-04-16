#-*-coding:utf-8 -*-
import sys
import requests
import time

reload(sys)
sys.setdefaultencoding('utf-8')
base_url="http://www.qianqianxs.com/"
#http://www.qianqianxs.com/14/14645/
fi=open("怪医圣手.txt".decode("utf-8"),"w")

def request_context(title="",url=""):
    print "begin request:",title.decode("gb18030"),url.decode("gb18030")
    res=requests.get(base_url+url)
    res.encoding="gbk"
    print res
    content=res.text[res.text.find("content-ext")+13:res.text.rfind("<center>")]
    content=content.replace("&nbsp;","")
    content=content.replace("</div>","")
    content=content.replace("<br />","")
    print content
    fi.write(title.decode("gb18030")+"\n\n")
    fi.write(content+"\n\n")
    fi.flush()
    #f=open(".\\context\\"+title+".txt",mode="w")
    #f.write(content)
    #f.close()
    #str=str[0:str.find("</dd>")]
    #str=str.replace("contents\">","").replace("&quot;","").replace("<br />","").replace("&nbsp;","").replace("......看书的朋友，你可以搜搜“蓝色书吧”，即可第一时间找到本站哦。","")
    print "end request."
    #write_file(title,str)
    time.sleep(10)

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
        if len(url)>0 and url.find("/0")!=-1:
            print url," ",title.decode("gb18030").strip()
            request_context(str(title),url)
    fo.close()

if __name__=="__main__":
    try:
        read_url()
        fi.flush()
        fi.close()
    except Exception as ee:
        print  ee


