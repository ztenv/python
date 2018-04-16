# -*- coding=utf-8 -*-
import sys
import matplotlib
import matplotlib.pyplot as plt
import numpy as np

reload(sys)
sys.setdefaultencoding("utf-8")


if __name__=="__main__":
    data=np.random.rand(1000,3)
    data[0][0]=1.5
    data[0][1]=1.5
    fig=plt.figure()
    #plt.plot(data[:,1],color="red")
    #plt.plot(data[:,2],color="blue")
    ax=fig.add_subplot(111)
    ax.set(xlabel="Time of playing game",ylabel="Time of sport",title="Scatter Demo")
    labels=np.random.rand(1000,3)
    ax.scatter(data[:,1],data[:,2],np.array(labels),np.array(labels))
    plt.show()

    plt.subplot(111)
    plt.ylim(-10,10)
    plt.xlim(-10,10)
    #{
    x=np.arange(-10,10,0.01)
    y=x
    plt.plot(x,y,label='y=x')
    # }
    #{ draw y=x*x
    x=np.arange(-3,3,0.01)
    y=x**2
    plt.plot(x,y,label='y=x**2')
    #}

    #{ draw y=x*x*x
    x=np.arange(-3,3,0.01)
    y=x**3
    plt.plot(x,y,label='y=x**3')
    #}
    #{
    x=np.arange(0,3,0.01)
    y=x**0.5
    plt.plot(x,y,label='y=x**0.5')
     #}
    #{
    #x=np.arange(0,3,0.01)
    #y=x**(1/3.0)
    #plt.plot(x,y)
    # }
    x=np.arange(0,2*np.pi,0.01)
    y=np.sin(x)
    plt.plot(x,y,label='y=sin(x)')
    # }
    #{
    x=np.arange(0,2*np.pi,0.01)
    y=np.cos(x)
    plt.plot(x,y,label='y=cos(x)')
    # }

    plt.legend()
    plt.show()


    #plt.style.use("ggplot")
    #fig1=plt.figure()
    #ax2=fig1.add_subplot(111,projection='3d')
    #x=np.random.rand(1,30)
    #y=np.random.rand(1,30)
    #z=np.random.rand(1,30)
    #x2=np.random.rand(1,30)
    #y2=np.random.rand(1,30)
    #z2=np.random.rand(1,30)
    #ax2.scatter(x,y,z)
    #ax2.scatter(x2,y2,z2)
    #ax2.set_xlabel("x")
    #ax2.set_ylabel("y")
    #ax2.set_zlabel("z")
    #plt.show()

