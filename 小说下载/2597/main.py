#-*-coding:utf-8 -*-
import sys
import requests
import time

reload(sys)
sys.setdefaultencoding('utf-8')
base_url="https://www.dianxs.com"
fi=open("2597.txt".decode("utf-8"),"w")

def request_context(title="",url=""):
    print "begin request:",title.decode("gb18030"),url.decode("gb18030")
    headers = {
                  'authority': 'www.dianxs.com',
                  'method': 'GET',
                  'path': url,
                  'scheme': 'https',
                 'accept': 'text / html, application / xhtml + xml, application / xml; q = 0.9, image / webp, image / '
                           'apng, * / *;q = 0.8',
                'accept - encoding': 'gzip, deflate, br',
                'accept - language': 'zh - CN, zh; q = 0.9',
                'cookie': 'Hm_lvt_a31054a7426c86cda177be73dff42b2d = 1550415957;Hm_lpvt_a31054a7426c86cda177be73dff42b2d = 1550415957',
                'referer': 'https: // www.dianxs.com / book / 73123 /',
                'upgrade - insecure - requests': '1',
                'user - agent': 'Mozilla / 5.0(Windows NT 6.1; Win64; x64) AppleWebKit / 537.36(KHTML, like Gecko) Chrome / 69.0 .3497 .81 Safari / 537.36'
    }
    res=requests.get(base_url+url,headers=headers)
    print res
    content=res.text[res.text.find("read-content")+14:res.text.rfind("</p>")]
    content=content[:content.rfind("</p>")].strip()
    content=content.replace("<p>","  ").replace("</p>","\n")
    print content
    fi.write(title.decode("gb18030")+"\n\n")
    fi.write(content+"\n\n")
    fi.flush()
    print "end request."
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
        title=line[line.find(">")+1:line.find("<")].strip()
        if len(url)>0:
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


