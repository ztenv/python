// calc.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"
#include "calc.h"

double calcer::sum(double a,double b)
{
    double res=0;
    res=a+b;
    return res;
}

double calcer::sub(double  a,double  b)
{
    double res=0;
    res=a-b;
    return res;
}

double calcer::multi(double  a,double  b)
{
    double res=0;
    res=a*b;
    return res;
}

double calcer::div(double a,double b)
{
    double res=0;
    if(b!=0)
    {
        res=a/b;
    }
    return res;
}

extern "C"
{
    DLL_EXPORT double sum(double a,double b)
    {
        return cal.sum(a,b);
    }

    DLL_EXPORT double sub(double  a,double  b)
    {
        return cal.sub(a,b);
    }

    DLL_EXPORT double multi(double  a,double  b)
    {
        return cal.multi(a,b);
    }

    DLL_EXPORT double div(double  a,double  b)
    {
        return cal.div(a,b);
    }
}


