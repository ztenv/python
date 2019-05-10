from PIL import Image
import tesserocr

class verification_code(object):

    def __init__(self):
        self._threshold=110
        self._threshold_table=[]

    def _build_threshold(self):
        for n in range(256):
            self._threshold_table.append(0 if n<self._threshold else 1)

    def discern(self,picture_name):
        self._img=Image.open(picture_name)
        self._img=self._img.convert('L')
        self._img.show()
        self._build_threshold()
        self._img=self._img.point(self._threshold_table,'1')
        result=tesserocr.image_to_text(self._img)
        print(result)


if __name__=="__main__":
    vc=verification_code()
    vc.discern("..\\pictures\\1.jpg")


