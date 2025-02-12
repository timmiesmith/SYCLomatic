#include "cublas_v2.h"

void test(cublasHandle_t handle, int64_t n, cuComplex *x, int64_t incx,
          cuComplex *y, int64_t incy, const float *c, const float *s) {
  // Start
  cublasCsrot_64(handle /*cublasHandle_t*/, n /*int64_t*/, x /*cuComplex **/,
                 incx /*int64_t*/, y /*cuComplex **/, incy /*int64_t*/,
                 c /*const float **/, s /*const float **/);
  // End
}
