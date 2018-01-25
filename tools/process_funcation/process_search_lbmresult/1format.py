# -*- coding=utf-8 -*-

f=open("lbm_call_mid_list.txt",encoding='utf-8')
wf=open("2format.txt",mode='w',encoding='utf-8')
for line in f:
    sub1=line[:line.find(":")+1]
    sub2=line[line.rfind(",")+1:]
    sub2=sub2[sub2.find("\"")+1:sub2.find(")")]
    if sub2.find("\"")!=-1:
        sub2=sub2[:sub2.find("\"")]
    print(sub1,"          ",sub2)
    sub=sub1+"      "+sub2+"\n"
    wf.write(sub)
f.close()
wf.close()