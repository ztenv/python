#pragma once

#define DLL_EXPORT __declspec(dllexport)

class calcer
{
public:
    calcer()
    {}
    ~calcer()
    {}

    double sum(double a,double b);
    double sub(double  a,double  b);
    double multi(double  a,double  b);
    double div(double a,double b);
};

extern "C"
{
    calcer cal;
    DLL_EXPORT double sum(double a,double b);
    DLL_EXPORT double sub(double  a,double  b);
    DLL_EXPORT double multi(double  a,double  b);
    DLL_EXPORT double div(double a,double b);
}
