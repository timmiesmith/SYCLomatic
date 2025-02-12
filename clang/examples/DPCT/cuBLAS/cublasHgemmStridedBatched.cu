#include "cublas_v2.h"

void test(cublasHandle_t handle, cublasOperation_t transa,
          cublasOperation_t transb, int m, int n, int k, const __half *alpha,
          const __half *a, int lda, long long int stridea, const __half *b,
          int ldb, long long int strideb, const __half *beta, __half *c,
          int ldc, long long int stridec, int group_count) {
  // Start
  cublasHgemmStridedBatched(
      handle /*cublasHandle_t*/, transa /*cublasOperation_t*/,
      transb /*cublasOperation_t*/, m /*int*/, n /*int*/, k /*int*/,
      alpha /*const __half **/, a /*const __half **/, lda /*int*/,
      stridea /*long long int*/, b /*const __half **/, ldb /*int*/,
      strideb /*long long int*/, beta /*const __half **/, c /*__half **/,
      ldc /*int*/, stridec /*long long int*/, group_count /*int*/);
  // End
}
