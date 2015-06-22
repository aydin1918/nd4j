#include "pairwise_transform.h"


__device__ double op(double d1,double d2,double *params) {
      return d2;
}
__device__ double op(double d1,double *params) {
         return d1;
}

extern "C"
__global__ void softmax_strided_double(int n, int xOffset,int yOffset,double *dx, double *dy,int incx,int incy,double *params,double *result) {
        transform(n,xOffset,yOffset,dx,dy,incx,incy,params,result);

 }

