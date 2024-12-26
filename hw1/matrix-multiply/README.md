# matrix multiply

## compiler optimizations

debug:
```
ubuntu@dev:~/work/hw1/matrix-multiply$ ./matrix_multiply
Setup
Running matrix_multiply_run()...
Elapsed execution time: 2.039689 sec
```

01:
```
ubuntu@dev:~/work/hw1/matrix-multiply$ ./matrix_multiply
Setup
Running matrix_multiply_run()...
Elapsed execution time: 0.392536 sec
```

03:
```
ubuntu@dev:~/work/hw1/matrix-multiply$ ./matrix_multiply
Setup
Running matrix_multiply_run()...
Elapsed execution time: 0.412117 sec
```

## cache aware

1000x1000 on VM with 4g memory:

```
ubuntu@dev:~/work/hw1/matrix-multiply$ ./matrix_multiply
Setup
Running matrix_multiply_run()...
Elapsed execution time: 2.223864 sec
```

Swapping `j` and `k` loops in `matrix_multiply_run()`:

```
ubuntu@dev:~/work/hw1/matrix-multiply$ ./matrix_multiply
Setup
Running matrix_multiply_run()...
Elapsed execution time: 0.412740 sec
```

Why? 

Before:
```c
  for (int i = 0; i < A->rows; i++) {
    for (int j = 0; j < B->cols; j++) {
      for (int k = 0; k < A->cols; k++) {
        C->values[i][j] += A->values[i][k] * B->values[k][j];
      }
    }
  }
```

```
A                    B                    C
[a00  a01  a02]     [b00  b01  b02]     [c00  c01  c02]
[a10  a11  a12]     [b10  b11  b12]     [c10  c11  c12]
[a20  a21  a22]     [b20  b21  b22]     [c20  c21  c22]

c00 = a00*b00 + a01*b10 + a02*b20 "over k"
```

After: `A->values[i][k]` is fixed while we iterate over column of `B`.
This is much more efficient: a single memory read for `A` and iterating
in a cache-friendly manner for `B`. 
```c
  for (int i = 0; i < A->rows; i++) {
    for (int k = 0; k < A->cols; k++) {
      for (int j = 0; j < B->cols; j++) {
        C->values[i][j] += A->values[i][k] * B->values[k][j];
      }
    }
  }
```

We iterate over columns of `B`, which is a 
continuous block of memory, rather an pointers to different
columns that might need to be fetched from higher levels of cache.
```
"over j"
  j = 0         |     j = 1       |     j = 2  
  c00 = a00*b00 |   c00 = a01*b10 |   c00 = a02*b20
  c01 = a00*b01 |   c01 = a01*b11 |   c01 = a02*b21
  c02 = a00*b02 |   c02 = a01*b12 |   c02 = a02*b22

a entry constant,  b iterating cache aware

B row i  0     1      2
       [cols0  cols1  cols2]  
  
col1   [b10  b11  b12]
```