#-*-coding:utf-8 -*-
import sys
import os
reload(sys)
sys.setdefaultencoding('utf-8')

fw=open("wrdbp.txt",mode='w')
for (root, dirs, files) in os.walk(".\\context\\"):
    for filename in files:
        fname=os.path.join(root,filename.decode("gb18030"))
        print fname
        f=open(fname,mode='r')
        fw.write(filename.decode("gb18030")+"\n")
        for line in f:
            if line.find("<br")!=0:
                print "  "+line.strip()+"\n"
                fw.write(line)
        f.close()
fw.close()
#f=open(".\\context\\"+"001 胸罩上的液体.txt".encode("gb18030"),mode='r')
#fw=open(".\\context\\"+"001 胸罩上的液体.txt.tmp".encode("gb18030"),mode='w')
#for line in f:
#    if len(line)>0:
#        print line.strip()
#        fw.write(line.strip()+"\n")
#f.close()
#fw.close()
