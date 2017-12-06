# -*- coding=utf-8 -*-
import sys
import operator
from numpy import *

reload(sys)
sys.setdefaultencoding("utf-8")

class kNN(object):
    def __init__(self):
        pass

    # k-近邻算法
    def classify(self,new_data=[],dataSet=array([]),labels=[],k=3):
        row_count=dataSet.shape[0]  #取行数
        #print "tmpMat=",tile(new_data,(row_count,1))  # Build a Matrix of dataSetSize rows and one col
        diffMat=tile(new_data,(row_count,1))-dataSet  # 矩阵相减
        sqDiffMat=diffMat**2    #矩阵元素值的平方
        sqDistance=sqDiffMat.sum(axis=1) #矩阵的行加和
        distances=sqDistance**0.5  #元素的1/2次方
        sortedDistIndicies=distances.argsort()   #把distances的值从小到大排序，并返回排序前的索引值
        classCount={}
        for i in range(k):
            index=labels[sortedDistIndicies[i]]  #根据索引值，取前k个最小的距离
            classCount[index]=classCount.get(index,0)+1
        sortedClassCount=sorted(classCount.iteritems(),key=operator.itemgetter(1),reverse=True)
        print sortedClassCount
        return sortedClassCount[0][0]


if __name__=="__main__":
    group=array([[1.0,1.1],[1.0,1.0],[0,0],[0,0.1]])
    labels=['A','A','B','B']
    knn=kNN()
    res=knn.classify([100,100],group,labels,3)
    print res
