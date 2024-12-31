# homework3

## write-up 6

### make

```bash
$ make
Elapsed execution time: 0.231844 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t

$ make VECTORIZE=1
Elapsed execution time: 0.077484 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t

$ make VECTORIZE=1 AVX2=1
Elapsed execution time: 0.071874 sec; N: 1024, I: 100000, __OP__: +, __TYPE__: uint32_t

```