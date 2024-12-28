/**
 * Copyright (c) 2012 MIT License by 6.172 Staff
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 **/


 #include "./util.h"
 #include "./isort.h"

 #define THRESHOLD 10

 // Function prototypes
 static void merge_m3(data_t* A, int p, int q, int r);
 static void copy_m3(data_t* source, data_t* dest, int n);
 void sort_m3(data_t* A, int p, int r);

 // A basic merge sort routine that sorts the subarray A[p..r]
 void sort_m3(data_t* A, int p, int r) {
   assert(A);
   if (p < r) {
     if (r - p <= THRESHOLD) {
       isort(&A[p], &A[r]);
       return;
     }

     int q = (p + r) / 2;
     sort_m3(A, p, q);
     sort_m3(A, q + 1, r);
     merge_m3(A, p, q, r);
   }
 }

 // A merge routine. Merges the sub-arrays A [p..q] and A [q + 1..r].
 // Uses two arrays 'left' and 'right' in the merge operation.
 inline static void merge_m3(data_t* A, int p, int q, int r) {
    assert(A);
    assert(p <= q);
    assert((q + 1) <= r);
    int n1 = q - p + 1;
    int n2 = r - q;

    data_t* left = 0;
    mem_alloc(&left, n1 + 1);
    if (left == NULL) {
        mem_free(&left);
        return;
    }

    copy_m3(&(A[p]), left, n1);

    left[n1] = UINT_MAX;

    int i = 0;
    int j = q + 1;

    for (int k = 0; k < n1 + n2; k++) {
        if (j > r || (i < n1 && left[i] <= A[j])) {
            A[p + k] = left[i++];
        } else {
            A[p + k] = A[j++];
        }
    }

    mem_free(&left);
 }

 inline static void copy_m3(data_t* source, data_t* dest, int n) {
   assert(dest);
   assert(source);

   for (int i = 0 ; i < n ; i++) {
       *dest++ = *source++;
   }
 }
