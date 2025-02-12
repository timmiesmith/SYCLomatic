#include "cusolverDn.h"

void test(cusolverDnHandle_t handle, cublasSideMode_t left_right,
          cublasFillMode_t uplo, cublasOperation_t trans, int m, int n,
          const cuDoubleComplex *a, int lda, const cuDoubleComplex *tau,
          const cuDoubleComplex *c, int ldc) {
  // Start
  int buffer_size;
  cusolverDnZunmtr_bufferSize(
      handle /*cusolverDnHandle_t*/, left_right /*cublasSideMode_t*/,
      uplo /*cublasFillMode_t*/, trans /*cublasOperation_t*/, m /*int*/,
      n /*int*/, a /*const cuDoubleComplex **/, lda /*int*/,
      tau /*const cuDoubleComplex **/, c /*const cuDoubleComplex **/,
      ldc /*int*/, &buffer_size /*int **/);
  // End
}
