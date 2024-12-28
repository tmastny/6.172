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
 static void merge_m(data_t* A, int p, int q, int r);
 static void copy_m(data_t* source, data_t* dest, int n);
 void sort_m(data_t* A, int p, int r);

 // A basic merge sort routine that sorts the subarray A[p..r]
 void sort_m(data_t* A, int p, int r) {
   assert(A);
   if (p < r) {
     if (r - p <= THRESHOLD) {
       isort(&A[p], &A[r]);
       return;
     }

     int q = (p + r) / 2;
     sort_m(A, p, q);
     sort_m(A, q + 1, r);
     merge_m(A, p, q, r);
   }
 }

 // A merge routine. Merges the sub-arrays A [p..q] and A [q + 1..r].
 // Uses two arrays 'left' and 'right' in the merge operation.
 inline static void merge_m(data_t* A, int p, int q, int r) {
    assert(A);
    assert(p <= q);
    assert((q + 1) <= r);
    int n1 = q - p + 1;


    data_t* left = 0;
    mem_alloc(&left, n1 + 1);
    if (left == NULL) {
        mem_free(&left);
        return;
    }

    copy_m(&(A[p]), left, n1);
    data_t* right = &A[q + 1];

    left[n1] = UINT_MAX;

    data_t* a_k = &A[p];
    data_t* left_i = left;
    data_t* right_j = right;
    while (left_i < left + n1 && right_j <= &A[r]) {
        if (*left_i <= *right_j) {
            *a_k++ = *left_i++;
        } else {
            *a_k++ = *right_j++;
        }
    }

    while (left_i < left + n1) {
        *a_k++ = *left_i++;
    }

    mem_free(&left);
 }

 inline static void copy_m(data_t* source, data_t* dest, int n) {
   assert(dest);
   assert(source);

   for (int i = 0 ; i < n ; i++) {
       *dest++ = *source++;
   }
 }
