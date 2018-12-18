import sys
import os
import traceback
from PIL import Image

class image_resizer(object):
    def __init__(self,base_path="./pics"):
        self._base_path=base_path
        self._pictures=[".jpg",".jpeg",".png",".bmp",".tif"]

    def _find_all_pictures(self,base_path):
        print("base_path:{0}".format(base_path))
        for root,dirs,files in os.walk(base_path):
            for dirname in dirs:
                self._find_all_pictures(dirname)
            for filename in files:
                full_name=os.path.join(root,filename)
                if full_name[full_name.rfind("."):] in self._pictures:
                    yield full_name
                else:
                    continue

    def _resize_picture(self,file_name):
        image= Image.open(file_name)
        w,h=image.size
        print("width={0},height={1}".format(w,h))
        scale=1024/w if(1024/w>1024/h) else 1024/h
        w=w*scale
        h=h*scale
        if(w>=1024)and(h>=1024):
            print("new_width={0},new_height={1}".format(w,h))
            new_image=image.resize((int(w),int(h)))
            new_image=new_image.convert('RGB')
            new_image.save("{0}-new{1}".format(file_name[:file_name.rfind(".")],file_name[file_name.rfind("."):]))
            new_image.close()
        image.close()

    def resize_all(self):
        base_path=os.getcwd()
        for item in self._find_all_pictures(base_path):
            print(item)
            try:
                self._resize_picture(item)
            except Exception as ee:
                print("ErrorMessage:{0}".format(ee))
                print(traceback.format_exc())

if __name__=="__main__":
    ir=image_resizer()
    ir.resize_all()

#if __name__=="__main__":
#    image_file=sys.argv[1]
#    image=Image.open(image_file)
#    w,h=image.size
#    print("width={0},height={1}".format(w,h))
#    scale=1024/w if(1024/w>1024/h) else 1024/h
#    print("scale={0}".format(scale))
#    w=w*scale
#    h=h*scale
#    if(w>=1024)and(h>=1024):
#        print("new_width={0},new_height={1}".format(w,h))
#        new_image=image.resize((int(w),int(h)))
#        new_image.save("new-{}".format(image_file))
#        new_image.close()
#    image.close()
