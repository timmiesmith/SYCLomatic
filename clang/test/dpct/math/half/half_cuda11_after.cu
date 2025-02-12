// UNSUPPORTED: cuda-8.0, cuda-9.0, cuda-9.1, cuda-9.2, cuda-10.0, cuda-10.1, cuda-10.2
// UNSUPPORTED: v8.0, v9.0, v9.1, v9.2, v10.0, v10.1, v10.2
// RUN: dpct --format-range=none -out-root %T/math/half/half_cuda11_after %s --cuda-include-path="%cuda-path/include" -- -x cuda --cuda-host-only
// RUN: FileCheck %s --match-full-lines --input-file %T/math/half/half_cuda11_after/half_cuda11_after.dp.cpp
// RUN: %if build_lit %{icpx -c -fsycl %T/math/half/half_cuda11_after/half_cuda11_after.dp.cpp -o %T/math/half/half_cuda11_after/half_cuda11_after.dp.o %}

#include "cuda_fp16.h"

__global__ void kernelFuncHalfConversion() {
  half h;
  half2 h2;
  double d;
  // CHECK: h = sycl::half(d);
  h = __double2half(d);
  // CHECK: h2 = sycl::half2(h, h);
  h2 = make_half2(h, h);
}

int main() {
  kernelFuncHalfConversion<<<1, 1>>>();
  return 0;
}
