 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (299 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000002190 <reverse>:
         : 6    reverse():
    0.33 :   2190:   lea    0x1(%rsi),%rax
    0.00 :   2194:   cmp    %rdx,%rax
    0.00 :   2197:   jae    240f <reverse+0x27f>
    0.00 :   219d:   push   %rbp
    0.00 :   219e:   push   %r15
    0.00 :   21a0:   push   %r14
    0.00 :   21a2:   push   %r13
    0.00 :   21a4:   push   %r12
    0.00 :   21a6:   push   %rbx
    0.00 :   21a7:   sub    $0x18,%rsp
    0.00 :   21ab:   mov    %rdi,%r15
    0.00 :   21ae:   mov    %rsi,%r14
    0.00 :   21b1:   shr    $0x3,%r14
    0.00 :   21b5:   mov    (%rdi),%rbp
    0.00 :   21b8:   shr    $0x3,%rbp
    0.00 :   21bc:   lea    0x1(%rbp),%rax
    0.00 :   21c0:   cmp    %rax,%r14
    0.00 :   21c3:   jne    21d0 <reverse+0x40>
    0.00 :   21c5:   mov    $0xff,%r12b
    0.00 :   21c8:   xor    %r11d,%r11d
    0.00 :   21cb:   mov    %rbp,%r14
    0.00 :   21ce:   jmp    21e9 <reverse+0x59>
    0.00 :   21d0:   mov    %esi,%ecx
    0.00 :   21d2:   and    $0x7,%cl
    0.00 :   21d5:   mov    $0xff,%r12b
    0.00 :   21d8:   shl    %cl,%r12b
    0.00 :   21db:   mov    %r12d,%r11d
    0.00 :   21de:   not    %r11b
    0.00 :   21e1:   mov    0x8(%r15),%rcx
    0.00 :   21e5:   and    (%rcx,%r14,1),%r11b
    0.00 :   21e9:   mov    %rdx,%rdi
    0.00 :   21ec:   shr    $0x3,%rdi
    0.00 :   21f0:   mov    %rdx,%rcx
    0.00 :   21f3:   and    $0x7,%rcx
    0.00 :   21f7:   je     220b <reverse+0x7b>
    0.00 :   21f9:   mov    $0xff,%r13b
    0.00 :   21fc:   cmp    %rax,%rdi
    0.00 :   21ff:   jne    221f <reverse+0x8f>
    0.00 :   2201:   xor    %r9d,%r9d
    0.00 :   2204:   cmp    %r14,%rbp
    0.00 :   2207:   jae    2238 <reverse+0xa8>
    0.00 :   2209:   jmp    2275 <reverse+0xe5>
    0.00 :   220b:   add    $0xffffffffffffffff,%rdi
    0.00 :   220f:   mov    $0xff,%r13b
    0.00 :   2212:   xor    %r9d,%r9d
    0.00 :   2215:   mov    %rdi,%rbp
    0.00 :   2218:   cmp    %r14,%rbp
    0.00 :   221b:   jae    2238 <reverse+0xa8>
    0.00 :   221d:   jmp    2275 <reverse+0xe5>
    0.00 :   221f:   shl    %cl,%r13b
    0.00 :   2222:   mov    0x8(%r15),%rax
    0.00 :   2226:   mov    (%rax,%rdi,1),%r9b
    0.00 :   222a:   and    %r13b,%r9b
    0.00 :   222d:   not    %r13b
    0.00 :   2230:   mov    %rdi,%rbp
    0.00 :   2233:   cmp    %r14,%rbp
    0.00 :   2236:   jb     2275 <reverse+0xe5>
    0.00 :   2238:   mov    %r14,%rax
    0.00 :   223b:   nopl   0x0(%rax,%rax,1)
   69.57 :   2240:   mov    0x8(%r15),%rdi
    0.00 :   2244:   movzbl (%rdi,%rax,1),%ebx
    0.00 :   2248:   rol    $0x4,%bl
    0.00 :   224b:   mov    %ebx,%ecx
    0.00 :   224d:   and    $0x33,%cl
    0.00 :   2250:   shl    $0x2,%cl
    0.00 :   2253:   shr    $0x2,%bl
    0.00 :   2256:   and    $0x33,%bl
    0.00 :   2259:   or     %cl,%bl
    0.00 :   225b:   mov    %ebx,%ecx
    0.00 :   225d:   and    $0x55,%cl
    0.00 :   2260:   add    %cl,%cl
    0.00 :   2262:   shr    %bl
    0.00 :   2264:   and    $0x55,%bl
    0.00 :   2267:   or     %cl,%bl
    0.00 :   2269:   mov    %bl,(%rdi,%rax,1)
    0.00 :   226c:   add    $0x1,%rax
    0.00 :   2270:   cmp    %rbp,%rax
    0.00 :   2273:   jbe    2240 <reverse+0xb0>
    0.00 :   2275:   mov    0x8(%r15),%rdi
    0.00 :   2279:   lea    0x1(%rbp),%r8
    0.00 :   227d:   lea    (%r14,%rbp,1),%rax
    0.00 :   2281:   add    $0x1,%rax
    0.00 :   2285:   shr    %rax
    0.00 :   2288:   cmp    %r14,%rax
    0.00 :   228b:   jbe    232b <reverse+0x19b>
    0.00 :   2291:   mov    %r9d,0x14(%rsp)
    0.00 :   2296:   mov    %rbp,0x8(%rsp)
    0.00 :   229b:   mov    %eax,%ebx
    0.00 :   229d:   sub    %r14d,%ebx
    0.00 :   22a0:   lea    0x1(%r14),%r10
    0.00 :   22a4:   mov    %r14,%rbp
    0.00 :   22a7:   mov    %r8,%r9
    0.00 :   22aa:   test   $0x1,%bl
    0.00 :   22ad:   je     22c7 <reverse+0x137>
    0.00 :   22af:   mov    (%rdi,%r14,1),%cl
    0.00 :   22b3:   mov    0x8(%rsp),%r9
    0.00 :   22b8:   mov    (%rdi,%r9,1),%bl
    0.00 :   22bc:   mov    %bl,(%rdi,%r14,1)
    0.00 :   22c0:   mov    %cl,(%rdi,%r9,1)
    0.00 :   22c4:   mov    %r10,%rbp
    0.00 :   22c7:   cmp    %r10,%rax
    0.00 :   22ca:   je     231d <reverse+0x18d>
    0.00 :   22cc:   lea    (%rdi,%rbp,1),%rbx
    0.00 :   22d0:   add    $0x1,%rbx
    0.00 :   22d4:   sub    %rax,%rbp
    0.00 :   22d7:   lea    (%r9,%rdi,1),%rax
    0.00 :   22db:   add    $0xffffffffffffffff,%rax
    0.00 :   22df:   xor    %edi,%edi
    0.00 :   22e1:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   22eb:   nopl   0x0(%rax,%rax,1)
   25.75 :   22f0:   movzbl -0x1(%rbx),%r9d
    0.00 :   22f5:   movzbl (%rax,%rdi,1),%ecx
    0.00 :   22f9:   mov    %cl,-0x1(%rbx)
    0.00 :   22fc:   mov    %r9b,(%rax,%rdi,1)
    0.00 :   2300:   movzbl (%rbx),%r9d
    0.00 :   2304:   movzbl -0x1(%rax,%rdi,1),%ecx
    0.00 :   2309:   mov    %cl,(%rbx)
    0.00 :   230b:   mov    %r9b,-0x1(%rax,%rdi,1)
    0.00 :   2310:   add    $0xfffffffffffffffe,%rdi
    0.00 :   2314:   add    $0x2,%rbx
    0.00 :   2318:   cmp    %rdi,%rbp
    0.00 :   231b:   jne    22f0 <reverse+0x160>
    0.00 :   231d:   mov    0x8(%r15),%rdi
    0.00 :   2321:   mov    0x8(%rsp),%rbp
    0.00 :   2326:   mov    0x14(%rsp),%r9d
    0.00 :   232b:   and    $0x7,%esi
    0.00 :   232e:   neg    %edx
    0.00 :   2330:   and    $0x7,%edx
    0.00 :   2333:   sub    %rsi,%rdx
    0.00 :   2336:   je     23e7 <reverse+0x257>
    0.00 :   233c:   mov    %rdx,%rcx
    0.00 :   233f:   neg    %rcx
    0.00 :   2342:   cmovs  %rdx,%rcx
    0.00 :   2346:   test   %rdx,%rdx
    0.00 :   2349:   jle    2374 <reverse+0x1e4>
    0.00 :   234b:   mov    %r14,%rsi
    0.00 :   234e:   mov    %r8,%rdx
    0.00 :   2351:   mov    %r11d,%ebx
    0.00 :   2354:   mov    %r13b,0x8(%rsp)
    0.00 :   2359:   mov    %r12d,%r13d
    0.00 :   235c:   mov    %r9d,%r12d
    0.00 :   235f:   call   1c90 <left_shift>
    0.00 :   2364:   mov    %r12d,%r9d
    0.00 :   2367:   mov    %r13d,%r12d
    0.00 :   236a:   mov    0x8(%rsp),%r13b
    0.00 :   236f:   mov    %ebx,%r11d
    0.00 :   2372:   jmp    23e7 <reverse+0x257>
    0.00 :   2374:   cmp    %r14,%rbp
    0.00 :   2377:   jbe    23dc <reverse+0x24c>
    0.00 :   2379:   mov    %ebp,%esi
    0.00 :   237b:   sub    %r14d,%esi
    0.00 :   237e:   lea    0x1(%r14),%rax
    0.00 :   2382:   mov    %rbp,%rdx
    0.00 :   2385:   test   $0x1,%sil
    0.00 :   2389:   je     239c <reverse+0x20c>
    0.00 :   238b:   lea    -0x1(%rbp),%rdx
    0.00 :   238f:   movzwl -0x1(%rdi,%rbp,1),%ebx
    0.00 :   2394:   shl    %cl,%ebx
    0.00 :   2396:   mov    %bh,(%rdi,%rbp,1)
    0.00 :   2399:   mov    %rbp,%r8
    0.00 :   239c:   cmp    %rax,%rbp
    0.00 :   239f:   je     23dc <reverse+0x24c>
    0.00 :   23a1:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   23ab:   nopl   0x0(%rax,%rax,1)
    4.35 :   23b0:   movzbl (%rdi,%rdx,1),%eax
    0.00 :   23b4:   shl    $0x8,%eax
    0.00 :   23b7:   movzbl -0x2(%r8,%rdi,1),%ebx
    0.00 :   23bd:   or     %eax,%ebx
    0.00 :   23bf:   shl    %cl,%ebx
    0.00 :   23c1:   mov    %bh,(%rdi,%rdx,1)
    0.00 :   23c4:   movzwl -0x2(%rdi,%rdx,1),%eax
    0.00 :   23c9:   shl    %cl,%eax
    0.00 :   23cb:   lea    -0x1(%rdx),%r8
    0.00 :   23cf:   mov    %ah,-0x1(%rdi,%rdx,1)
    0.00 :   23d3:   add    $0xfffffffffffffffe,%rdx
    0.00 :   23d7:   cmp    %r14,%rdx
    0.00 :   23da:   ja     23b0 <reverse+0x220>
    0.00 :   23dc:   movzbl (%rdi,%r14,1),%eax
    0.00 :   23e1:   shl    %cl,%eax
    0.00 :   23e3:   mov    %al,(%rdi,%r14,1)
    0.00 :   23e7:   mov    0x8(%r15),%rax
    0.00 :   23eb:   and    (%rax,%r14,1),%r12b
    0.00 :   23ef:   or     %r11b,%r12b
    0.00 :   23f2:   mov    %r12b,(%rax,%r14,1)
    0.00 :   23f6:   and    (%rax,%rbp,1),%r13b
    0.00 :   23fa:   or     %r9b,%r13b
    0.00 :   23fd:   mov    %r13b,(%rax,%rbp,1)
    0.00 :   2401:   add    $0x18,%rsp
    0.00 :   2405:   pop    %rbx
    0.00 :   2406:   pop    %r12
    0.00 :   2408:   pop    %r13
    0.00 :   240a:   pop    %r14
    0.00 :   240c:   pop    %r15
    0.00 :   240e:   pop    %rbp
    0.00 :   240f:   ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (195 samples, percent: local period)
--------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     0000000000046230 <random>:
         : 6     __random():
         : 7     ./stdlib/random.c:288
    4.10 :   46230:  endbr64
    0.00 :   46234:  sub    $0x18,%rsp
         : 10    ./stdlib/random.c:291
    0.00 :   46238:  mov    $0x1,%edx
         : 12    ./stdlib/random.c:288
    0.00 :   4623d:  mov    %fs:0x28,%rax
    0.00 :   46246:  mov    %rax,0x8(%rsp)
    0.00 :   4624b:  xor    %eax,%eax
         : 16    ./stdlib/random.c:291
    0.00 :   4624d:  lock cmpxchg %edx,0x1d64f3(%rip)        # 21c748 <lock>
    0.00 :   46255:  jne    46290 <random+0x60>
         : 19    ./stdlib/random.c:293 (discriminator 6)
    5.13 :   46257:  lea    0x4(%rsp),%rsi
    0.00 :   4625c:  lea    0x1d45fd(%rip),%rdi        # 21a860 <unsafe_state>
    0.00 :   46263:  call   466c0 <random_r>
         : 23    ./stdlib/random.c:295 (discriminator 6)
   78.97 :   46268:  xor    %eax,%eax
    0.00 :   4626a:  xchg   %eax,0x1d64d8(%rip)        # 21c748 <lock>
    0.00 :   46270:  cmp    $0x1,%eax
    0.00 :   46273:  jg     462a0 <random+0x70>
         : 28    ./stdlib/random.c:297
    6.15 :   46275:  movslq 0x4(%rsp),%rax
         : 30    ./stdlib/random.c:298
    0.00 :   4627a:  mov    0x8(%rsp),%rdx
    0.00 :   4627f:  sub    %fs:0x28,%rdx
    0.00 :   46288:  jne    462ae <random+0x7e>
    5.64 :   4628a:  add    $0x18,%rsp
    0.00 :   4628e:  ret
    0.00 :   4628f:  nop
         : 37    ./stdlib/random.c:291 (discriminator 3)
    0.00 :   46290:  lea    0x1d64b1(%rip),%rdi        # 21c748 <lock>
    0.00 :   46297:  call   91230 <__lll_lock_wait_private>
    0.00 :   4629c:  jmp    46257 <random+0x27>
    0.00 :   4629e:  xchg   %ax,%ax
         : 42    ./stdlib/random.c:295 (discriminator 15)
    0.00 :   462a0:  lea    0x1d64a1(%rip),%rdi        # 21c748 <lock>
    0.00 :   462a7:  call   91300 <__lll_lock_wake_private>
    0.00 :   462ac:  jmp    46275 <random+0x45>
         : 46    ./stdlib/random.c:298
    0.00 :   462ae:  call   136550 <__stack_chk_fail>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (153 samples, percent: local period)
--------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     0000000000046760 <rand>:
         : 6     rand():
         : 7     ./stdlib/rand.c:26
   29.41 :   46760:  endbr64
    0.00 :   46764:  sub    $0x8,%rsp
         : 10    ./stdlib/rand.c:27
    0.00 :   46768:  call   46230 <random>
         : 12    ./stdlib/rand.c:28
   70.59 :   4676d:  add    $0x8,%rsp
    0.00 :   46771:  ret
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (125 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000001b80 <bitarray_randfill>:
         : 6    bitarray_randfill():
    0.00 :   1b80:   push   %r15
    0.00 :   1b82:   push   %r14
    0.00 :   1b84:   push   %rbx
    0.00 :   1b85:   mov    (%rdi),%rax
    0.00 :   1b88:   add    $0x1f,%rax
    0.00 :   1b8c:   cmp    $0x20,%rax
    0.00 :   1b90:   jb     1bbd <bitarray_randfill+0x3d>
    0.00 :   1b92:   mov    %rdi,%r14
    0.00 :   1b95:   mov    0x8(%rdi),%r15
    0.00 :   1b99:   xor    %ebx,%ebx
    0.00 :   1b9b:   nopl   0x0(%rax,%rax,1)
   10.40 :   1ba0:   call   c70 <rand@plt>
   89.60 :   1ba5:   mov    %eax,(%r15,%rbx,4)
    0.00 :   1ba9:   add    $0x1,%rbx
    0.00 :   1bad:   mov    (%r14),%rax
    0.00 :   1bb0:   add    $0x1f,%rax
    0.00 :   1bb4:   shr    $0x5,%rax
    0.00 :   1bb8:   cmp    %rax,%rbx
    0.00 :   1bbb:   jb     1ba0 <bitarray_randfill+0x20>
    0.00 :   1bbd:   pop    %rbx
    0.00 :   1bbe:   pop    %r14
    0.00 :   1bc0:   pop    %r15
    0.00 :   1bc2:   ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (114 samples, percent: local period)
--------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000466c0 <random_r>:
         : 6     __random_r():
         : 7     ./stdlib/random_r.c:354
   15.79 :   466c0:  endbr64
         : 9     ./stdlib/random_r.c:357
    0.00 :   466c4:  test   %rdi,%rdi
    0.00 :   466c7:  je     46748 <random_r+0x88>
    0.00 :   466c9:  test   %rsi,%rsi
    0.00 :   466cc:  je     46748 <random_r+0x88>
         : 14    ./stdlib/random_r.c:362
    0.00 :   466ce:  mov    0x18(%rdi),%r8d
         : 16    ./stdlib/random_r.c:360
    0.00 :   466d2:  mov    0x10(%rdi),%rax
         : 18    ./stdlib/random_r.c:362
    0.00 :   466d6:  test   %r8d,%r8d
    0.00 :   466d9:  jne    466f8 <random_r+0x38>
         : 21    ./stdlib/random_r.c:364
    0.00 :   466db:  imul   $0x41c64e6d,(%rax),%edx
    0.00 :   466e1:  add    $0x3039,%edx
    0.00 :   466e7:  and    $0x7fffffff,%edx
         : 25    ./stdlib/random_r.c:365
    0.00 :   466ed:  mov    %edx,(%rax)
         : 27    ./stdlib/random_r.c:366
    0.00 :   466ef:  mov    %edx,(%rsi)
         : 29    ./stdlib/random_r.c:398
    0.00 :   466f1:  mov    %r8d,%eax
    0.00 :   466f4:  ret
    0.00 :   466f5:  nopl   (%rax)
         : 33    ./stdlib/random_r.c:370
   18.42 :   466f8:  mov    (%rdi),%rcx
         : 35    ./stdlib/random_r.c:371
    0.00 :   466fb:  mov    0x8(%rdi),%r8
         : 37    ./stdlib/random_r.c:372
    0.00 :   466ff:  mov    0x28(%rdi),%r9
         : 39    ./stdlib/random_r.c:375
    0.00 :   46703:  mov    (%r8),%edx
    0.00 :   46706:  add    (%rcx),%edx
         : 42    ./stdlib/random_r.c:378
    0.00 :   46708:  add    $0x4,%rcx
         : 44    ./stdlib/random_r.c:382
    0.00 :   4670c:  add    $0x4,%r8
         : 46    ./stdlib/random_r.c:375
    0.00 :   46710:  mov    %edx,-0x4(%rcx)
         : 48    ./stdlib/random_r.c:377
    0.00 :   46713:  shr    %edx
    0.00 :   46715:  mov    %edx,(%rsi)
         : 51    ./stdlib/random_r.c:379
    0.00 :   46717:  cmp    %rcx,%r9
    0.00 :   4671a:  jbe    46727 <random_r+0x67>
         : 54    ./stdlib/random_r.c:387
   64.04 :   4671c:  cmp    %r8,%r9
    0.00 :   4671f:  ja     46740 <random_r+0x80>
         : 57    ./stdlib/random_r.c:360
    0.00 :   46721:  mov    %rax,%r8
         : 59    ./stdlib/random_r.c:387
    0.00 :   46724:  mov    %rcx,%rax
         : 61    ./stdlib/random_r.c:390
    1.75 :   46727:  movq   %r8,%xmm1
    0.00 :   4672c:  movq   %rax,%xmm0
         : 64    ./stdlib/random_r.c:393
    0.00 :   46731:  xor    %r8d,%r8d
         : 66    ./stdlib/random_r.c:390
    0.00 :   46734:  punpcklqdq %xmm1,%xmm0
         : 68    ./stdlib/random_r.c:398
    0.00 :   46738:  mov    %r8d,%eax
         : 70    ./stdlib/random_r.c:390
    0.00 :   4673b:  movups %xmm0,(%rdi)
         : 72    ./stdlib/random_r.c:398
    0.00 :   4673e:  ret
    0.00 :   4673f:  nop
    0.00 :   46740:  mov    %rcx,%rax
    0.00 :   46743:  jmp    46727 <random_r+0x67>
    0.00 :   46745:  nopl   (%rax)
         : 78    ./stdlib/random_r.c:396
    0.00 :   46748:  mov    0x1d36c1(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
         : 80    ./stdlib/random_r.c:397
    0.00 :   4674f:  mov    $0xffffffff,%r8d
         : 82    ./stdlib/random_r.c:396
    0.00 :   46755:  movl   $0x16,%fs:(%rax)
         : 84    ./stdlib/random_r.c:397
    0.00 :   4675c:  jmp    466f1 <random_r+0x31>
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (62 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3   Disassembly of section .plt:
         :
         : 5   0000000000000c70 <rand@plt>:
  100.00 :   c70:    jmp    *0x441a(%rip)        # 5090 <rand@GLIBC_2.2.5>
    0.00 :   c76:    push   $0x12
    0.00 :   c7b:    jmp    b40 <_init+0x28>
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (28 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000001c90 <left_shift>:
         : 6    left_shift():
    0.00 :   1c90:   push   %r15
    0.00 :   1c92:   push   %r14
    0.00 :   1c94:   push   %rbx
    0.00 :   1c95:   mov    %rcx,%r8
    0.00 :   1c98:   mov    %rdx,%r10
    0.00 :   1c9b:   sub    %rsi,%r10
    0.00 :   1c9e:   cmp    $0xf,%r10
    0.00 :   1ca2:   ja     1ccf <left_shift+0x3f>
    0.00 :   1ca4:   lea    -0x1(%rdx),%r9
    0.00 :   1ca8:   cmp    %rsi,%r9
    0.00 :   1cab:   jbe    2024 <left_shift+0x394>
    0.00 :   1cb1:   mov    (%rdi,%rsi,1),%cl
    0.00 :   1cb4:   mov    %rsi,%r10
    0.00 :   1cb7:   not    %r10
    0.00 :   1cba:   add    %rdx,%r10
    0.00 :   1cbd:   cmp    $0x10,%r10
    0.00 :   1cc1:   jae    1eca <left_shift+0x23a>
    0.00 :   1cc7:   mov    %rsi,%r14
    0.00 :   1cca:   jmp    1ff7 <left_shift+0x367>
    0.00 :   1ccf:   and    $0x7,%r10d
    0.00 :   1cd3:   mov    %rdx,%r14
    0.00 :   1cd6:   sub    %r10,%r14
    0.00 :   1cd9:   movzbl -0x1(%r14,%rdi,1),%r11d
    0.00 :   1cdf:   lea    0x10(%rsi),%rbx
    0.00 :   1ce3:   cmp    %r14,%rbx
    0.00 :   1ce6:   ja     1d28 <left_shift+0x98>
    0.00 :   1ce8:   mov    $0x40,%r9d
    0.00 :   1cee:   sub    %r8,%r9
    0.00 :   1cf1:   mov    (%rdi,%rsi,1),%rsi
    0.00 :   1cf5:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   1cff:   nop
  100.00 :   1d00:   mov    %r8d,%ecx
    0.00 :   1d03:   shr    %cl,%rsi
    0.00 :   1d06:   mov    -0x8(%rdi,%rbx,1),%r15
    0.00 :   1d0b:   mov    %r15,%rax
    0.00 :   1d0e:   mov    %r9d,%ecx
    0.00 :   1d11:   shl    %cl,%rax
    0.00 :   1d14:   or     %rsi,%rax
    0.00 :   1d17:   mov    %rax,-0x10(%rdi,%rbx,1)
    0.00 :   1d1c:   add    $0x8,%rbx
    0.00 :   1d20:   mov    %r15,%rsi
    0.00 :   1d23:   cmp    %r14,%rbx
    0.00 :   1d26:   jbe    1d00 <left_shift+0x70>
    0.00 :   1d28:   mov    %r8d,%ecx
    0.00 :   1d2b:   shrq   %cl,-0x8(%r14,%rdi,1)
    0.00 :   1d30:   cmp    %rdx,%r14
    0.00 :   1d33:   jae    2032 <left_shift+0x3a2>
    0.00 :   1d39:   movzbl (%rdi,%r14,1),%esi
    0.00 :   1d3e:   mov    %esi,%eax
    0.00 :   1d40:   shl    $0x8,%eax
    0.00 :   1d43:   or     %r11d,%eax
    0.00 :   1d46:   mov    %r8d,%ecx
    0.00 :   1d49:   shr    %cl,%eax
    0.00 :   1d4b:   mov    %al,-0x1(%rdi,%r14,1)
    0.00 :   1d50:   lea    -0x1(%rdx),%r9
    0.00 :   1d54:   cmp    %r9,%r14
    0.00 :   1d57:   jae    2024 <left_shift+0x394>
    0.00 :   1d5d:   add    $0xffffffffffffffff,%r10
    0.00 :   1d61:   cmp    $0x10,%r10
    0.00 :   1d65:   jb     1e9b <left_shift+0x20b>
    0.00 :   1d6b:   mov    %r10,%r11
    0.00 :   1d6e:   and    $0xfffffffffffffff0,%r11
    0.00 :   1d72:   movzbl %sil,%eax
    0.00 :   1d76:   movd   %eax,%xmm2
    0.00 :   1d7a:   pslldq $0xf,%xmm2
    0.00 :   1d7f:   movd   %r8d,%xmm3
    0.00 :   1d84:   lea    (%r14,%rdi,1),%rsi
    0.00 :   1d88:   add    $0x1,%rsi
    0.00 :   1d8c:   add    %r11,%r14
    0.00 :   1d8f:   xor    %ecx,%ecx
    0.00 :   1d91:   pxor   %xmm10,%xmm10
    0.00 :   1d96:   xorps  %xmm9,%xmm9
    0.00 :   1d9a:   movss  %xmm3,%xmm9
    0.00 :   1d9f:   movdqa 0x1028(%rip),%xmm8        # 2dd0 <_IO_stdin_used+0x430>
    0.00 :   1da8:   nopl   0x0(%rax,%rax,1)
    0.00 :   1db0:   movdqa %xmm2,%xmm4
    0.00 :   1db4:   movdqu (%rsi,%rcx,1),%xmm2
    0.00 :   1db9:   movdqa %xmm2,%xmm5
    0.00 :   1dbd:   pslldq $0x1,%xmm5
    0.00 :   1dc2:   psrldq $0xf,%xmm4
    0.00 :   1dc7:   por    %xmm5,%xmm4
    0.00 :   1dcb:   movdqa %xmm2,%xmm7
    0.00 :   1dcf:   punpckhbw %xmm10,%xmm7
    0.00 :   1dd4:   movdqa %xmm7,%xmm3
    0.00 :   1dd8:   punpckhwd %xmm10,%xmm3
    0.00 :   1ddd:   punpcklwd %xmm10,%xmm7
    0.00 :   1de2:   movdqa %xmm2,%xmm0
    0.00 :   1de6:   punpcklbw %xmm10,%xmm0
    0.00 :   1deb:   movdqa %xmm0,%xmm1
    0.00 :   1def:   punpckhwd %xmm10,%xmm1
    0.00 :   1df4:   punpcklwd %xmm10,%xmm0
    0.00 :   1df9:   pslld  $0x8,%xmm0
    0.00 :   1dfe:   pslld  $0x8,%xmm1
    0.00 :   1e03:   pslld  $0x8,%xmm7
    0.00 :   1e08:   pslld  $0x8,%xmm3
    0.00 :   1e0d:   punpcklbw %xmm10,%xmm4
    0.00 :   1e12:   movdqa %xmm4,%xmm6
    0.00 :   1e16:   punpcklwd %xmm10,%xmm6
    0.00 :   1e1b:   por    %xmm0,%xmm6
    0.00 :   1e1f:   punpckhwd %xmm10,%xmm4
    0.00 :   1e24:   por    %xmm1,%xmm4
    0.00 :   1e28:   punpckhbw %xmm10,%xmm5
    0.00 :   1e2d:   movdqa %xmm5,%xmm0
    0.00 :   1e31:   punpcklwd %xmm10,%xmm0
    0.00 :   1e36:   por    %xmm7,%xmm0
    0.00 :   1e3a:   punpckhwd %xmm10,%xmm5
    0.00 :   1e3f:   por    %xmm3,%xmm5
    0.00 :   1e43:   psrld  %xmm9,%xmm6
    0.00 :   1e48:   psrld  %xmm9,%xmm4
    0.00 :   1e4d:   psrld  %xmm9,%xmm0
    0.00 :   1e52:   psrld  %xmm9,%xmm5
    0.00 :   1e57:   pand   %xmm8,%xmm5
    0.00 :   1e5c:   pand   %xmm8,%xmm0
    0.00 :   1e61:   packuswb %xmm5,%xmm0
    0.00 :   1e65:   pand   %xmm8,%xmm4
    0.00 :   1e6a:   pand   %xmm8,%xmm6
    0.00 :   1e6f:   packuswb %xmm4,%xmm6
    0.00 :   1e73:   packuswb %xmm0,%xmm6
    0.00 :   1e77:   movdqu %xmm6,-0x1(%rsi,%rcx,1)
    0.00 :   1e7d:   add    $0x10,%rcx
    0.00 :   1e81:   cmp    %rcx,%r11
    0.00 :   1e84:   jne    1db0 <left_shift+0x120>
    0.00 :   1e8a:   cmp    %r11,%r10
    0.00 :   1e8d:   je     2024 <left_shift+0x394>
    0.00 :   1e93:   pextrw $0x7,%xmm2,%esi
    0.00 :   1e98:   shr    $0x8,%esi
    0.00 :   1e9b:   add    $0x1,%r14
    0.00 :   1e9f:   nop
    0.00 :   1ea0:   movzbl (%rdi,%r14,1),%eax
    0.00 :   1ea5:   mov    %eax,%ecx
    0.00 :   1ea7:   shl    $0x8,%ecx
    0.00 :   1eaa:   movzbl %sil,%ebx
    0.00 :   1eae:   or     %ecx,%ebx
    0.00 :   1eb0:   mov    %r8d,%ecx
    0.00 :   1eb3:   shr    %cl,%ebx
    0.00 :   1eb5:   mov    %eax,%esi
    0.00 :   1eb7:   mov    %bl,-0x1(%rdi,%r14,1)
    0.00 :   1ebc:   add    $0x1,%r14
    0.00 :   1ec0:   cmp    %r14,%rdx
    0.00 :   1ec3:   jne    1ea0 <left_shift+0x210>
    0.00 :   1ec5:   jmp    2024 <left_shift+0x394>
    0.00 :   1eca:   mov    %r10,%r11
    0.00 :   1ecd:   and    $0xfffffffffffffff0,%r11
    0.00 :   1ed1:   lea    (%r11,%rsi,1),%r14
    0.00 :   1ed5:   movzbl %cl,%ecx
    0.00 :   1ed8:   movd   %ecx,%xmm2
    0.00 :   1edc:   pslldq $0xf,%xmm2
    0.00 :   1ee1:   movd   %r8d,%xmm3
    0.00 :   1ee6:   add    %rdi,%rsi
    0.00 :   1ee9:   add    $0x1,%rsi
    0.00 :   1eed:   xor    %ecx,%ecx
    0.00 :   1eef:   pxor   %xmm10,%xmm10
    0.00 :   1ef4:   xorps  %xmm9,%xmm9
    0.00 :   1ef8:   movss  %xmm3,%xmm9
    0.00 :   1efd:   movdqa 0xeca(%rip),%xmm8        # 2dd0 <_IO_stdin_used+0x430>
    0.00 :   1f06:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   1f10:   movdqa %xmm2,%xmm4
    0.00 :   1f14:   movdqu (%rsi,%rcx,1),%xmm2
    0.00 :   1f19:   movdqa %xmm2,%xmm5
    0.00 :   1f1d:   pslldq $0x1,%xmm5
    0.00 :   1f22:   psrldq $0xf,%xmm4
    0.00 :   1f27:   por    %xmm5,%xmm4
    0.00 :   1f2b:   movdqa %xmm2,%xmm7
    0.00 :   1f2f:   punpckhbw %xmm10,%xmm7
    0.00 :   1f34:   movdqa %xmm7,%xmm3
    0.00 :   1f38:   punpckhwd %xmm10,%xmm3
    0.00 :   1f3d:   punpcklwd %xmm10,%xmm7
    0.00 :   1f42:   movdqa %xmm2,%xmm0
    0.00 :   1f46:   punpcklbw %xmm10,%xmm0
    0.00 :   1f4b:   movdqa %xmm0,%xmm1
    0.00 :   1f4f:   punpckhwd %xmm10,%xmm1
    0.00 :   1f54:   punpcklwd %xmm10,%xmm0
    0.00 :   1f59:   pslld  $0x8,%xmm0
    0.00 :   1f5e:   pslld  $0x8,%xmm1
    0.00 :   1f63:   pslld  $0x8,%xmm7
    0.00 :   1f68:   pslld  $0x8,%xmm3
    0.00 :   1f6d:   punpcklbw %xmm10,%xmm4
    0.00 :   1f72:   movdqa %xmm4,%xmm6
    0.00 :   1f76:   punpcklwd %xmm10,%xmm6
    0.00 :   1f7b:   por    %xmm0,%xmm6
    0.00 :   1f7f:   punpckhwd %xmm10,%xmm4
    0.00 :   1f84:   por    %xmm1,%xmm4
    0.00 :   1f88:   punpckhbw %xmm10,%xmm5
    0.00 :   1f8d:   movdqa %xmm5,%xmm0
    0.00 :   1f91:   punpcklwd %xmm10,%xmm0
    0.00 :   1f96:   por    %xmm7,%xmm0
    0.00 :   1f9a:   punpckhwd %xmm10,%xmm5
    0.00 :   1f9f:   por    %xmm3,%xmm5
    0.00 :   1fa3:   psrld  %xmm9,%xmm6
    0.00 :   1fa8:   psrld  %xmm9,%xmm4
    0.00 :   1fad:   psrld  %xmm9,%xmm0
    0.00 :   1fb2:   psrld  %xmm9,%xmm5
    0.00 :   1fb7:   pand   %xmm8,%xmm5
    0.00 :   1fbc:   pand   %xmm8,%xmm0
    0.00 :   1fc1:   packuswb %xmm5,%xmm0
    0.00 :   1fc5:   pand   %xmm8,%xmm4
    0.00 :   1fca:   pand   %xmm8,%xmm6
    0.00 :   1fcf:   packuswb %xmm4,%xmm6
    0.00 :   1fd3:   packuswb %xmm0,%xmm6
    0.00 :   1fd7:   movdqu %xmm6,-0x1(%rsi,%rcx,1)
    0.00 :   1fdd:   add    $0x10,%rcx
    0.00 :   1fe1:   cmp    %rcx,%r11
    0.00 :   1fe4:   jne    1f10 <left_shift+0x280>
    0.00 :   1fea:   cmp    %r11,%r10
    0.00 :   1fed:   je     2024 <left_shift+0x394>
    0.00 :   1fef:   pextrw $0x7,%xmm2,%ecx
    0.00 :   1ff4:   shr    $0x8,%ecx
    0.00 :   1ff7:   add    $0x1,%r14
    0.00 :   1ffb:   nopl   0x0(%rax,%rax,1)
    0.00 :   2000:   movzbl (%rdi,%r14,1),%ebx
    0.00 :   2005:   mov    %ebx,%esi
    0.00 :   2007:   shl    $0x8,%esi
    0.00 :   200a:   movzbl %cl,%eax
    0.00 :   200d:   or     %esi,%eax
    0.00 :   200f:   mov    %r8d,%ecx
    0.00 :   2012:   shr    %cl,%eax
    0.00 :   2014:   mov    %ebx,%ecx
    0.00 :   2016:   mov    %al,-0x1(%rdi,%r14,1)
    0.00 :   201b:   add    $0x1,%r14
    0.00 :   201f:   cmp    %r14,%rdx
    0.00 :   2022:   jne    2000 <left_shift+0x370>
    0.00 :   2024:   movzbl (%rdi,%r9,1),%eax
    0.00 :   2029:   mov    %r8d,%ecx
    0.00 :   202c:   shr    %cl,%eax
    0.00 :   202e:   mov    %al,(%rdi,%r9,1)
    0.00 :   2032:   pop    %rbx
    0.00 :   2033:   pop    %r14
    0.00 :   2035:   pop    %r15
    0.00 :   2037:   ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (3 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3      Disassembly of section .text:
         :
         : 5      00000000001a0f80 <__memset_avx2_unaligned_erms>:
         : 6      __memset_avx2_unaligned_erms():
         : 7      ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:181
    0.00 :   1a0f80: endbr64
         : 9      ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:182
    0.00 :   1a0f84: vmovd  %esi,%xmm0
    0.00 :   1a0f88: mov    %rdi,%rax
    0.00 :   1a0f8b: vpbroadcastb %xmm0,%ymm0
         : 13     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:187
    0.00 :   1a0f90: cmp    $0x20,%rdx
         : 15     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:188
    0.00 :   1a0f94: jb     1a1060 <__memset_avx2_unaligned_erms+0xe0>
         : 17     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:189
    0.00 :   1a0f9a: cmp    $0x40,%rdx
         : 19     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:190
    0.00 :   1a0f9e: ja     1a0fc0 <__memset_avx2_unaligned_erms+0x40>
         : 21     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:193
    0.00 :   1a0fa0: vmovdqu %ymm0,(%rax)
         : 23     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:194
    0.00 :   1a0fa4: vmovdqu %ymm0,-0x20(%rax,%rdx,1)
         : 25     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:195
    0.00 :   1a0faa: vzeroupper
    0.00 :   1a0fad: ret
    0.00 :   1a0fae: xchg   %ax,%ax
         : 29     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:204
    0.00 :   1a0fb0: vmovdqu %ymm0,-0x40(%rdi)
         : 31     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:205
    0.00 :   1a0fb5: vmovdqu %ymm0,-0x20(%rdi)
         : 33     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:207
    0.00 :   1a0fba: vzeroupper
    0.00 :   1a0fbd: ret
    0.00 :   1a0fbe: xchg   %ax,%ax
         : 37     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:259
    0.00 :   1a0fc0: cmp    0x79429(%rip),%rdx        # 21a3f0 <__x86_rep_stosb_threshold>
         : 39     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:260
    0.00 :   1a0fc7: ja     1a1040 <__memset_avx2_unaligned_erms+0xc0>
         : 41     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:283
    0.00 :   1a0fc9: vmovdqu %ymm0,(%rax)
         : 43     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:284
    0.00 :   1a0fcd: vmovdqu %ymm0,0x20(%rax)
         : 45     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:289
    0.00 :   1a0fd2: add    %rdx,%rdi
         : 47     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:292
    0.00 :   1a0fd5: cmp    $0x80,%rdx
         : 49     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:293
    0.00 :   1a0fdc: jbe    1a0fb0 <__memset_avx2_unaligned_erms+0x30>
         : 51     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:296
    0.00 :   1a0fde: vmovdqu %ymm0,0x40(%rax)
         : 53     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:297
    0.00 :   1a0fe3: vmovdqu %ymm0,0x60(%rax)
         : 55     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:310
    0.00 :   1a0fe8: add    $0xffffffffffffff80,%rdi
         : 57     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:311
    0.00 :   1a0fec: cmp    $0x100,%rdx
         : 59     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:313
    0.00 :   1a0ff3: jbe    1a1020 <__memset_avx2_unaligned_erms+0xa0>
         : 61     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:316
    0.00 :   1a0ff5: lea    0x80(%rax),%rdx
         : 63     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:319
    0.00 :   1a0ffc: and    $0xffffffffffffffc0,%rdx
         : 65     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:322
    0.00 :   1a1000: vmovdqa %ymm0,(%rdx)
         : 67     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:323
    0.00 :   1a1004: vmovdqa %ymm0,0x20(%rdx)
         : 69     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:324
    0.00 :   1a1009: vmovdqa %ymm0,0x40(%rdx)
         : 71     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:325
    0.00 :   1a100e: vmovdqa %ymm0,0x60(%rdx)
         : 73     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:326
    0.00 :   1a1013: sub    $0xffffffffffffff80,%rdx
         : 75     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:327
    0.00 :   1a1017: cmp    %rdi,%rdx
         : 77     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:328
    0.00 :   1a101a: jb     1a1000 <__memset_avx2_unaligned_erms+0x80>
    0.00 :   1a101c: nopl   0x0(%rax)
         : 80     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:331
    0.00 :   1a1020: vmovdqu %ymm0,(%rdi)
         : 82     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:332
    0.00 :   1a1024: vmovdqu %ymm0,0x20(%rdi)
         : 84     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:333
    0.00 :   1a1029: vmovdqu %ymm0,0x40(%rdi)
         : 86     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:334
    0.00 :   1a102e: vmovdqu %ymm0,0x60(%rdi)
         : 88     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:337
    0.00 :   1a1033: vzeroupper
    0.00 :   1a1036: ret
    0.00 :   1a1037: nopw   0x0(%rax,%rax,1)
         : 92     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:348
    0.00 :   1a1040: movzbl %sil,%eax
         : 94     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:349
    0.00 :   1a1044: mov    %rdx,%rcx
         : 96     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:350
    0.00 :   1a1047: mov    %rdi,%rdx
         : 98     ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:351
  100.00 :   1a104a: rep stos %al,%es:(%rdi)
         : 100    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:352
    0.00 :   1a104c: mov    %rdx,%rax
         : 102    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:353
    0.00 :   1a104f: vzeroupper
    0.00 :   1a1052: ret
    0.00 :   1a1053: data16 cs nopw 0x0(%rax,%rax,1)
    0.00 :   1a105e: xchg   %ax,%ax
         : 107    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:365
    0.00 :   1a1060: cmp    $0x10,%edx
         : 109    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:366
    0.00 :   1a1063: jae    1a1082 <__memset_avx2_unaligned_erms+0x102>
         : 111    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:368
    0.00 :   1a1065: vmovq  %xmm0,%rdi
         : 113    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:369
    0.00 :   1a106a: cmp    $0x8,%edx
         : 115    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:370
    0.00 :   1a106d: jae    1a1090 <__memset_avx2_unaligned_erms+0x110>
         : 117    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:371
    0.00 :   1a106f: cmp    $0x4,%edx
         : 119    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:372
    0.00 :   1a1072: jae    1a10a0 <__memset_avx2_unaligned_erms+0x120>
         : 121    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:373
    0.00 :   1a1074: cmp    $0x1,%edx
         : 123    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:374
    0.00 :   1a1077: ja     1a10b0 <__memset_avx2_unaligned_erms+0x130>
         : 125    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:375
    0.00 :   1a1079: jb     1a1033 <__memset_avx2_unaligned_erms+0xb3>
         : 127    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:376
    0.00 :   1a107b: mov    %sil,(%rax)
         : 129    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:377
    0.00 :   1a107e: vzeroupper
    0.00 :   1a1081: ret
         : 132    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:394
    0.00 :   1a1082: vmovdqu %xmm0,(%rax)
         : 134    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:395
    0.00 :   1a1086: vmovdqu %xmm0,-0x10(%rax,%rdx,1)
         : 136    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:396
    0.00 :   1a108c: vzeroupper
    0.00 :   1a108f: ret
         : 139    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:402
    0.00 :   1a1090: mov    %rdi,(%rax)
         : 141    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:403
    0.00 :   1a1093: mov    %rdi,-0x8(%rax,%rdx,1)
         : 143    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:404
    0.00 :   1a1098: vzeroupper
    0.00 :   1a109b: ret
    0.00 :   1a109c: nopl   0x0(%rax)
         : 147    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:409
    0.00 :   1a10a0: mov    %edi,(%rax)
         : 149    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:410
    0.00 :   1a10a2: mov    %edi,-0x4(%rax,%rdx,1)
         : 151    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:411
    0.00 :   1a10a6: vzeroupper
    0.00 :   1a10a9: ret
    0.00 :   1a10aa: nopw   0x0(%rax,%rax,1)
         : 155    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:416
    0.00 :   1a10b0: mov    %di,(%rax)
         : 157    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:417
    0.00 :   1a10b3: mov    %dil,-0x1(%rax,%rdx,1)
         : 159    ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S:418
    0.00 :   1a10b8: vzeroupper
    0.00 :   1a10bb: ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (2 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     0000000000075030 <__vfprintf_internal>:
         : 6     __vfprintf_internal():
         : 7     ./stdio-common/vfprintf-internal.c:1180
    0.00 :   75030:  endbr64
    0.00 :   75034:  push   %r15
    0.00 :   75036:  push   %r14
    0.00 :   75038:  push   %r13
    0.00 :   7503a:  push   %r12
    0.00 :   7503c:  push   %rbp
    0.00 :   7503d:  mov    %rdi,%rbp
    0.00 :   75040:  push   %rbx
    0.00 :   75041:  sub    $0x538,%rsp
    0.00 :   75048:  mov    %rsi,0x8(%rsp)
    0.00 :   7504d:  mov    %rdx,0x20(%rsp)
    0.00 :   75052:  mov    %ecx,0x7c(%rsp)
         : 20    ./stdio-common/vfprintf-internal.c:1210
    0.00 :   75056:  mov    %fs:0x28,%rax
    0.00 :   7505f:  mov    %rax,0x528(%rsp)
    0.00 :   75067:  mov    0x1a4da2(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
    0.00 :   7506e:  mov    %fs:(%rax),%eax
    0.00 :   75071:  mov    %eax,0x90(%rsp)
         : 26    ./stdio-common/vfprintf-internal.c:1218
    0.00 :   75078:  mov    0xc0(%rdi),%eax
    0.00 :   7507e:  test   %eax,%eax
    0.00 :   75080:  jne    75500 <__vfprintf_internal+0x4d0>
         : 30    ./stdio-common/vfprintf-internal.c:1218 (discriminator 3)
    0.00 :   75086:  movl   $0xffffffff,0xc0(%rdi)
         : 32    ./stdio-common/vfprintf-internal.c:1222
    0.00 :   75090:  mov    0x0(%rbp),%ebx
    0.00 :   75093:  test   $0x8,%bl
    0.00 :   75096:  jne    77380 <__vfprintf_internal+0x2350>
         : 36    ./stdio-common/vfprintf-internal.c:1222 (discriminator 2)
    0.00 :   7509c:  cmpq   $0x0,0x8(%rsp)
    0.00 :   750a2:  je     77440 <__vfprintf_internal+0x2410>
         : 39    ./stdio-common/vfprintf-internal.c:1233
    0.00 :   750a8:  test   $0x2,%bl
    0.00 :   750ab:  jne    76620 <__vfprintf_internal+0x15f0>
         : 42    ./stdio-common/vfprintf-internal.c:1244
    0.00 :   750b1:  mov    0x20(%rsp),%rax
         : 44    __find_specmb():
         : 45    ./stdio-common/printf-parse.h:111
    0.00 :   750b6:  mov    0x8(%rsp),%rdi
    0.00 :   750bb:  mov    $0x25,%esi
         : 48    __vfprintf_internal():
         : 49    ./stdio-common/vfprintf-internal.c:1244
    0.00 :   750c0:  movdqu (%rax),%xmm1
    0.00 :   750c4:  movups %xmm1,0x118(%rsp)
    0.00 :   750cc:  mov    0x10(%rax),%rax
    0.00 :   750d0:  movaps %xmm1,0x10(%rsp)
    0.00 :   750d5:  mov    %rax,0x128(%rsp)
         : 55    __find_specmb():
         : 56    ./stdio-common/printf-parse.h:111
    0.00 :   750dd:  call   284d0 <*ABS*+0xab010@plt>
         : 58    __vfprintf_internal():
         : 59    ./stdio-common/vfprintf-internal.c:1259
    0.00 :   750e2:  mov    %rbp,0xf8(%rsp)
         : 61    __find_specmb():
         : 62    ./stdio-common/printf-parse.h:111
    0.00 :   750ea:  mov    %rax,0x68(%rsp)
         : 64    __vfprintf_internal():
         : 65    ./stdio-common/vfprintf-internal.c:1259
    0.00 :   750ef:  movb   $0x0,0xa6(%rsp)
    0.00 :   750f7:  and    $0x80,%bh
    0.00 :   750fa:  je     75518 <__vfprintf_internal+0x4e8>
         : 69    outstring_func():
         : 70    ./stdio-common/vfprintf-internal.c:239 (discriminator 12)
    0.00 :   75100:  mov    0xd8(%rbp),%r12
         : 72    IO_validate_vtable():
         : 73    ./stdio-common/../libio/libioP.h:940 (discriminator 12)
    0.00 :   75107:  lea    0x1a265a(%rip),%rax        # 217768 <__stop___libc_IO_vtables>
         : 75    __vfprintf_internal():
         : 76    ./stdio-common/vfprintf-internal.c:1263 (discriminator 12)
    0.00 :   7510e:  mov    0x68(%rsp),%rbx
         : 78    IO_validate_vtable():
         : 79    ./stdio-common/../libio/libioP.h:942 (discriminator 12)
    0.00 :   75113:  lea    0x1a18e6(%rip),%rcx        # 216a00 <_IO_helper_jumps>
         : 81    ./stdio-common/../libio/libioP.h:940 (discriminator 12)
    0.00 :   7511a:  sub    0x1a36f7(%rip),%rax        # 218818 <tryfunc.0+0x18>
         : 83    __vfprintf_internal():
         : 84    ./stdio-common/vfprintf-internal.c:1263 (discriminator 12)
    0.00 :   75121:  sub    0x8(%rsp),%rbx
         : 86    IO_validate_vtable():
         : 87    ./stdio-common/../libio/libioP.h:940 (discriminator 12)
    0.00 :   75126:  mov    %rax,0x30(%rsp)
    0.00 :   7512b:  mov    %rax,%rdi
         : 90    ./stdio-common/../libio/libioP.h:942 (discriminator 12)
    0.00 :   7512e:  mov    %r12,%rax
    0.00 :   75131:  sub    %rcx,%rax
         : 93    ./stdio-common/../libio/libioP.h:943 (discriminator 12)
    0.00 :   75134:  cmp    %rax,%rdi
    0.00 :   75137:  jbe    769d0 <__vfprintf_internal+0x19a0>
         : 96    outstring_func():
         : 97    ./stdio-common/vfprintf-internal.c:239
    0.00 :   7513d:  mov    0x8(%rsp),%rsi
    0.00 :   75142:  mov    %rbx,%rdx
    0.00 :   75145:  mov    %rbp,%rdi
    0.00 :   75148:  call   *0x38(%r12)
    0.00 :   7514d:  cmp    %rax,%rbx
    0.00 :   75150:  jne    76728 <__vfprintf_internal+0x16f8>
         : 104   done_add_func():
         : 105   ./stdio-common/vfprintf-internal.c:127
    0.00 :   75156:  movslq %ebx,%rdx
    0.00 :   75159:  mov    %rbx,%rax
    0.00 :   7515c:  mov    %ebx,%r12d
    0.00 :   7515f:  shr    $0x3f,%rax
    0.00 :   75163:  cmp    %rdx,%rbx
    0.00 :   75166:  mov    $0x1,%edx
    0.00 :   7516b:  cmovne %edx,%eax
    0.00 :   7516e:  test   %eax,%eax
    0.00 :   75170:  jne    75860 <__vfprintf_internal+0x830>
         : 115   __vfprintf_internal():
         : 116   ./stdio-common/vfprintf-internal.c:1263
    0.00 :   75176:  test   %ebx,%ebx
    0.00 :   75178:  js     7533d <__vfprintf_internal+0x30d>
         : 119   ./stdio-common/vfprintf-internal.c:1267 (discriminator 2)
    0.00 :   7517e:  mov    0x68(%rsp),%r13
    0.00 :   75183:  cmpb   $0x0,0x0(%r13)
    0.00 :   75188:  je     7533d <__vfprintf_internal+0x30d>
         : 123   ./stdio-common/vfprintf-internal.c:1271
    0.00 :   7518e:  mov    0x1a7833(%rip),%rbx        # 21c9c8 <__printf_function_table>
    0.00 :   75195:  mov    %rbx,0x98(%rsp)
    0.00 :   7519d:  test   %rbx,%rbx
    0.00 :   751a0:  jne    77128 <__vfprintf_internal+0x20f8>
         : 128   ./stdio-common/vfprintf-internal.c:1271 (discriminator 2)
    0.00 :   751a6:  cmpq   $0x0,0x1a782a(%rip)        # 21c9d8 <__printf_modifier_table>
    0.00 :   751ae:  jne    752c8 <__vfprintf_internal+0x298>
         : 131   ./stdio-common/vfprintf-internal.c:1271
    0.00 :   751b4:  cmpq   $0x0,0x1a66fc(%rip)        # 21b8b8 <__printf_va_arg_table>
    0.00 :   751bc:  jne    752c8 <__vfprintf_internal+0x298>
         : 134   ./stdio-common/vfprintf-internal.c:1532
    0.00 :   751c2:  mov    0x7c(%rsp),%eax
         : 136   ./stdio-common/vfprintf-internal.c:1214
    0.00 :   751c6:  movl   $0x0,0xa0(%rsp)
         : 138   ./stdio-common/vfprintf-internal.c:1248
    0.00 :   751d1:  movl   $0x0,0x78(%rsp)
         : 140   ./stdio-common/vfprintf-internal.c:1240
    0.00 :   751d9:  movq   $0xffffffffffffffff,0x80(%rsp)
         : 142   ./stdio-common/vfprintf-internal.c:1532
    0.00 :   751e5:  mov    %eax,%ebx
    0.00 :   751e7:  and    $0x1,%ebx
    0.00 :   751ea:  mov    %bl,0xa7(%rsp)
         : 146   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   751f1:  mov    %eax,%ebx
         : 148   ./stdio-common/vfprintf-internal.c:1516
    0.00 :   751f3:  and    $0x2,%eax
         : 150   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   751f6:  and    $0x8,%ebx
         : 152   ./stdio-common/vfprintf-internal.c:1516
    0.00 :   751f9:  mov    %eax,0xa8(%rsp)
         : 154   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   75200:  mov    %ebx,0xac(%rsp)
    0.00 :   75207:  nopw   0x0(%rax,%rax,1)
         : 157   ./stdio-common/vfprintf-internal.c:1313
    0.00 :   75210:  lea    0x1(%r13),%rbx
    0.00 :   75214:  movzbl 0x1(%r13),%r13d
    0.00 :   75219:  lea    0x550(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75220:  lea    -0x20(%r13),%eax
    0.00 :   75224:  cmp    $0x5a,%al
    0.00 :   75226:  ja     75251 <__vfprintf_internal+0x221>
         : 164   ./stdio-common/vfprintf-internal.c:1313 (discriminator 1)
    0.00 :   75228:  movsbl %r13b,%eax
    0.00 :   7522c:  lea    0x15c4ad(%rip),%rdx        # 1d16e0 <jump_table>
    0.00 :   75233:  lea    0x15c426(%rip),%rdi        # 1d1660 <step0_jumps.9>
    0.00 :   7523a:  sub    $0x20,%eax
    0.00 :   7523d:  cltq
    0.00 :   7523f:  movzbl (%rdx,%rax,1),%eax
    0.00 :   75243:  movslq (%rdi,%rax,4),%rsi
    0.00 :   75247:  lea    0x522(%rip),%rax        # 75770 <__vfprintf_internal+0x740>
    0.00 :   7524e:  add    %rax,%rsi
         : 174   ./stdio-common/vfprintf-internal.c:1352 (discriminator 4)
    0.00 :   75251:  mov    0x1a4d18(%rip),%rax        # 219f70 <_DYNAMIC+0x3b0>
         : 176   ./stdio-common/vfprintf-internal.c:1301 (discriminator 4)
    0.00 :   75258:  xor    %r11d,%r11d
         : 178   ./stdio-common/vfprintf-internal.c:1300 (discriminator 4)
    0.00 :   7525b:  xor    %r10d,%r10d
         : 180   ./stdio-common/vfprintf-internal.c:1299 (discriminator 4)
    0.00 :   7525e:  xor    %r15d,%r15d
         : 182   ./stdio-common/vfprintf-internal.c:1298 (discriminator 4)
    0.00 :   75261:  xor    %edx,%edx
         : 184   ./stdio-common/vfprintf-internal.c:1303 (discriminator 4)
    0.00 :   75263:  mov    $0xffffffff,%r14d
         : 186   ./stdio-common/vfprintf-internal.c:1501 (discriminator 4)
    0.00 :   75269:  lea    0x15c1f0(%rip),%r8        # 1d1460 <step4_jumps.5>
         : 188   read_int():
         : 189   ./stdio-common/printf-parse.h:88 (discriminator 4)
    0.00 :   75270:  mov    $0x7fffffff,%r9d
         : 191   __vfprintf_internal():
         : 192   ./stdio-common/vfprintf-internal.c:1352 (discriminator 4)
    0.00 :   75276:  mov    %fs:(%rax),%rax
         : 194   ./stdio-common/vfprintf-internal.c:1306 (discriminator 4)
    0.00 :   7527a:  movl   $0x0,0x5c(%rsp)
         : 196   ./stdio-common/vfprintf-internal.c:1302 (discriminator 4)
    0.00 :   75282:  movl   $0x0,0x10(%rsp)
         : 198   ./stdio-common/vfprintf-internal.c:1352 (discriminator 4)
    0.00 :   7528a:  mov    %rax,0x60(%rsp)
         : 200   ./stdio-common/vfprintf-internal.c:1501 (discriminator 4)
    0.00 :   7528f:  lea    0x15c44a(%rip),%rax        # 1d16e0 <jump_table>
         : 202   ./stdio-common/vfprintf-internal.c:1295 (discriminator 4)
    0.00 :   75296:  movl   $0x0,0x50(%rsp)
         : 204   ./stdio-common/vfprintf-internal.c:1294 (discriminator 4)
    0.00 :   7529e:  movl   $0x0,0x40(%rsp)
         : 206   ./stdio-common/vfprintf-internal.c:1293 (discriminator 4)
    0.00 :   752a6:  movl   $0x0,0x28(%rsp)
         : 208   ./stdio-common/vfprintf-internal.c:1292 (discriminator 4)
    0.00 :   752ae:  movl   $0x0,0x58(%rsp)
         : 210   ./stdio-common/vfprintf-internal.c:1291 (discriminator 4)
    0.00 :   752b6:  movl   $0x0,0x4c(%rsp)
         : 212   ./stdio-common/vfprintf-internal.c:1307 (discriminator 4)
    0.00 :   752be:  movb   $0x20,0x38(%rsp)
    0.00 :   752c3:  jmp    *%rsi
    0.00 :   752c5:  nopl   (%rax)
         : 216   ./stdio-common/vfprintf-internal.c:1214
    0.00 :   752c8:  movl   $0x0,0xa0(%rsp)
         : 218   ./stdio-common/vfprintf-internal.c:1240
    0.00 :   752d3:  movq   $0xffffffffffffffff,0x80(%rsp)
         : 220   ./stdio-common/vfprintf-internal.c:1602
    0.00 :   752df:  sub    $0x8,%rsp
    0.00 :   752e3:  mov    %r12d,%r9d
    0.00 :   752e6:  mov    %rbp,%rdi
    0.00 :   752e9:  mov    0x84(%rsp),%ebx
    0.00 :   752f0:  push   %rbx
    0.00 :   752f1:  push   0xa8(%rsp)
    0.00 :   752f8:  push   0x98(%rsp)
    0.00 :   752ff:  mov    0xb0(%rsp),%ebx
    0.00 :   75306:  push   %rbx
    0.00 :   75307:  lea    0x168(%rsp),%rdx
    0.00 :   7530f:  push   %rdx
    0.00 :   75310:  push   0x98(%rsp)
    0.00 :   75317:  push   %rax
    0.00 :   75318:  mov    0x60(%rsp),%rcx
    0.00 :   7531d:  mov    0xe0(%rsp),%edx
    0.00 :   75324:  mov    0x48(%rsp),%rsi
    0.00 :   75329:  lea    0x158(%rsp),%r8
    0.00 :   75331:  call   72b40 <printf_positional>
    0.00 :   75336:  add    $0x40,%rsp
    0.00 :   7533a:  mov    %eax,%r12d
         : 241   ./stdio-common/vfprintf-internal.c:1608
    0.00 :   7533d:  testl  $0x8000,0x0(%rbp)
    0.00 :   75344:  je     75380 <__vfprintf_internal+0x350>
         : 244   ./stdio-common/vfprintf-internal.c:1609 (discriminator 23)
    0.00 :   75346:  cmpb   $0x0,0xa6(%rsp)
    0.00 :   7534e:  jne    75588 <__vfprintf_internal+0x558>
         : 247   ./stdio-common/vfprintf-internal.c:1612
    0.00 :   75354:  mov    0x528(%rsp),%rax
    0.00 :   7535c:  sub    %fs:0x28,%rax
    0.00 :   75365:  jne    7750a <__vfprintf_internal+0x24da>
    0.00 :   7536b:  add    $0x538,%rsp
    0.00 :   75372:  mov    %r12d,%eax
    0.00 :   75375:  pop    %rbx
    0.00 :   75376:  pop    %rbp
    0.00 :   75377:  pop    %r12
    0.00 :   75379:  pop    %r13
    0.00 :   7537b:  pop    %r14
    0.00 :   7537d:  pop    %r15
    0.00 :   7537f:  ret
         : 260   ./stdio-common/vfprintf-internal.c:1608 (discriminator 1)
    0.00 :   75380:  mov    0x88(%rbp),%rdi
    0.00 :   75387:  mov    0x4(%rdi),%eax
    0.00 :   7538a:  sub    $0x1,%eax
    0.00 :   7538d:  mov    %eax,0x4(%rdi)
    0.00 :   75390:  jne    75346 <__vfprintf_internal+0x316>
         : 266   ./stdio-common/vfprintf-internal.c:1608 (discriminator 3)
    0.00 :   75392:  movq   $0x0,0x8(%rdi)
    0.00 :   7539a:  xchg   %eax,(%rdi)
    0.00 :   7539c:  cmp    $0x1,%eax
    0.00 :   7539f:  jle    75346 <__vfprintf_internal+0x316>
         : 271   ./stdio-common/vfprintf-internal.c:1608 (discriminator 20)
    0.00 :   753a1:  call   91300 <__lll_lock_wake_private>
    0.00 :   753a6:  jmp    75346 <__vfprintf_internal+0x316>
    0.00 :   753a8:  nopl   0x0(%rax,%rax,1)
    0.00 :   753b0:  endbr64
         : 276   ./stdio-common/vfprintf-internal.c:1496
    0.00 :   753b4:  endbr64
         : 278   ./stdio-common/vfprintf-internal.c:1501
    0.00 :   753b8:  movzbl 0x1(%rbx),%r13d
    0.00 :   753bd:  lea    0x1(%rbx),%rdx
    0.00 :   753c1:  lea    0x3a8(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   753c8:  lea    -0x20(%r13),%ecx
    0.00 :   753cc:  cmp    $0x5a,%cl
    0.00 :   753cf:  ja     755a0 <__vfprintf_internal+0x570>
         : 285   ./stdio-common/vfprintf-internal.c:1501 (discriminator 1)
    0.00 :   753d5:  movsbl %r13b,%ecx
         : 287   ./stdio-common/vfprintf-internal.c:1474 (discriminator 1)
    0.00 :   753d9:  lea    0x390(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
         : 289   ./stdio-common/vfprintf-internal.c:1500 (discriminator 1)
    0.00 :   753e0:  mov    $0x1,%r10d
         : 291   ./stdio-common/vfprintf-internal.c:1501 (discriminator 1)
    0.00 :   753e6:  sub    $0x20,%ecx
    0.00 :   753e9:  movslq %ecx,%rcx
    0.00 :   753ec:  movzbl (%rax,%rcx,1),%ecx
         : 295   ./stdio-common/vfprintf-internal.c:1474 (discriminator 1)
    0.00 :   753f0:  movslq (%r8,%rcx,4),%rsi
    0.00 :   753f4:  add    %rbx,%rsi
         : 298   ./stdio-common/vfprintf-internal.c:1501 (discriminator 1)
    0.00 :   753f7:  mov    %rdx,%rbx
         : 300   ./stdio-common/vfprintf-internal.c:1499 (discriminator 1)
    0.00 :   753fa:  xor    %edx,%edx
    0.00 :   753fc:  jmp    *%rsi
    0.00 :   753fe:  xchg   %ax,%ax
    0.00 :   75400:  endbr64
    0.00 :   75404:  endbr64
         : 306   ./stdio-common/vfprintf-internal.c:1532
    0.00 :   75408:  cmpb   $0x0,0xa7(%rsp)
    0.00 :   75410:  jne    771e5 <__vfprintf_internal+0x21b5>
         : 309   ./stdio-common/vfprintf-internal.c:1535
    0.00 :   75416:  mov    %edx,%ecx
    0.00 :   75418:  and    $0x1,%ecx
    0.00 :   7541b:  mov    0x10(%rsp),%eax
    0.00 :   7541f:  movzbl %cl,%ecx
    0.00 :   75422:  movsbl %r13b,%r13d
    0.00 :   75426:  movl   $0x0,0xdc(%rsp)
    0.00 :   75431:  mov    %r14d,0xd0(%rsp)
    0.00 :   75439:  mov    %eax,0xd4(%rsp)
    0.00 :   75440:  lea    (%r15,%r15,1),%eax
    0.00 :   75444:  or     %ecx,%eax
    0.00 :   75446:  lea    0x0(,%r10,4),%ecx
    0.00 :   7544e:  mov    %r13d,0xd8(%rsp)
    0.00 :   75456:  or     %ecx,%eax
    0.00 :   75458:  movzwl 0x4c(%rsp),%ecx
    0.00 :   7545d:  shl    $0x3,%ecx
    0.00 :   75460:  or     %ecx,%eax
    0.00 :   75462:  movzwl 0x58(%rsp),%ecx
    0.00 :   75467:  shl    $0x4,%ecx
    0.00 :   7546a:  or     %ecx,%eax
    0.00 :   7546c:  movzwl 0x28(%rsp),%ecx
    0.00 :   75471:  shl    $0x5,%ecx
    0.00 :   75474:  or     %ecx,%eax
    0.00 :   75476:  movzwl 0x40(%rsp),%ecx
    0.00 :   7547b:  shl    $0x6,%ecx
    0.00 :   7547e:  or     %ecx,%eax
    0.00 :   75480:  movzwl 0x50(%rsp),%ecx
    0.00 :   75485:  shl    $0x7,%ecx
    0.00 :   75488:  or     %ecx,%eax
    0.00 :   7548a:  movzwl 0x5c(%rsp),%ecx
    0.00 :   7548f:  shl    $0xb,%ecx
    0.00 :   75492:  or     %ecx,%eax
    0.00 :   75494:  mov    %ax,0xdc(%rsp)
    0.00 :   7549c:  movzbl 0x38(%rsp),%eax
    0.00 :   754a1:  mov    %eax,0xe0(%rsp)
         : 344   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   754a8:  test   %edx,%edx
    0.00 :   754aa:  je     755b0 <__vfprintf_internal+0x580>
         : 347   ./stdio-common/vfprintf-internal.c:1555 (discriminator 1)
    0.00 :   754b0:  mov    0xac(%rsp),%esi
    0.00 :   754b7:  test   %esi,%esi
    0.00 :   754b9:  je     768a0 <__vfprintf_internal+0x1870>
         : 351   ./stdio-common/vfprintf-internal.c:1555 (discriminator 3)
    0.00 :   754bf:  mov    0x20(%rsp),%rcx
    0.00 :   754c4:  orb    $0x10,0xdd(%rsp)
    0.00 :   754cc:  mov    0x4(%rcx),%edx
    0.00 :   754cf:  cmp    $0xaf,%edx
    0.00 :   754d5:  ja     76d80 <__vfprintf_internal+0x1d50>
         : 357   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   754db:  mov    %edx,%eax
    0.00 :   754dd:  add    $0x10,%edx
    0.00 :   754e0:  add    0x10(%rcx),%rax
    0.00 :   754e4:  mov    %edx,0x4(%rcx)
    0.00 :   754e7:  movdqa (%rax),%xmm3
    0.00 :   754eb:  movaps %xmm3,0xc0(%rsp)
    0.00 :   754f3:  jmp    768c7 <__vfprintf_internal+0x1897>
    0.00 :   754f8:  nopl   0x0(%rax,%rax,1)
         : 366   ./stdio-common/vfprintf-internal.c:1218 (discriminator 5)
    0.00 :   75500:  cmp    $0xffffffff,%eax
    0.00 :   75503:  je     75090 <__vfprintf_internal+0x60>
         : 369   ./stdio-common/vfprintf-internal.c:1218
    0.00 :   75509:  mov    $0xffffffff,%r12d
    0.00 :   7550f:  jmp    75354 <__vfprintf_internal+0x324>
    0.00 :   75514:  nopl   0x0(%rax)
         : 373   ./stdio-common/vfprintf-internal.c:1259 (discriminator 1)
    0.00 :   75518:  mov    0x1a4a21(%rip),%rax        # 219f40 <_IO_funlockfile@@GLIBC_2.2.5+0x1b7ef0>
    0.00 :   7551f:  lea    0xf0(%rsp),%rdi
    0.00 :   75527:  mov    %rax,0xf0(%rsp)
    0.00 :   7552f:  call   911c0 <__GI___libc_cleanup_push_defer>
         : 378   ./stdio-common/vfprintf-internal.c:1260 (discriminator 1)
    0.00 :   75534:  mov    0x0(%rbp),%eax
    0.00 :   75537:  and    $0x8000,%eax
    0.00 :   7553c:  jne    77590 <__vfprintf_internal+0x2560>
    0.00 :   75542:  mov    %fs:0x10,%rbx
    0.00 :   7554b:  mov    0x88(%rbp),%rdi
    0.00 :   75552:  cmp    %rbx,0x8(%rdi)
    0.00 :   75556:  je     75572 <__vfprintf_internal+0x542>
         : 386   ./stdio-common/vfprintf-internal.c:1260 (discriminator 3)
    0.00 :   75558:  mov    $0x1,%edx
    0.00 :   7555d:  lock cmpxchg %edx,(%rdi)
    0.00 :   75561:  jne    76ee0 <__vfprintf_internal+0x1eb0>
         : 390   ./stdio-common/vfprintf-internal.c:1260 (discriminator 10)
    0.00 :   75567:  mov    0x88(%rbp),%rdi
    0.00 :   7556e:  mov    %rbx,0x8(%rdi)
         : 393   ./stdio-common/vfprintf-internal.c:1260 (discriminator 11)
    0.00 :   75572:  addl   $0x1,0x4(%rdi)
         : 395   ./stdio-common/vfprintf-internal.c:1259 (discriminator 11)
    0.00 :   75576:  movb   $0x1,0xa6(%rsp)
    0.00 :   7557e:  jmp    75100 <__vfprintf_internal+0xd0>
    0.00 :   75583:  nopl   0x0(%rax,%rax,1)
         : 399   ./stdio-common/vfprintf-internal.c:1609 (discriminator 1)
    0.00 :   75588:  lea    0xf0(%rsp),%rdi
    0.00 :   75590:  call   91200 <__GI___libc_cleanup_pop_restore>
         : 402   ./stdio-common/vfprintf-internal.c:1611 (discriminator 1)
   50.00 :   75595:  jmp    75354 <__vfprintf_internal+0x324>
    0.00 :   7559a:  nopw   0x0(%rax,%rax,1)
         : 405   ./stdio-common/vfprintf-internal.c:1501 (discriminator 4)
    0.00 :   755a0:  mov    %rdx,%rbx
         : 407   ./stdio-common/vfprintf-internal.c:1500 (discriminator 4)
    0.00 :   755a3:  mov    $0x1,%r10d
         : 409   ./stdio-common/vfprintf-internal.c:1499 (discriminator 4)
    0.00 :   755a9:  xor    %edx,%edx
    0.00 :   755ab:  jmp    *%rsi
    0.00 :   755ad:  nopl   (%rax)
         : 413   ./stdio-common/vfprintf-internal.c:1555
    0.00 :   755b0:  mov    0x20(%rsp),%rsi
    0.00 :   755b5:  mov    0x4(%rsi),%eax
    0.00 :   755b8:  cmp    $0xaf,%eax
    0.00 :   755bd:  ja     76d00 <__vfprintf_internal+0x1cd0>
    0.00 :   755c3:  mov    %eax,%edx
    0.00 :   755c5:  add    $0x10,%eax
    0.00 :   755c8:  add    0x10(%rsi),%rdx
    0.00 :   755cc:  mov    %eax,0x4(%rsi)
    0.00 :   755cf:  movsd  (%rdx),%xmm0
    0.00 :   755d3:  movsd  %xmm0,0xc0(%rsp)
    0.00 :   755dc:  jmp    768c7 <__vfprintf_internal+0x1897>
    0.00 :   755e1:  nopl   0x0(%rax)
    0.00 :   755e8:  endbr64
         : 427   ./stdio-common/vfprintf-internal.c:1517 (discriminator 3)
    0.00 :   755ec:  mov    0x20(%rsp),%rsi
    0.00 :   755f1:  lea    0x110(%rsp),%rdx
    0.00 :   755f9:  movq   $0x0,0x110(%rsp)
    0.00 :   75605:  mov    (%rsi),%eax
    0.00 :   75607:  cmp    $0x2f,%eax
    0.00 :   7560a:  ja     769e0 <__vfprintf_internal+0x19b0>
         : 434   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   75610:  mov    %eax,%ecx
    0.00 :   75612:  add    $0x8,%eax
    0.00 :   75615:  add    0x10(%rsi),%rcx
    0.00 :   75619:  mov    %eax,(%rsi)
    0.00 :   7561b:  mov    (%rcx),%esi
    0.00 :   7561d:  lea    0x130(%rsp),%r15
    0.00 :   75625:  mov    %r15,%rdi
    0.00 :   75628:  call   c61e0 <wcrtomb>
    0.00 :   7562d:  mov    %rax,%r14
    0.00 :   75630:  cmp    $0xffffffffffffffff,%rax
    0.00 :   75634:  je     76728 <__vfprintf_internal+0x16f8>
         : 446   ./stdio-common/vfprintf-internal.c:1517 (discriminator 20)
    0.00 :   7563a:  mov    0x10(%rsp),%r13d
    0.00 :   7563f:  mov    0x28(%rsp),%r10d
    0.00 :   75644:  sub    %eax,%r13d
    0.00 :   75647:  test   %r10d,%r10d
    0.00 :   7564a:  jne    75655 <__vfprintf_internal+0x625>
         : 452   pad_func():
         : 453   ./stdio-common/vfprintf-internal.c:192
    0.00 :   7564c:  test   %r13d,%r13d
    0.00 :   7564f:  jg     76d39 <__vfprintf_internal+0x1d09>
         : 456   outstring_func():
         : 457   ./stdio-common/vfprintf-internal.c:239
    0.00 :   75655:  mov    0xd8(%rbp),%rax
         : 459   IO_validate_vtable():
         : 460   ./stdio-common/../libio/libioP.h:942
    0.00 :   7565c:  lea    0x1a139d(%rip),%rcx        # 216a00 <_IO_helper_jumps>
    0.00 :   75663:  mov    %rax,%rdx
    0.00 :   75666:  sub    %rcx,%rdx
         : 464   ./stdio-common/../libio/libioP.h:943
    0.00 :   75669:  cmp    %rdx,0x30(%rsp)
    0.00 :   7566e:  jbe    77251 <__vfprintf_internal+0x2221>
         : 467   outstring_func():
         : 468   ./stdio-common/vfprintf-internal.c:239
    0.00 :   75674:  mov    %r14,%rdx
    0.00 :   75677:  mov    %r15,%rsi
    0.00 :   7567a:  mov    %rbp,%rdi
    0.00 :   7567d:  call   *0x38(%rax)
    0.00 :   75680:  cmp    %rax,%r14
    0.00 :   75683:  jne    76728 <__vfprintf_internal+0x16f8>
         : 475   done_add_func():
         : 476   ./stdio-common/vfprintf-internal.c:127
    0.00 :   75689:  movslq %r12d,%rax
    0.00 :   7568c:  xor    %edx,%edx
    0.00 :   7568e:  add    %r14,%rax
    0.00 :   75691:  js     7757c <__vfprintf_internal+0x254c>
    0.00 :   75697:  cmp    %r14,%rax
    0.00 :   7569a:  jb     7757c <__vfprintf_internal+0x254c>
    0.00 :   756a0:  movslq %eax,%rcx
    0.00 :   756a3:  mov    %eax,%r12d
    0.00 :   756a6:  cmp    %rcx,%rax
    0.00 :   756a9:  mov    $0x1,%ecx
    0.00 :   756ae:  cmovne %ecx,%edx
    0.00 :   756b1:  test   %edx,%edx
    0.00 :   756b3:  jne    75860 <__vfprintf_internal+0x830>
         : 490   __vfprintf_internal():
         : 491   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   756b9:  test   %eax,%eax
    0.00 :   756bb:  js     7533d <__vfprintf_internal+0x30d>
         : 494   ./stdio-common/vfprintf-internal.c:1517 (discriminator 28)
    0.00 :   756c1:  mov    0x28(%rsp),%r9d
    0.00 :   756c6:  test   %r9d,%r9d
    0.00 :   756c9:  je     75f80 <__vfprintf_internal+0xf50>
    0.00 :   756cf:  nop
         : 499   pad_func():
         : 500   ./stdio-common/vfprintf-internal.c:192
    0.00 :   756d0:  test   %r13d,%r13d
    0.00 :   756d3:  jle    75f80 <__vfprintf_internal+0xf50>
         : 503   ./stdio-common/vfprintf-internal.c:196
    0.00 :   756d9:  movslq %r13d,%r13
    0.00 :   756dc:  mov    $0x20,%esi
    0.00 :   756e1:  mov    %rbp,%rdi
    0.00 :   756e4:  mov    %r13,%rdx
    0.00 :   756e7:  call   806a0 <_IO_padn>
         : 509   ./stdio-common/vfprintf-internal.c:200
    0.00 :   756ec:  cmp    %rax,%r13
    0.00 :   756ef:  jne    76728 <__vfprintf_internal+0x16f8>
         : 512   done_add_func():
         : 513   ./stdio-common/vfprintf-internal.c:127
    0.00 :   756f5:  add    %r12d,%r13d
    0.00 :   756f8:  mov    %r13d,%r12d
    0.00 :   756fb:  jo     75860 <__vfprintf_internal+0x830>
         : 517   __vfprintf_internal():
         : 518   ./stdio-common/vfprintf-internal.c:1564
    0.00 :   75701:  test   %r12d,%r12d
    0.00 :   75704:  jns    75f80 <__vfprintf_internal+0xf50>
    0.00 :   7570a:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   7570f:  nop
    0.00 :   75710:  endbr64
         : 524   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   75714:  mov    0x20(%rsp),%rdi
    0.00 :   75719:  mov    (%rdi),%eax
    0.00 :   7571b:  cmp    $0x2f,%eax
    0.00 :   7571e:  ja     76c18 <__vfprintf_internal+0x1be8>
    0.00 :   75724:  mov    %eax,%edx
    0.00 :   75726:  add    $0x8,%eax
    0.00 :   75729:  add    0x10(%rdi),%rdx
    0.00 :   7572d:  mov    %eax,(%rdi)
    0.00 :   7572f:  mov    (%rdx),%r15
    0.00 :   75732:  mov    %r10d,%eax
    0.00 :   75735:  xor    $0x1,%eax
    0.00 :   75738:  test   %r15,%r15
    0.00 :   7573b:  jne    758af <__vfprintf_internal+0x87f>
         : 538   ./stdio-common/vfprintf-internal.c:1517 (discriminator 36)
    0.00 :   75741:  cmp    $0xffffffff,%r14d
    0.00 :   75745:  je     76f38 <__vfprintf_internal+0x1f08>
    0.00 :   7574b:  cmp    $0x5,%r14d
    0.00 :   7574f:  jg     76f38 <__vfprintf_internal+0x1f08>
         : 543   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   75755:  xor    %eax,%eax
    0.00 :   75757:  xor    %r14d,%r14d
    0.00 :   7575a:  lea    0x162cee(%rip),%r15        # 1d844f <dir_suffix+0x16e>
    0.00 :   75761:  jmp    758d9 <__vfprintf_internal+0x8a9>
    0.00 :   75766:  cs nopw 0x0(%rax,%rax,1)
    0.00 :   75770:  endbr64
         : 550   ./stdio-common/vfprintf-internal.c:1569
    0.00 :   75774:  test   %r13b,%r13b
    0.00 :   75777:  jne    76a88 <__vfprintf_internal+0x1a58>
         : 553   ./stdio-common/vfprintf-internal.c:1572
    0.00 :   7577d:  mov    0x1a468c(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
         : 555   ./stdio-common/vfprintf-internal.c:1573
    0.00 :   75784:  mov    $0xffffffff,%r12d
         : 557   ./stdio-common/vfprintf-internal.c:1572
    0.00 :   7578a:  movl   $0x16,%fs:(%rax)
         : 559   ./stdio-common/vfprintf-internal.c:1574
    0.00 :   75791:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   75796:  cs nopw 0x0(%rax,%rax,1)
    0.00 :   757a0:  endbr64
         : 563   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   757a4:  test   %r10d,%r10d
    0.00 :   757a7:  jne    755e8 <__vfprintf_internal+0x5b8>
         : 566   ./stdio-common/vfprintf-internal.c:1517 (discriminator 2)
    0.00 :   757ad:  mov    0x10(%rsp),%r13d
    0.00 :   757b2:  mov    0x28(%rsp),%r14d
    0.00 :   757b7:  sub    $0x1,%r13d
    0.00 :   757bb:  test   %r14d,%r14d
    0.00 :   757be:  je     76e97 <__vfprintf_internal+0x1e67>
         : 572   ./stdio-common/vfprintf-internal.c:1517 (discriminator 7)
    0.00 :   757c4:  mov    0x20(%rsp),%rdi
    0.00 :   757c9:  mov    (%rdi),%eax
    0.00 :   757cb:  cmp    $0x2f,%eax
    0.00 :   757ce:  ja     76d18 <__vfprintf_internal+0x1ce8>
         : 577   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   757d4:  mov    %eax,%edx
    0.00 :   757d6:  add    $0x8,%eax
    0.00 :   757d9:  add    0x10(%rdi),%rdx
    0.00 :   757dd:  mov    %eax,(%rdi)
    0.00 :   757df:  mov    (%rdx),%edx
    0.00 :   757e1:  mov    0x28(%rbp),%rax
    0.00 :   757e5:  cmp    0x30(%rbp),%rax
    0.00 :   757e9:  jae    773d1 <__vfprintf_internal+0x23a1>
         : 586   ./stdio-common/vfprintf-internal.c:1517 (discriminator 9)
    0.00 :   757ef:  lea    0x1(%rax),%rcx
    0.00 :   757f3:  mov    %rcx,0x28(%rbp)
    0.00 :   757f7:  mov    %dl,(%rax)
         : 590   ./stdio-common/vfprintf-internal.c:1517 (discriminator 12)
    0.00 :   757f9:  cmp    $0x7fffffff,%r12d
    0.00 :   75800:  je     76728 <__vfprintf_internal+0x16f8>
         : 593   ./stdio-common/vfprintf-internal.c:1517 (discriminator 14)
    0.00 :   75806:  mov    0x28(%rsp),%r11d
    0.00 :   7580b:  add    $0x1,%r12d
    0.00 :   7580f:  test   %r11d,%r11d
    0.00 :   75812:  je     75f80 <__vfprintf_internal+0xf50>
         : 598   pad_func():
         : 599   ./stdio-common/vfprintf-internal.c:192
    0.00 :   75818:  test   %r13d,%r13d
    0.00 :   7581b:  jle    75f80 <__vfprintf_internal+0xf50>
         : 602   ./stdio-common/vfprintf-internal.c:196
    0.00 :   75821:  movslq %r13d,%r14
    0.00 :   75824:  mov    $0x20,%esi
    0.00 :   75829:  mov    %rbp,%rdi
    0.00 :   7582c:  mov    %r14,%rdx
    0.00 :   7582f:  call   806a0 <_IO_padn>
         : 608   ./stdio-common/vfprintf-internal.c:200
    0.00 :   75834:  cmp    %rax,%r14
    0.00 :   75837:  jne    76728 <__vfprintf_internal+0x16f8>
         : 611   done_add_func():
         : 612   ./stdio-common/vfprintf-internal.c:127
    0.00 :   7583d:  xor    %eax,%eax
    0.00 :   7583f:  add    %r13d,%r12d
    0.00 :   75842:  js     77572 <__vfprintf_internal+0x2542>
    0.00 :   75848:  cmp    %r13d,%r12d
    0.00 :   7584b:  jb     77572 <__vfprintf_internal+0x2542>
    0.00 :   75851:  test   %eax,%eax
    0.00 :   75853:  je     75701 <__vfprintf_internal+0x6d1>
    0.00 :   75859:  nopl   0x0(%rax)
         : 621   ./stdio-common/vfprintf-internal.c:129
    0.00 :   75860:  mov    0x1a45a9(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
         : 623   ./stdio-common/vfprintf-internal.c:130
    0.00 :   75867:  mov    $0xffffffff,%r12d
         : 625   ./stdio-common/vfprintf-internal.c:129
    0.00 :   7586d:  movl   $0x4b,%fs:(%rax)
         : 627   __vfprintf_internal():
         : 628   ./stdio-common/vfprintf-internal.c:1564
    0.00 :   75874:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   75879:  nopl   0x0(%rax)
    0.00 :   75880:  endbr64
         : 632   ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75884:  mov    0x4c(%rsp),%r15d
    0.00 :   75889:  test   %r15d,%r15d
    0.00 :   7588c:  je     76bf0 <__vfprintf_internal+0x1bc0>
         : 636   ./stdio-common/vfprintf-internal.c:1516 (discriminator 243)
    0.00 :   75892:  mov    0x90(%rsp),%edi
    0.00 :   75899:  call   7d2c0 <__get_errname>
    0.00 :   7589e:  mov    %rax,%r15
         : 640   ./stdio-common/vfprintf-internal.c:1516 (discriminator 246)
    0.00 :   758a1:  mov    $0x1,%eax
    0.00 :   758a6:  test   %r15,%r15
    0.00 :   758a9:  je     77150 <__vfprintf_internal+0x2120>
         : 644   ./stdio-common/vfprintf-internal.c:1517 (discriminator 37)
    0.00 :   758af:  cmp    $0x53,%r13b
    0.00 :   758b3:  je     76ca0 <__vfprintf_internal+0x1c70>
    0.00 :   758b9:  test   %al,%al
    0.00 :   758bb:  je     76ca0 <__vfprintf_internal+0x1c70>
         : 649   ./stdio-common/vfprintf-internal.c:1517 (discriminator 40)
    0.00 :   758c1:  cmp    $0xffffffff,%r14d
    0.00 :   758c5:  je     76d29 <__vfprintf_internal+0x1cf9>
         : 652   ./stdio-common/vfprintf-internal.c:1517 (discriminator 42)
    0.00 :   758cb:  movslq %r14d,%rsi
    0.00 :   758ce:  mov    %r15,%rdi
    0.00 :   758d1:  call   28390 <*ABS*+0xa8720@plt>
    0.00 :   758d6:  mov    %rax,%r14
         : 657   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   758d9:  mov    0x10(%rsp),%r13d
    0.00 :   758de:  sub    %eax,%r13d
    0.00 :   758e1:  js     76fe0 <__vfprintf_internal+0x1fb0>
         : 661   ./stdio-common/vfprintf-internal.c:1517 (discriminator 47)
    0.00 :   758e7:  mov    0x28(%rsp),%r8d
    0.00 :   758ec:  test   %r8d,%r8d
    0.00 :   758ef:  jne    758fa <__vfprintf_internal+0x8ca>
         : 665   pad_func():
         : 666   ./stdio-common/vfprintf-internal.c:192
    0.00 :   758f1:  test   %r13d,%r13d
    0.00 :   758f4:  jne    76dfd <__vfprintf_internal+0x1dcd>
         : 669   outstring_func():
         : 670   ./stdio-common/vfprintf-internal.c:239
    0.00 :   758fa:  mov    0xd8(%rbp),%rax
         : 672   IO_validate_vtable():
         : 673   ./stdio-common/../libio/libioP.h:942
    0.00 :   75901:  lea    0x1a10f8(%rip),%rcx        # 216a00 <_IO_helper_jumps>
    0.00 :   75908:  mov    %rax,%rdx
    0.00 :   7590b:  sub    %rcx,%rdx
         : 677   ./stdio-common/../libio/libioP.h:943
    0.00 :   7590e:  cmp    %rdx,0x30(%rsp)
    0.00 :   75913:  jbe    7729c <__vfprintf_internal+0x226c>
         : 680   outstring_func():
         : 681   ./stdio-common/vfprintf-internal.c:239
    0.00 :   75919:  mov    %r14,%rdx
    0.00 :   7591c:  mov    %r15,%rsi
    0.00 :   7591f:  mov    %rbp,%rdi
    0.00 :   75922:  call   *0x38(%rax)
    0.00 :   75925:  cmp    %r14,%rax
    0.00 :   75928:  jne    76728 <__vfprintf_internal+0x16f8>
         : 688   done_add_func():
         : 689   ./stdio-common/vfprintf-internal.c:127
    0.00 :   7592e:  movslq %r12d,%rax
    0.00 :   75931:  xor    %edx,%edx
    0.00 :   75933:  add    %r14,%rax
    0.00 :   75936:  js     77537 <__vfprintf_internal+0x2507>
    0.00 :   7593c:  cmp    %r14,%rax
    0.00 :   7593f:  jb     77537 <__vfprintf_internal+0x2507>
    0.00 :   75945:  movslq %eax,%rcx
    0.00 :   75948:  mov    %eax,%r12d
    0.00 :   7594b:  cmp    %rcx,%rax
    0.00 :   7594e:  mov    $0x1,%ecx
    0.00 :   75953:  cmovne %ecx,%edx
    0.00 :   75956:  test   %edx,%edx
    0.00 :   75958:  jne    75860 <__vfprintf_internal+0x830>
         : 703   __vfprintf_internal():
         : 704   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   7595e:  test   %eax,%eax
    0.00 :   75960:  js     7533d <__vfprintf_internal+0x30d>
         : 707   ./stdio-common/vfprintf-internal.c:1517 (discriminator 55)
    0.00 :   75966:  mov    0x28(%rsp),%edi
    0.00 :   7596a:  test   %edi,%edi
    0.00 :   7596c:  je     75f80 <__vfprintf_internal+0xf50>
         : 711   pad_func():
         : 712   ./stdio-common/vfprintf-internal.c:192
    0.00 :   75972:  test   %r13d,%r13d
    0.00 :   75975:  je     75f80 <__vfprintf_internal+0xf50>
    0.00 :   7597b:  jmp    756d9 <__vfprintf_internal+0x6a9>
    0.00 :   75980:  endbr64
         : 717   __vfprintf_internal():
         : 718   ./stdio-common/vfprintf-internal.c:1486
    0.00 :   75984:  movzbl 0x1(%rbx),%r13d
    0.00 :   75989:  lea    0x1(%rbx),%rdx
    0.00 :   7598d:  lea    -0x224(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75994:  lea    -0x20(%r13),%ecx
    0.00 :   75998:  cmp    $0x5a,%cl
    0.00 :   7599b:  ja     76b60 <__vfprintf_internal+0x1b30>
         : 725   ./stdio-common/vfprintf-internal.c:1486 (discriminator 1)
    0.00 :   759a1:  movsbl %r13b,%ecx
         : 727   ./stdio-common/vfprintf-internal.c:1474 (discriminator 1)
    0.00 :   759a5:  lea    -0x23c(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
         : 729   ./stdio-common/vfprintf-internal.c:1485 (discriminator 1)
    0.00 :   759ac:  mov    $0x1,%r10d
         : 731   ./stdio-common/vfprintf-internal.c:1486 (discriminator 1)
    0.00 :   759b2:  sub    $0x20,%ecx
    0.00 :   759b5:  movslq %ecx,%rcx
    0.00 :   759b8:  movzbl (%rax,%rcx,1),%ecx
         : 735   ./stdio-common/vfprintf-internal.c:1474 (discriminator 1)
    0.00 :   759bc:  movslq (%r8,%rcx,4),%rsi
    0.00 :   759c0:  add    %rbx,%rsi
         : 738   ./stdio-common/vfprintf-internal.c:1486 (discriminator 1)
    0.00 :   759c3:  mov    %rdx,%rbx
         : 740   ./stdio-common/vfprintf-internal.c:1484 (discriminator 1)
    0.00 :   759c6:  mov    $0x1,%edx
    0.00 :   759cb:  jmp    *%rsi
    0.00 :   759cd:  nopl   (%rax)
    0.00 :   759d0:  endbr64
         : 745   ./stdio-common/vfprintf-internal.c:1479
    0.00 :   759d4:  movzbl 0x1(%rbx),%r13d
    0.00 :   759d9:  lea    0x1(%rbx),%rcx
    0.00 :   759dd:  lea    -0x274(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   759e4:  lea    -0x20(%r13),%edi
    0.00 :   759e8:  cmp    $0x5a,%dil
    0.00 :   759ec:  ja     76ba8 <__vfprintf_internal+0x1b78>
         : 752   ./stdio-common/vfprintf-internal.c:1479 (discriminator 1)
    0.00 :   759f2:  movsbl %r13b,%esi
    0.00 :   759f6:  lea    0x15b9e3(%rip),%rbx        # 1d13e0 <step3b_jumps.4>
         : 755   ./stdio-common/vfprintf-internal.c:1478 (discriminator 1)
    0.00 :   759fd:  mov    $0x1,%r10d
         : 757   ./stdio-common/vfprintf-internal.c:1479 (discriminator 1)
    0.00 :   75a03:  sub    $0x20,%esi
    0.00 :   75a06:  movslq %esi,%rsi
    0.00 :   75a09:  movzbl (%rax,%rsi,1),%esi
    0.00 :   75a0d:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   75a11:  lea    -0x2a8(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75a18:  add    %rbx,%rsi
    0.00 :   75a1b:  mov    %rcx,%rbx
    0.00 :   75a1e:  jmp    *%rsi
    0.00 :   75a20:  endbr64
         : 767   ./stdio-common/vfprintf-internal.c:1516 (discriminator 33)
    0.00 :   75a24:  movl   $0x2,0x60(%rsp)
         : 769   ./stdio-common/vfprintf-internal.c:1392 (discriminator 30)
    0.00 :   75a2c:  mov    0x20(%rsp),%rdi
    0.00 :   75a31:  mov    (%rdi),%eax
         : 772   ./stdio-common/vfprintf-internal.c:1516 (discriminator 30)
    0.00 :   75a33:  test   %r10d,%r10d
    0.00 :   75a36:  je     7604c <__vfprintf_internal+0x101c>
         : 775   ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75a3c:  cmp    $0x2f,%eax
    0.00 :   75a3f:  ja     76850 <__vfprintf_internal+0x1820>
    0.00 :   75a45:  mov    %eax,%edx
    0.00 :   75a47:  add    $0x8,%eax
    0.00 :   75a4a:  add    0x10(%rdi),%rdx
    0.00 :   75a4e:  mov    %eax,(%rdi)
    0.00 :   75a50:  movl   $0x0,0x40(%rsp)
    0.00 :   75a58:  mov    (%rdx),%r11
    0.00 :   75a5b:  xor    %r10d,%r10d
    0.00 :   75a5e:  movl   $0x0,0x58(%rsp)
         : 786   ./stdio-common/vfprintf-internal.c:1516 (discriminator 252)
    0.00 :   75a66:  cmp    $0xffffffff,%r14d
    0.00 :   75a6a:  je     76090 <__vfprintf_internal+0x1060>
         : 789   ./stdio-common/vfprintf-internal.c:1516 (discriminator 66)
    0.00 :   75a70:  test   %r14d,%r14d
    0.00 :   75a73:  je     76560 <__vfprintf_internal+0x1530>
         : 792   ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75a79:  movslq %r14d,%rax
    0.00 :   75a7c:  movb   $0x20,0x38(%rsp)
    0.00 :   75a81:  mov    %rax,0x70(%rsp)
         : 796   ./stdio-common/vfprintf-internal.c:1516 (discriminator 70)
    0.00 :   75a86:  xor    %ecx,%ecx
    0.00 :   75a88:  mov    0x60(%rsp),%edx
    0.00 :   75a8c:  cmp    $0x58,%r13b
    0.00 :   75a90:  mov    %r11,%rdi
    0.00 :   75a93:  lea    0x528(%rsp),%r14
    0.00 :   75a9b:  sete   %cl
    0.00 :   75a9e:  mov    %r10d,0x94(%rsp)
    0.00 :   75aa6:  lea    0x140(%rsp),%r15
    0.00 :   75aae:  mov    %r14,%rsi
    0.00 :   75ab1:  mov    %r11,0x88(%rsp)
    0.00 :   75ab9:  call   5a230 <_itoa_word>
    0.00 :   75abe:  mov    0x80(%rsp),%rcx
    0.00 :   75ac6:  mov    0x88(%rsp),%r11
    0.00 :   75ace:  mov    0x94(%rsp),%r10d
    0.00 :   75ad6:  mov    %rax,%r9
    0.00 :   75ad9:  test   %rcx,%rcx
    0.00 :   75adc:  je     75b19 <__vfprintf_internal+0xae9>
    0.00 :   75ade:  mov    0x50(%rsp),%eax
    0.00 :   75ae2:  test   %eax,%eax
    0.00 :   75ae4:  je     75b19 <__vfprintf_internal+0xae9>
         : 817   ./stdio-common/vfprintf-internal.c:1516 (discriminator 72)
    0.00 :   75ae6:  mov    %r9,%rsi
    0.00 :   75ae9:  mov    %r14,%rdx
    0.00 :   75aec:  mov    %r15,%rdi
    0.00 :   75aef:  mov    %r11,0x50(%rsp)
    0.00 :   75af4:  mov    0x98(%rsp),%r8
    0.00 :   75afc:  mov    %r10d,0x88(%rsp)
    0.00 :   75b04:  call   72140 <group_number>
    0.00 :   75b09:  mov    0x88(%rsp),%r10d
    0.00 :   75b11:  mov    0x50(%rsp),%r11
    0.00 :   75b16:  mov    %rax,%r9
         : 828   ./stdio-common/vfprintf-internal.c:1516 (discriminator 74)
    0.00 :   75b19:  cmpl   $0xa,0x60(%rsp)
    0.00 :   75b1e:  jne    75b4d <__vfprintf_internal+0xb1d>
    0.00 :   75b20:  mov    0x5c(%rsp),%eax
    0.00 :   75b24:  test   %eax,%eax
    0.00 :   75b26:  je     75b4d <__vfprintf_internal+0xb1d>
         : 834   ./stdio-common/vfprintf-internal.c:1516 (discriminator 75)
    0.00 :   75b28:  mov    %r9,%rdi
    0.00 :   75b2b:  mov    %r14,%rdx
    0.00 :   75b2e:  mov    %r14,%rsi
    0.00 :   75b31:  mov    %r10d,0x5c(%rsp)
    0.00 :   75b36:  mov    %r11,0x50(%rsp)
    0.00 :   75b3b:  call   72340 <_i18n_number_rewrite>
    0.00 :   75b40:  mov    0x5c(%rsp),%r10d
    0.00 :   75b45:  mov    0x50(%rsp),%r11
    0.00 :   75b4a:  mov    %rax,%r9
         : 844   ./stdio-common/vfprintf-internal.c:1516 (discriminator 77)
    0.00 :   75b4d:  mov    %r14,%r15
    0.00 :   75b50:  sub    %r9,%r15
    0.00 :   75b53:  cmp    0x70(%rsp),%r15
    0.00 :   75b58:  jge    765c0 <__vfprintf_internal+0x1590>
         : 849   ./stdio-common/vfprintf-internal.c:1516 (discriminator 84)
    0.00 :   75b5e:  mov    0x70(%rsp),%rdx
    0.00 :   75b63:  mov    $0x0,%eax
    0.00 :   75b68:  mov    0x28(%rsp),%r8d
    0.00 :   75b6d:  sub    %r15,%rdx
    0.00 :   75b70:  cmovs  %rax,%rdx
    0.00 :   75b74:  mov    %edx,%r14d
    0.00 :   75b77:  test   %r8d,%r8d
    0.00 :   75b7a:  jne    76440 <__vfprintf_internal+0x1410>
         : 858   ./stdio-common/vfprintf-internal.c:1516 (discriminator 85)
    0.00 :   75b80:  mov    0x10(%rsp),%r8d
    0.00 :   75b85:  sub    %r15d,%r8d
    0.00 :   75b88:  sub    %edx,%r8d
    0.00 :   75b8b:  test   %r11,%r11
    0.00 :   75b8e:  je     75baf <__vfprintf_internal+0xb7f>
         : 864   ./stdio-common/vfprintf-internal.c:1516 (discriminator 87)
    0.00 :   75b90:  mov    0x4c(%rsp),%edi
    0.00 :   75b94:  test   %edi,%edi
    0.00 :   75b96:  je     75baf <__vfprintf_internal+0xb7f>
         : 868   ./stdio-common/vfprintf-internal.c:1516 (discriminator 89)
    0.00 :   75b98:  movzbl 0x60(%rsp),%ecx
    0.00 :   75b9d:  mov    $0x10004,%eax
    0.00 :   75ba2:  lea    -0x2(%r8),%edx
    0.00 :   75ba6:  shr    %cl,%rax
    0.00 :   75ba9:  test   $0x1,%al
    0.00 :   75bab:  cmovne %edx,%r8d
         : 875   ./stdio-common/vfprintf-internal.c:1516 (discriminator 93)
    0.00 :   75baf:  mov    0x58(%rsp),%eax
    0.00 :   75bb3:  or     %r10d,%eax
    0.00 :   75bb6:  or     0x40(%rsp),%eax
    0.00 :   75bba:  je     76660 <__vfprintf_internal+0x1630>
         : 880   ./stdio-common/vfprintf-internal.c:1516 (discriminator 94)
    0.00 :   75bc0:  sub    $0x1,%r8d
    0.00 :   75bc4:  cmpb   $0x20,0x38(%rsp)
    0.00 :   75bc9:  je     77561 <__vfprintf_internal+0x2531>
         : 884   ./stdio-common/vfprintf-internal.c:1516 (discriminator 101)
    0.00 :   75bcf:  test   %r10d,%r10d
    0.00 :   75bd2:  je     767d0 <__vfprintf_internal+0x17a0>
         : 887   ./stdio-common/vfprintf-internal.c:1516 (discriminator 102)
    0.00 :   75bd8:  mov    0x28(%rbp),%rax
    0.00 :   75bdc:  cmp    0x30(%rbp),%rax
    0.00 :   75be0:  jae    771fe <__vfprintf_internal+0x21ce>
         : 891   ./stdio-common/vfprintf-internal.c:1516 (discriminator 105)
    0.00 :   75be6:  lea    0x1(%rax),%rdx
    0.00 :   75bea:  mov    %rdx,0x28(%rbp)
    0.00 :   75bee:  movb   $0x2d,(%rax)
         : 895   ./stdio-common/vfprintf-internal.c:1516 (discriminator 128)
    0.00 :   75bf1:  cmp    $0x7fffffff,%r12d
    0.00 :   75bf8:  je     76728 <__vfprintf_internal+0x16f8>
         : 898   ./stdio-common/vfprintf-internal.c:1516 (discriminator 130)
    0.00 :   75bfe:  add    $0x1,%r12d
         : 900   ./stdio-common/vfprintf-internal.c:1516 (discriminator 131)
    0.00 :   75c02:  test   %r11,%r11
    0.00 :   75c05:  je     75c70 <__vfprintf_internal+0xc40>
    0.00 :   75c07:  mov    0x4c(%rsp),%edx
    0.00 :   75c0b:  test   %edx,%edx
    0.00 :   75c0d:  je     75c70 <__vfprintf_internal+0xc40>
         : 906   ./stdio-common/vfprintf-internal.c:1516 (discriminator 134)
    0.00 :   75c0f:  mov    0x60(%rsp),%edx
    0.00 :   75c13:  mov    $0x10004,%eax
    0.00 :   75c18:  bt     %rdx,%rax
    0.00 :   75c1c:  jae    75c70 <__vfprintf_internal+0xc40>
         : 911   ./stdio-common/vfprintf-internal.c:1516 (discriminator 136)
    0.00 :   75c1e:  mov    0x28(%rbp),%rax
    0.00 :   75c22:  cmp    0x30(%rbp),%rax
    0.00 :   75c26:  jae    76f4f <__vfprintf_internal+0x1f1f>
         : 915   ./stdio-common/vfprintf-internal.c:1516 (discriminator 139)
    0.00 :   75c2c:  lea    0x1(%rax),%rdx
    0.00 :   75c30:  mov    %rdx,0x28(%rbp)
    0.00 :   75c34:  movb   $0x30,(%rax)
         : 919   ./stdio-common/vfprintf-internal.c:1516 (discriminator 142)
    0.00 :   75c37:  cmp    $0x7fffffff,%r12d
    0.00 :   75c3e:  je     76728 <__vfprintf_internal+0x16f8>
         : 922   ./stdio-common/vfprintf-internal.c:1516 (discriminator 144)
    0.00 :   75c44:  mov    0x28(%rbp),%rax
    0.00 :   75c48:  cmp    0x30(%rbp),%rax
    0.00 :   75c4c:  jae    77412 <__vfprintf_internal+0x23e2>
         : 926   ./stdio-common/vfprintf-internal.c:1516 (discriminator 146)
    0.00 :   75c52:  lea    0x1(%rax),%rdx
    0.00 :   75c56:  mov    %rdx,0x28(%rbp)
    0.00 :   75c5a:  mov    %r13b,(%rax)
         : 930   ./stdio-common/vfprintf-internal.c:1516 (discriminator 149)
    0.00 :   75c5d:  cmp    $0x7ffffffe,%r12d
    0.00 :   75c64:  je     76728 <__vfprintf_internal+0x16f8>
         : 933   ./stdio-common/vfprintf-internal.c:1516 (discriminator 151)
    0.00 :   75c6a:  add    $0x2,%r12d
    0.00 :   75c6e:  xchg   %ax,%ax
         : 936   ./stdio-common/vfprintf-internal.c:1516 (discriminator 152)
    0.00 :   75c70:  lea    (%r8,%r14,1),%r13d
         : 938   pad_func():
         : 939   ./stdio-common/vfprintf-internal.c:192 (discriminator 152)
    0.00 :   75c74:  test   %r13d,%r13d
    0.00 :   75c77:  jg     76780 <__vfprintf_internal+0x1750>
         : 942   outstring_func():
         : 943   ./stdio-common/vfprintf-internal.c:239 (discriminator 154)
    0.00 :   75c7d:  mov    0xd8(%rbp),%r13
         : 945   IO_validate_vtable():
         : 946   ./stdio-common/../libio/libioP.h:942 (discriminator 154)
    0.00 :   75c84:  lea    0x1a0d75(%rip),%rsi        # 216a00 <_IO_helper_jumps>
    0.00 :   75c8b:  mov    %r13,%rax
    0.00 :   75c8e:  sub    %rsi,%rax
         : 950   ./stdio-common/../libio/libioP.h:943 (discriminator 154)
    0.00 :   75c91:  cmp    %rax,0x30(%rsp)
    0.00 :   75c96:  jbe    771d1 <__vfprintf_internal+0x21a1>
         : 953   outstring_func():
         : 954   ./stdio-common/vfprintf-internal.c:239
    0.00 :   75c9c:  mov    %r15,%rdx
    0.00 :   75c9f:  mov    %r9,%rsi
    0.00 :   75ca2:  mov    %rbp,%rdi
    0.00 :   75ca5:  call   *0x38(%r13)
    0.00 :   75ca9:  cmp    %rax,%r15
    0.00 :   75cac:  jne    76728 <__vfprintf_internal+0x16f8>
         : 961   done_add_func():
         : 962   ./stdio-common/vfprintf-internal.c:127
    0.00 :   75cb2:  movslq %r12d,%rax
    0.00 :   75cb5:  xor    %edx,%edx
    0.00 :   75cb7:  add    %r15,%rax
    0.00 :   75cba:  js     77028 <__vfprintf_internal+0x1ff8>
    0.00 :   75cc0:  cmp    %r15,%rax
    0.00 :   75cc3:  jb     77028 <__vfprintf_internal+0x1ff8>
    0.00 :   75cc9:  movslq %eax,%rcx
    0.00 :   75ccc:  mov    %eax,%r12d
    0.00 :   75ccf:  cmp    %rcx,%rax
    0.00 :   75cd2:  mov    $0x1,%ecx
    0.00 :   75cd7:  cmovne %ecx,%edx
    0.00 :   75cda:  test   %edx,%edx
    0.00 :   75cdc:  jne    75860 <__vfprintf_internal+0x830>
         : 976   __vfprintf_internal():
         : 977   ./stdio-common/vfprintf-internal.c:1517
    0.00 :   75ce2:  test   %eax,%eax
    0.00 :   75ce4:  jns    75f80 <__vfprintf_internal+0xf50>
    0.00 :   75cea:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   75cef:  nop
    0.00 :   75cf0:  endbr64
         : 983   ./stdio-common/vfprintf-internal.c:1346
    0.00 :   75cf4:  cmpq   $0xffffffffffffffff,0x80(%rsp)
    0.00 :   75cfd:  je     7717a <__vfprintf_internal+0x214a>
         : 986   ./stdio-common/vfprintf-internal.c:1365
    0.00 :   75d03:  movzbl 0x1(%rbx),%r13d
    0.00 :   75d08:  lea    0x1(%rbx),%rcx
    0.00 :   75d0c:  lea    -0x5a3(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75d13:  lea    -0x20(%r13),%edi
    0.00 :   75d17:  cmp    $0x5a,%dil
    0.00 :   75d1b:  ja     76b88 <__vfprintf_internal+0x1b58>
         : 993   ./stdio-common/vfprintf-internal.c:1365 (discriminator 1)
    0.00 :   75d21:  movsbl %r13b,%esi
         : 995   ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   75d25:  lea    0x15b934(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 997   ./stdio-common/vfprintf-internal.c:1344 (discriminator 1)
    0.00 :   75d2c:  movl   $0x1,0x50(%rsp)
         : 999   ./stdio-common/vfprintf-internal.c:1365 (discriminator 1)
    0.00 :   75d34:  sub    $0x20,%esi
    0.00 :   75d37:  movslq %esi,%rsi
    0.00 :   75d3a:  movzbl (%rax,%rsi,1),%esi
         : 1003  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   75d3e:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   75d42:  lea    -0x5d9(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75d49:  add    %rbx,%rsi
         : 1007  ./stdio-common/vfprintf-internal.c:1365 (discriminator 1)
    0.00 :   75d4c:  mov    %rcx,%rbx
    0.00 :   75d4f:  jmp    *%rsi
    0.00 :   75d51:  nopl   0x0(%rax)
    0.00 :   75d58:  endbr64
         : 1012  ./stdio-common/vfprintf-internal.c:1334
    0.00 :   75d5c:  movzbl 0x1(%rbx),%r13d
    0.00 :   75d61:  lea    0x1(%rbx),%rcx
    0.00 :   75d65:  lea    -0x5fc(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75d6c:  lea    -0x20(%r13),%edi
    0.00 :   75d70:  cmp    $0x5a,%dil
    0.00 :   75d74:  ja     76b98 <__vfprintf_internal+0x1b68>
         : 1019  ./stdio-common/vfprintf-internal.c:1334 (discriminator 1)
    0.00 :   75d7a:  movsbl %r13b,%esi
         : 1021  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   75d7e:  lea    0x15b8db(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 1023  ./stdio-common/vfprintf-internal.c:1333 (discriminator 1)
    0.00 :   75d85:  movl   $0x1,0x4c(%rsp)
         : 1025  ./stdio-common/vfprintf-internal.c:1334 (discriminator 1)
    0.00 :   75d8d:  sub    $0x20,%esi
    0.00 :   75d90:  movslq %esi,%rsi
    0.00 :   75d93:  movzbl (%rax,%rsi,1),%esi
         : 1029  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   75d97:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   75d9b:  lea    -0x632(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75da2:  add    %rbx,%rsi
         : 1033  ./stdio-common/vfprintf-internal.c:1334 (discriminator 1)
    0.00 :   75da5:  mov    %rcx,%rbx
    0.00 :   75da8:  jmp    *%rsi
    0.00 :   75daa:  nopw   0x0(%rax,%rax,1)
    0.00 :   75db0:  endbr64
         : 1038  ./stdio-common/vfprintf-internal.c:1329
    0.00 :   75db4:  movzbl 0x1(%rbx),%r13d
    0.00 :   75db9:  lea    0x1(%rbx),%rcx
    0.00 :   75dbd:  lea    -0x654(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75dc4:  lea    -0x20(%r13),%edi
    0.00 :   75dc8:  cmp    $0x5a,%dil
    0.00 :   75dcc:  ja     75df1 <__vfprintf_internal+0xdc1>
         : 1045  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   75dce:  movsbl %r13b,%esi
    0.00 :   75dd2:  lea    0x15b887(%rip),%rbx        # 1d1660 <step0_jumps.9>
    0.00 :   75dd9:  sub    $0x20,%esi
    0.00 :   75ddc:  movslq %esi,%rsi
    0.00 :   75ddf:  movzbl (%rax,%rsi,1),%esi
    0.00 :   75de3:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   75de7:  lea    -0x67e(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75dee:  add    %rbx,%rsi
         : 1054  ./stdio-common/vfprintf-internal.c:1328 (discriminator 4)
    0.00 :   75df1:  movb   $0x20,0x38(%rsp)
         : 1056  ./stdio-common/vfprintf-internal.c:1329 (discriminator 4)
    0.00 :   75df6:  mov    %rcx,%rbx
         : 1058  ./stdio-common/vfprintf-internal.c:1327 (discriminator 4)
    0.00 :   75df9:  movl   $0x1,0x28(%rsp)
    0.00 :   75e01:  jmp    *%rsi
    0.00 :   75e03:  nopl   0x0(%rax,%rax,1)
    0.00 :   75e08:  endbr64
         : 1063  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75e0c:  mov    0xa8(%rsp),%eax
    0.00 :   75e13:  test   %eax,%eax
    0.00 :   75e15:  je     75e26 <__vfprintf_internal+0xdf6>
         : 1067  ./stdio-common/vfprintf-internal.c:1516 (discriminator 223)
    0.00 :   75e17:  mov    0xa0(%rsp),%eax
    0.00 :   75e1e:  test   %eax,%eax
    0.00 :   75e20:  je     76eea <__vfprintf_internal+0x1eba>
         : 1071  ./stdio-common/vfprintf-internal.c:1516 (discriminator 229)
    0.00 :   75e26:  mov    0x20(%rsp),%rsi
    0.00 :   75e2b:  mov    (%rsi),%eax
    0.00 :   75e2d:  cmp    $0x2f,%eax
    0.00 :   75e30:  ja     76c50 <__vfprintf_internal+0x1c20>
         : 1076  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75e36:  mov    %eax,%edx
    0.00 :   75e38:  add    $0x8,%eax
    0.00 :   75e3b:  add    0x10(%rsi),%rdx
    0.00 :   75e3f:  mov    %eax,(%rsi)
    0.00 :   75e41:  mov    (%rdx),%rax
    0.00 :   75e44:  test   %r10d,%r10d
    0.00 :   75e47:  je     76c30 <__vfprintf_internal+0x1c00>
         : 1084  ./stdio-common/vfprintf-internal.c:1516 (discriminator 233)
    0.00 :   75e4d:  movslq %r12d,%rdx
    0.00 :   75e50:  mov    %rdx,(%rax)
    0.00 :   75e53:  jmp    75f80 <__vfprintf_internal+0xf50>
    0.00 :   75e58:  nopl   0x0(%rax,%rax,1)
    0.00 :   75e60:  endbr64
         : 1090  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75e64:  mov    0x20(%rsp),%rdi
    0.00 :   75e69:  mov    (%rdi),%eax
    0.00 :   75e6b:  cmp    $0x2f,%eax
    0.00 :   75e6e:  ja     76bc8 <__vfprintf_internal+0x1b98>
    0.00 :   75e74:  mov    %eax,%edx
    0.00 :   75e76:  add    $0x8,%eax
    0.00 :   75e79:  add    0x10(%rdi),%rdx
    0.00 :   75e7d:  mov    %eax,(%rdi)
    0.00 :   75e7f:  mov    (%rdx),%r10
    0.00 :   75e82:  test   %r10,%r10
    0.00 :   75e85:  je     76c83 <__vfprintf_internal+0x1c53>
         : 1102  ./stdio-common/vfprintf-internal.c:1516 (discriminator 217)
    0.00 :   75e8b:  mov    %r10,%r11
    0.00 :   75e8e:  movl   $0x0,0x50(%rsp)
    0.00 :   75e96:  xor    %r10d,%r10d
    0.00 :   75e99:  mov    $0x78,%r13d
    0.00 :   75e9f:  movl   $0x1,0x4c(%rsp)
    0.00 :   75ea7:  movl   $0x10,0x60(%rsp)
    0.00 :   75eaf:  jmp    75a66 <__vfprintf_internal+0xa36>
    0.00 :   75eb4:  nopl   0x0(%rax)
    0.00 :   75eb8:  endbr64
         : 1112  ./stdio-common/vfprintf-internal.c:1422
    0.00 :   75ebc:  movzbl 0x1(%rbx),%esi
         : 1114  ./stdio-common/vfprintf-internal.c:1421
    0.00 :   75ec0:  lea    0x1(%rbx),%rcx
         : 1116  ./stdio-common/vfprintf-internal.c:1422
    0.00 :   75ec4:  cmp    $0x2a,%sil
    0.00 :   75ec8:  je     77088 <__vfprintf_internal+0x2058>
         : 1119  ./stdio-common/vfprintf-internal.c:1448
    0.00 :   75ece:  lea    -0x30(%rsi),%r14d
    0.00 :   75ed2:  cmp    $0x9,%r14d
    0.00 :   75ed6:  jbe    76e40 <__vfprintf_internal+0x1e10>
         : 1123  ./stdio-common/vfprintf-internal.c:1463
    0.00 :   75edc:  movzbl (%rcx),%r13d
    0.00 :   75ee0:  mov    %rcx,%rbx
         : 1126  ./stdio-common/vfprintf-internal.c:1462
    0.00 :   75ee3:  xor    %r14d,%r14d
         : 1128  ./stdio-common/vfprintf-internal.c:1463
    0.00 :   75ee6:  lea    -0x20(%r13),%ecx
    0.00 :   75eea:  cmp    $0x5a,%cl
    0.00 :   75eed:  ja     75770 <__vfprintf_internal+0x740>
         : 1132  ./stdio-common/vfprintf-internal.c:1463 (discriminator 1)
    0.00 :   75ef3:  movsbl %r13b,%ecx
    0.00 :   75ef7:  lea    0x15b662(%rip),%rsi        # 1d1560 <step2_jumps.7>
    0.00 :   75efe:  sub    $0x20,%ecx
    0.00 :   75f01:  movslq %ecx,%rcx
    0.00 :   75f04:  movzbl (%rax,%rcx,1),%ecx
    0.00 :   75f08:  movslq (%rsi,%rcx,4),%rsi
    0.00 :   75f0c:  lea    -0x7a3(%rip),%rcx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   75f13:  add    %rcx,%rsi
    0.00 :   75f16:  jmp    *%rsi
    0.00 :   75f18:  nopl   0x0(%rax,%rax,1)
    0.00 :   75f20:  endbr64
         : 1144  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   75f24:  test   %r10d,%r10d
    0.00 :   75f27:  je     76aa8 <__vfprintf_internal+0x1a78>
    0.00 :   75f2d:  mov    0x20(%rsp),%rdi
    0.00 :   75f32:  mov    (%rdi),%eax
    0.00 :   75f34:  cmp    $0x2f,%eax
    0.00 :   75f37:  ja     76da6 <__vfprintf_internal+0x1d76>
    0.00 :   75f3d:  mov    %eax,%edx
    0.00 :   75f3f:  add    $0x8,%eax
    0.00 :   75f42:  add    0x10(%rdi),%rdx
    0.00 :   75f46:  mov    %eax,(%rdi)
    0.00 :   75f48:  mov    (%rdx),%r10
    0.00 :   75f4b:  jmp    76ad0 <__vfprintf_internal+0x1aa0>
    0.00 :   75f50:  endbr64
    0.00 :   75f54:  mov    0x28(%rbp),%rax
    0.00 :   75f58:  cmp    0x30(%rbp),%rax
    0.00 :   75f5c:  jae    77360 <__vfprintf_internal+0x2330>
         : 1161  ./stdio-common/vfprintf-internal.c:1516 (discriminator 2)
    0.00 :   75f62:  lea    0x1(%rax),%rdx
    0.00 :   75f66:  mov    %rdx,0x28(%rbp)
    0.00 :   75f6a:  movb   $0x25,(%rax)
         : 1165  ./stdio-common/vfprintf-internal.c:1516 (discriminator 5)
    0.00 :   75f6d:  cmp    $0x7fffffff,%r12d
    0.00 :   75f74:  je     76728 <__vfprintf_internal+0x16f8>
         : 1168  ./stdio-common/vfprintf-internal.c:1516 (discriminator 7)
    0.00 :   75f7a:  add    $0x1,%r12d
    0.00 :   75f7e:  xchg   %ax,%ax
         : 1171  ./stdio-common/vfprintf-internal.c:1589
    0.00 :   75f80:  lea    0x1(%rbx),%r15
         : 1173  __find_specmb():
         : 1174  ./stdio-common/printf-parse.h:111
    0.00 :   75f84:  mov    $0x25,%esi
         : 1176  __vfprintf_internal():
         : 1177  ./stdio-common/vfprintf-internal.c:1583
    0.00 :   75f89:  addl   $0x1,0x78(%rsp)
         : 1179  __find_specmb():
         : 1180  ./stdio-common/printf-parse.h:111
    0.00 :   75f8e:  mov    %r15,%rdi
    0.00 :   75f91:  call   284d0 <*ABS*+0xab010@plt>
         : 1183  outstring_func():
         : 1184  ./stdio-common/vfprintf-internal.c:239
    0.00 :   75f96:  mov    0xd8(%rbp),%rbx
         : 1186  IO_validate_vtable():
         : 1187  ./stdio-common/../libio/libioP.h:942
    0.00 :   75f9d:  lea    0x1a0a5c(%rip),%rdi        # 216a00 <_IO_helper_jumps>
         : 1189  __vfprintf_internal():
         : 1190  ./stdio-common/vfprintf-internal.c:1593
    0.00 :   75fa4:  mov    %rax,%r14
         : 1192  __find_specmb():
         : 1193  ./stdio-common/printf-parse.h:111
    0.00 :   75fa7:  mov    %rax,%r13
         : 1195  IO_validate_vtable():
         : 1196  ./stdio-common/../libio/libioP.h:942
    0.00 :   75faa:  mov    %rbx,%rax
         : 1198  __vfprintf_internal():
         : 1199  ./stdio-common/vfprintf-internal.c:1593
    0.00 :   75fad:  sub    %r15,%r14
         : 1201  IO_validate_vtable():
         : 1202  ./stdio-common/../libio/libioP.h:942
    0.00 :   75fb0:  sub    %rdi,%rax
         : 1204  ./stdio-common/../libio/libioP.h:943
    0.00 :   75fb3:  cmp    %rax,0x30(%rsp)
    0.00 :   75fb8:  jbe    76770 <__vfprintf_internal+0x1740>
         : 1207  outstring_func():
         : 1208  ./stdio-common/vfprintf-internal.c:239
    0.00 :   75fbe:  mov    %r14,%rdx
    0.00 :   75fc1:  mov    %r15,%rsi
    0.00 :   75fc4:  mov    %rbp,%rdi
    0.00 :   75fc7:  call   *0x38(%rbx)
    0.00 :   75fca:  cmp    %r14,%rax
    0.00 :   75fcd:  jne    76728 <__vfprintf_internal+0x16f8>
         : 1215  done_add_func():
         : 1216  ./stdio-common/vfprintf-internal.c:127
    0.00 :   75fd3:  movslq %r12d,%rax
    0.00 :   75fd6:  xor    %edx,%edx
    0.00 :   75fd8:  add    %r14,%rax
    0.00 :   75fdb:  js     77500 <__vfprintf_internal+0x24d0>
    0.00 :   75fe1:  cmp    %r14,%rax
    0.00 :   75fe4:  jb     77500 <__vfprintf_internal+0x24d0>
    0.00 :   75fea:  movslq %eax,%rcx
    0.00 :   75fed:  mov    %eax,%r12d
    0.00 :   75ff0:  cmp    %rcx,%rax
    0.00 :   75ff3:  mov    $0x1,%ecx
    0.00 :   75ff8:  cmovne %ecx,%edx
    0.00 :   75ffb:  test   %edx,%edx
    0.00 :   75ffd:  jne    75860 <__vfprintf_internal+0x830>
         : 1230  __vfprintf_internal():
         : 1231  ./stdio-common/vfprintf-internal.c:1593
    0.00 :   76003:  test   %eax,%eax
    0.00 :   76005:  js     7533d <__vfprintf_internal+0x30d>
         : 1234  ./stdio-common/vfprintf-internal.c:1595 (discriminator 2)
    0.00 :   7600b:  cmpb   $0x0,0x0(%r13)
    0.00 :   76010:  jne    75210 <__vfprintf_internal+0x1e0>
    0.00 :   76016:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   7601b:  nopl   0x0(%rax,%rax,1)
    0.00 :   76020:  endbr64
         : 1240  ./stdio-common/vfprintf-internal.c:1491
    0.00 :   76024:  jmp    753b4 <__vfprintf_internal+0x384>
    0.00 :   76029:  nopl   0x0(%rax)
    0.00 :   76030:  endbr64
         : 1244  ./stdio-common/vfprintf-internal.c:1392 (discriminator 31)
    0.00 :   76034:  mov    0x20(%rsp),%rdi
         : 1246  ./stdio-common/vfprintf-internal.c:1516 (discriminator 31)
    0.00 :   76039:  movl   $0x8,0x60(%rsp)
         : 1248  ./stdio-common/vfprintf-internal.c:1392 (discriminator 31)
    0.00 :   76041:  mov    (%rdi),%eax
         : 1250  ./stdio-common/vfprintf-internal.c:1516 (discriminator 31)
    0.00 :   76043:  test   %r10d,%r10d
    0.00 :   76046:  jne    75a3c <__vfprintf_internal+0xa0c>
         : 1253  ./stdio-common/vfprintf-internal.c:1516 (discriminator 54)
    0.00 :   7604c:  test   %r11d,%r11d
    0.00 :   7604f:  je     76818 <__vfprintf_internal+0x17e8>
         : 1256  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76055:  cmp    $0x2f,%eax
    0.00 :   76058:  ja     76b70 <__vfprintf_internal+0x1b40>
    0.00 :   7605e:  mov    %eax,%edx
    0.00 :   76060:  add    $0x8,%eax
    0.00 :   76063:  add    0x10(%rdi),%rdx
    0.00 :   76067:  mov    %eax,(%rdi)
    0.00 :   76069:  movl   $0x0,0x40(%rsp)
    0.00 :   76071:  movzbl (%rdx),%r11d
    0.00 :   76075:  movl   $0x0,0x58(%rsp)
    0.00 :   7607d:  cmp    $0xffffffff,%r14d
    0.00 :   76081:  jne    75a70 <__vfprintf_internal+0xa40>
    0.00 :   76087:  nopw   0x0(%rax,%rax,1)
    0.00 :   76090:  movq   $0x1,0x70(%rsp)
    0.00 :   76099:  jmp    75a86 <__vfprintf_internal+0xa56>
    0.00 :   7609e:  xchg   %ax,%ax
   50.00 :   760a0:  endbr64
    0.00 :   760a4:  movl   $0xa,0x60(%rsp)
    0.00 :   760ac:  jmp    75a2c <__vfprintf_internal+0x9fc>
    0.00 :   760b1:  nopl   0x0(%rax)
    0.00 :   760b8:  endbr64
         : 1277  ./stdio-common/vfprintf-internal.c:1516 (discriminator 32)
    0.00 :   760bc:  movl   $0x10,0x60(%rsp)
    0.00 :   760c4:  jmp    75a2c <__vfprintf_internal+0x9fc>
    0.00 :   760c9:  nopl   0x0(%rax)
    0.00 :   760d0:  endbr64
         : 1282  ./stdio-common/vfprintf-internal.c:1323
    0.00 :   760d4:  movzbl 0x1(%rbx),%r13d
    0.00 :   760d9:  lea    0x1(%rbx),%rcx
    0.00 :   760dd:  lea    -0x974(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   760e4:  lea    -0x20(%r13),%edi
    0.00 :   760e8:  cmp    $0x5a,%dil
    0.00 :   760ec:  ja     76bb8 <__vfprintf_internal+0x1b88>
         : 1289  ./stdio-common/vfprintf-internal.c:1323 (discriminator 1)
    0.00 :   760f2:  movsbl %r13b,%esi
         : 1291  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   760f6:  lea    0x15b563(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 1293  ./stdio-common/vfprintf-internal.c:1322 (discriminator 1)
    0.00 :   760fd:  movl   $0x1,0x40(%rsp)
         : 1295  ./stdio-common/vfprintf-internal.c:1323 (discriminator 1)
    0.00 :   76105:  sub    $0x20,%esi
    0.00 :   76108:  movslq %esi,%rsi
    0.00 :   7610b:  movzbl (%rax,%rsi,1),%esi
         : 1299  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   7610f:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   76113:  lea    -0x9aa(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   7611a:  add    %rbx,%rsi
         : 1303  ./stdio-common/vfprintf-internal.c:1323 (discriminator 1)
    0.00 :   7611d:  mov    %rcx,%rbx
    0.00 :   76120:  jmp    *%rsi
    0.00 :   76122:  nopw   0x0(%rax,%rax,1)
    0.00 :   76128:  endbr64
         : 1308  ./stdio-common/vfprintf-internal.c:1318
    0.00 :   7612c:  movzbl 0x1(%rbx),%r13d
    0.00 :   76131:  lea    0x1(%rbx),%rcx
    0.00 :   76135:  lea    -0x20(%r13),%esi
    0.00 :   76139:  cmp    $0x5a,%sil
    0.00 :   7613d:  jbe    76b28 <__vfprintf_internal+0x1af8>
    0.00 :   76143:  lea    -0x9da(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
         : 1315  ./stdio-common/vfprintf-internal.c:1317
    0.00 :   7614a:  movl   $0x1,0x58(%rsp)
         : 1317  ./stdio-common/vfprintf-internal.c:1318
    0.00 :   76152:  mov    %rcx,%rbx
    0.00 :   76155:  jmp    *%rsi
    0.00 :   76157:  nopw   0x0(%rax,%rax,1)
    0.00 :   76160:  endbr64
         : 1322  ./stdio-common/vfprintf-internal.c:1474
    0.00 :   76164:  movzbl 0x1(%rbx),%r13d
    0.00 :   76169:  lea    0x1(%rbx),%rcx
    0.00 :   7616d:  lea    -0xa04(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76174:  lea    -0x20(%r13),%edi
    0.00 :   76178:  cmp    $0x5a,%dil
    0.00 :   7617c:  ja     7619a <__vfprintf_internal+0x116a>
         : 1329  ./stdio-common/vfprintf-internal.c:1474 (discriminator 1)
    0.00 :   7617e:  movsbl %r13b,%esi
    0.00 :   76182:  lea    -0xa19(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76189:  sub    $0x20,%esi
    0.00 :   7618c:  movslq %esi,%rsi
    0.00 :   7618f:  movzbl (%rax,%rsi,1),%esi
    0.00 :   76193:  movslq (%r8,%rsi,4),%rsi
    0.00 :   76197:  add    %rbx,%rsi
         : 1337  ./stdio-common/vfprintf-internal.c:1474 (discriminator 4)
    0.00 :   7619a:  mov    %rcx,%rbx
         : 1339  ./stdio-common/vfprintf-internal.c:1472 (discriminator 4)
    0.00 :   7619d:  xor    %r15d,%r15d
         : 1341  ./stdio-common/vfprintf-internal.c:1473 (discriminator 4)
    0.00 :   761a0:  mov    $0x1,%r11d
    0.00 :   761a6:  jmp    *%rsi
    0.00 :   761a8:  nopl   0x0(%rax,%rax,1)
    0.00 :   761b0:  endbr64
         : 1346  ./stdio-common/vfprintf-internal.c:1339
    0.00 :   761b4:  mov    0x28(%rsp),%ecx
    0.00 :   761b8:  movzbl 0x38(%rsp),%esi
         : 1349  ./stdio-common/vfprintf-internal.c:1340
    0.00 :   761bd:  movzbl 0x1(%rbx),%r13d
         : 1351  ./stdio-common/vfprintf-internal.c:1339
    0.00 :   761c2:  test   %ecx,%ecx
    0.00 :   761c4:  mov    $0x30,%ecx
    0.00 :   761c9:  cmove  %ecx,%esi
         : 1355  ./stdio-common/vfprintf-internal.c:1340
    0.00 :   761cc:  lea    -0x20(%r13),%edi
    0.00 :   761d0:  lea    0x1(%rbx),%rcx
         : 1358  ./stdio-common/vfprintf-internal.c:1339
    0.00 :   761d4:  mov    %sil,0x38(%rsp)
         : 1360  ./stdio-common/vfprintf-internal.c:1340
    0.00 :   761d9:  lea    -0xa70(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   761e0:  cmp    $0x5a,%dil
    0.00 :   761e4:  ja     76891 <__vfprintf_internal+0x1861>
         : 1364  ./stdio-common/vfprintf-internal.c:1340 (discriminator 1)
    0.00 :   761ea:  movsbl %r13b,%esi
         : 1366  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   761ee:  lea    0x15b46b(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 1368  ./stdio-common/vfprintf-internal.c:1340 (discriminator 1)
    0.00 :   761f5:  sub    $0x20,%esi
    0.00 :   761f8:  movslq %esi,%rsi
    0.00 :   761fb:  movzbl (%rax,%rsi,1),%esi
         : 1372  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   761ff:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   76203:  lea    -0xa9a(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   7620a:  add    %rbx,%rsi
         : 1376  ./stdio-common/vfprintf-internal.c:1418 (discriminator 1)
    0.00 :   7620d:  mov    %rcx,%rbx
    0.00 :   76210:  jmp    *%rsi
    0.00 :   76212:  nopw   0x0(%rax,%rax,1)
    0.00 :   76218:  endbr64
         : 1381  ./stdio-common/vfprintf-internal.c:1377
    0.00 :   7621c:  movzbl 0x1(%rbx),%esi
         : 1383  ./stdio-common/vfprintf-internal.c:1376
    0.00 :   76220:  lea    0x1(%rbx),%rdi
    0.00 :   76224:  mov    %rdi,0x70(%rsp)
         : 1386  ./stdio-common/vfprintf-internal.c:1377
    0.00 :   76229:  sub    $0x30,%esi
    0.00 :   7622c:  cmp    $0x9,%esi
    0.00 :   7622f:  jbe    76a10 <__vfprintf_internal+0x19e0>
         : 1390  ./stdio-common/vfprintf-internal.c:1392
    0.00 :   76235:  mov    0x20(%rsp),%rsi
    0.00 :   7623a:  mov    (%rsi),%ecx
    0.00 :   7623c:  cmp    $0x2f,%ecx
    0.00 :   7623f:  jbe    76c70 <__vfprintf_internal+0x1c40>
    0.00 :   76245:  mov    %rsi,%rdi
    0.00 :   76248:  mov    0x8(%rsi),%rsi
    0.00 :   7624c:  lea    0x8(%rsi),%rcx
    0.00 :   76250:  mov    %rcx,0x8(%rdi)
    0.00 :   76254:  mov    (%rsi),%edi
    0.00 :   76256:  mov    %edi,0x10(%rsp)
         : 1401  ./stdio-common/vfprintf-internal.c:1395
    0.00 :   7625a:  test   %edi,%edi
    0.00 :   7625c:  jns    76271 <__vfprintf_internal+0x1241>
         : 1404  ./stdio-common/vfprintf-internal.c:1397
    0.00 :   7625e:  neg    %edi
         : 1406  ./stdio-common/vfprintf-internal.c:1398
    0.00 :   76260:  movb   $0x20,0x38(%rsp)
         : 1408  ./stdio-common/vfprintf-internal.c:1397
    0.00 :   76265:  mov    %edi,0x10(%rsp)
         : 1410  ./stdio-common/vfprintf-internal.c:1399
    0.00 :   76269:  movl   $0x1,0x28(%rsp)
         : 1412  ./stdio-common/vfprintf-internal.c:1402
    0.00 :   76271:  movzbl 0x1(%rbx),%r13d
    0.00 :   76276:  lea    -0xb0d(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   7627d:  lea    -0x20(%r13),%ecx
    0.00 :   76281:  cmp    $0x5a,%cl
    0.00 :   76284:  ja     76c68 <__vfprintf_internal+0x1c38>
         : 1418  ./stdio-common/vfprintf-internal.c:1402 (discriminator 1)
    0.00 :   7628a:  movsbl %r13b,%ecx
    0.00 :   7628e:  lea    0x15b34b(%rip),%rbx        # 1d15e0 <step1_jumps.8>
    0.00 :   76295:  sub    $0x20,%ecx
    0.00 :   76298:  movslq %ecx,%rcx
    0.00 :   7629b:  movzbl (%rax,%rcx,1),%ecx
    0.00 :   7629f:  movslq (%rbx,%rcx,4),%rsi
    0.00 :   762a3:  lea    -0xb3a(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   762aa:  add    %rbx,%rsi
         : 1427  ./stdio-common/vfprintf-internal.c:1376 (discriminator 1)
    0.00 :   762ad:  mov    0x70(%rsp),%rbx
    0.00 :   762b2:  jmp    *%rsi
    0.00 :   762b4:  nopl   0x0(%rax)
    0.00 :   762b8:  endbr64
         : 1432  ./stdio-common/vfprintf-internal.c:1468
    0.00 :   762bc:  movzbl 0x1(%rbx),%r13d
    0.00 :   762c1:  lea    0x1(%rbx),%rcx
    0.00 :   762c5:  lea    -0xb5c(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   762cc:  lea    -0x20(%r13),%edi
    0.00 :   762d0:  cmp    $0x5a,%dil
    0.00 :   762d4:  ja     76be0 <__vfprintf_internal+0x1bb0>
         : 1439  ./stdio-common/vfprintf-internal.c:1468 (discriminator 1)
    0.00 :   762da:  movsbl %r13b,%esi
    0.00 :   762de:  lea    0x15b1fb(%rip),%rbx        # 1d14e0 <step3a_jumps.6>
         : 1442  ./stdio-common/vfprintf-internal.c:1467 (discriminator 1)
    0.00 :   762e5:  mov    $0x1,%r15d
         : 1444  ./stdio-common/vfprintf-internal.c:1468 (discriminator 1)
    0.00 :   762eb:  sub    $0x20,%esi
    0.00 :   762ee:  movslq %esi,%rsi
    0.00 :   762f1:  movzbl (%rax,%rsi,1),%esi
    0.00 :   762f5:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   762f9:  lea    -0xb90(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76300:  add    %rbx,%rsi
    0.00 :   76303:  mov    %rcx,%rbx
    0.00 :   76306:  jmp    *%rsi
    0.00 :   76308:  nopl   0x0(%rax,%rax,1)
    0.00 :   76310:  endbr64
         : 1455  read_int():
         : 1456  ./stdio-common/printf-parse.h:76
    0.00 :   76314:  movzbl (%rbx),%ecx
         : 1458  ./stdio-common/printf-parse.h:78
    0.00 :   76317:  movzbl 0x1(%rbx),%esi
         : 1460  ./stdio-common/printf-parse.h:76
    0.00 :   7631b:  sub    $0x30,%ecx
         : 1462  ./stdio-common/printf-parse.h:78
    0.00 :   7631e:  mov    %esi,%r13d
         : 1464  ./stdio-common/printf-parse.h:76
    0.00 :   76321:  mov    %ecx,0x10(%rsp)
         : 1466  ./stdio-common/printf-parse.h:78
    0.00 :   76325:  lea    0x1(%rbx),%rcx
    0.00 :   76329:  lea    -0x30(%rsi),%ebx
    0.00 :   7632c:  mov    0x10(%rsp),%esi
    0.00 :   76330:  cmp    $0x9,%ebx
    0.00 :   76333:  ja     7642d <__vfprintf_internal+0x13fd>
    0.00 :   76339:  movzbl 0x1(%rcx),%edi
    0.00 :   7633d:  add    $0x1,%rcx
    0.00 :   76341:  mov    %dil,0x70(%rsp)
    0.00 :   76346:  sub    $0x30,%edi
         : 1476  ./stdio-common/printf-parse.h:79
    0.00 :   76349:  test   %esi,%esi
    0.00 :   7634b:  js     77549 <__vfprintf_internal+0x2519>
         : 1479  ./stdio-common/printf-parse.h:81
    0.00 :   76351:  cmp    $0xccccccc,%esi
    0.00 :   76357:  jg     763d8 <__vfprintf_internal+0x13a8>
         : 1482  ./stdio-common/printf-parse.h:87
    0.00 :   76359:  lea    (%rsi,%rsi,4),%esi
         : 1484  ./stdio-common/printf-parse.h:88
    0.00 :   7635c:  mov    %r9d,%r13d
         : 1486  ./stdio-common/printf-parse.h:87
    0.00 :   7635f:  add    %esi,%esi
         : 1488  ./stdio-common/printf-parse.h:88
    0.00 :   76361:  sub    %ebx,%r13d
    0.00 :   76364:  cmp    %r13d,%esi
    0.00 :   76367:  jg     763d8 <__vfprintf_internal+0x13a8>
         : 1492  ./stdio-common/printf-parse.h:91
    0.00 :   76369:  add    %ebx,%esi
         : 1494  ./stdio-common/printf-parse.h:78
    0.00 :   7636b:  cmp    $0x9,%edi
    0.00 :   7636e:  ja     76868 <__vfprintf_internal+0x1838>
    0.00 :   76374:  mov    %edi,%ebx
    0.00 :   76376:  jmp    76339 <__vfprintf_internal+0x1309>
    0.00 :   76378:  nopl   0x0(%rax,%rax,1)
    0.00 :   76380:  endbr64
         : 1501  __vfprintf_internal():
         : 1502  ./stdio-common/vfprintf-internal.c:1369
    0.00 :   76384:  movzbl 0x1(%rbx),%r13d
    0.00 :   76389:  lea    0x1(%rbx),%rcx
    0.00 :   7638d:  lea    -0xc24(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76394:  lea    -0x20(%r13),%edi
    0.00 :   76398:  cmp    $0x5a,%dil
    0.00 :   7639c:  ja     76a98 <__vfprintf_internal+0x1a68>
         : 1509  ./stdio-common/vfprintf-internal.c:1369 (discriminator 1)
    0.00 :   763a2:  movsbl %r13b,%esi
         : 1511  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   763a6:  lea    0x15b2b3(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 1513  ./stdio-common/vfprintf-internal.c:1368 (discriminator 1)
    0.00 :   763ad:  movl   $0x1,0x5c(%rsp)
         : 1515  ./stdio-common/vfprintf-internal.c:1369 (discriminator 1)
    0.00 :   763b5:  sub    $0x20,%esi
    0.00 :   763b8:  movslq %esi,%rsi
    0.00 :   763bb:  movzbl (%rax,%rsi,1),%esi
         : 1519  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   763bf:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   763c3:  lea    -0xc5a(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   763ca:  add    %rbx,%rsi
         : 1523  ./stdio-common/vfprintf-internal.c:1369 (discriminator 1)
    0.00 :   763cd:  mov    %rcx,%rbx
    0.00 :   763d0:  jmp    *%rsi
    0.00 :   763d2:  nopw   0x0(%rax,%rax,1)
         : 1527  read_int():
         : 1528  ./stdio-common/printf-parse.h:78
    0.00 :   763d8:  cmp    $0x9,%edi
    0.00 :   763db:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   763e1:  movzbl 0x1(%rcx),%esi
    0.00 :   763e5:  sub    $0x30,%esi
    0.00 :   763e8:  cmp    $0x9,%esi
    0.00 :   763eb:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   763f1:  movzbl 0x2(%rcx),%esi
    0.00 :   763f5:  add    $0x2,%rcx
    0.00 :   763f9:  sub    $0x30,%esi
    0.00 :   763fc:  cmp    $0x9,%esi
    0.00 :   763ff:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   76405:  movl   $0xffffffff,0x10(%rsp)
    0.00 :   7640d:  lea    0x1(%rcx),%rsi
    0.00 :   76411:  nopl   0x0(%rax)
    0.00 :   76418:  movzbl (%rsi),%edi
    0.00 :   7641b:  mov    %rsi,%rcx
    0.00 :   7641e:  add    $0x1,%rsi
    0.00 :   76422:  mov    %edi,%r13d
    0.00 :   76425:  sub    $0x30,%edi
    0.00 :   76428:  cmp    $0x9,%edi
    0.00 :   7642b:  jbe    76418 <__vfprintf_internal+0x13e8>
         : 1550  __vfprintf_internal():
         : 1551  ./stdio-common/vfprintf-internal.c:1408
    0.00 :   7642d:  cmpl   $0xffffffff,0x10(%rsp)
    0.00 :   76432:  jne    76872 <__vfprintf_internal+0x1842>
    0.00 :   76438:  jmp    75860 <__vfprintf_internal+0x830>
    0.00 :   7643d:  nopl   (%rax)
         : 1556  ./stdio-common/vfprintf-internal.c:1516 (discriminator 86)
    0.00 :   76440:  test   %r10d,%r10d
    0.00 :   76443:  je     76740 <__vfprintf_internal+0x1710>
         : 1559  ./stdio-common/vfprintf-internal.c:1516 (discriminator 157)
    0.00 :   76449:  mov    0x28(%rbp),%rax
    0.00 :   7644d:  cmp    0x30(%rbp),%rax
    0.00 :   76451:  jae    766f0 <__vfprintf_internal+0x16c0>
         : 1563  ./stdio-common/vfprintf-internal.c:1516 (discriminator 160)
    0.00 :   76457:  lea    0x1(%rax),%rcx
    0.00 :   7645b:  mov    %rcx,0x28(%rbp)
    0.00 :   7645f:  movb   $0x2d,(%rax)
         : 1567  ./stdio-common/vfprintf-internal.c:1516 (discriminator 183)
    0.00 :   76462:  cmp    $0x7fffffff,%r12d
    0.00 :   76469:  je     76728 <__vfprintf_internal+0x16f8>
         : 1570  ./stdio-common/vfprintf-internal.c:1516 (discriminator 185)
    0.00 :   7646f:  subl   $0x1,0x10(%rsp)
    0.00 :   76474:  add    $0x1,%r12d
         : 1573  ./stdio-common/vfprintf-internal.c:1516 (discriminator 186)
    0.00 :   76478:  test   %r11,%r11
    0.00 :   7647b:  je     76489 <__vfprintf_internal+0x1459>
    0.00 :   7647d:  mov    0x4c(%rsp),%eax
    0.00 :   76481:  test   %eax,%eax
    0.00 :   76483:  jne    76960 <__vfprintf_internal+0x1930>
         : 1579  ./stdio-common/vfprintf-internal.c:1516 (discriminator 207)
    0.00 :   76489:  mov    0x10(%rsp),%r13d
    0.00 :   7648e:  add    %r15d,%edx
    0.00 :   76491:  sub    %edx,%r13d
    0.00 :   76494:  test   %r14d,%r14d
    0.00 :   76497:  jle    764eb <__vfprintf_internal+0x14bb>
         : 1585  pad_func():
         : 1586  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76499:  movslq %r14d,%rdx
    0.00 :   7649c:  mov    $0x30,%esi
    0.00 :   764a1:  mov    %rbp,%rdi
    0.00 :   764a4:  mov    %r9,0x28(%rsp)
    0.00 :   764a9:  mov    %rdx,0x10(%rsp)
    0.00 :   764ae:  call   806a0 <_IO_padn>
         : 1593  ./stdio-common/vfprintf-internal.c:200
    0.00 :   764b3:  mov    0x10(%rsp),%rdx
    0.00 :   764b8:  cmp    %rax,%rdx
    0.00 :   764bb:  jne    76728 <__vfprintf_internal+0x16f8>
         : 1597  done_add_func():
         : 1598  ./stdio-common/vfprintf-internal.c:127
    0.00 :   764c1:  xor    %eax,%eax
    0.00 :   764c3:  add    %r14d,%r12d
    0.00 :   764c6:  mov    0x28(%rsp),%r9
    0.00 :   764cb:  js     77586 <__vfprintf_internal+0x2556>
    0.00 :   764d1:  cmp    %edx,%r12d
    0.00 :   764d4:  jb     77586 <__vfprintf_internal+0x2556>
    0.00 :   764da:  test   %eax,%eax
    0.00 :   764dc:  jne    75860 <__vfprintf_internal+0x830>
         : 1607  __vfprintf_internal():
         : 1608  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   764e2:  test   %r12d,%r12d
    0.00 :   764e5:  js     7533d <__vfprintf_internal+0x30d>
         : 1611  outstring_func():
         : 1612  ./stdio-common/vfprintf-internal.c:239
    0.00 :   764eb:  mov    0xd8(%rbp),%r14
         : 1614  IO_validate_vtable():
         : 1615  ./stdio-common/../libio/libioP.h:942
    0.00 :   764f2:  lea    0x1a0507(%rip),%rsi        # 216a00 <_IO_helper_jumps>
    0.00 :   764f9:  mov    %r14,%rax
    0.00 :   764fc:  sub    %rsi,%rax
         : 1619  ./stdio-common/../libio/libioP.h:943
    0.00 :   764ff:  cmp    %rax,0x30(%rsp)
    0.00 :   76504:  jbe    771bd <__vfprintf_internal+0x218d>
         : 1622  outstring_func():
         : 1623  ./stdio-common/vfprintf-internal.c:239
    0.00 :   7650a:  mov    %r15,%rdx
    0.00 :   7650d:  mov    %r9,%rsi
    0.00 :   76510:  mov    %rbp,%rdi
    0.00 :   76513:  call   *0x38(%r14)
    0.00 :   76517:  cmp    %r15,%rax
    0.00 :   7651a:  jne    76728 <__vfprintf_internal+0x16f8>
         : 1630  done_add_func():
         : 1631  ./stdio-common/vfprintf-internal.c:127
    0.00 :   76520:  movslq %r12d,%rax
    0.00 :   76523:  xor    %edx,%edx
    0.00 :   76525:  add    %r15,%rax
    0.00 :   76528:  js     77519 <__vfprintf_internal+0x24e9>
    0.00 :   7652e:  cmp    %r15,%rax
    0.00 :   76531:  jb     77519 <__vfprintf_internal+0x24e9>
    0.00 :   76537:  movslq %eax,%rcx
    0.00 :   7653a:  mov    %eax,%r12d
    0.00 :   7653d:  cmp    %rcx,%rax
    0.00 :   76540:  mov    $0x1,%ecx
    0.00 :   76545:  cmovne %ecx,%edx
    0.00 :   76548:  test   %edx,%edx
    0.00 :   7654a:  jne    75860 <__vfprintf_internal+0x830>
         : 1645  __vfprintf_internal():
         : 1646  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76550:  test   %eax,%eax
    0.00 :   76552:  jns    756d0 <__vfprintf_internal+0x6a0>
    0.00 :   76558:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   7655d:  nopl   (%rax)
         : 1651  ./stdio-common/vfprintf-internal.c:1516 (discriminator 67)
    0.00 :   76560:  test   %r11,%r11
    0.00 :   76563:  jne    76800 <__vfprintf_internal+0x17d0>
         : 1654  ./stdio-common/vfprintf-internal.c:1516 (discriminator 69)
    0.00 :   76569:  cmpl   $0x8,0x60(%rsp)
    0.00 :   7656e:  jne    769f8 <__vfprintf_internal+0x19c8>
    0.00 :   76574:  mov    0x4c(%rsp),%eax
    0.00 :   76578:  test   %eax,%eax
    0.00 :   7657a:  je     769f8 <__vfprintf_internal+0x19c8>
         : 1660  ./stdio-common/vfprintf-internal.c:1516 (discriminator 71)
    0.00 :   76580:  movb   $0x30,0x527(%rsp)
    0.00 :   76588:  mov    $0x1,%r15d
    0.00 :   7658e:  lea    0x527(%rsp),%r9
         : 1664  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76596:  movb   $0x20,0x38(%rsp)
    0.00 :   7659b:  xor    %edx,%edx
    0.00 :   7659d:  mov    0x28(%rsp),%eax
    0.00 :   765a1:  test   %eax,%eax
    0.00 :   765a3:  jne    76440 <__vfprintf_internal+0x1410>
    0.00 :   765a9:  mov    0x10(%rsp),%r8d
    0.00 :   765ae:  add    %r15d,%edx
    0.00 :   765b1:  sub    %edx,%r8d
    0.00 :   765b4:  jmp    75baf <__vfprintf_internal+0xb7f>
    0.00 :   765b9:  nopl   0x0(%rax)
         : 1675  ./stdio-common/vfprintf-internal.c:1516 (discriminator 78)
    0.00 :   765c0:  test   %r11,%r11
    0.00 :   765c3:  je     77038 <__vfprintf_internal+0x2008>
         : 1678  ./stdio-common/vfprintf-internal.c:1516 (discriminator 80)
    0.00 :   765c9:  cmpl   $0x8,0x60(%rsp)
    0.00 :   765ce:  jne    765ea <__vfprintf_internal+0x15ba>
    0.00 :   765d0:  mov    0x4c(%rsp),%eax
    0.00 :   765d4:  test   %eax,%eax
    0.00 :   765d6:  je     765ea <__vfprintf_internal+0x15ba>
         : 1684  ./stdio-common/vfprintf-internal.c:1516 (discriminator 82)
    0.00 :   765d8:  lea    -0x1(%r9),%rax
    0.00 :   765dc:  mov    %r14,%r15
    0.00 :   765df:  movb   $0x30,-0x1(%r9)
    0.00 :   765e4:  sub    %rax,%r15
    0.00 :   765e7:  mov    %rax,%r9
         : 1690  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   765ea:  mov    0x70(%rsp),%rdx
    0.00 :   765ef:  mov    $0x0,%eax
    0.00 :   765f4:  mov    0x28(%rsp),%ecx
    0.00 :   765f8:  sub    %r15,%rdx
    0.00 :   765fb:  cmovs  %rax,%rdx
    0.00 :   765ff:  mov    %edx,%r14d
    0.00 :   76602:  test   %ecx,%ecx
    0.00 :   76604:  jne    76440 <__vfprintf_internal+0x1410>
    0.00 :   7660a:  mov    0x10(%rsp),%r8d
    0.00 :   7660f:  sub    %r15d,%r8d
    0.00 :   76612:  sub    %edx,%r8d
    0.00 :   76615:  jmp    75b90 <__vfprintf_internal+0xb60>
    0.00 :   7661a:  nopw   0x0(%rax,%rax,1)
         : 1704  ./stdio-common/vfprintf-internal.c:1236
    0.00 :   76620:  mov    0x528(%rsp),%rax
    0.00 :   76628:  sub    %fs:0x28,%rax
    0.00 :   76631:  jne    7750a <__vfprintf_internal+0x24da>
    0.00 :   76637:  mov    0x7c(%rsp),%ecx
    0.00 :   7663b:  mov    0x20(%rsp),%rdx
    0.00 :   76640:  mov    %rbp,%rdi
    0.00 :   76643:  mov    0x8(%rsp),%rsi
         : 1712  ./stdio-common/vfprintf-internal.c:1612
    0.00 :   76648:  add    $0x538,%rsp
    0.00 :   7664f:  pop    %rbx
    0.00 :   76650:  pop    %rbp
    0.00 :   76651:  pop    %r12
    0.00 :   76653:  pop    %r13
    0.00 :   76655:  pop    %r14
    0.00 :   76657:  pop    %r15
         : 1720  ./stdio-common/vfprintf-internal.c:1236
    0.00 :   76659:  jmp    775a0 <buffered_vfprintf>
    0.00 :   7665e:  xchg   %ax,%ax
         : 1723  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76660:  cmpb   $0x20,0x38(%rsp)
    0.00 :   76665:  jne    75c02 <__vfprintf_internal+0xbd2>
         : 1726  pad_func():
         : 1727  ./stdio-common/vfprintf-internal.c:192
    0.00 :   7666b:  test   %r8d,%r8d
    0.00 :   7666e:  jle    77541 <__vfprintf_internal+0x2511>
         : 1730  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76674:  movslq %r8d,%rdx
    0.00 :   76677:  mov    $0x20,%esi
    0.00 :   7667c:  mov    %rbp,%rdi
    0.00 :   7667f:  mov    %r10d,0x5c(%rsp)
    0.00 :   76684:  mov    %rdx,0x10(%rsp)
    0.00 :   76689:  mov    %r9,0x50(%rsp)
    0.00 :   7668e:  mov    %r11,0x38(%rsp)
    0.00 :   76693:  mov    %r8d,0x28(%rsp)
    0.00 :   76698:  call   806a0 <_IO_padn>
         : 1740  ./stdio-common/vfprintf-internal.c:200
    0.00 :   7669d:  mov    0x10(%rsp),%rdx
    0.00 :   766a2:  cmp    %rax,%rdx
    0.00 :   766a5:  jne    76728 <__vfprintf_internal+0x16f8>
         : 1744  done_add_func():
         : 1745  ./stdio-common/vfprintf-internal.c:127
    0.00 :   766ab:  mov    0x28(%rsp),%r8d
    0.00 :   766b0:  xor    %eax,%eax
    0.00 :   766b2:  mov    0x38(%rsp),%r11
    0.00 :   766b7:  mov    0x50(%rsp),%r9
    0.00 :   766bc:  mov    0x5c(%rsp),%r10d
    0.00 :   766c1:  add    %r8d,%r12d
    0.00 :   766c4:  js     77523 <__vfprintf_internal+0x24f3>
    0.00 :   766ca:  cmp    %edx,%r12d
    0.00 :   766cd:  jb     77523 <__vfprintf_internal+0x24f3>
    0.00 :   766d3:  mov    %eax,%r8d
    0.00 :   766d6:  test   %eax,%eax
    0.00 :   766d8:  jne    75860 <__vfprintf_internal+0x830>
         : 1758  __vfprintf_internal():
         : 1759  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   766de:  test   %r12d,%r12d
    0.00 :   766e1:  jns    75bcf <__vfprintf_internal+0xb9f>
    0.00 :   766e7:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   766ec:  nopl   0x0(%rax)
    0.00 :   766f0:  mov    %r9,0x40(%rsp)
         : 1765  ./stdio-common/vfprintf-internal.c:1516 (discriminator 159)
    0.00 :   766f5:  mov    $0x2d,%esi
    0.00 :   766fa:  mov    %rdx,0x38(%rsp)
    0.00 :   766ff:  mov    %r11,0x28(%rsp)
         : 1769  ./stdio-common/vfprintf-internal.c:1516 (discriminator 179)
    0.00 :   76704:  mov    %rbp,%rdi
    0.00 :   76707:  call   8d800 <__overflow>
    0.00 :   7670c:  mov    0x28(%rsp),%r11
    0.00 :   76711:  mov    0x38(%rsp),%rdx
    0.00 :   76716:  cmp    $0xffffffff,%eax
    0.00 :   76719:  mov    0x40(%rsp),%r9
    0.00 :   7671e:  jne    76462 <__vfprintf_internal+0x1432>
    0.00 :   76724:  nopl   0x0(%rax)
         : 1778  outstring_func():
         : 1779  ./stdio-common/vfprintf-internal.c:240
    0.00 :   76728:  mov    $0xffffffff,%r12d
         : 1781  __vfprintf_internal():
         : 1782  ./stdio-common/vfprintf-internal.c:1608
    0.00 :   7672e:  testl  $0x8000,0x0(%rbp)
    0.00 :   76735:  jne    75346 <__vfprintf_internal+0x316>
    0.00 :   7673b:  jmp    75380 <__vfprintf_internal+0x350>
         : 1786  ./stdio-common/vfprintf-internal.c:1516 (discriminator 158)
    0.00 :   76740:  mov    0x40(%rsp),%eax
    0.00 :   76744:  test   %eax,%eax
    0.00 :   76746:  je     76930 <__vfprintf_internal+0x1900>
         : 1790  ./stdio-common/vfprintf-internal.c:1516 (discriminator 167)
    0.00 :   7674c:  mov    0x28(%rbp),%rax
    0.00 :   76750:  cmp    0x30(%rbp),%rax
    0.00 :   76754:  jae    773b8 <__vfprintf_internal+0x2388>
         : 1794  ./stdio-common/vfprintf-internal.c:1516 (discriminator 170)
    0.00 :   7675a:  lea    0x1(%rax),%rcx
    0.00 :   7675e:  mov    %rcx,0x28(%rbp)
    0.00 :   76762:  movb   $0x2b,(%rax)
    0.00 :   76765:  jmp    76462 <__vfprintf_internal+0x1432>
    0.00 :   7676a:  nopw   0x0(%rax,%rax,1)
         : 1800  IO_validate_vtable():
         : 1801  ./stdio-common/../libio/libioP.h:946
    0.00 :   76770:  call   89ef0 <_IO_vtable_check>
    0.00 :   76775:  jmp    75fbe <__vfprintf_internal+0xf8e>
    0.00 :   7677a:  nopw   0x0(%rax,%rax,1)
         : 1805  pad_func():
         : 1806  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76780:  movslq %r13d,%r14
    0.00 :   76783:  mov    $0x30,%esi
    0.00 :   76788:  mov    %rbp,%rdi
    0.00 :   7678b:  mov    %r9,0x10(%rsp)
    0.00 :   76790:  mov    %r14,%rdx
    0.00 :   76793:  call   806a0 <_IO_padn>
         : 1813  ./stdio-common/vfprintf-internal.c:200
    0.00 :   76798:  cmp    %rax,%r14
    0.00 :   7679b:  jne    76728 <__vfprintf_internal+0x16f8>
         : 1816  done_add_func():
         : 1817  ./stdio-common/vfprintf-internal.c:127
    0.00 :   7679d:  xor    %eax,%eax
    0.00 :   7679f:  add    %r13d,%r12d
    0.00 :   767a2:  mov    0x10(%rsp),%r9
    0.00 :   767a7:  js     7752d <__vfprintf_internal+0x24fd>
    0.00 :   767ad:  cmp    %r13d,%r12d
    0.00 :   767b0:  jb     7752d <__vfprintf_internal+0x24fd>
    0.00 :   767b6:  test   %eax,%eax
    0.00 :   767b8:  jne    75860 <__vfprintf_internal+0x830>
         : 1826  __vfprintf_internal():
         : 1827  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   767be:  test   %r12d,%r12d
    0.00 :   767c1:  jns    75c7d <__vfprintf_internal+0xc4d>
    0.00 :   767c7:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   767cc:  nopl   0x0(%rax)
         : 1832  ./stdio-common/vfprintf-internal.c:1516 (discriminator 103)
    0.00 :   767d0:  mov    0x40(%rsp),%esi
    0.00 :   767d4:  test   %esi,%esi
    0.00 :   767d6:  je     77058 <__vfprintf_internal+0x2028>
         : 1836  ./stdio-common/vfprintf-internal.c:1516 (discriminator 112)
    0.00 :   767dc:  mov    0x28(%rbp),%rax
    0.00 :   767e0:  cmp    0x30(%rbp),%rax
    0.00 :   767e4:  jae    7739f <__vfprintf_internal+0x236f>
         : 1840  ./stdio-common/vfprintf-internal.c:1516 (discriminator 115)
    0.00 :   767ea:  lea    0x1(%rax),%rdx
    0.00 :   767ee:  mov    %rdx,0x28(%rbp)
    0.00 :   767f2:  movb   $0x2b,(%rax)
    0.00 :   767f5:  jmp    75bf1 <__vfprintf_internal+0xbc1>
    0.00 :   767fa:  nopw   0x0(%rax,%rax,1)
    0.00 :   76800:  movq   $0x0,0x70(%rsp)
         : 1847  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76809:  movb   $0x20,0x38(%rsp)
    0.00 :   7680e:  jmp    75a86 <__vfprintf_internal+0xa56>
    0.00 :   76813:  nopl   0x0(%rax,%rax,1)
         : 1851  ./stdio-common/vfprintf-internal.c:1516 (discriminator 57)
    0.00 :   76818:  test   %r15d,%r15d
    0.00 :   7681b:  jne    76af0 <__vfprintf_internal+0x1ac0>
         : 1854  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76821:  cmp    $0x2f,%eax
    0.00 :   76824:  ja     76dec <__vfprintf_internal+0x1dbc>
    0.00 :   7682a:  mov    %eax,%edx
    0.00 :   7682c:  add    $0x8,%eax
    0.00 :   7682f:  add    0x10(%rdi),%rdx
    0.00 :   76833:  mov    %eax,(%rdi)
    0.00 :   76835:  movl   $0x0,0x40(%rsp)
    0.00 :   7683d:  mov    (%rdx),%r11d
    0.00 :   76840:  xor    %r10d,%r10d
    0.00 :   76843:  movl   $0x0,0x58(%rsp)
    0.00 :   7684b:  jmp    75a66 <__vfprintf_internal+0xa36>
    0.00 :   76850:  mov    0x8(%rdi),%rdx
    0.00 :   76854:  lea    0x8(%rdx),%rax
    0.00 :   76858:  mov    %rax,0x8(%rdi)
    0.00 :   7685c:  jmp    75a50 <__vfprintf_internal+0xa20>
    0.00 :   76861:  nopl   0x0(%rax)
    0.00 :   76868:  mov    %esi,0x10(%rsp)
    0.00 :   7686c:  movzbl 0x70(%rsp),%r13d
         : 1873  ./stdio-common/vfprintf-internal.c:1415
    0.00 :   76872:  cmp    $0x24,%r13b
    0.00 :   76876:  je     76a88 <__vfprintf_internal+0x1a58>
         : 1876  ./stdio-common/vfprintf-internal.c:1418
    0.00 :   7687c:  lea    -0x20(%r13),%edi
    0.00 :   76880:  lea    -0x1117(%rip),%rsi        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76887:  cmp    $0x5a,%dil
    0.00 :   7688b:  jbe    76cd0 <__vfprintf_internal+0x1ca0>
         : 1881  ./stdio-common/vfprintf-internal.c:1418 (discriminator 4)
    0.00 :   76891:  mov    %rcx,%rbx
    0.00 :   76894:  jmp    *%rsi
    0.00 :   76896:  cs nopw 0x0(%rax,%rax,1)
         : 1885  ./stdio-common/vfprintf-internal.c:1555
    0.00 :   768a0:  mov    0x20(%rsp),%rcx
    0.00 :   768a5:  mov    0x8(%rcx),%rax
    0.00 :   768a9:  mov    %rax,0x10(%rsp)
    0.00 :   768ae:  add    $0xf,%rax
    0.00 :   768b2:  and    $0xfffffffffffffff0,%rax
    0.00 :   768b6:  lea    0x10(%rax),%rdx
    0.00 :   768ba:  mov    %rdx,0x8(%rcx)
    0.00 :   768be:  fldt   (%rax)
    0.00 :   768c0:  fstpt  0xc0(%rsp)
         : 1895  ./stdio-common/vfprintf-internal.c:1556 (discriminator 9)
    0.00 :   768c7:  lea    0xc0(%rsp),%rax
         : 1897  __printf_fp_spec():
         : 1898  ./stdio-common/vfprintf-internal.c:351 (discriminator 9)
    0.00 :   768cf:  and    $0xffffffdf,%r13d
         : 1900  ./stdio-common/vfprintf-internal.c:352 (discriminator 9)
    0.00 :   768d3:  mov    %rbp,%rdi
         : 1902  __vfprintf_internal():
         : 1903  ./stdio-common/vfprintf-internal.c:1556 (discriminator 9)
    0.00 :   768d6:  mov    %rax,0xb8(%rsp)
         : 1905  __printf_fp_spec():
         : 1906  ./stdio-common/vfprintf-internal.c:352 (discriminator 9)
    0.00 :   768de:  lea    0xb8(%rsp),%rdx
    0.00 :   768e6:  lea    0xd0(%rsp),%rsi
         : 1909  ./stdio-common/vfprintf-internal.c:351 (discriminator 9)
    0.00 :   768ee:  cmp    $0x41,%r13d
    0.00 :   768f2:  jne    76928 <__vfprintf_internal+0x18f8>
         : 1912  ./stdio-common/vfprintf-internal.c:352
    0.00 :   768f4:  call   5d8b0 <__printf_fphex>
         : 1914  __vfprintf_internal():
         : 1915  ./stdio-common/vfprintf-internal.c:1559
    0.00 :   768f9:  test   %eax,%eax
    0.00 :   768fb:  js     76728 <__vfprintf_internal+0x16f8>
         : 1918  done_add_func():
         : 1919  ./stdio-common/vfprintf-internal.c:127
    0.00 :   76901:  xor    %edx,%edx
    0.00 :   76903:  add    %eax,%r12d
    0.00 :   76906:  js     7750f <__vfprintf_internal+0x24df>
    0.00 :   7690c:  cmp    %eax,%r12d
    0.00 :   7690f:  jb     7750f <__vfprintf_internal+0x24df>
    0.00 :   76915:  test   %edx,%edx
    0.00 :   76917:  je     75701 <__vfprintf_internal+0x6d1>
    0.00 :   7691d:  jmp    75860 <__vfprintf_internal+0x830>
    0.00 :   76922:  nopw   0x0(%rax,%rax,1)
         : 1929  __printf_fp_spec():
         : 1930  ./stdio-common/vfprintf-internal.c:354
    0.00 :   76928:  call   5d520 <__printf_fp>
    0.00 :   7692d:  jmp    768f9 <__vfprintf_internal+0x18c9>
    0.00 :   7692f:  nop
         : 1934  __vfprintf_internal():
         : 1935  ./stdio-common/vfprintf-internal.c:1516 (discriminator 168)
    0.00 :   76930:  mov    0x58(%rsp),%eax
    0.00 :   76934:  test   %eax,%eax
    0.00 :   76936:  je     76478 <__vfprintf_internal+0x1448>
         : 1939  ./stdio-common/vfprintf-internal.c:1516 (discriminator 177)
    0.00 :   7693c:  mov    0x28(%rbp),%rax
    0.00 :   76940:  cmp    0x30(%rbp),%rax
    0.00 :   76944:  jae    77463 <__vfprintf_internal+0x2433>
         : 1943  ./stdio-common/vfprintf-internal.c:1516 (discriminator 180)
    0.00 :   7694a:  lea    0x1(%rax),%rcx
    0.00 :   7694e:  mov    %rcx,0x28(%rbp)
    0.00 :   76952:  movb   $0x20,(%rax)
    0.00 :   76955:  jmp    76462 <__vfprintf_internal+0x1432>
    0.00 :   7695a:  nopw   0x0(%rax,%rax,1)
         : 1949  ./stdio-common/vfprintf-internal.c:1516 (discriminator 189)
    0.00 :   76960:  mov    0x60(%rsp),%ecx
    0.00 :   76964:  mov    $0x10004,%eax
    0.00 :   76969:  bt     %rcx,%rax
    0.00 :   7696d:  jae    76489 <__vfprintf_internal+0x1459>
         : 1954  ./stdio-common/vfprintf-internal.c:1516 (discriminator 191)
    0.00 :   76973:  mov    0x28(%rbp),%rax
    0.00 :   76977:  cmp    0x30(%rbp),%rax
    0.00 :   7697b:  jae    774c8 <__vfprintf_internal+0x2498>
         : 1958  ./stdio-common/vfprintf-internal.c:1516 (discriminator 194)
    0.00 :   76981:  lea    0x1(%rax),%rcx
    0.00 :   76985:  mov    %rcx,0x28(%rbp)
    0.00 :   76989:  movb   $0x30,(%rax)
         : 1962  ./stdio-common/vfprintf-internal.c:1516 (discriminator 197)
    0.00 :   7698c:  cmp    $0x7fffffff,%r12d
    0.00 :   76993:  je     76728 <__vfprintf_internal+0x16f8>
         : 1965  ./stdio-common/vfprintf-internal.c:1516 (discriminator 199)
    0.00 :   76999:  mov    0x28(%rbp),%rax
    0.00 :   7699d:  cmp    0x30(%rbp),%rax
    0.00 :   769a1:  jae    77495 <__vfprintf_internal+0x2465>
         : 1969  ./stdio-common/vfprintf-internal.c:1516 (discriminator 201)
    0.00 :   769a7:  lea    0x1(%rax),%rcx
    0.00 :   769ab:  mov    %rcx,0x28(%rbp)
    0.00 :   769af:  mov    %r13b,(%rax)
         : 1973  ./stdio-common/vfprintf-internal.c:1516 (discriminator 204)
    0.00 :   769b2:  cmp    $0x7ffffffe,%r12d
    0.00 :   769b9:  je     76728 <__vfprintf_internal+0x16f8>
         : 1976  ./stdio-common/vfprintf-internal.c:1516 (discriminator 206)
    0.00 :   769bf:  subl   $0x2,0x10(%rsp)
    0.00 :   769c4:  add    $0x2,%r12d
    0.00 :   769c8:  jmp    76489 <__vfprintf_internal+0x1459>
    0.00 :   769cd:  nopl   (%rax)
         : 1981  IO_validate_vtable():
         : 1982  ./stdio-common/../libio/libioP.h:946
    0.00 :   769d0:  call   89ef0 <_IO_vtable_check>
    0.00 :   769d5:  jmp    7513d <__vfprintf_internal+0x10d>
    0.00 :   769da:  nopw   0x0(%rax,%rax,1)
         : 1986  __vfprintf_internal():
         : 1987  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   769e0:  mov    0x8(%rsi),%rcx
    0.00 :   769e4:  lea    0x8(%rcx),%rax
    0.00 :   769e8:  mov    %rax,0x8(%rsi)
    0.00 :   769ec:  jmp    7561b <__vfprintf_internal+0x5eb>
    0.00 :   769f1:  nopl   0x0(%rax)
    0.00 :   769f8:  xor    %r15d,%r15d
         : 1994  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   769fb:  lea    0x528(%rsp),%r9
    0.00 :   76a03:  jmp    76596 <__vfprintf_internal+0x1566>
    0.00 :   76a08:  nopl   0x0(%rax,%rax,1)
         : 1998  read_int():
         : 1999  ./stdio-common/printf-parse.h:78
    0.00 :   76a10:  movzbl 0x1(%rdi),%edi
    0.00 :   76a14:  lea    0x2(%rbx),%rcx
    0.00 :   76a18:  mov    %edi,%r13d
    0.00 :   76a1b:  sub    $0x30,%edi
    0.00 :   76a1e:  cmp    $0x9,%edi
    0.00 :   76a21:  ja     76a71 <__vfprintf_internal+0x1a41>
    0.00 :   76a23:  mov    %rbx,0x10(%rsp)
    0.00 :   76a28:  mov    %edx,0x88(%rsp)
    0.00 :   76a2f:  mov    %edi,%ebx
    0.00 :   76a31:  movzbl 0x1(%rcx),%edi
    0.00 :   76a35:  add    $0x1,%rcx
    0.00 :   76a39:  mov    %edi,%r13d
    0.00 :   76a3c:  sub    $0x30,%edi
         : 2013  ./stdio-common/printf-parse.h:81
    0.00 :   76a3f:  cmp    $0xccccccc,%esi
    0.00 :   76a45:  jg     770e0 <__vfprintf_internal+0x20b0>
         : 2016  ./stdio-common/printf-parse.h:87
    0.00 :   76a4b:  lea    (%rsi,%rsi,4),%edx
         : 2018  ./stdio-common/printf-parse.h:88
    0.00 :   76a4e:  mov    %r9d,%esi
         : 2020  ./stdio-common/printf-parse.h:87
    0.00 :   76a51:  add    %edx,%edx
         : 2022  ./stdio-common/printf-parse.h:88
    0.00 :   76a53:  sub    %ebx,%esi
    0.00 :   76a55:  cmp    %esi,%edx
    0.00 :   76a57:  jg     770e0 <__vfprintf_internal+0x20b0>
         : 2026  ./stdio-common/printf-parse.h:91
    0.00 :   76a5d:  lea    (%rdx,%rbx,1),%esi
         : 2028  ./stdio-common/printf-parse.h:78
    0.00 :   76a60:  cmp    $0x9,%edi
    0.00 :   76a63:  jbe    76a2f <__vfprintf_internal+0x19ff>
    0.00 :   76a65:  mov    0x10(%rsp),%rbx
    0.00 :   76a6a:  mov    0x88(%rsp),%edx
         : 2033  __vfprintf_internal():
         : 2034  ./stdio-common/vfprintf-internal.c:1388 (discriminator 1)
    0.00 :   76a71:  cmp    $0x24,%r13b
    0.00 :   76a75:  jne    76235 <__vfprintf_internal+0x1205>
    0.00 :   76a7b:  test   %esi,%esi
    0.00 :   76a7d:  je     76235 <__vfprintf_internal+0x1205>
    0.00 :   76a83:  nopl   0x0(%rax,%rax,1)
    0.00 :   76a88:  mov    0x78(%rsp),%eax
    0.00 :   76a8c:  jmp    752df <__vfprintf_internal+0x2af>
    0.00 :   76a91:  nopl   0x0(%rax)
         : 2043  ./stdio-common/vfprintf-internal.c:1368 (discriminator 4)
    0.00 :   76a98:  movl   $0x1,0x5c(%rsp)
         : 2045  ./stdio-common/vfprintf-internal.c:1369 (discriminator 4)
    0.00 :   76aa0:  mov    %rcx,%rbx
    0.00 :   76aa3:  jmp    *%rsi
    0.00 :   76aa5:  nopl   (%rax)
         : 2049  ./stdio-common/vfprintf-internal.c:1392 (discriminator 16)
    0.00 :   76aa8:  mov    0x20(%rsp),%rsi
    0.00 :   76aad:  mov    (%rsi),%eax
         : 2052  ./stdio-common/vfprintf-internal.c:1516 (discriminator 16)
    0.00 :   76aaf:  test   %r11d,%r11d
    0.00 :   76ab2:  je     76db7 <__vfprintf_internal+0x1d87>
         : 2055  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76ab8:  cmp    $0x2f,%eax
    0.00 :   76abb:  ja     77265 <__vfprintf_internal+0x2235>
    0.00 :   76ac1:  mov    %eax,%edx
    0.00 :   76ac3:  add    $0x8,%eax
    0.00 :   76ac6:  add    0x10(%rsi),%rdx
    0.00 :   76aca:  mov    %eax,(%rsi)
    0.00 :   76acc:  movsbq (%rdx),%r10
         : 2063  ./stdio-common/vfprintf-internal.c:1516 (discriminator 24)
    0.00 :   76ad0:  mov    %r10,%r11
    0.00 :   76ad3:  test   %r10,%r10
    0.00 :   76ad6:  js     76fc8 <__vfprintf_internal+0x1f98>
         : 2067  ./stdio-common/vfprintf-internal.c:1516 (discriminator 26)
    0.00 :   76adc:  movl   $0xa,0x60(%rsp)
    0.00 :   76ae4:  xor    %r10d,%r10d
    0.00 :   76ae7:  jmp    75a66 <__vfprintf_internal+0xa36>
    0.00 :   76aec:  nopl   0x0(%rax)
         : 2072  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76af0:  cmp    $0x2f,%eax
    0.00 :   76af3:  jbe    76ddc <__vfprintf_internal+0x1dac>
    0.00 :   76af9:  mov    0x8(%rdi),%rdx
    0.00 :   76afd:  lea    0x8(%rdx),%rax
    0.00 :   76b01:  mov    %rax,0x8(%rdi)
    0.00 :   76b05:  movl   $0x0,0x40(%rsp)
    0.00 :   76b0d:  movzwl (%rdx),%r11d
    0.00 :   76b11:  xor    %r10d,%r10d
    0.00 :   76b14:  movl   $0x0,0x58(%rsp)
    0.00 :   76b1c:  jmp    75a66 <__vfprintf_internal+0xa36>
    0.00 :   76b21:  nopl   0x0(%rax)
         : 2084  ./stdio-common/vfprintf-internal.c:1318 (discriminator 1)
    0.00 :   76b28:  movsbl %r13b,%esi
         : 2086  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   76b2c:  lea    0x15ab2d(%rip),%rbx        # 1d1660 <step0_jumps.9>
         : 2088  ./stdio-common/vfprintf-internal.c:1317 (discriminator 1)
    0.00 :   76b33:  movl   $0x1,0x58(%rsp)
         : 2090  ./stdio-common/vfprintf-internal.c:1318 (discriminator 1)
    0.00 :   76b3b:  sub    $0x20,%esi
    0.00 :   76b3e:  movslq %esi,%rsi
    0.00 :   76b41:  movzbl (%rax,%rsi,1),%esi
         : 2094  ./stdio-common/vfprintf-internal.c:1329 (discriminator 1)
    0.00 :   76b45:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   76b49:  lea    -0x13e0(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76b50:  add    %rbx,%rsi
         : 2098  ./stdio-common/vfprintf-internal.c:1318 (discriminator 1)
    0.00 :   76b53:  mov    %rcx,%rbx
    0.00 :   76b56:  jmp    *%rsi
    0.00 :   76b58:  nopl   0x0(%rax,%rax,1)
         : 2102  ./stdio-common/vfprintf-internal.c:1486 (discriminator 4)
    0.00 :   76b60:  mov    %rdx,%rbx
         : 2104  ./stdio-common/vfprintf-internal.c:1485 (discriminator 4)
    0.00 :   76b63:  mov    $0x1,%r10d
         : 2106  ./stdio-common/vfprintf-internal.c:1484 (discriminator 4)
    0.00 :   76b69:  mov    $0x1,%edx
    0.00 :   76b6e:  jmp    *%rsi
         : 2109  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76b70:  mov    0x8(%rdi),%rdx
    0.00 :   76b74:  lea    0x8(%rdx),%rax
    0.00 :   76b78:  mov    %rax,0x8(%rdi)
    0.00 :   76b7c:  jmp    76069 <__vfprintf_internal+0x1039>
    0.00 :   76b81:  nopl   0x0(%rax)
         : 2115  ./stdio-common/vfprintf-internal.c:1344 (discriminator 4)
    0.00 :   76b88:  movl   $0x1,0x50(%rsp)
         : 2117  ./stdio-common/vfprintf-internal.c:1365 (discriminator 4)
    0.00 :   76b90:  mov    %rcx,%rbx
    0.00 :   76b93:  jmp    *%rsi
    0.00 :   76b95:  nopl   (%rax)
         : 2121  ./stdio-common/vfprintf-internal.c:1333 (discriminator 4)
    0.00 :   76b98:  movl   $0x1,0x4c(%rsp)
         : 2123  ./stdio-common/vfprintf-internal.c:1334 (discriminator 4)
    0.00 :   76ba0:  mov    %rcx,%rbx
    0.00 :   76ba3:  jmp    *%rsi
    0.00 :   76ba5:  nopl   (%rax)
         : 2127  ./stdio-common/vfprintf-internal.c:1479 (discriminator 4)
    0.00 :   76ba8:  mov    %rcx,%rbx
         : 2129  ./stdio-common/vfprintf-internal.c:1478 (discriminator 4)
    0.00 :   76bab:  mov    $0x1,%r10d
    0.00 :   76bb1:  jmp    *%rsi
    0.00 :   76bb3:  nopl   0x0(%rax,%rax,1)
         : 2133  ./stdio-common/vfprintf-internal.c:1322 (discriminator 4)
    0.00 :   76bb8:  movl   $0x1,0x40(%rsp)
         : 2135  ./stdio-common/vfprintf-internal.c:1323 (discriminator 4)
    0.00 :   76bc0:  mov    %rcx,%rbx
    0.00 :   76bc3:  jmp    *%rsi
    0.00 :   76bc5:  nopl   (%rax)
         : 2139  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76bc8:  mov    0x8(%rdi),%rdx
    0.00 :   76bcc:  lea    0x8(%rdx),%rax
    0.00 :   76bd0:  mov    %rax,0x8(%rdi)
    0.00 :   76bd4:  jmp    75e7f <__vfprintf_internal+0xe4f>
    0.00 :   76bd9:  nopl   0x0(%rax)
         : 2145  ./stdio-common/vfprintf-internal.c:1468 (discriminator 4)
    0.00 :   76be0:  mov    %rcx,%rbx
         : 2147  ./stdio-common/vfprintf-internal.c:1467 (discriminator 4)
    0.00 :   76be3:  mov    $0x1,%r15d
    0.00 :   76be9:  jmp    *%rsi
    0.00 :   76beb:  nopl   0x0(%rax,%rax,1)
         : 2151  ./stdio-common/vfprintf-internal.c:1516 (discriminator 244)
    0.00 :   76bf0:  mov    0x90(%rsp),%edi
    0.00 :   76bf7:  lea    0x140(%rsp),%rsi
    0.00 :   76bff:  mov    $0x3e8,%edx
    0.00 :   76c04:  call   a8620 <__strerror_r>
    0.00 :   76c09:  mov    %rax,%r15
    0.00 :   76c0c:  jmp    758a1 <__vfprintf_internal+0x871>
    0.00 :   76c11:  nopl   0x0(%rax)
         : 2159  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76c18:  mov    0x8(%rdi),%rdx
    0.00 :   76c1c:  lea    0x8(%rdx),%rax
    0.00 :   76c20:  mov    %rax,0x8(%rdi)
    0.00 :   76c24:  jmp    7572f <__vfprintf_internal+0x6ff>
    0.00 :   76c29:  nopl   0x0(%rax)
         : 2165  ./stdio-common/vfprintf-internal.c:1516 (discriminator 234)
    0.00 :   76c30:  test   %r11d,%r11d
    0.00 :   76c33:  jne    76d9e <__vfprintf_internal+0x1d6e>
         : 2168  ./stdio-common/vfprintf-internal.c:1516 (discriminator 237)
    0.00 :   76c39:  test   %r15d,%r15d
    0.00 :   76c3c:  jne    77276 <__vfprintf_internal+0x2246>
         : 2171  ./stdio-common/vfprintf-internal.c:1516 (discriminator 239)
    0.00 :   76c42:  mov    %r12d,(%rax)
    0.00 :   76c45:  jmp    75f80 <__vfprintf_internal+0xf50>
    0.00 :   76c4a:  nopw   0x0(%rax,%rax,1)
         : 2175  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76c50:  mov    0x8(%rsi),%rdx
    0.00 :   76c54:  lea    0x8(%rdx),%rax
    0.00 :   76c58:  mov    %rax,0x8(%rsi)
    0.00 :   76c5c:  jmp    75e41 <__vfprintf_internal+0xe11>
    0.00 :   76c61:  nopl   0x0(%rax)
         : 2181  ./stdio-common/vfprintf-internal.c:1376 (discriminator 4)
    0.00 :   76c68:  mov    0x70(%rsp),%rbx
    0.00 :   76c6d:  jmp    *%rsi
    0.00 :   76c6f:  nop
    0.00 :   76c70:  mov    %rsi,%rdi
         : 2186  ./stdio-common/vfprintf-internal.c:1392
    0.00 :   76c73:  mov    %ecx,%esi
    0.00 :   76c75:  add    $0x8,%ecx
    0.00 :   76c78:  mov    %ecx,(%rdi)
    0.00 :   76c7a:  add    0x10(%rdi),%rsi
    0.00 :   76c7e:  jmp    76254 <__vfprintf_internal+0x1224>
         : 2192  ./stdio-common/vfprintf-internal.c:1516 (discriminator 218)
    0.00 :   76c83:  mov    $0x5,%eax
    0.00 :   76c88:  lea    0x161be6(%rip),%r15        # 1d8875 <not_available+0x317>
    0.00 :   76c8f:  cmp    %eax,%r14d
    0.00 :   76c92:  cmovl  %eax,%r14d
         : 2197  ./stdio-common/vfprintf-internal.c:1517 (discriminator 218)
    0.00 :   76c96:  cmp    $0x53,%r13b
    0.00 :   76c9a:  jne    758cb <__vfprintf_internal+0x89b>
         : 2200  ./stdio-common/vfprintf-internal.c:1517 (discriminator 41)
    0.00 :   76ca0:  mov    0x28(%rsp),%r8d
    0.00 :   76ca5:  mov    0x10(%rsp),%ecx
    0.00 :   76ca9:  mov    %r12d,%r9d
    0.00 :   76cac:  mov    %r14d,%edx
    0.00 :   76caf:  mov    %r15,%rsi
    0.00 :   76cb2:  mov    %rbp,%rdi
    0.00 :   76cb5:  call   72680 <outstring_converted_wide_string>
    0.00 :   76cba:  mov    %eax,%r12d
    0.00 :   76cbd:  test   %eax,%eax
    0.00 :   76cbf:  jns    75f80 <__vfprintf_internal+0xf50>
    0.00 :   76cc5:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   76cca:  nopw   0x0(%rax,%rax,1)
         : 2213  ./stdio-common/vfprintf-internal.c:1418 (discriminator 1)
    0.00 :   76cd0:  movsbl %r13b,%esi
    0.00 :   76cd4:  lea    0x15a905(%rip),%rbx        # 1d15e0 <step1_jumps.8>
    0.00 :   76cdb:  sub    $0x20,%esi
    0.00 :   76cde:  movslq %esi,%rsi
    0.00 :   76ce1:  movzbl (%rax,%rsi,1),%esi
    0.00 :   76ce5:  movslq (%rbx,%rsi,4),%rsi
    0.00 :   76ce9:  lea    -0x1580(%rip),%rbx        # 75770 <__vfprintf_internal+0x740>
    0.00 :   76cf0:  add    %rbx,%rsi
    0.00 :   76cf3:  mov    %rcx,%rbx
    0.00 :   76cf6:  jmp    *%rsi
    0.00 :   76cf8:  nopl   0x0(%rax,%rax,1)
         : 2225  ./stdio-common/vfprintf-internal.c:1555
    0.00 :   76d00:  mov    0x8(%rsi),%rdx
    0.00 :   76d04:  lea    0x8(%rdx),%rax
    0.00 :   76d08:  mov    %rax,0x8(%rsi)
    0.00 :   76d0c:  jmp    755cf <__vfprintf_internal+0x59f>
    0.00 :   76d11:  nopl   0x0(%rax)
         : 2231  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76d18:  mov    0x8(%rdi),%rdx
    0.00 :   76d1c:  lea    0x8(%rdx),%rax
    0.00 :   76d20:  mov    %rax,0x8(%rdi)
    0.00 :   76d24:  jmp    757df <__vfprintf_internal+0x7af>
         : 2236  ./stdio-common/vfprintf-internal.c:1517 (discriminator 43)
    0.00 :   76d29:  mov    %r15,%rdi
    0.00 :   76d2c:  call   28490 <*ABS*+0xa86a0@plt>
    0.00 :   76d31:  mov    %rax,%r14
    0.00 :   76d34:  jmp    758d9 <__vfprintf_internal+0x8a9>
         : 2241  pad_func():
         : 2242  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76d39:  movslq %r13d,%rdx
    0.00 :   76d3c:  mov    $0x20,%esi
    0.00 :   76d41:  mov    %rbp,%rdi
    0.00 :   76d44:  mov    %rdx,0x10(%rsp)
    0.00 :   76d49:  call   806a0 <_IO_padn>
         : 2248  ./stdio-common/vfprintf-internal.c:200
    0.00 :   76d4e:  mov    0x10(%rsp),%rdx
    0.00 :   76d53:  cmp    %rax,%rdx
    0.00 :   76d56:  jne    76728 <__vfprintf_internal+0x16f8>
         : 2252  done_add_func():
         : 2253  ./stdio-common/vfprintf-internal.c:127
    0.00 :   76d5c:  add    %r13d,%r12d
    0.00 :   76d5f:  js     75860 <__vfprintf_internal+0x830>
    0.00 :   76d65:  cmp    %r13d,%r12d
    0.00 :   76d68:  jb     75860 <__vfprintf_internal+0x830>
         : 2258  __vfprintf_internal():
         : 2259  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76d6e:  test   %r12d,%r12d
    0.00 :   76d71:  jns    75655 <__vfprintf_internal+0x625>
    0.00 :   76d77:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   76d7c:  nopl   0x0(%rax)
         : 2264  ./stdio-common/vfprintf-internal.c:1555
    0.00 :   76d80:  mov    0x8(%rcx),%rax
    0.00 :   76d84:  mov    %rax,0x10(%rsp)
    0.00 :   76d89:  add    $0xf,%rax
    0.00 :   76d8d:  and    $0xfffffffffffffff0,%rax
    0.00 :   76d91:  lea    0x10(%rax),%rdx
    0.00 :   76d95:  mov    %rdx,0x8(%rcx)
    0.00 :   76d99:  jmp    754e7 <__vfprintf_internal+0x4b7>
         : 2272  ./stdio-common/vfprintf-internal.c:1516 (discriminator 236)
    0.00 :   76d9e:  mov    %r12b,(%rax)
    0.00 :   76da1:  jmp    75f80 <__vfprintf_internal+0xf50>
         : 2275  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76da6:  mov    0x8(%rdi),%rdx
    0.00 :   76daa:  lea    0x8(%rdx),%rax
    0.00 :   76dae:  mov    %rax,0x8(%rdi)
    0.00 :   76db2:  jmp    75f48 <__vfprintf_internal+0xf18>
         : 2280  ./stdio-common/vfprintf-internal.c:1516 (discriminator 19)
    0.00 :   76db7:  test   %r15d,%r15d
    0.00 :   76dba:  jne    7727f <__vfprintf_internal+0x224f>
         : 2283  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   76dc0:  cmp    $0x2f,%eax
    0.00 :   76dc3:  ja     77401 <__vfprintf_internal+0x23d1>
    0.00 :   76dc9:  mov    %eax,%edx
    0.00 :   76dcb:  add    $0x8,%eax
    0.00 :   76dce:  add    0x10(%rsi),%rdx
    0.00 :   76dd2:  mov    %eax,(%rsi)
    0.00 :   76dd4:  movslq (%rdx),%r10
    0.00 :   76dd7:  jmp    76ad0 <__vfprintf_internal+0x1aa0>
    0.00 :   76ddc:  mov    %eax,%edx
    0.00 :   76dde:  add    $0x8,%eax
    0.00 :   76de1:  add    0x10(%rdi),%rdx
    0.00 :   76de5:  mov    %eax,(%rdi)
    0.00 :   76de7:  jmp    76b05 <__vfprintf_internal+0x1ad5>
    0.00 :   76dec:  mov    0x8(%rdi),%rdx
    0.00 :   76df0:  lea    0x8(%rdx),%rax
    0.00 :   76df4:  mov    %rax,0x8(%rdi)
    0.00 :   76df8:  jmp    76835 <__vfprintf_internal+0x1805>
         : 2301  pad_func():
         : 2302  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76dfd:  movslq %r13d,%rdx
    0.00 :   76e00:  mov    $0x20,%esi
    0.00 :   76e05:  mov    %rbp,%rdi
    0.00 :   76e08:  mov    %rdx,0x10(%rsp)
    0.00 :   76e0d:  call   806a0 <_IO_padn>
         : 2308  ./stdio-common/vfprintf-internal.c:200
    0.00 :   76e12:  mov    0x10(%rsp),%rdx
    0.00 :   76e17:  cmp    %rax,%rdx
    0.00 :   76e1a:  jne    76728 <__vfprintf_internal+0x16f8>
         : 2312  done_add_func():
         : 2313  ./stdio-common/vfprintf-internal.c:127
    0.00 :   76e20:  add    %r13d,%r12d
    0.00 :   76e23:  js     75860 <__vfprintf_internal+0x830>
    0.00 :   76e29:  cmp    %r13d,%r12d
    0.00 :   76e2c:  jb     75860 <__vfprintf_internal+0x830>
         : 2318  __vfprintf_internal():
         : 2319  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76e32:  test   %r12d,%r12d
    0.00 :   76e35:  jns    758fa <__vfprintf_internal+0x8ca>
    0.00 :   76e3b:  jmp    7533d <__vfprintf_internal+0x30d>
         : 2323  read_int():
         : 2324  ./stdio-common/printf-parse.h:78
    0.00 :   76e40:  movzbl 0x1(%rcx),%edi
    0.00 :   76e44:  add    $0x2,%rbx
    0.00 :   76e48:  mov    %edi,%r13d
    0.00 :   76e4b:  sub    $0x30,%edi
    0.00 :   76e4e:  cmp    $0x9,%edi
    0.00 :   76e51:  ja     75ee6 <__vfprintf_internal+0xeb6>
    0.00 :   76e57:  movzbl 0x1(%rbx),%ecx
    0.00 :   76e5b:  add    $0x1,%rbx
    0.00 :   76e5f:  mov    %ecx,%r13d
    0.00 :   76e62:  sub    $0x30,%ecx
         : 2335  ./stdio-common/printf-parse.h:81
    0.00 :   76e65:  cmp    $0xccccccc,%r14d
    0.00 :   76e6c:  jg     76f80 <__vfprintf_internal+0x1f50>
         : 2338  ./stdio-common/printf-parse.h:87
    0.00 :   76e72:  lea    (%r14,%r14,4),%r14d
         : 2340  ./stdio-common/printf-parse.h:88
    0.00 :   76e76:  mov    %r9d,%esi
         : 2342  ./stdio-common/printf-parse.h:87
    0.00 :   76e79:  add    %r14d,%r14d
         : 2344  ./stdio-common/printf-parse.h:88
    0.00 :   76e7c:  sub    %edi,%esi
    0.00 :   76e7e:  cmp    %esi,%r14d
    0.00 :   76e81:  jg     76f80 <__vfprintf_internal+0x1f50>
         : 2348  ./stdio-common/printf-parse.h:91
    0.00 :   76e87:  add    %edi,%r14d
         : 2350  ./stdio-common/printf-parse.h:78
    0.00 :   76e8a:  cmp    $0x9,%ecx
    0.00 :   76e8d:  ja     75ee6 <__vfprintf_internal+0xeb6>
    0.00 :   76e93:  mov    %ecx,%edi
    0.00 :   76e95:  jmp    76e57 <__vfprintf_internal+0x1e27>
         : 2355  pad_func():
         : 2356  ./stdio-common/vfprintf-internal.c:192
    0.00 :   76e97:  test   %r13d,%r13d
    0.00 :   76e9a:  jle    757c4 <__vfprintf_internal+0x794>
         : 2359  ./stdio-common/vfprintf-internal.c:196
    0.00 :   76ea0:  movslq %r13d,%r14
    0.00 :   76ea3:  mov    $0x20,%esi
    0.00 :   76ea8:  mov    %rbp,%rdi
    0.00 :   76eab:  mov    %r14,%rdx
    0.00 :   76eae:  call   806a0 <_IO_padn>
         : 2365  ./stdio-common/vfprintf-internal.c:200
    0.00 :   76eb3:  cmp    %rax,%r14
    0.00 :   76eb6:  jne    76728 <__vfprintf_internal+0x16f8>
         : 2368  done_add_func():
         : 2369  ./stdio-common/vfprintf-internal.c:127
    0.00 :   76ebc:  add    %r13d,%r12d
    0.00 :   76ebf:  js     75860 <__vfprintf_internal+0x830>
    0.00 :   76ec5:  cmp    %r13d,%r12d
    0.00 :   76ec8:  jb     75860 <__vfprintf_internal+0x830>
         : 2374  __vfprintf_internal():
         : 2375  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76ece:  test   %r12d,%r12d
    0.00 :   76ed1:  jns    757c4 <__vfprintf_internal+0x794>
    0.00 :   76ed7:  jmp    7533d <__vfprintf_internal+0x30d>
    0.00 :   76edc:  nopl   0x0(%rax)
         : 2380  ./stdio-common/vfprintf-internal.c:1260 (discriminator 7)
    0.00 :   76ee0:  call   91230 <__lll_lock_wait_private>
    0.00 :   76ee5:  jmp    75567 <__vfprintf_internal+0x537>
         : 2383  ./stdio-common/vfprintf-internal.c:1516 (discriminator 225)
    0.00 :   76eea:  mov    0x8(%rsp),%r14
    0.00 :   76eef:  mov    %r10d,0x28(%rsp)
    0.00 :   76ef4:  mov    %r11d,0x10(%rsp)
    0.00 :   76ef9:  mov    %r14,%rdi
    0.00 :   76efc:  call   28490 <*ABS*+0xa86a0@plt>
    0.00 :   76f01:  mov    %r14,%rdi
    0.00 :   76f04:  lea    0x1(%rax),%rsi
    0.00 :   76f08:  call   134f20 <__readonly_area>
    0.00 :   76f0d:  mov    0x10(%rsp),%r11d
    0.00 :   76f12:  mov    0x28(%rsp),%r10d
    0.00 :   76f17:  test   %eax,%eax
    0.00 :   76f19:  mov    %eax,0xa0(%rsp)
    0.00 :   76f20:  jns    75e26 <__vfprintf_internal+0xdf6>
         : 2397  ./stdio-common/vfprintf-internal.c:1516 (discriminator 228)
    0.00 :   76f26:  lea    0x1668cb(%rip),%rdi        # 1dd7f8 <__PRETTY_FUNCTION__.0+0x1d0>
    0.00 :   76f2d:  call   896d0 <__libc_fatal>
    0.00 :   76f32:  nopw   0x0(%rax,%rax,1)
    0.00 :   76f38:  mov    $0x6,%eax
         : 2402  ./stdio-common/vfprintf-internal.c:1517
    0.00 :   76f3d:  mov    $0x6,%r14d
    0.00 :   76f43:  lea    0x161931(%rip),%r15        # 1d887b <null>
    0.00 :   76f4a:  jmp    758d9 <__vfprintf_internal+0x8a9>
         : 2406  ./stdio-common/vfprintf-internal.c:1516 (discriminator 138)
    0.00 :   76f4f:  mov    $0x30,%esi
    0.00 :   76f54:  mov    %rbp,%rdi
    0.00 :   76f57:  mov    %r8d,0x28(%rsp)
    0.00 :   76f5c:  mov    %r9,0x10(%rsp)
    0.00 :   76f61:  call   8d800 <__overflow>
    0.00 :   76f66:  mov    0x10(%rsp),%r9
    0.00 :   76f6b:  mov    0x28(%rsp),%r8d
    0.00 :   76f70:  cmp    $0xffffffff,%eax
    0.00 :   76f73:  jne    75c37 <__vfprintf_internal+0xc07>
    0.00 :   76f79:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   76f7e:  xchg   %ax,%ax
         : 2418  read_int():
         : 2419  ./stdio-common/printf-parse.h:78
    0.00 :   76f80:  cmp    $0x9,%ecx
    0.00 :   76f83:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   76f89:  movzbl 0x1(%rbx),%eax
    0.00 :   76f8d:  sub    $0x30,%eax
    0.00 :   76f90:  cmp    $0x9,%eax
    0.00 :   76f93:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   76f99:  movzbl 0x2(%rbx),%eax
    0.00 :   76f9d:  sub    $0x30,%eax
    0.00 :   76fa0:  cmp    $0x9,%eax
    0.00 :   76fa3:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   76fa9:  add    $0x3,%rbx
    0.00 :   76fad:  nopl   (%rax)
    0.00 :   76fb0:  movzbl (%rbx),%eax
    0.00 :   76fb3:  add    $0x1,%rbx
    0.00 :   76fb7:  sub    $0x30,%eax
    0.00 :   76fba:  cmp    $0x9,%eax
    0.00 :   76fbd:  jbe    76fb0 <__vfprintf_internal+0x1f80>
    0.00 :   76fbf:  jmp    75860 <__vfprintf_internal+0x830>
    0.00 :   76fc4:  nopl   0x0(%rax)
         : 2439  __vfprintf_internal():
         : 2440  ./stdio-common/vfprintf-internal.c:1516 (discriminator 25)
    0.00 :   76fc8:  movl   $0xa,0x60(%rsp)
    0.00 :   76fd0:  neg    %r11
    0.00 :   76fd3:  mov    $0x1,%r10d
    0.00 :   76fd9:  jmp    75a66 <__vfprintf_internal+0xa36>
    0.00 :   76fde:  xchg   %ax,%ax
         : 2446  outstring_func():
         : 2447  ./stdio-common/vfprintf-internal.c:239
    0.00 :   76fe0:  mov    0xd8(%rbp),%r13
         : 2449  IO_validate_vtable():
         : 2450  ./stdio-common/../libio/libioP.h:942
    0.00 :   76fe7:  lea    0x19fa12(%rip),%rdx        # 216a00 <_IO_helper_jumps>
    0.00 :   76fee:  mov    %r13,%rax
    0.00 :   76ff1:  sub    %rdx,%rax
         : 2454  ./stdio-common/../libio/libioP.h:943
    0.00 :   76ff4:  cmp    %rax,0x30(%rsp)
    0.00 :   76ff9:  jbe    77459 <__vfprintf_internal+0x2429>
         : 2457  outstring_func():
         : 2458  ./stdio-common/vfprintf-internal.c:239
    0.00 :   76fff:  mov    %r14,%rdx
    0.00 :   77002:  mov    %r15,%rsi
    0.00 :   77005:  mov    %rbp,%rdi
    0.00 :   77008:  call   *0x38(%r13)
    0.00 :   7700c:  cmp    %r14,%rax
    0.00 :   7700f:  jne    76728 <__vfprintf_internal+0x16f8>
         : 2465  done_add_func():
         : 2466  ./stdio-common/vfprintf-internal.c:127
    0.00 :   77015:  movslq %r12d,%rax
    0.00 :   77018:  xor    %edx,%edx
    0.00 :   7701a:  add    %r14,%rax
    0.00 :   7701d:  js     77028 <__vfprintf_internal+0x1ff8>
    0.00 :   7701f:  cmp    %r14,%rax
    0.00 :   77022:  jae    75cc9 <__vfprintf_internal+0xc99>
    0.00 :   77028:  mov    $0x1,%edx
    0.00 :   7702d:  jmp    75cc9 <__vfprintf_internal+0xc99>
    0.00 :   77032:  nopw   0x0(%rax,%rax,1)
         : 2476  __vfprintf_internal():
         : 2477  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   77038:  mov    0x70(%rsp),%rdx
    0.00 :   7703d:  mov    $0x0,%eax
    0.00 :   77042:  sub    %r15,%rdx
    0.00 :   77045:  cmovs  %rax,%rdx
    0.00 :   77049:  mov    %edx,%r14d
    0.00 :   7704c:  jmp    7659d <__vfprintf_internal+0x156d>
    0.00 :   77051:  nopl   0x0(%rax)
         : 2485  ./stdio-common/vfprintf-internal.c:1516 (discriminator 113)
    0.00 :   77058:  mov    0x58(%rsp),%ecx
    0.00 :   7705c:  test   %ecx,%ecx
    0.00 :   7705e:  je     75c02 <__vfprintf_internal+0xbd2>
         : 2489  ./stdio-common/vfprintf-internal.c:1516 (discriminator 122)
    0.00 :   77064:  mov    0x28(%rbp),%rax
    0.00 :   77068:  cmp    0x30(%rbp),%rax
    0.00 :   7706c:  jae    7747c <__vfprintf_internal+0x244c>
         : 2493  ./stdio-common/vfprintf-internal.c:1516 (discriminator 125)
    0.00 :   77072:  lea    0x1(%rax),%rdx
    0.00 :   77076:  mov    %rdx,0x28(%rbp)
    0.00 :   7707a:  movb   $0x20,(%rax)
    0.00 :   7707d:  jmp    75bf1 <__vfprintf_internal+0xbc1>
    0.00 :   77082:  nopw   0x0(%rax,%rax,1)
         : 2499  ./stdio-common/vfprintf-internal.c:1427
    0.00 :   77088:  movzbl 0x2(%rbx),%ecx
         : 2501  ./stdio-common/vfprintf-internal.c:1426
    0.00 :   7708c:  lea    0x2(%rbx),%rsi
    0.00 :   77090:  mov    %rsi,0x70(%rsp)
         : 2504  ./stdio-common/vfprintf-internal.c:1427
    0.00 :   77095:  sub    $0x30,%ecx
    0.00 :   77098:  cmp    $0x9,%ecx
    0.00 :   7709b:  jbe    772b0 <__vfprintf_internal+0x2280>
         : 2508  ./stdio-common/vfprintf-internal.c:1442
    0.00 :   770a1:  mov    0x20(%rsp),%rbx
    0.00 :   770a6:  mov    (%rbx),%ecx
    0.00 :   770a8:  cmp    $0x2f,%ecx
    0.00 :   770ab:  jbe    771ee <__vfprintf_internal+0x21be>
    0.00 :   770b1:  mov    0x8(%rbx),%rsi
    0.00 :   770b5:  lea    0x8(%rsi),%rcx
    0.00 :   770b9:  mov    %rcx,0x8(%rbx)
         : 2516  ./stdio-common/vfprintf-internal.c:1445
    0.00 :   770bd:  mov    (%rsi),%ecx
    0.00 :   770bf:  mov    $0xffffffff,%esi
         : 2519  ./stdio-common/vfprintf-internal.c:1463
    0.00 :   770c4:  mov    0x70(%rsp),%rbx
    0.00 :   770c9:  test   %ecx,%ecx
    0.00 :   770cb:  movzbl (%rbx),%r13d
    0.00 :   770cf:  cmovns %ecx,%esi
    0.00 :   770d2:  mov    %esi,%r14d
    0.00 :   770d5:  jmp    75ee6 <__vfprintf_internal+0xeb6>
    0.00 :   770da:  nopw   0x0(%rax,%rax,1)
         : 2527  read_int():
         : 2528  ./stdio-common/printf-parse.h:78
    0.00 :   770e0:  cmp    $0x9,%edi
    0.00 :   770e3:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   770e9:  movzbl 0x1(%rcx),%eax
    0.00 :   770ed:  sub    $0x30,%eax
    0.00 :   770f0:  cmp    $0x9,%eax
    0.00 :   770f3:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   770f9:  movzbl 0x2(%rcx),%eax
    0.00 :   770fd:  sub    $0x30,%eax
    0.00 :   77100:  cmp    $0x9,%eax
    0.00 :   77103:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   77109:  add    $0x3,%rcx
    0.00 :   7710d:  nopl   (%rax)
    0.00 :   77110:  movzbl (%rcx),%eax
    0.00 :   77113:  add    $0x1,%rcx
    0.00 :   77117:  sub    $0x30,%eax
    0.00 :   7711a:  cmp    $0x9,%eax
    0.00 :   7711d:  jbe    77110 <__vfprintf_internal+0x20e0>
    0.00 :   7711f:  jmp    75860 <__vfprintf_internal+0x830>
    0.00 :   77124:  nopl   0x0(%rax)
         : 2548  __vfprintf_internal():
         : 2549  ./stdio-common/vfprintf-internal.c:1214
    0.00 :   77128:  movl   $0x0,0xa0(%rsp)
         : 2551  ./stdio-common/vfprintf-internal.c:1240
    0.00 :   77133:  movq   $0xffffffffffffffff,0x80(%rsp)
         : 2553  ./stdio-common/vfprintf-internal.c:1182
    0.00 :   7713f:  movq   $0x0,0x98(%rsp)
    0.00 :   7714b:  jmp    752df <__vfprintf_internal+0x2af>
         : 2556  ./stdio-common/vfprintf-internal.c:1516 (discriminator 247)
    0.00 :   77150:  movslq 0x90(%rsp),%r11
    0.00 :   77158:  movl   $0xa,0x60(%rsp)
    0.00 :   77160:  xor    %r10d,%r10d
    0.00 :   77163:  test   %r11d,%r11d
    0.00 :   77166:  jns    75a66 <__vfprintf_internal+0xa36>
         : 2562  ./stdio-common/vfprintf-internal.c:1516 (discriminator 249)
    0.00 :   7716c:  neg    %r11
    0.00 :   7716f:  mov    $0x1,%r10d
    0.00 :   77175:  jmp    75a66 <__vfprintf_internal+0xa36>
         : 2566  ./stdio-common/vfprintf-internal.c:1352
    0.00 :   7717a:  mov    0x60(%rsp),%rcx
    0.00 :   7717f:  mov    0x8(%rcx),%rcx
         : 2569  ./stdio-common/vfprintf-internal.c:1355
    0.00 :   77183:  mov    0x50(%rcx),%rdi
         : 2571  ./stdio-common/vfprintf-internal.c:1352
    0.00 :   77187:  mov    0x48(%rcx),%rsi
         : 2573  ./stdio-common/vfprintf-internal.c:1356
    0.00 :   7718b:  movzbl (%rdi),%ecx
         : 2575  ./stdio-common/vfprintf-internal.c:1352
    0.00 :   7718e:  mov    %rsi,0x98(%rsp)
         : 2577  ./stdio-common/vfprintf-internal.c:1356
    0.00 :   77196:  test   %cl,%cl
    0.00 :   77198:  je     77240 <__vfprintf_internal+0x2210>
    0.00 :   7719e:  cmp    $0x7f,%cl
    0.00 :   771a1:  je     77240 <__vfprintf_internal+0x2210>
         : 2582  ./stdio-common/vfprintf-internal.c:1363
    0.00 :   771a7:  xor    %ecx,%ecx
    0.00 :   771a9:  cmpb   $0x0,(%rsi)
    0.00 :   771ac:  cmovne %rdi,%rcx
    0.00 :   771b0:  mov    %rcx,0x80(%rsp)
    0.00 :   771b8:  jmp    75d03 <__vfprintf_internal+0xcd3>
    0.00 :   771bd:  mov    %r9,0x10(%rsp)
         : 2589  IO_validate_vtable():
         : 2590  ./stdio-common/../libio/libioP.h:946
    0.00 :   771c2:  call   89ef0 <_IO_vtable_check>
    0.00 :   771c7:  mov    0x10(%rsp),%r9
    0.00 :   771cc:  jmp    7650a <__vfprintf_internal+0x14da>
    0.00 :   771d1:  mov    %r9,0x10(%rsp)
    0.00 :   771d6:  call   89ef0 <_IO_vtable_check>
    0.00 :   771db:  mov    0x10(%rsp),%r9
    0.00 :   771e0:  jmp    75c9c <__vfprintf_internal+0xc6c>
         : 2598  __vfprintf_internal():
         : 2599  ./stdio-common/vfprintf-internal.c:1533
    0.00 :   771e5:  xor    %edx,%edx
    0.00 :   771e7:  xor    %ecx,%ecx
    0.00 :   771e9:  jmp    7541b <__vfprintf_internal+0x3eb>
         : 2603  ./stdio-common/vfprintf-internal.c:1442
    0.00 :   771ee:  mov    %ecx,%esi
    0.00 :   771f0:  add    $0x8,%ecx
    0.00 :   771f3:  add    0x10(%rbx),%rsi
    0.00 :   771f7:  mov    %ecx,(%rbx)
    0.00 :   771f9:  jmp    770bd <__vfprintf_internal+0x208d>
    0.00 :   771fe:  mov    %r8d,0x38(%rsp)
         : 2610  ./stdio-common/vfprintf-internal.c:1516 (discriminator 104)
    0.00 :   77203:  mov    $0x2d,%esi
    0.00 :   77208:  mov    %r9,0x28(%rsp)
    0.00 :   7720d:  mov    %r11,0x10(%rsp)
         : 2614  ./stdio-common/vfprintf-internal.c:1516 (discriminator 124)
    0.00 :   77212:  mov    %rbp,%rdi
    0.00 :   77215:  call   8d800 <__overflow>
    0.00 :   7721a:  mov    0x10(%rsp),%r11
    0.00 :   7721f:  mov    0x28(%rsp),%r9
    0.00 :   77224:  cmp    $0xffffffff,%eax
    0.00 :   77227:  mov    0x38(%rsp),%r8d
    0.00 :   7722c:  jne    75bf1 <__vfprintf_internal+0xbc1>
    0.00 :   77232:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   77237:  nopw   0x0(%rax,%rax,1)
         : 2624  ./stdio-common/vfprintf-internal.c:1363
    0.00 :   77240:  movq   $0x0,0x80(%rsp)
    0.00 :   7724c:  jmp    75d03 <__vfprintf_internal+0xcd3>
    0.00 :   77251:  mov    %rax,0x10(%rsp)
         : 2628  IO_validate_vtable():
         : 2629  ./stdio-common/../libio/libioP.h:946
    0.00 :   77256:  call   89ef0 <_IO_vtable_check>
    0.00 :   7725b:  mov    0x10(%rsp),%rax
    0.00 :   77260:  jmp    75674 <__vfprintf_internal+0x644>
         : 2633  __vfprintf_internal():
         : 2634  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   77265:  mov    0x8(%rsi),%rdx
    0.00 :   77269:  lea    0x8(%rdx),%rax
    0.00 :   7726d:  mov    %rax,0x8(%rsi)
    0.00 :   77271:  jmp    76acc <__vfprintf_internal+0x1a9c>
         : 2639  ./stdio-common/vfprintf-internal.c:1516 (discriminator 240)
    0.00 :   77276:  mov    %r12w,(%rax)
    0.00 :   7727a:  jmp    75f80 <__vfprintf_internal+0xf50>
         : 2642  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   7727f:  cmp    $0x2f,%eax
    0.00 :   77282:  ja     773f0 <__vfprintf_internal+0x23c0>
    0.00 :   77288:  mov    %eax,%edx
    0.00 :   7728a:  add    $0x8,%eax
    0.00 :   7728d:  add    0x10(%rsi),%rdx
    0.00 :   77291:  mov    %eax,(%rsi)
    0.00 :   77293:  movswq (%rdx),%r10
    0.00 :   77297:  jmp    76ad0 <__vfprintf_internal+0x1aa0>
    0.00 :   7729c:  mov    %rax,0x10(%rsp)
         : 2652  IO_validate_vtable():
         : 2653  ./stdio-common/../libio/libioP.h:946
    0.00 :   772a1:  call   89ef0 <_IO_vtable_check>
    0.00 :   772a6:  mov    0x10(%rsp),%rax
    0.00 :   772ab:  jmp    75919 <__vfprintf_internal+0x8e9>
         : 2657  read_int():
         : 2658  ./stdio-common/printf-parse.h:78
    0.00 :   772b0:  movzbl 0x1(%rsi),%esi
    0.00 :   772b4:  add    $0x3,%rbx
    0.00 :   772b8:  lea    -0x30(%rsi),%r13d
    0.00 :   772bc:  mov    %esi,%edi
    0.00 :   772be:  cmp    $0x9,%r13d
    0.00 :   772c2:  ja     77344 <__vfprintf_internal+0x2314>
    0.00 :   772c8:  movzbl 0x1(%rbx),%esi
    0.00 :   772cc:  add    $0x1,%rbx
    0.00 :   772d0:  mov    %esi,%edi
    0.00 :   772d2:  sub    $0x30,%esi
         : 2669  ./stdio-common/printf-parse.h:81
    0.00 :   772d5:  cmp    $0xccccccc,%ecx
    0.00 :   772db:  jg     77300 <__vfprintf_internal+0x22d0>
         : 2672  ./stdio-common/printf-parse.h:87
    0.00 :   772dd:  lea    (%rcx,%rcx,4),%ecx
         : 2674  ./stdio-common/printf-parse.h:88
    0.00 :   772e0:  mov    %r9d,%r14d
         : 2676  ./stdio-common/printf-parse.h:87
    0.00 :   772e3:  add    %ecx,%ecx
         : 2678  ./stdio-common/printf-parse.h:88
    0.00 :   772e5:  sub    %r13d,%r14d
    0.00 :   772e8:  cmp    %r14d,%ecx
    0.00 :   772eb:  jg     77300 <__vfprintf_internal+0x22d0>
         : 2682  ./stdio-common/printf-parse.h:91
    0.00 :   772ed:  add    %r13d,%ecx
         : 2684  ./stdio-common/printf-parse.h:78
    0.00 :   772f0:  cmp    $0x9,%esi
    0.00 :   772f3:  ja     77344 <__vfprintf_internal+0x2314>
    0.00 :   772f5:  mov    %esi,%r13d
    0.00 :   772f8:  jmp    772c8 <__vfprintf_internal+0x2298>
    0.00 :   772fa:  nopw   0x0(%rax,%rax,1)
    0.00 :   77300:  cmp    $0x9,%esi
    0.00 :   77303:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   77309:  movzbl 0x1(%rbx),%eax
    0.00 :   7730d:  sub    $0x30,%eax
    0.00 :   77310:  cmp    $0x9,%eax
    0.00 :   77313:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   77319:  movzbl 0x2(%rbx),%eax
    0.00 :   7731d:  sub    $0x30,%eax
    0.00 :   77320:  cmp    $0x9,%eax
    0.00 :   77323:  ja     75860 <__vfprintf_internal+0x830>
    0.00 :   77329:  add    $0x3,%rbx
    0.00 :   7732d:  nopl   (%rax)
    0.00 :   77330:  movzbl (%rbx),%eax
    0.00 :   77333:  add    $0x1,%rbx
    0.00 :   77337:  sub    $0x30,%eax
    0.00 :   7733a:  cmp    $0x9,%eax
    0.00 :   7733d:  jbe    77330 <__vfprintf_internal+0x2300>
    0.00 :   7733f:  jmp    75860 <__vfprintf_internal+0x830>
         : 2708  __vfprintf_internal():
         : 2709  ./stdio-common/vfprintf-internal.c:1438 (discriminator 1)
    0.00 :   77344:  test   %ecx,%ecx
    0.00 :   77346:  je     770a1 <__vfprintf_internal+0x2071>
    0.00 :   7734c:  cmp    $0x24,%dil
    0.00 :   77350:  jne    770a1 <__vfprintf_internal+0x2071>
    0.00 :   77356:  jmp    76a88 <__vfprintf_internal+0x1a58>
    0.00 :   7735b:  nopl   0x0(%rax,%rax,1)
         : 2716  ./stdio-common/vfprintf-internal.c:1516 (discriminator 1)
    0.00 :   77360:  mov    $0x25,%esi
    0.00 :   77365:  mov    %rbp,%rdi
    0.00 :   77368:  call   8d800 <__overflow>
    0.00 :   7736d:  cmp    $0xffffffff,%eax
    0.00 :   77370:  jne    75f6d <__vfprintf_internal+0xf3d>
    0.00 :   77376:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   7737b:  nopl   0x0(%rax,%rax,1)
         : 2724  ./stdio-common/vfprintf-internal.c:1222 (discriminator 1)
    0.00 :   77380:  mov    0x1a2a89(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
    0.00 :   77387:  or     $0x20,%ebx
    0.00 :   7738a:  mov    $0xffffffff,%r12d
    0.00 :   77390:  mov    %ebx,0x0(%rbp)
    0.00 :   77393:  movl   $0x9,%fs:(%rax)
    0.00 :   7739a:  jmp    75354 <__vfprintf_internal+0x324>
    0.00 :   7739f:  mov    %r8d,0x38(%rsp)
         : 2732  ./stdio-common/vfprintf-internal.c:1516 (discriminator 114)
    0.00 :   773a4:  mov    $0x2b,%esi
    0.00 :   773a9:  mov    %r9,0x28(%rsp)
    0.00 :   773ae:  mov    %r11,0x10(%rsp)
    0.00 :   773b3:  jmp    77212 <__vfprintf_internal+0x21e2>
    0.00 :   773b8:  mov    %r9,0x40(%rsp)
         : 2738  ./stdio-common/vfprintf-internal.c:1516 (discriminator 169)
    0.00 :   773bd:  mov    $0x2b,%esi
    0.00 :   773c2:  mov    %rdx,0x38(%rsp)
    0.00 :   773c7:  mov    %r11,0x28(%rsp)
    0.00 :   773cc:  jmp    76704 <__vfprintf_internal+0x16d4>
         : 2743  ./stdio-common/vfprintf-internal.c:1517 (discriminator 8)
    0.00 :   773d1:  movzbl %dl,%esi
    0.00 :   773d4:  mov    %rbp,%rdi
    0.00 :   773d7:  call   8d800 <__overflow>
    0.00 :   773dc:  cmp    $0xffffffff,%eax
    0.00 :   773df:  jne    757f9 <__vfprintf_internal+0x7c9>
    0.00 :   773e5:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   773ea:  nopw   0x0(%rax,%rax,1)
         : 2751  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   773f0:  mov    0x8(%rsi),%rdx
    0.00 :   773f4:  lea    0x8(%rdx),%rax
    0.00 :   773f8:  mov    %rax,0x8(%rsi)
    0.00 :   773fc:  jmp    77293 <__vfprintf_internal+0x2263>
    0.00 :   77401:  mov    0x8(%rsi),%rdx
    0.00 :   77405:  lea    0x8(%rdx),%rax
    0.00 :   77409:  mov    %rax,0x8(%rsi)
    0.00 :   7740d:  jmp    76dd4 <__vfprintf_internal+0x1da4>
         : 2760  ./stdio-common/vfprintf-internal.c:1516 (discriminator 145)
    0.00 :   77412:  movzbl %r13b,%esi
    0.00 :   77416:  mov    %rbp,%rdi
    0.00 :   77419:  mov    %r8d,0x28(%rsp)
    0.00 :   7741e:  mov    %r9,0x10(%rsp)
    0.00 :   77423:  call   8d800 <__overflow>
    0.00 :   77428:  mov    0x10(%rsp),%r9
    0.00 :   7742d:  mov    0x28(%rsp),%r8d
    0.00 :   77432:  cmp    $0xffffffff,%eax
    0.00 :   77435:  jne    75c5d <__vfprintf_internal+0xc2d>
    0.00 :   7743b:  jmp    76728 <__vfprintf_internal+0x16f8>
         : 2771  ./stdio-common/vfprintf-internal.c:1222 (discriminator 3)
    0.00 :   77440:  mov    0x1a29c9(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
    0.00 :   77447:  mov    $0xffffffff,%r12d
    0.00 :   7744d:  movl   $0x16,%fs:(%rax)
    0.00 :   77454:  jmp    75354 <__vfprintf_internal+0x324>
         : 2776  IO_validate_vtable():
         : 2777  ./stdio-common/../libio/libioP.h:946
    0.00 :   77459:  call   89ef0 <_IO_vtable_check>
    0.00 :   7745e:  jmp    76fff <__vfprintf_internal+0x1fcf>
    0.00 :   77463:  mov    %r9,0x40(%rsp)
         : 2781  __vfprintf_internal():
         : 2782  ./stdio-common/vfprintf-internal.c:1516 (discriminator 179)
    0.00 :   77468:  mov    $0x20,%esi
    0.00 :   7746d:  mov    %rdx,0x38(%rsp)
    0.00 :   77472:  mov    %r11,0x28(%rsp)
    0.00 :   77477:  jmp    76704 <__vfprintf_internal+0x16d4>
    0.00 :   7747c:  mov    %r8d,0x38(%rsp)
         : 2788  ./stdio-common/vfprintf-internal.c:1516 (discriminator 124)
    0.00 :   77481:  mov    $0x20,%esi
    0.00 :   77486:  mov    %r9,0x28(%rsp)
    0.00 :   7748b:  mov    %r11,0x10(%rsp)
    0.00 :   77490:  jmp    77212 <__vfprintf_internal+0x21e2>
         : 2793  ./stdio-common/vfprintf-internal.c:1516 (discriminator 200)
    0.00 :   77495:  movzbl %r13b,%esi
    0.00 :   77499:  mov    %rbp,%rdi
    0.00 :   7749c:  mov    %r9,0x38(%rsp)
    0.00 :   774a1:  mov    %rdx,0x28(%rsp)
    0.00 :   774a6:  call   8d800 <__overflow>
    0.00 :   774ab:  mov    0x28(%rsp),%rdx
    0.00 :   774b0:  mov    0x38(%rsp),%r9
    0.00 :   774b5:  cmp    $0xffffffff,%eax
    0.00 :   774b8:  jne    769b2 <__vfprintf_internal+0x1982>
    0.00 :   774be:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   774c3:  nopl   0x0(%rax,%rax,1)
         : 2805  ./stdio-common/vfprintf-internal.c:1516 (discriminator 193)
    0.00 :   774c8:  mov    $0x30,%esi
    0.00 :   774cd:  mov    %rbp,%rdi
    0.00 :   774d0:  mov    %r9,0x38(%rsp)
    0.00 :   774d5:  mov    %rdx,0x28(%rsp)
    0.00 :   774da:  call   8d800 <__overflow>
    0.00 :   774df:  mov    0x28(%rsp),%rdx
    0.00 :   774e4:  mov    0x38(%rsp),%r9
    0.00 :   774e9:  cmp    $0xffffffff,%eax
    0.00 :   774ec:  jne    7698c <__vfprintf_internal+0x195c>
    0.00 :   774f2:  jmp    76728 <__vfprintf_internal+0x16f8>
    0.00 :   774f7:  nopw   0x0(%rax,%rax,1)
         : 2817  done_add_func():
         : 2818  ./stdio-common/vfprintf-internal.c:127
    0.00 :   77500:  mov    $0x1,%edx
    0.00 :   77505:  jmp    75fea <__vfprintf_internal+0xfba>
         : 2821  __vfprintf_internal():
         : 2822  ./stdio-common/vfprintf-internal.c:1612
    0.00 :   7750a:  call   136550 <__stack_chk_fail>
         : 2824  done_add_func():
         : 2825  ./stdio-common/vfprintf-internal.c:127
    0.00 :   7750f:  mov    $0x1,%edx
    0.00 :   77514:  jmp    76915 <__vfprintf_internal+0x18e5>
    0.00 :   77519:  mov    $0x1,%edx
    0.00 :   7751e:  jmp    76537 <__vfprintf_internal+0x1507>
    0.00 :   77523:  mov    $0x1,%eax
    0.00 :   77528:  jmp    766d3 <__vfprintf_internal+0x16a3>
    0.00 :   7752d:  mov    $0x1,%eax
    0.00 :   77532:  jmp    767b6 <__vfprintf_internal+0x1786>
    0.00 :   77537:  mov    $0x1,%edx
    0.00 :   7753c:  jmp    75945 <__vfprintf_internal+0x915>
         : 2836  __vfprintf_internal():
         : 2837  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   77541:  xor    %r8d,%r8d
    0.00 :   77544:  jmp    75c02 <__vfprintf_internal+0xbd2>
         : 2840  read_int():
         : 2841  ./stdio-common/printf-parse.h:78
    0.00 :   77549:  mov    %esi,0x10(%rsp)
    0.00 :   7754d:  movzbl 0x70(%rsp),%r13d
    0.00 :   77553:  cmp    $0x9,%edi
    0.00 :   77556:  jbe    7640d <__vfprintf_internal+0x13dd>
    0.00 :   7755c:  jmp    7642d <__vfprintf_internal+0x13fd>
         : 2847  pad_func():
         : 2848  ./stdio-common/vfprintf-internal.c:192
    0.00 :   77561:  test   %r8d,%r8d
    0.00 :   77564:  jg     76674 <__vfprintf_internal+0x1644>
         : 2851  __vfprintf_internal():
         : 2852  ./stdio-common/vfprintf-internal.c:1516
    0.00 :   7756a:  xor    %r8d,%r8d
    0.00 :   7756d:  jmp    75bcf <__vfprintf_internal+0xb9f>
         : 2855  done_add_func():
         : 2856  ./stdio-common/vfprintf-internal.c:127
    0.00 :   77572:  mov    $0x1,%eax
    0.00 :   77577:  jmp    75851 <__vfprintf_internal+0x821>
    0.00 :   7757c:  mov    $0x1,%edx
    0.00 :   77581:  jmp    756a0 <__vfprintf_internal+0x670>
    0.00 :   77586:  mov    $0x1,%eax
    0.00 :   7758b:  jmp    764da <__vfprintf_internal+0x14aa>
         : 2863  __vfprintf_internal():
         : 2864  ./stdio-common/vfprintf-internal.c:1259
    0.00 :   77590:  movb   $0x1,0xa6(%rsp)
    0.00 :   77598:  jmp    75100 <__vfprintf_internal+0xd0>
 Percent |	Source code & Disassembly of ld-linux-x86-64.so.2 for cpu-clock:pppH (1 samples, percent: local period)
-----------------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    000000000000b3f0 <do_lookup_x>:
         : 6    do_lookup_x():
         : 7    ./elf/dl-lookup.c:363
    0.00 :   b3f0:   push   %r15
    0.00 :   b3f2:   mov    %rdi,%r11
    0.00 :   b3f5:   push   %r14
    0.00 :   b3f7:   push   %r13
    0.00 :   b3f9:   push   %r12
    0.00 :   b3fb:   push   %rbp
    0.00 :   b3fc:   push   %rbx
    0.00 :   b3fd:   sub    $0x98,%rsp
         : 16   ./elf/dl-lookup.c:364
    0.00 :   b404:   mov    0x8(%r9),%r12d
         : 18   ./elf/dl-lookup.c:363
    0.00 :   b408:   mov    %r8,0x48(%rsp)
    0.00 :   b40d:   mov    0xd0(%rsp),%rbp
    0.00 :   b415:   mov    %rdx,0x50(%rsp)
    0.00 :   b41a:   mov    0xf0(%rsp),%r8d
    0.00 :   b422:   mov    %rcx,0x40(%rsp)
         : 24   ./elf/dl-lookup.c:411
    0.00 :   b427:   mov    %rsi,%rdi
         : 26   ./elf/dl-lookup.c:381
    0.00 :   b42a:   mov    %r8d,%eax
    0.00 :   b42d:   mov    %r11,0x38(%rsp)
         : 29   ./elf/dl-lookup.c:370
    0.00 :   b432:   mov    (%r9),%r14
         : 31   ./elf/dl-lookup.c:411
    0.00 :   b435:   shr    $0x6,%rdi
         : 33   ./elf/dl-lookup.c:381
    0.00 :   b439:   and    $0x2,%eax
    0.00 :   b43c:   mov    %rsi,0x8(%rsp)
    0.00 :   b441:   mov    0xe8(%rsp),%r11
         : 37   ./elf/dl-lookup.c:411
    0.00 :   b449:   mov    %rdi,0x18(%rsp)
         : 39   _dl_check_protected_symbol():
         : 40   ./elf/../sysdeps/generic/dl-protected.h:44
    0.00 :   b44e:   mov    %r8d,%edi
    0.00 :   b451:   mov    %eax,%r15d
    0.00 :   b454:   and    $0x1,%edi
         : 44   do_lookup_x():
         : 45   ./elf/dl-lookup.c:381
    0.00 :   b457:   mov    %eax,0x5c(%rsp)
         : 47   _dl_check_protected_symbol():
         : 48   ./elf/../sysdeps/generic/dl-protected.h:44
    0.00 :   b45b:   mov    %edi,0x60(%rsp)
    0.00 :   b45f:   lea    0x84(%rsp),%rdi
    0.00 :   b467:   mov    %rdi,0x10(%rsp)
    0.00 :   b46c:   jmp    b518 <do_lookup_x+0x128>
    0.00 :   b471:   nopl   0x0(%rax)
         : 54   do_lookup_x():
         : 55   ./elf/dl-lookup.c:395
    0.00 :   b478:   mov    0x2f4(%rbx),%edx
    0.00 :   b47e:   test   %edx,%edx
    0.00 :   b480:   je     b50b <do_lookup_x+0x11b>
         : 59   ./elf/dl-lookup.c:399
    0.00 :   b486:   movl   $0x0,0x84(%rsp)
         : 61   ./elf/dl-lookup.c:403
    0.00 :   b491:   mov    0x70(%rbx),%rax
         : 63   ./elf/dl-lookup.c:400
    0.00 :   b495:   movq   $0x0,0x88(%rsp)
         : 65   ./elf/dl-lookup.c:403
    0.00 :   b4a1:   mov    0x8(%rax),%r10
    0.00 :   b4a5:   xor    %eax,%eax
    0.00 :   b4a7:   testb  $0x20,0x31e(%rbx)
    0.00 :   b4ae:   je     b4b6 <do_lookup_x+0xc6>
         : 70   ./elf/dl-lookup.c:403 (discriminator 2)
    0.00 :   b4b0:   mov    (%rbx),%rax
    0.00 :   b4b3:   add    %rax,%r10
         : 73   ./elf/dl-lookup.c:404 (discriminator 5)
    0.00 :   b4b6:   mov    0x68(%rbx),%rcx
    0.00 :   b4ba:   add    0x8(%rcx),%rax
    0.00 :   b4be:   mov    %rax,(%rsp)
         : 77   ./elf/dl-lookup.c:407 (discriminator 5)
    0.00 :   b4c2:   mov    0x300(%rbx),%rax
         : 79   ./elf/dl-lookup.c:408 (discriminator 5)
    0.00 :   b4c9:   test   %rax,%rax
    0.00 :   b4cc:   je     b5a0 <do_lookup_x+0x1b0>
         : 82   ./elf/dl-lookup.c:415
    0.00 :   b4d2:   mov    0x8(%rsp),%rdi
         : 84   ./elf/dl-lookup.c:412
    0.00 :   b4d7:   mov    0x18(%rsp),%ecx
    0.00 :   b4db:   and    0x2f8(%rbx),%ecx
         : 87   ./elf/dl-lookup.c:410
    0.00 :   b4e1:   mov    (%rax,%rcx,8),%rax
         : 89   ./elf/dl-lookup.c:415
    0.00 :   b4e5:   mov    0x2fc(%rbx),%ecx
    0.00 :   b4eb:   mov    %rdi,%rsi
    0.00 :   b4ee:   shr    %cl,%rsi
    0.00 :   b4f1:   mov    %rsi,%rcx
         : 94   ./elf/dl-lookup.c:418
    0.00 :   b4f4:   mov    %rax,%rsi
    0.00 :   b4f7:   shr    %cl,%rsi
    0.00 :   b4fa:   mov    %edi,%ecx
    0.00 :   b4fc:   shr    %cl,%rax
    0.00 :   b4ff:   and    %rax,%rsi
    0.00 :   b502:   and    $0x1,%esi
    0.00 :   b505:   jne    b720 <do_lookup_x+0x330>
         : 102  ./elf/dl-lookup.c:570
    0.00 :   b50b:   add    $0x1,%rbp
    0.00 :   b50f:   cmp    %rbp,%r12
    0.00 :   b512:   jbe    b800 <do_lookup_x+0x410>
         : 106  ./elf/dl-lookup.c:374
    0.00 :   b518:   mov    (%r14,%rbp,8),%rax
    0.00 :   b51c:   mov    0x28(%rax),%rbx
         : 109  ./elf/dl-lookup.c:377
    0.00 :   b520:   cmp    %r11,%rbx
    0.00 :   b523:   je     b50b <do_lookup_x+0x11b>
         : 112  ./elf/dl-lookup.c:381
    0.00 :   b525:   test   %r15d,%r15d
    0.00 :   b528:   je     b533 <do_lookup_x+0x143>
         : 115  ./elf/dl-lookup.c:381 (discriminator 1)
    0.00 :   b52a:   testb  $0x3,0x31c(%rbx)
    0.00 :   b531:   je     b50b <do_lookup_x+0x11b>
         : 118  ./elf/dl-lookup.c:385
    0.00 :   b533:   testb  $0x2,0x31e(%rbx)
    0.00 :   b53a:   jne    b50b <do_lookup_x+0x11b>
         : 121  ./elf/dl-lookup.c:389
    0.00 :   b53c:   testb  $0x8,0x2e59d(%rip)        # 39ae0 <_rtld_global_ro>
    0.00 :   b543:   je     b478 <do_lookup_x+0x88>
         : 124  ./elf/dl-lookup.c:391
    0.00 :   b549:   mov    0x8(%rbx),%rdx
         : 126  ./elf/dl-lookup.c:392
    0.00 :   b54d:   mov    0x30(%rbx),%rcx
         : 128  ./elf/dl-lookup.c:390
    0.00 :   b551:   cmpb   $0x0,(%rdx)
    0.00 :   b554:   je     b580 <do_lookup_x+0x190>
         : 131  ./elf/dl-lookup.c:390 (discriminator 2)
    0.00 :   b556:   mov    0x38(%rsp),%rsi
    0.00 :   b55b:   lea    0x25396(%rip),%rdi        # 308f8 <__PRETTY_FUNCTION__.10+0x60>
    0.00 :   b562:   xor    %eax,%eax
    0.00 :   b564:   mov    %r11,0xe8(%rsp)
    0.00 :   b56c:   call   fbc0 <_dl_debug_printf>
    0.00 :   b571:   mov    0xe8(%rsp),%r11
    0.00 :   b579:   jmp    b478 <do_lookup_x+0x88>
    0.00 :   b57e:   xchg   %ax,%ax
         : 140  ./elf/dl-lookup.c:391
    0.00 :   b580:   mov    0x2e539(%rip),%rax        # 39ac0 <_dl_argv>
    0.00 :   b587:   mov    (%rax),%rdx
    0.00 :   b58a:   lea    0x22592(%rip),%rax        # 2db23 <_sys_errnameidx+0x223>
    0.00 :   b591:   test   %rdx,%rdx
    0.00 :   b594:   cmove  %rax,%rdx
    0.00 :   b598:   jmp    b556 <do_lookup_x+0x166>
    0.00 :   b59a:   nopw   0x0(%rax,%rax,1)
         : 148  ./elf/dl-lookup.c:446
    0.00 :   b5a0:   mov    0x50(%rsp),%rax
    0.00 :   b5a5:   mov    $0xffffffff,%edi
         : 151  ./elf/dl-lookup.c:422
    0.00 :   b5aa:   mov    %edx,%esi
         : 153  ./elf/dl-lookup.c:446
    0.00 :   b5ac:   mov    (%rax),%rax
    0.00 :   b5af:   cmp    %rdi,%rax
    0.00 :   b5b2:   je     bbf0 <do_lookup_x+0x800>
         : 157  ./elf/dl-lookup.c:452
    0.00 :   b5b8:   xor    %edx,%edx
    0.00 :   b5ba:   div    %rsi
    0.00 :   b5bd:   lea    0x0(,%rdx,4),%rax
    0.00 :   b5c5:   mov    0x310(%rbx),%rdx
    0.00 :   b5cc:   mov    (%rdx,%rax,1),%eax
         : 163  ./elf/dl-lookup.c:453
    0.00 :   b5cf:   test   %eax,%eax
    0.00 :   b5d1:   je     b50b <do_lookup_x+0x11b>
    0.00 :   b5d7:   lea    0x88(%rsp),%rdi
    0.00 :   b5df:   mov    %r15d,0x68(%rsp)
    0.00 :   b5e4:   mov    0x40(%rsp),%r13
    0.00 :   b5e9:   mov    %r14,0x70(%rsp)
    0.00 :   b5ee:   mov    0xe0(%rsp),%r15d
    0.00 :   b5f6:   mov    %rbp,0xd0(%rsp)
    0.00 :   b5fe:   mov    0xd8(%rsp),%r14
    0.00 :   b606:   mov    %rbx,%rbp
    0.00 :   b609:   mov    %r12,0x78(%rsp)
    0.00 :   b60e:   mov    0x38(%rsp),%r12
    0.00 :   b613:   mov    %rdi,0x20(%rsp)
    0.00 :   b618:   mov    %r10,0x30(%rsp)
    0.00 :   b61d:   mov    %r11,0xe8(%rsp)
    0.00 :   b625:   jmp    b642 <do_lookup_x+0x252>
    0.00 :   b627:   nopw   0x0(%rax,%rax,1)
         : 181  ./elf/dl-lookup.c:454
    0.00 :   b630:   mov    0x308(%rbp),%rax
    0.00 :   b637:   mov    (%rax,%rbx,4),%eax
         : 184  ./elf/dl-lookup.c:453
    0.00 :   b63a:   test   %eax,%eax
    0.00 :   b63c:   je     ba30 <do_lookup_x+0x640>
         : 187  ./elf/dl-lookup.c:456
    0.00 :   b642:   sub    $0x8,%rsp
         : 189  ./elf/dl-lookup.c:457
    0.00 :   b646:   mov    %eax,%ebx
         : 191  ./elf/dl-lookup.c:456
    0.00 :   b648:   mov    %r15d,%ecx
    0.00 :   b64b:   mov    %r13,%rsi
    0.00 :   b64e:   push   0x18(%rsp)
         : 195  ./elf/dl-lookup.c:457
    0.00 :   b652:   lea    (%rbx,%rbx,2),%rdx
         : 197  ./elf/dl-lookup.c:456
    0.00 :   b656:   mov    %r12,%rdi
    0.00 :   b659:   push   0x30(%rsp)
    0.00 :   b65d:   push   %rbp
    0.00 :   b65e:   push   0x20(%rsp)
    0.00 :   b662:   push   %rax
    0.00 :   b663:   mov    0x60(%rsp),%rax
    0.00 :   b668:   mov    0x120(%rsp),%r8d
    0.00 :   b670:   lea    (%rax,%rdx,8),%r9
    0.00 :   b674:   mov    %r14,%rdx
    0.00 :   b677:   call   b240 <check_match>
         : 208  ./elf/dl-lookup.c:460
    0.00 :   b67c:   add    $0x30,%rsp
    0.00 :   b680:   test   %rax,%rax
    0.00 :   b683:   je     b630 <do_lookup_x+0x240>
    0.00 :   b685:   mov    %rbp,%rbx
    0.00 :   b688:   mov    0x68(%rsp),%r15d
    0.00 :   b68d:   mov    0x30(%rsp),%r10
    0.00 :   b692:   mov    %rax,%r8
    0.00 :   b695:   mov    0x70(%rsp),%r14
    0.00 :   b69a:   mov    0xd0(%rsp),%rbp
    0.00 :   b6a2:   mov    0xe8(%rsp),%r11
    0.00 :   b6aa:   mov    0x78(%rsp),%r12
    0.00 :   b6af:   nop
         : 221  ./elf/dl-lookup.c:477
    0.00 :   b6b0:   cmpq   $0x0,0xf8(%rsp)
    0.00 :   b6b9:   je     b818 <do_lookup_x+0x428>
         : 224  dl_symbol_visibility_binds_local_p():
         : 225  ./elf/../sysdeps/generic/ldsodefs.h:137
    0.00 :   b6bf:   movzbl 0x5(%r8),%eax
    0.00 :   b6c4:   mov    %eax,%edx
         : 228  ./elf/../sysdeps/generic/ldsodefs.h:138
    0.00 :   b6c6:   and    $0x3,%eax
    0.00 :   b6c9:   sub    $0x1,%eax
    0.00 :   b6cc:   and    $0x3,%edx
         : 232  do_lookup_x():
         : 233  ./elf/dl-lookup.c:528
    0.00 :   b6cf:   cmp    $0x1,%eax
    0.00 :   b6d2:   jbe    b50b <do_lookup_x+0x11b>
         : 236  _dl_check_protected_symbol():
         : 237  ./elf/../sysdeps/generic/dl-protected.h:29
    0.00 :   b6d8:   cmp    $0x3,%dl
    0.00 :   b6db:   je     b9b0 <do_lookup_x+0x5c0>
         : 240  do_lookup_x():
         : 241  ./elf/dl-lookup.c:535
    0.00 :   b6e1:   movzbl 0x4(%r8),%eax
    0.00 :   b6e6:   shr    $0x4,%al
    0.00 :   b6e9:   cmp    $0x2,%al
    0.00 :   b6eb:   je     b853 <do_lookup_x+0x463>
    0.00 :   b6f1:   cmp    $0xa,%al
    0.00 :   b6f3:   je     b880 <do_lookup_x+0x490>
    0.00 :   b6f9:   cmp    $0x1,%al
    0.00 :   b6fb:   jne    b50b <do_lookup_x+0x11b>
         : 250  ./elf/dl-lookup.c:551
    0.00 :   b701:   mov    0x48(%rsp),%rax
    0.00 :   b706:   mov    %r8,(%rax)
         : 253  ./elf/dl-lookup.c:552
    0.00 :   b709:   mov    %rbx,0x8(%rax)
         : 255  ./elf/dl-lookup.c:553 (discriminator 1)
    0.00 :   b70d:   mov    $0x1,%eax
    0.00 :   b712:   jmp    b802 <do_lookup_x+0x412>
    0.00 :   b717:   nopw   0x0(%rax,%rax,1)
         : 259  ./elf/dl-lookup.c:422
    0.00 :   b720:   mov    %edx,%ecx
    0.00 :   b722:   mov    %rdi,%rax
    0.00 :   b725:   xor    %edx,%edx
    0.00 :   b727:   div    %rcx
         : 264  ./elf/dl-lookup.c:421
    0.00 :   b72a:   mov    0x308(%rbx),%rax
    0.00 :   b731:   mov    (%rax,%rdx,4),%eax
         : 267  ./elf/dl-lookup.c:423
    0.00 :   b734:   test   %eax,%eax
    0.00 :   b736:   je     b50b <do_lookup_x+0x11b>
         : 270  ./elf/dl-lookup.c:425
    0.00 :   b73c:   mov    0x310(%rbx),%rdx
    0.00 :   b743:   mov    %r15d,0x30(%rsp)
    0.00 :   b748:   mov    %r14,0x20(%rsp)
    0.00 :   b74d:   mov    0xe0(%rsp),%r15d
    0.00 :   b755:   mov    %rbp,0xd0(%rsp)
    0.00 :   b75d:   lea    (%rdx,%rax,4),%r13
    0.00 :   b761:   mov    %r10,%rbp
    0.00 :   b764:   mov    0xd8(%rsp),%r14
    0.00 :   b76c:   mov    %r12,0x68(%rsp)
    0.00 :   b771:   mov    %rdi,%r12
    0.00 :   b774:   mov    %r11,0xe8(%rsp)
    0.00 :   b77c:   jmp    b78d <do_lookup_x+0x39d>
    0.00 :   b77e:   xchg   %ax,%ax
         : 284  ./elf/dl-lookup.c:438
    0.00 :   b780:   add    $0x4,%r13
    0.00 :   b784:   and    $0x1,%edx
    0.00 :   b787:   jne    bd70 <do_lookup_x+0x980>
         : 288  ./elf/dl-lookup.c:428
    0.00 :   b78d:   mov    0x0(%r13),%eax
    0.00 :   b791:   mov    %rax,%rdx
    0.00 :   b794:   xor    %r12,%rax
    0.00 :   b797:   shr    %rax
    0.00 :   b79a:   jne    b780 <do_lookup_x+0x390>
         : 294  ./elf/dl-lookup.c:431
    0.00 :   b79c:   sub    $0x8,%rsp
         : 296  ./elf/dl-lookup.c:430
    0.00 :   b7a0:   mov    %r13,%rax
    0.00 :   b7a3:   sub    0x310(%rbx),%rax
         : 299  ./elf/dl-lookup.c:431
    0.00 :   b7aa:   push   0x18(%rsp)
         : 301  ./elf/dl-lookup.c:430
    0.00 :   b7ae:   sar    $0x2,%rax
         : 303  ./elf/dl-lookup.c:432
    0.00 :   b7b2:   mov    %eax,%edx
    0.00 :   b7b4:   lea    (%rdx,%rdx,2),%rdx
         : 306  ./elf/dl-lookup.c:431
    0.00 :   b7b8:   lea    0x98(%rsp),%rcx
    0.00 :   b7c0:   lea    0x0(%rbp,%rdx,8),%r9
    0.00 :   b7c5:   mov    %r14,%rdx
    0.00 :   b7c8:   push   %rcx
    0.00 :   b7c9:   mov    %r15d,%ecx
    0.00 :   b7cc:   push   %rbx
    0.00 :   b7cd:   push   0x20(%rsp)
    0.00 :   b7d1:   push   %rax
    0.00 :   b7d2:   mov    0x120(%rsp),%r8d
    0.00 :   b7da:   mov    0x70(%rsp),%rsi
    0.00 :   b7df:   mov    0x68(%rsp),%rdi
    0.00 :   b7e4:   call   b240 <check_match>
         : 319  ./elf/dl-lookup.c:435
    0.00 :   b7e9:   add    $0x30,%rsp
    0.00 :   b7ed:   test   %rax,%rax
    0.00 :   b7f0:   jne    bfd1 <do_lookup_x+0xbe1>
         : 323  ./elf/dl-lookup.c:438
    0.00 :   b7f6:   mov    0x0(%r13),%edx
    0.00 :   b7fa:   jmp    b780 <do_lookup_x+0x390>
    0.00 :   b7fc:   nopl   0x0(%rax)
         : 327  ./elf/dl-lookup.c:573
    0.00 :   b800:   xor    %eax,%eax
         : 329  ./elf/dl-lookup.c:574
  100.00 :   b802:   add    $0x98,%rsp
    0.00 :   b809:   pop    %rbx
    0.00 :   b80a:   pop    %rbp
    0.00 :   b80b:   pop    %r12
    0.00 :   b80d:   pop    %r13
    0.00 :   b80f:   pop    %r14
    0.00 :   b811:   pop    %r15
    0.00 :   b813:   ret
    0.00 :   b814:   nopl   0x0(%rax)
         : 339  ./elf/dl-lookup.c:480
    0.00 :   b818:   testb  $0x3,0x31c(%rbx)
    0.00 :   b81f:   jne    b82f <do_lookup_x+0x43f>
    0.00 :   b821:   cmpl   $0x4,0xf0(%rsp)
    0.00 :   b829:   je     bd97 <do_lookup_x+0x9a7>
         : 344  dl_symbol_visibility_binds_local_p():
         : 345  ./elf/../sysdeps/generic/ldsodefs.h:138
    0.00 :   b82f:   movzbl 0x5(%r8),%eax
    0.00 :   b834:   and    $0x3,%eax
    0.00 :   b837:   sub    $0x1,%eax
         : 349  do_lookup_x():
         : 350  ./elf/dl-lookup.c:528
    0.00 :   b83a:   cmp    $0x1,%eax
    0.00 :   b83d:   jbe    b50b <do_lookup_x+0x11b>
         : 353  ./elf/dl-lookup.c:535
    0.00 :   b843:   movzbl 0x4(%r8),%eax
    0.00 :   b848:   shr    $0x4,%al
    0.00 :   b84b:   cmp    $0x2,%al
    0.00 :   b84d:   jne    b6f1 <do_lookup_x+0x301>
         : 358  ./elf/dl-lookup.c:539
    0.00 :   b853:   mov    0x2e2db(%rip),%ecx        # 39b34 <_rtld_global_ro+0x54>
    0.00 :   b859:   test   %ecx,%ecx
    0.00 :   b85b:   je     b701 <do_lookup_x+0x311>
         : 362  ./elf/dl-lookup.c:541
    0.00 :   b861:   mov    0x48(%rsp),%rax
    0.00 :   b866:   cmpq   $0x0,(%rax)
    0.00 :   b86a:   jne    b50b <do_lookup_x+0x11b>
         : 366  ./elf/dl-lookup.c:543
    0.00 :   b870:   mov    %r8,(%rax)
         : 368  ./elf/dl-lookup.c:544
    0.00 :   b873:   mov    %rbx,0x8(%rax)
    0.00 :   b877:   jmp    b50b <do_lookup_x+0x11b>
    0.00 :   b87c:   nopl   0x0(%rax)
         : 372  do_lookup_unique():
         : 373  ./elf/dl-lookup.c:222
    0.00 :   b880:   mov    0x30(%rbx),%rax
    0.00 :   b884:   movq   %r8,%xmm2
    0.00 :   b889:   movq   %rbx,%xmm3
         : 377  ./elf/dl-lookup.c:224
    0.00 :   b88e:   lea    0x2e7ab(%rip),%r14        # 3a040 <_rtld_global>
    0.00 :   b895:   punpcklqdq %xmm3,%xmm2
    0.00 :   b899:   mov    0x8(%rsp),%r15
    0.00 :   b89e:   mov    %r8,0x8(%rsp)
    0.00 :   b8a3:   lea    (%rax,%rax,4),%rbp
         : 383  ./elf/dl-lookup.c:222
    0.00 :   b8a7:   mov    %rax,0x18(%rsp)
         : 385  ./elf/dl-lookup.c:224
    0.00 :   b8ac:   shl    $0x5,%rbp
    0.00 :   b8b0:   movaps %xmm2,0x20(%rsp)
    0.00 :   b8b5:   lea    0x28(%r14,%rbp,1),%rax
         : 389  ./elf/dl-lookup.c:226
    0.00 :   b8ba:   add    %r14,%rbp
         : 391  ./elf/dl-lookup.c:224
    0.00 :   b8bd:   mov    %rax,0x30(%rsp)
    0.00 :   b8c2:   mov    %rax,%rdi
    0.00 :   b8c5:   call   *0x2e1b5(%rip)        # 39a80 <___rtld_mutex_lock>
         : 395  ./elf/dl-lookup.c:226
    0.00 :   b8cb:   mov    0x50(%rbp),%rax
         : 397  ./elf/dl-lookup.c:227
    0.00 :   b8cf:   mov    0x58(%rbp),%r14
         : 399  ./elf/dl-lookup.c:228
    0.00 :   b8d3:   mov    0x8(%rsp),%rcx
    0.00 :   b8d8:   test   %rax,%rax
         : 402  ./elf/dl-lookup.c:226
    0.00 :   b8db:   mov    %rax,0x10(%rsp)
         : 404  ./elf/dl-lookup.c:228
    0.00 :   b8e0:   je     bcb2 <do_lookup_x+0x8c2>
         : 406  ./elf/dl-lookup.c:230
    0.00 :   b8e6:   mov    %r15,%rax
    0.00 :   b8e9:   xor    %edx,%edx
         : 409  ./elf/dl-lookup.c:231
    0.00 :   b8eb:   lea    -0x2(%r14),%rsi
         : 411  ./elf/dl-lookup.c:230
    0.00 :   b8ef:   mov    0x38(%rsp),%r11
    0.00 :   b8f4:   div    %r14
    0.00 :   b8f7:   mov    %rcx,0x60(%rsp)
    0.00 :   b8fc:   mov    %r11,0x8(%rsp)
    0.00 :   b901:   mov    %rbx,0x50(%rsp)
         : 417  ./elf/dl-lookup.c:231
    0.00 :   b906:   mov    %r15,%rax
         : 419  ./elf/dl-lookup.c:230
    0.00 :   b909:   mov    %rdx,%r12
         : 421  ./elf/dl-lookup.c:231
    0.00 :   b90c:   xor    %edx,%edx
    0.00 :   b90e:   div    %rsi
         : 424  ./elf/dl-lookup.c:230
    0.00 :   b911:   mov    %r12,0x68(%rsp)
    0.00 :   b916:   mov    %r12,%r13
    0.00 :   b919:   mov    %r15,%rax
    0.00 :   b91c:   mov    %r13,%r15
    0.00 :   b91f:   mov    %rax,%r13
         : 430  ./elf/dl-lookup.c:231
    0.00 :   b922:   lea    0x1(%rdx),%r8
    0.00 :   b926:   mov    %r8,%rdx
         : 433  ./elf/dl-lookup.c:230
    0.00 :   b929:   mov    %r8,%rbx
    0.00 :   b92c:   shl    $0x5,%rdx
    0.00 :   b930:   mov    %rdx,%r12
    0.00 :   b933:   mov    %r15,%rbp
    0.00 :   b936:   shl    $0x5,%rbp
    0.00 :   b93a:   add    0x10(%rsp),%rbp
    0.00 :   b93f:   jmp    b960 <do_lookup_x+0x570>
    0.00 :   b941:   nopl   0x0(%rax)
         : 442  ./elf/dl-lookup.c:254
    0.00 :   b948:   test   %rdi,%rdi
    0.00 :   b94b:   je     ba80 <do_lookup_x+0x690>
         : 445  ./elf/dl-lookup.c:257
    0.00 :   b951:   add    %rbx,%r15
         : 447  ./elf/dl-lookup.c:258
    0.00 :   b954:   add    %r12,%rbp
    0.00 :   b957:   cmp    %r15,%r14
    0.00 :   b95a:   jbe    bbe0 <do_lookup_x+0x7f0>
         : 451  ./elf/dl-lookup.c:234
    0.00 :   b960:   mov    0x0(%rbp),%eax
         : 453  ./elf/dl-lookup.c:235
    0.00 :   b963:   mov    0x8(%rbp),%rdi
         : 455  ./elf/dl-lookup.c:234
    0.00 :   b967:   cmp    %rax,%r13
    0.00 :   b96a:   jne    b948 <do_lookup_x+0x558>
         : 458  ./elf/dl-lookup.c:235
    0.00 :   b96c:   mov    0x8(%rsp),%rsi
    0.00 :   b971:   call   27220 <strcmp>
    0.00 :   b976:   test   %eax,%eax
    0.00 :   b978:   jne    b951 <do_lookup_x+0x561>
         : 463  ./elf/dl-lookup.c:237
    0.00 :   b97a:   mov    0x5c(%rsp),%edx
    0.00 :   b97e:   mov    0x50(%rsp),%rbx
    0.00 :   b983:   mov    0x60(%rsp),%rcx
    0.00 :   b988:   test   %edx,%edx
    0.00 :   b98a:   jne    b994 <do_lookup_x+0x5a4>
         : 469  ./elf/dl-lookup.c:247
    0.00 :   b98c:   mov    0x10(%rbp),%rcx
         : 471  ./elf/dl-lookup.c:248
    0.00 :   b990:   mov    0x18(%rbp),%rbx
    0.00 :   b994:   mov    0x48(%rsp),%rax
         : 474  ./elf/dl-lookup.c:250
    0.00 :   b999:   mov    0x30(%rsp),%rdi
    0.00 :   b99e:   mov    %rbx,0x8(%rax)
    0.00 :   b9a2:   mov    %rcx,(%rax)
    0.00 :   b9a5:   call   *0x2e0cd(%rip)        # 39a78 <___rtld_mutex_unlock>
         : 479  ./elf/dl-lookup.c:251
    0.00 :   b9ab:   jmp    b70d <do_lookup_x+0x31d>
         : 481  _dl_check_protected_symbol():
         : 482  ./elf/../sysdeps/generic/dl-protected.h:30
    0.00 :   b9b0:   mov    0xf8(%rsp),%rax
    0.00 :   b9b8:   testb  $0x3,0x31c(%rax)
    0.00 :   b9bf:   jne    b6e1 <do_lookup_x+0x2f1>
         : 486  ./elf/../sysdeps/generic/dl-protected.h:31
    0.00 :   b9c5:   testb  $0x1,0x32c(%rax)
    0.00 :   b9cc:   jne    b6e1 <do_lookup_x+0x2f1>
         : 489  ./elf/../sysdeps/generic/dl-protected.h:33
    0.00 :   b9d2:   testb  $0x1,0x32c(%rbx)
    0.00 :   b9d9:   je     b6e1 <do_lookup_x+0x2f1>
         : 492  ./elf/../sysdeps/generic/dl-protected.h:36
    0.00 :   b9df:   test   %r15d,%r15d
    0.00 :   b9e2:   jne    c095 <do_lookup_x+0xca5>
         : 495  ./elf/../sysdeps/generic/dl-protected.h:42
    0.00 :   b9e8:   mov    0x40(%rsp),%rax
    0.00 :   b9ed:   cmpq   $0x0,0x8(%rax)
    0.00 :   b9f2:   je     b6e1 <do_lookup_x+0x2f1>
         : 499  ./elf/../sysdeps/generic/dl-protected.h:43
    0.00 :   b9f8:   cmpw   $0x0,0x6(%rax)
    0.00 :   b9fd:   jne    b6e1 <do_lookup_x+0x2f1>
         : 502  ./elf/../sysdeps/generic/dl-protected.h:44
    0.00 :   ba03:   mov    0x60(%rsp),%esi
    0.00 :   ba07:   test   %esi,%esi
    0.00 :   ba09:   je     b6e1 <do_lookup_x+0x2f1>
         : 506  ./elf/../sysdeps/generic/dl-protected.h:49
    0.00 :   ba0f:   mov    0x38(%rsp),%r11
    0.00 :   ba14:   mov    0x8(%rbx),%rsi
    0.00 :   ba18:   lea    0x24f39(%rip),%rcx        # 30958 <__PRETTY_FUNCTION__.10+0xc0>
    0.00 :   ba1f:   xor    %edi,%edi
    0.00 :   ba21:   mov    %r11,%rdx
    0.00 :   ba24:   call   2070 <_dl_signal_error@plt>
    0.00 :   ba29:   nopl   0x0(%rax)
         : 514  do_lookup_x():
         : 515  ./elf/../sysdeps/generic/dl-protected.h:49
    0.00 :   ba30:   mov    %rbp,%rbx
    0.00 :   ba33:   mov    0x68(%rsp),%r15d
    0.00 :   ba38:   mov    0x30(%rsp),%r10
    0.00 :   ba3d:   mov    0x70(%rsp),%r14
    0.00 :   ba42:   mov    0xd0(%rsp),%rbp
    0.00 :   ba4a:   mov    0xe8(%rsp),%r11
    0.00 :   ba52:   mov    0x78(%rsp),%r12
         : 523  ./elf/dl-lookup.c:469
    0.00 :   ba57:   cmpl   $0x1,0x84(%rsp)
    0.00 :   ba5f:   jne    b50b <do_lookup_x+0x11b>
         : 526  ./elf/dl-lookup.c:469 (discriminator 1)
    0.00 :   ba65:   mov    0x88(%rsp),%r8
         : 528  ./elf/dl-lookup.c:471 (discriminator 1)
    0.00 :   ba6d:   test   %r8,%r8
    0.00 :   ba70:   jne    b6b0 <do_lookup_x+0x2c0>
         : 531  ./elf/dl-lookup.c:567
    0.00 :   ba76:   jmp    b50b <do_lookup_x+0x11b>
    0.00 :   ba7b:   nopl   0x0(%rax,%rax,1)
         : 534  do_lookup_unique():
         : 535  ./elf/dl-lookup.c:262
    0.00 :   ba80:   mov    0x18(%rsp),%rax
    0.00 :   ba85:   lea    (%r14,%r14,2),%rdx
    0.00 :   ba89:   mov    %rbx,%r8
    0.00 :   ba8c:   mov    %r13,%r15
    0.00 :   ba8f:   lea    0x2e5aa(%rip),%rdi        # 3a040 <_rtld_global>
    0.00 :   ba96:   mov    0x60(%rsp),%rcx
    0.00 :   ba9b:   mov    0x50(%rsp),%rbx
    0.00 :   baa0:   lea    (%rax,%rax,4),%rax
    0.00 :   baa4:   mov    0x68(%rsp),%r12
    0.00 :   baa9:   shl    $0x5,%rax
    0.00 :   baad:   mov    0x60(%rdi,%rax,1),%rax
    0.00 :   bab2:   shl    $0x2,%rax
    0.00 :   bab6:   cmp    %rax,%rdx
    0.00 :   bab9:   jbe    be88 <do_lookup_x+0xa98>
         : 550  ./elf/dl-lookup.c:324
    0.00 :   babf:   mov    (%rcx),%eax
    0.00 :   bac1:   add    (%rsp),%rax
    0.00 :   bac5:   movq   %rcx,%xmm5
    0.00 :   baca:   mov    %r8,%rdx
    0.00 :   bacd:   movq   %rax,%xmm0
    0.00 :   bad2:   movq   %rax,%xmm1
         : 557  ./elf/dl-lookup.c:323
    0.00 :   bad7:   mov    0x5c(%rsp),%eax
    0.00 :   badb:   shl    $0x5,%rdx
    0.00 :   badf:   mov    0x10(%rsp),%rcx
    0.00 :   bae4:   movhps 0x40(%rsp),%xmm1
    0.00 :   bae9:   punpcklqdq %xmm5,%xmm0
    0.00 :   baed:   test   %eax,%eax
    0.00 :   baef:   je     bb64 <do_lookup_x+0x774>
    0.00 :   baf1:   mov    %r12,%rax
    0.00 :   baf4:   shl    $0x5,%rax
    0.00 :   baf8:   add    %rcx,%rax
    0.00 :   bafb:   jmp    bb0f <do_lookup_x+0x71f>
    0.00 :   bafd:   nopl   (%rax)
         : 570  enter_unique_sym():
         : 571  ./elf/dl-lookup.c:174
    0.00 :   bb00:   add    %r8,%r12
         : 573  ./elf/dl-lookup.c:175
    0.00 :   bb03:   add    %rdx,%rax
    0.00 :   bb06:   cmp    %r12,%r14
    0.00 :   bb09:   jbe    bbe8 <do_lookup_x+0x7f8>
         : 577  ./elf/dl-lookup.c:172
    0.00 :   bb0f:   cmpq   $0x0,0x8(%rax)
    0.00 :   bb14:   jne    bb00 <do_lookup_x+0x710>
         : 580  ./elf/dl-lookup.c:182
    0.00 :   bb16:   mov    0xf8(%rsp),%rdi
         : 582  ./elf/dl-lookup.c:179
    0.00 :   bb1e:   mov    %r15d,(%rax)
         : 584  ./elf/dl-lookup.c:180
    0.00 :   bb21:   movups %xmm1,0x8(%rax)
         : 586  ./elf/dl-lookup.c:182
    0.00 :   bb25:   mov    %rdi,0x18(%rax)
         : 588  do_lookup_unique():
         : 589  ./elf/dl-lookup.c:342
    0.00 :   bb29:   mov    0x18(%rsp),%rax
    0.00 :   bb2e:   lea    0x2e50b(%rip),%rdi        # 3a040 <_rtld_global>
    0.00 :   bb35:   lea    (%rax,%rax,4),%rax
    0.00 :   bb39:   shl    $0x5,%rax
    0.00 :   bb3d:   addq   $0x1,0x60(%rdi,%rax,1)
         : 595  ./elf/dl-lookup.c:347
    0.00 :   bb43:   mov    0x30(%rsp),%rdi
    0.00 :   bb48:   call   *0x2df2a(%rip)        # 39a78 <___rtld_mutex_unlock>
         : 598  ./elf/dl-lookup.c:349
    0.00 :   bb4e:   mov    0x48(%rsp),%rax
    0.00 :   bb53:   movdqa 0x20(%rsp),%xmm4
    0.00 :   bb59:   movups %xmm4,(%rax)
    0.00 :   bb5c:   jmp    b70d <do_lookup_x+0x31d>
         : 603  enter_unique_sym():
         : 604  ./elf/dl-lookup.c:176
    0.00 :   bb61:   sub    %r14,%r12
    0.00 :   bb64:   mov    %r12,%rax
    0.00 :   bb67:   shl    $0x5,%rax
    0.00 :   bb6b:   add    %rcx,%rax
    0.00 :   bb6e:   jmp    bb7b <do_lookup_x+0x78b>
         : 610  ./elf/dl-lookup.c:174
    0.00 :   bb70:   add    %r8,%r12
         : 612  ./elf/dl-lookup.c:175
    0.00 :   bb73:   add    %rdx,%rax
    0.00 :   bb76:   cmp    %r12,%r14
    0.00 :   bb79:   jbe    bb61 <do_lookup_x+0x771>
         : 616  ./elf/dl-lookup.c:172
    0.00 :   bb7b:   cmpq   $0x0,0x8(%rax)
    0.00 :   bb80:   jne    bb70 <do_lookup_x+0x780>
         : 619  ./elf/dl-lookup.c:179
    0.00 :   bb82:   mov    %r15d,(%rax)
         : 621  ./elf/dl-lookup.c:182
    0.00 :   bb85:   mov    %rbx,0x18(%rax)
         : 623  ./elf/dl-lookup.c:180
    0.00 :   bb89:   movups %xmm0,0x8(%rax)
         : 625  do_lookup_unique():
         : 626  ./elf/dl-lookup.c:331
    0.00 :   bb8d:   movzbl 0x31c(%rbx),%eax
    0.00 :   bb94:   and    $0x3,%eax
    0.00 :   bb97:   cmp    $0x2,%al
    0.00 :   bb99:   jne    bb29 <do_lookup_x+0x739>
         : 631  is_nodelete():
         : 632  ./elf/dl-lookup.c:204
    0.00 :   bb9b:   cmpb   $0x0,0x31f(%rbx)
    0.00 :   bba2:   jne    bb29 <do_lookup_x+0x739>
    0.00 :   bba4:   testb  $0x8,0xe0(%rsp)
    0.00 :   bbac:   je     bffb <do_lookup_x+0xc0b>
    0.00 :   bbb2:   cmpb   $0x0,0x320(%rbx)
    0.00 :   bbb9:   jne    bb29 <do_lookup_x+0x739>
         : 639  do_lookup_unique():
         : 640  ./elf/dl-lookup.c:335
    0.00 :   bbbf:   testb  $0x4,0x2df1a(%rip)        # 39ae0 <_rtld_global_ro>
    0.00 :   bbc6:   jne    c07a <do_lookup_x+0xc8a>
         : 643  mark_nodelete():
         : 644  ./elf/dl-lookup.c:191
    0.00 :   bbcc:   movb   $0x1,0x320(%rbx)
    0.00 :   bbd3:   jmp    bb29 <do_lookup_x+0x739>
    0.00 :   bbd8:   nopl   0x0(%rax,%rax,1)
         : 648  do_lookup_unique():
         : 649  ./elf/dl-lookup.c:259
    0.00 :   bbe0:   sub    %r14,%r15
    0.00 :   bbe3:   jmp    b933 <do_lookup_x+0x543>
         : 652  enter_unique_sym():
         : 653  ./elf/dl-lookup.c:176
    0.00 :   bbe8:   sub    %r14,%r12
    0.00 :   bbeb:   jmp    baf1 <do_lookup_x+0x701>
         : 656  _dl_elf_hash():
         : 657  ./elf/../sysdeps/generic/dl-hash.h:31
    0.00 :   bbf0:   mov    0x38(%rsp),%rdx
    0.00 :   bbf5:   xor    %eax,%eax
    0.00 :   bbf7:   movzbl (%rdx),%edi
         : 661  ./elf/../sysdeps/generic/dl-hash.h:32
    0.00 :   bbfa:   test   %rdi,%rdi
    0.00 :   bbfd:   je     bca5 <do_lookup_x+0x8b5>
    0.00 :   bc03:   movzbl 0x1(%rdx),%eax
    0.00 :   bc07:   test   %al,%al
    0.00 :   bc09:   je     bfbc <do_lookup_x+0xbcc>
         : 667  ./elf/../sysdeps/generic/dl-hash.h:34
    0.00 :   bc0f:   shl    $0x4,%rdi
    0.00 :   bc13:   add    %rax,%rdi
         : 670  ./elf/../sysdeps/generic/dl-hash.h:35
    0.00 :   bc16:   mov    0x38(%rsp),%rax
    0.00 :   bc1b:   movzbl 0x2(%rax),%eax
    0.00 :   bc1f:   test   %al,%al
    0.00 :   bc21:   je     bfbc <do_lookup_x+0xbcc>
         : 675  ./elf/../sysdeps/generic/dl-hash.h:37
    0.00 :   bc27:   shl    $0x4,%rdi
    0.00 :   bc2b:   add    %rax,%rdi
         : 678  ./elf/../sysdeps/generic/dl-hash.h:38
    0.00 :   bc2e:   mov    0x38(%rsp),%rax
    0.00 :   bc33:   movzbl 0x3(%rax),%eax
    0.00 :   bc37:   test   %al,%al
    0.00 :   bc39:   je     bfbc <do_lookup_x+0xbcc>
         : 683  ./elf/../sysdeps/generic/dl-hash.h:40
    0.00 :   bc3f:   shl    $0x4,%rdi
    0.00 :   bc43:   add    %rax,%rdi
         : 686  ./elf/../sysdeps/generic/dl-hash.h:41
    0.00 :   bc46:   mov    0x38(%rsp),%rax
    0.00 :   bc4b:   movzbl 0x4(%rax),%eax
    0.00 :   bc4f:   test   %al,%al
    0.00 :   bc51:   je     bfbc <do_lookup_x+0xbcc>
         : 691  ./elf/../sysdeps/generic/dl-hash.h:43
    0.00 :   bc57:   shl    $0x4,%rdi
    0.00 :   bc5b:   add    %rdi,%rax
         : 694  ./elf/../sysdeps/generic/dl-hash.h:44
    0.00 :   bc5e:   mov    0x38(%rsp),%rdi
         : 696  ./elf/../sysdeps/generic/dl-hash.h:45
    0.00 :   bc63:   movzbl 0x5(%rdi),%ecx
         : 698  ./elf/../sysdeps/generic/dl-hash.h:44
    0.00 :   bc67:   lea    0x5(%rdi),%rdx
         : 700  ./elf/../sysdeps/generic/dl-hash.h:45
    0.00 :   bc6b:   test   %cl,%cl
    0.00 :   bc6d:   je     bc90 <do_lookup_x+0x8a0>
         : 703  ./elf/../sysdeps/generic/dl-hash.h:48
    0.00 :   bc6f:   shl    $0x4,%rax
    0.00 :   bc73:   add    $0x1,%rdx
    0.00 :   bc77:   add    %rax,%rcx
         : 707  ./elf/../sysdeps/generic/dl-hash.h:62
    0.00 :   bc7a:   mov    %rcx,%rax
    0.00 :   bc7d:   shr    $0x18,%rax
    0.00 :   bc81:   and    $0xf0,%eax
    0.00 :   bc86:   xor    %rcx,%rax
         : 712  ./elf/../sysdeps/generic/dl-hash.h:45
    0.00 :   bc89:   movzbl (%rdx),%ecx
    0.00 :   bc8c:   test   %cl,%cl
    0.00 :   bc8e:   jne    bc6f <do_lookup_x+0x87f>
         : 716  ./elf/../sysdeps/generic/dl-hash.h:67
    0.00 :   bc90:   and    $0xfffffff,%eax
         : 718  do_lookup_x():
         : 719  ./elf/dl-lookup.c:452
    0.00 :   bc95:   xor    %edx,%edx
         : 721  _dl_elf_hash():
         : 722  ./elf/../sysdeps/generic/dl-hash.h:67
    0.00 :   bc97:   mov    %rax,%rdi
         : 724  do_lookup_x():
         : 725  ./elf/dl-lookup.c:452
    0.00 :   bc9a:   div    %rsi
    0.00 :   bc9d:   lea    0x0(,%rdx,4),%rax
         : 728  ./elf/dl-lookup.c:447
    0.00 :   bca5:   mov    0x50(%rsp),%rsi
    0.00 :   bcaa:   mov    %rdi,(%rsi)
    0.00 :   bcad:   jmp    b5c5 <do_lookup_x+0x1d5>
         : 732  do_lookup_unique():
         : 733  ./elf/dl-lookup.c:305
    0.00 :   bcb2:   test   %r14,%r14
    0.00 :   bcb5:   jne    c010 <do_lookup_x+0xc20>
    0.00 :   bcbb:   mov    %rcx,0x8(%rsp)
         : 737  calloc():
         : 738  ./elf/../include/rtld-malloc.h:44
    0.00 :   bcc0:   mov    $0x1f,%esi
    0.00 :   bcc5:   mov    $0x20,%edi
    0.00 :   bcca:   call   *0x2dda0(%rip)        # 39a70 <__rtld_calloc>
    0.00 :   bcd0:   mov    %rax,0x10(%rsp)
         : 743  do_lookup_unique():
         : 744  ./elf/dl-lookup.c:315
    0.00 :   bcd5:   test   %rax,%rax
    0.00 :   bcd8:   je     c0af <do_lookup_x+0xcbf>
         : 747  ./elf/dl-lookup.c:318
    0.00 :   bcde:   mov    %rax,0x50(%rbp)
         : 749  ./elf/dl-lookup.c:313
    0.00 :   bce2:   mov    0x8(%rsp),%rcx
         : 751  enter_unique_sym():
         : 752  ./elf/dl-lookup.c:170
    0.00 :   bce7:   movabs $0x842108421084211,%rdx
         : 754  do_lookup_unique():
         : 755  ./elf/dl-lookup.c:313
    0.00 :   bcf1:   mov    $0x1f,%r14d
         : 757  ./elf/dl-lookup.c:320
    0.00 :   bcf7:   mov    0x2dd6a(%rip),%rax        # 39a68 <__rtld_free>
         : 759  ./elf/dl-lookup.c:319
    0.00 :   bcfe:   movq   $0x1f,0x58(%rbp)
         : 761  ./elf/dl-lookup.c:320
    0.00 :   bd06:   mov    %rax,0x68(%rbp)
         : 763  enter_unique_sym():
         : 764  ./elf/dl-lookup.c:170
    0.00 :   bd0a:   mov    %r15,%rax
    0.00 :   bd0d:   mul    %rdx
    0.00 :   bd10:   mov    %r15,%rax
    0.00 :   bd13:   sub    %rdx,%rax
    0.00 :   bd16:   shr    %rax
    0.00 :   bd19:   lea    (%rdx,%rax,1),%r12
         : 771  ./elf/dl-lookup.c:171
    0.00 :   bd1d:   movabs $0x469ee58469ee5847,%rdx
         : 773  ./elf/dl-lookup.c:170
    0.00 :   bd27:   shr    $0x4,%r12
    0.00 :   bd2b:   mov    %r12,%rax
    0.00 :   bd2e:   shl    $0x5,%rax
    0.00 :   bd32:   sub    %r12,%rax
    0.00 :   bd35:   mov    %r15,%r12
    0.00 :   bd38:   sub    %rax,%r12
         : 780  ./elf/dl-lookup.c:171
    0.00 :   bd3b:   mov    %r15,%rax
    0.00 :   bd3e:   imul   %rdx
    0.00 :   bd41:   mov    %rdx,%rax
    0.00 :   bd44:   mov    %r15,%rdx
    0.00 :   bd47:   sar    $0x3f,%rdx
    0.00 :   bd4b:   sar    $0x3,%rax
    0.00 :   bd4f:   sub    %rdx,%rax
    0.00 :   bd52:   lea    0x0(,%rax,8),%rdx
    0.00 :   bd5a:   sub    %rax,%rdx
    0.00 :   bd5d:   lea    (%rax,%rdx,4),%rax
    0.00 :   bd61:   mov    %r15,%rdx
    0.00 :   bd64:   sub    %rax,%rdx
    0.00 :   bd67:   lea    0x1(%rdx),%r8
    0.00 :   bd6b:   jmp    babf <do_lookup_x+0x6cf>
    0.00 :   bd70:   mov    %rbp,%r10
    0.00 :   bd73:   mov    0x30(%rsp),%r15d
    0.00 :   bd78:   mov    0x20(%rsp),%r14
    0.00 :   bd7d:   mov    0xd0(%rsp),%rbp
    0.00 :   bd85:   mov    0xe8(%rsp),%r11
    0.00 :   bd8d:   mov    0x68(%rsp),%r12
    0.00 :   bd92:   jmp    ba57 <do_lookup_x+0x667>
         : 802  do_lookup_x():
         : 803  ./elf/dl-lookup.c:486
    0.00 :   bd97:   mov    0x78(%rbx),%rdx
    0.00 :   bd9b:   test   %rdx,%rdx
    0.00 :   bd9e:   je     b82f <do_lookup_x+0x43f>
         : 807  ./elf/dl-lookup.c:487
    0.00 :   bda4:   mov    0x80(%rbx),%rax
    0.00 :   bdab:   test   %rax,%rax
    0.00 :   bdae:   je     b82f <do_lookup_x+0x43f>
         : 811  ./elf/dl-lookup.c:488
    0.00 :   bdb4:   mov    0x8(%rax),%rax
    0.00 :   bdb8:   test   %rax,%rax
    0.00 :   bdbb:   je     b82f <do_lookup_x+0x43f>
         : 815  ./elf/dl-lookup.c:491
    0.00 :   bdc1:   mov    0x8(%rdx),%r13
    0.00 :   bdc5:   testb  $0x20,0x31e(%rbx)
    0.00 :   bdcc:   je     bdd1 <do_lookup_x+0x9e1>
         : 819  ./elf/dl-lookup.c:491 (discriminator 2)
    0.00 :   bdce:   add    (%rbx),%r13
         : 821  ./elf/dl-lookup.c:493 (discriminator 5)
    0.00 :   bdd1:   movabs $0xaaaaaaaaaaaaaaab,%rdi
    0.00 :   bddb:   mul    %rdi
    0.00 :   bdde:   mov    %rdx,%rax
    0.00 :   bde1:   shr    $0x4,%rax
         : 826  ./elf/dl-lookup.c:495 (discriminator 5)
    0.00 :   bde5:   test   %eax,%eax
    0.00 :   bde7:   je     b82f <do_lookup_x+0x43f>
    0.00 :   bded:   mov    %eax,%eax
    0.00 :   bdef:   mov    %rbx,0x30(%rsp)
    0.00 :   bdf4:   mov    %r10,%rbx
    0.00 :   bdf7:   lea    (%rax,%rax,2),%rax
    0.00 :   bdfb:   mov    %rbp,0xd0(%rsp)
    0.00 :   be03:   mov    %r13,%rbp
    0.00 :   be06:   lea    0x0(%r13,%rax,8),%rcx
    0.00 :   be0b:   mov    %r8,0x20(%rsp)
    0.00 :   be10:   mov    %r12,%r13
    0.00 :   be13:   mov    %r11,0xe8(%rsp)
    0.00 :   be1b:   mov    %rcx,%r12
    0.00 :   be1e:   jmp    be2d <do_lookup_x+0xa3d>
         : 841  ./elf/dl-lookup.c:495 (discriminator 2)
    0.00 :   be20:   add    $0x18,%rbp
    0.00 :   be24:   cmp    %r12,%rbp
    0.00 :   be27:   je     c040 <do_lookup_x+0xc50>
         : 845  ./elf/dl-lookup.c:496
    0.00 :   be2d:   mov    0x8(%rbp),%rax
    0.00 :   be31:   mov    %eax,%esi
    0.00 :   be33:   cmp    $0x7,%eax
    0.00 :   be36:   je     be20 <do_lookup_x+0xa30>
    0.00 :   be38:   cmp    $0x10,%rsi
    0.00 :   be3c:   je     be20 <do_lookup_x+0xa30>
    0.00 :   be3e:   lea    -0x11(%rsi),%rdi
    0.00 :   be42:   cmp    $0x13,%rdi
    0.00 :   be46:   jbe    be20 <do_lookup_x+0xa30>
    0.00 :   be48:   cmp    $0x5,%rsi
    0.00 :   be4c:   jne    be20 <do_lookup_x+0xa30>
         : 857  ./elf/dl-lookup.c:499
    0.00 :   be4e:   shr    $0x20,%rax
         : 859  ./elf/dl-lookup.c:500
    0.00 :   be52:   mov    0x38(%rsp),%rsi
    0.00 :   be57:   lea    (%rax,%rax,2),%rax
    0.00 :   be5b:   mov    (%rbx,%rax,8),%edi
    0.00 :   be5e:   add    (%rsp),%rdi
    0.00 :   be62:   call   27220 <strcmp>
    0.00 :   be67:   test   %eax,%eax
    0.00 :   be69:   jne    be20 <do_lookup_x+0xa30>
    0.00 :   be6b:   mov    0xd0(%rsp),%rbp
    0.00 :   be73:   mov    0xe8(%rsp),%r11
    0.00 :   be7b:   mov    %r13,%r12
    0.00 :   be7e:   jmp    b50b <do_lookup_x+0x11b>
    0.00 :   be83:   nopl   0x0(%rax,%rax,1)
         : 872  do_lookup_unique():
         : 873  ./elf/dl-lookup.c:269
    0.00 :   be88:   lea    0x1(%r14),%rdi
    0.00 :   be8c:   mov    %rcx,0x38(%rsp)
    0.00 :   be91:   call   d700 <_dl_higher_prime_number>
         : 877  calloc():
         : 878  ./elf/../include/rtld-malloc.h:44
    0.00 :   be96:   mov    $0x20,%edi
         : 880  do_lookup_unique():
         : 881  ./elf/dl-lookup.c:269
    0.00 :   be9b:   mov    %rax,%rbp
         : 883  calloc():
         : 884  ./elf/../include/rtld-malloc.h:44
    0.00 :   be9e:   mov    %rax,%rsi
    0.00 :   bea1:   call   *0x2dbc9(%rip)        # 39a70 <__rtld_calloc>
    0.00 :   bea7:   mov    %rax,%r13
         : 888  do_lookup_unique():
         : 889  ./elf/dl-lookup.c:272
    0.00 :   beaa:   test   %rax,%rax
    0.00 :   bead:   je     c0af <do_lookup_x+0xcbf>
         : 892  enter_unique_sym():
         : 893  ./elf/dl-lookup.c:171
    0.00 :   beb3:   lea    -0x2(%rbp),%rax
    0.00 :   beb7:   mov    0x10(%rsp),%rsi
         : 896  do_lookup_unique():
         : 897  ./elf/dl-lookup.c:279
    0.00 :   bebc:   mov    0x38(%rsp),%rcx
         : 899  enter_unique_sym():
         : 900  ./elf/dl-lookup.c:171
    0.00 :   bec1:   mov    %rax,0x8(%rsp)
    0.00 :   bec6:   mov    %r14,%rax
    0.00 :   bec9:   mov    0x8(%rsp),%r9
    0.00 :   bece:   shl    $0x5,%rax
         : 905  do_lookup_unique():
         : 906  ./elf/dl-lookup.c:279
    0.00 :   bed2:   test   %r14,%r14
    0.00 :   bed5:   mov    %rsi,%rdi
    0.00 :   bed8:   lea    (%rax,%rsi,1),%r11
    0.00 :   bedc:   jne    bee9 <do_lookup_x+0xaf9>
    0.00 :   bede:   jmp    bf55 <do_lookup_x+0xb65>
    0.00 :   bee0:   add    $0x20,%rdi
    0.00 :   bee4:   cmp    %rdi,%r11
    0.00 :   bee7:   je     bf55 <do_lookup_x+0xb65>
         : 915  ./elf/dl-lookup.c:280
    0.00 :   bee9:   mov    0x8(%rdi),%rax
    0.00 :   beed:   test   %rax,%rax
    0.00 :   bef0:   je     bee0 <do_lookup_x+0xaf0>
         : 919  ./elf/dl-lookup.c:281
    0.00 :   bef2:   mov    (%rdi),%r12d
    0.00 :   bef5:   movq   %rax,%xmm0
         : 922  enter_unique_sym():
         : 923  ./elf/dl-lookup.c:170
    0.00 :   befa:   xor    %edx,%edx
         : 925  do_lookup_unique():
         : 926  ./elf/dl-lookup.c:281
    0.00 :   befc:   mov    0x18(%rdi),%r10
    0.00 :   bf00:   movhps 0x10(%rdi),%xmm0
         : 929  enter_unique_sym():
         : 930  ./elf/dl-lookup.c:170
    0.00 :   bf04:   mov    %r12,%rax
         : 932  do_lookup_unique():
         : 933  ./elf/dl-lookup.c:281
    0.00 :   bf07:   mov    %r12,%r8
         : 935  enter_unique_sym():
         : 936  ./elf/dl-lookup.c:170
    0.00 :   bf0a:   div    %rbp
         : 938  ./elf/dl-lookup.c:171
    0.00 :   bf0d:   mov    %r12,%rax
         : 940  ./elf/dl-lookup.c:170
    0.00 :   bf10:   mov    %rdx,%rsi
         : 942  ./elf/dl-lookup.c:171
    0.00 :   bf13:   xor    %edx,%edx
    0.00 :   bf15:   div    %r9
    0.00 :   bf18:   add    $0x1,%rdx
         : 946  ./elf/dl-lookup.c:172
    0.00 :   bf1c:   mov    %rdx,%r12
    0.00 :   bf1f:   shl    $0x5,%r12
    0.00 :   bf23:   mov    %rsi,%rax
    0.00 :   bf26:   shl    $0x5,%rax
    0.00 :   bf2a:   add    %r13,%rax
    0.00 :   bf2d:   jmp    bf3b <do_lookup_x+0xb4b>
    0.00 :   bf2f:   nop
         : 954  ./elf/dl-lookup.c:174
    0.00 :   bf30:   add    %rdx,%rsi
         : 956  ./elf/dl-lookup.c:175
    0.00 :   bf33:   add    %r12,%rax
    0.00 :   bf36:   cmp    %rsi,%rbp
    0.00 :   bf39:   jbe    bf50 <do_lookup_x+0xb60>
         : 960  ./elf/dl-lookup.c:172
    0.00 :   bf3b:   cmpq   $0x0,0x8(%rax)
    0.00 :   bf40:   jne    bf30 <do_lookup_x+0xb40>
         : 963  ./elf/dl-lookup.c:179
    0.00 :   bf42:   mov    %r8d,(%rax)
         : 965  ./elf/dl-lookup.c:182
    0.00 :   bf45:   mov    %r10,0x18(%rax)
         : 967  ./elf/dl-lookup.c:180
    0.00 :   bf49:   movups %xmm0,0x8(%rax)
         : 969  ./elf/dl-lookup.c:183
    0.00 :   bf4d:   jmp    bee0 <do_lookup_x+0xaf0>
    0.00 :   bf4f:   nop
         : 972  ./elf/dl-lookup.c:176
    0.00 :   bf50:   sub    %rbp,%rsi
    0.00 :   bf53:   jmp    bf23 <do_lookup_x+0xb33>
         : 975  do_lookup_unique():
         : 976  ./elf/dl-lookup.c:285
    0.00 :   bf55:   mov    0x18(%rsp),%rax
    0.00 :   bf5a:   mov    0x10(%rsp),%rdi
    0.00 :   bf5f:   mov    %rcx,0x38(%rsp)
         : 980  ./elf/dl-lookup.c:269
    0.00 :   bf64:   mov    %rbp,%r14
         : 982  ./elf/dl-lookup.c:285
    0.00 :   bf67:   lea    (%rax,%rax,4),%r12
    0.00 :   bf6b:   lea    0x2e0ce(%rip),%rax        # 3a040 <_rtld_global>
    0.00 :   bf72:   shl    $0x5,%r12
    0.00 :   bf76:   add    %rax,%r12
    0.00 :   bf79:   call   *0x68(%r12)
         : 988  ./elf/dl-lookup.c:289
    0.00 :   bf7e:   mov    0x2dae3(%rip),%rax        # 39a68 <__rtld_free>
         : 990  enter_unique_sym():
         : 991  ./elf/dl-lookup.c:170
    0.00 :   bf85:   xor    %edx,%edx
         : 993  do_lookup_unique():
         : 994  ./elf/dl-lookup.c:286
    0.00 :   bf87:   mov    %rbp,0x58(%r12)
         : 996  ./elf/dl-lookup.c:288
    0.00 :   bf8c:   mov    %r13,0x50(%r12)
         : 998  ./elf/dl-lookup.c:289
    0.00 :   bf91:   mov    0x38(%rsp),%rcx
    0.00 :   bf96:   mov    %rax,0x68(%r12)
         : 1001 enter_unique_sym():
         : 1002 ./elf/dl-lookup.c:170
    0.00 :   bf9b:   mov    %r15,%rax
    0.00 :   bf9e:   div    %rbp
         : 1005 ./elf/dl-lookup.c:171
    0.00 :   bfa1:   mov    %r13,0x10(%rsp)
    0.00 :   bfa6:   mov    %r15,%rax
         : 1008 ./elf/dl-lookup.c:170
    0.00 :   bfa9:   mov    %rdx,%r12
         : 1010 ./elf/dl-lookup.c:171
    0.00 :   bfac:   xor    %edx,%edx
    0.00 :   bfae:   divq   0x8(%rsp)
    0.00 :   bfb3:   lea    0x1(%rdx),%r8
    0.00 :   bfb7:   jmp    babf <do_lookup_x+0x6cf>
         : 1015 do_lookup_x():
         : 1016 ./elf/dl-lookup.c:452
    0.00 :   bfbc:   mov    %rdi,%rax
    0.00 :   bfbf:   xor    %edx,%edx
    0.00 :   bfc1:   div    %rsi
    0.00 :   bfc4:   lea    0x0(,%rdx,4),%rax
    0.00 :   bfcc:   jmp    bca5 <do_lookup_x+0x8b5>
    0.00 :   bfd1:   mov    %rbp,%r10
    0.00 :   bfd4:   mov    0x30(%rsp),%r15d
    0.00 :   bfd9:   mov    0x20(%rsp),%r14
    0.00 :   bfde:   mov    %rax,%r8
    0.00 :   bfe1:   mov    0xd0(%rsp),%rbp
    0.00 :   bfe9:   mov    0xe8(%rsp),%r11
    0.00 :   bff1:   mov    0x68(%rsp),%r12
    0.00 :   bff6:   jmp    b6b0 <do_lookup_x+0x2c0>
         : 1030 do_lookup_unique():
         : 1031 ./elf/dl-lookup.c:335
    0.00 :   bffb:   testb  $0x4,0x2dade(%rip)        # 39ae0 <_rtld_global_ro>
    0.00 :   c002:   jne    c062 <do_lookup_x+0xc72>
         : 1034 mark_nodelete():
         : 1035 ./elf/dl-lookup.c:193
    0.00 :   c004:   movb   $0x1,0x31f(%rbx)
    0.00 :   c00b:   jmp    bb29 <do_lookup_x+0x739>
         : 1038 do_lookup_unique():
         : 1039 ./elf/dl-lookup.c:307
    0.00 :   c010:   testb  $0x8,0x2daca(%rip)        # 39ae1 <_rtld_global_ro+0x1>
    0.00 :   c017:   jne    bb43 <do_lookup_x+0x753>
    0.00 :   c01d:   lea    0x2398c(%rip),%rcx        # 2f9b0 <__PRETTY_FUNCTION__.1>
    0.00 :   c024:   mov    $0x133,%edx
    0.00 :   c029:   lea    0x21e4d(%rip),%rsi        # 2de7d <_sys_errnameidx+0x57d>
    0.00 :   c030:   lea    0x24959(%rip),%rdi        # 30990 <__PRETTY_FUNCTION__.10+0xf8>
    0.00 :   c037:   call   1e460 <__GI___assert_fail>
    0.00 :   c03c:   nopl   0x0(%rax)
         : 1048 do_lookup_x():
         : 1049 ./elf/dl-lookup.c:307
    0.00 :   c040:   mov    0x30(%rsp),%rbx
    0.00 :   c045:   mov    0x20(%rsp),%r8
    0.00 :   c04a:   mov    %r13,%r12
    0.00 :   c04d:   mov    0xd0(%rsp),%rbp
    0.00 :   c055:   mov    0xe8(%rsp),%r11
    0.00 :   c05d:   jmp    b82f <do_lookup_x+0x43f>
         : 1056 do_lookup_unique():
         : 1057 ./elf/dl-lookup.c:336
    0.00 :   c062:   mov    0x30(%rbx),%rdx
    0.00 :   c066:   mov    0x8(%rbx),%rsi
    0.00 :   c06a:   lea    0x24947(%rip),%rdi        # 309b8 <__PRETTY_FUNCTION__.10+0x120>
    0.00 :   c071:   xor    %eax,%eax
    0.00 :   c073:   call   fbc0 <_dl_debug_printf>
         : 1063 mark_nodelete():
         : 1064 ./elf/dl-lookup.c:190
    0.00 :   c078:   jmp    c004 <do_lookup_x+0xc14>
         : 1066 do_lookup_unique():
         : 1067 ./elf/dl-lookup.c:336
    0.00 :   c07a:   mov    0x30(%rbx),%rdx
    0.00 :   c07e:   mov    0x8(%rbx),%rsi
    0.00 :   c082:   lea    0x2492f(%rip),%rdi        # 309b8 <__PRETTY_FUNCTION__.10+0x120>
    0.00 :   c089:   xor    %eax,%eax
    0.00 :   c08b:   call   fbc0 <_dl_debug_printf>
         : 1073 mark_nodelete():
         : 1074 ./elf/dl-lookup.c:190
    0.00 :   c090:   jmp    bbcc <do_lookup_x+0x7dc>
         : 1076 _dl_check_protected_symbol():
         : 1077 ./elf/../sysdeps/generic/dl-protected.h:40
    0.00 :   c095:   mov    0x38(%rsp),%r11
    0.00 :   c09a:   mov    0x8(%rbx),%rsi
    0.00 :   c09e:   lea    0x2487b(%rip),%rcx        # 30920 <__PRETTY_FUNCTION__.10+0x88>
    0.00 :   c0a5:   xor    %edi,%edi
    0.00 :   c0a7:   mov    %r11,%rdx
    0.00 :   c0aa:   call   2070 <_dl_signal_error@plt>
         : 1084 do_lookup_unique():
         : 1085 ./elf/dl-lookup.c:275
    0.00 :   c0af:   mov    0x30(%rsp),%rdi
    0.00 :   c0b4:   call   *0x2d9be(%rip)        # 39a78 <___rtld_mutex_unlock>
         : 1088 ./elf/dl-lookup.c:276
    0.00 :   c0ba:   lea    0x21dc8(%rip),%rdi        # 2de89 <_sys_errnameidx+0x589>
    0.00 :   c0c1:   xor    %eax,%eax
    0.00 :   c0c3:   call   ff20 <_dl_fatal_printf>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000462c0 <srandom_r>:
         : 6     __srandom_r():
         : 7     ./stdlib/random_r.c:162
    0.00 :   462c0:  endbr64
         : 9     ./stdlib/random_r.c:170
    0.00 :   462c4:  test   %rsi,%rsi
    0.00 :   462c7:  je     46410 <srandom_r+0x150>
         : 12    ./stdlib/random_r.c:172
    0.00 :   462cd:  mov    0x18(%rsi),%eax
         : 14    ./stdlib/random_r.c:173
    0.00 :   462d0:  cmp    $0x4,%eax
    0.00 :   462d3:  ja     46410 <srandom_r+0x150>
         : 17    ./stdlib/random_r.c:180
    0.00 :   462d9:  test   %edi,%edi
    0.00 :   462db:  mov    $0x1,%edx
         : 20    ./stdlib/random_r.c:176
    0.00 :   462e0:  mov    0x10(%rsi),%r8
         : 22    ./stdlib/random_r.c:180
    0.00 :   462e4:  cmovne %edi,%edx
    0.00 :   462e7:  mov    %edx,(%r8)
         : 25    ./stdlib/random_r.c:181
    0.00 :   462ea:  test   %eax,%eax
    0.00 :   462ec:  je     463d3 <srandom_r+0x113>
         : 28    ./stdlib/random_r.c:186
    0.00 :   462f2:  movslq 0x1c(%rsi),%rax
         : 30    ./stdlib/random_r.c:202
    0.00 :   462f6:  lea    (%rax,%rax,4),%ecx
         : 32    ./stdlib/random_r.c:203
    0.00 :   462f9:  lea    -0x1(%rcx,%rcx,1),%edi
         : 34    ./stdlib/random_r.c:187
    0.00 :   462fd:  cmp    $0x1,%eax
    0.00 :   46300:  jle    463e8 <srandom_r+0x128>
    0.00 :   46306:  lea    -0x4(%r8,%rax,4),%r10
    0.00 :   4630b:  mov    %r8,%r9
    0.00 :   4630e:  xchg   %ax,%ax
         : 40    ./stdlib/random_r.c:192
    0.00 :   46310:  movslq %edx,%rax
    0.00 :   46313:  mov    %edx,%ecx
    0.00 :   46315:  imul   $0xffffffff834e0b5f,%rax,%rax
    0.00 :   4631c:  sar    $0x1f,%ecx
    0.00 :   4631f:  shr    $0x20,%rax
    0.00 :   46323:  add    %edx,%eax
    0.00 :   46325:  sar    $0x10,%eax
    0.00 :   46328:  sub    %ecx,%eax
         : 49    ./stdlib/random_r.c:194
    0.00 :   4632a:  imul   $0xfffff4ec,%eax,%ecx
         : 51    ./stdlib/random_r.c:193
    0.00 :   46330:  imul   $0x1f31d,%eax,%eax
    0.00 :   46336:  sub    %eax,%edx
         : 54    ./stdlib/random_r.c:194
    0.00 :   46338:  imul   $0x41a7,%edx,%edx
    0.00 :   4633e:  lea    (%rcx,%rdx,1),%eax
         : 57    ./stdlib/random_r.c:196
    0.00 :   46341:  test   %eax,%eax
    0.00 :   46343:  lea    0x7fffffff(%rax),%edx
    0.00 :   46349:  cmovns %eax,%edx
         : 61    ./stdlib/random_r.c:197
    0.00 :   4634c:  add    $0x4,%r9
    0.00 :   46350:  mov    %edx,(%r9)
         : 64    ./stdlib/random_r.c:187
    0.00 :   46353:  cmp    %r9,%r10
    0.00 :   46356:  jne    46310 <srandom_r+0x50>
         : 67    ./stdlib/random_r.c:200
    0.00 :   46358:  movslq 0x20(%rsi),%rax
    0.00 :   4635c:  movq   %r8,%xmm2
    0.00 :   46361:  lea    (%r8,%rax,4),%rax
    0.00 :   46365:  movq   %rax,%xmm0
    0.00 :   4636a:  punpcklqdq %xmm2,%xmm0
    0.00 :   4636e:  movups %xmm0,(%rsi)
         : 74    ./stdlib/random_r.c:203
    0.00 :   46371:  jmp    46391 <srandom_r+0xd1>
    0.00 :   46373:  nopl   0x0(%rax,%rax,1)
         : 77    __random_r():
         : 78    ./stdlib/random_r.c:364
    0.00 :   46378:  imul   $0x41c64e6d,(%r8),%eax
    0.00 :   4637f:  add    $0x3039,%eax
    0.00 :   46384:  and    $0x7fffffff,%eax
    0.00 :   46389:  mov    %eax,(%r8)
         : 83    __srandom_r():
         : 84    ./stdlib/random_r.c:203
    0.00 :   4638c:  sub    $0x1,%edi
    0.00 :   4638f:  js     463d3 <srandom_r+0x113>
         : 87    __random_r():
         : 88    ./stdlib/random_r.c:362
    0.00 :   46391:  mov    0x18(%rsi),%eax
    0.00 :   46394:  test   %eax,%eax
    0.00 :   46396:  je     46378 <srandom_r+0xb8>
         : 92    ./stdlib/random_r.c:371
  100.00 :   46398:  mov    0x8(%rsi),%rdx
         : 94    ./stdlib/random_r.c:370
    0.00 :   4639c:  mov    (%rsi),%rax
         : 96    ./stdlib/random_r.c:372
    0.00 :   4639f:  mov    0x28(%rsi),%rcx
         : 98    ./stdlib/random_r.c:375
    0.00 :   463a3:  mov    (%rdx),%r9d
    0.00 :   463a6:  add    %r9d,(%rax)
         : 101   ./stdlib/random_r.c:378
    0.00 :   463a9:  add    $0x4,%rax
         : 103   ./stdlib/random_r.c:382
    0.00 :   463ad:  add    $0x4,%rdx
         : 105   ./stdlib/random_r.c:379
    0.00 :   463b1:  cmp    %rax,%rcx
    0.00 :   463b4:  jbe    463e0 <srandom_r+0x120>
         : 108   ./stdlib/random_r.c:387
    0.00 :   463b6:  cmp    %rdx,%rcx
    0.00 :   463b9:  cmovbe %r8,%rdx
         : 111   ./stdlib/random_r.c:390
    0.00 :   463bd:  movq   %rax,%xmm0
    0.00 :   463c2:  movq   %rdx,%xmm1
    0.00 :   463c7:  punpcklqdq %xmm1,%xmm0
    0.00 :   463cb:  movups %xmm0,(%rsi)
         : 116   __srandom_r():
         : 117   ./stdlib/random_r.c:203
    0.00 :   463ce:  sub    $0x1,%edi
    0.00 :   463d1:  jns    46391 <srandom_r+0xd1>
         : 120   ./stdlib/random_r.c:210
    0.00 :   463d3:  xor    %eax,%eax
    0.00 :   463d5:  ret
    0.00 :   463d6:  cs nopw 0x0(%rax,%rax,1)
         : 124   __random_r():
         : 125   ./stdlib/random_r.c:210
    0.00 :   463e0:  mov    %r8,%rax
    0.00 :   463e3:  jmp    463bd <srandom_r+0xfd>
    0.00 :   463e5:  nopl   (%rax)
         : 129   __srandom_r():
         : 130   ./stdlib/random_r.c:200
    0.00 :   463e8:  movslq 0x20(%rsi),%rax
    0.00 :   463ec:  movq   %r8,%xmm3
    0.00 :   463f1:  lea    (%r8,%rax,4),%rax
    0.00 :   463f5:  movq   %rax,%xmm0
    0.00 :   463fa:  punpcklqdq %xmm3,%xmm0
    0.00 :   463fe:  movups %xmm0,(%rsi)
         : 137   ./stdlib/random_r.c:203
    0.00 :   46401:  test   %edi,%edi
    0.00 :   46403:  js     463d3 <srandom_r+0x113>
    0.00 :   46405:  jmp    46391 <srandom_r+0xd1>
    0.00 :   46407:  nopw   0x0(%rax,%rax,1)
         : 142   ./stdlib/random_r.c:213
    0.00 :   46410:  mov    $0xffffffff,%eax
         : 144   ./stdlib/random_r.c:214
    0.00 :   46415:  ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3      Disassembly of section .text:
         :
         : 5      000000000019d7e0 <__strlen_avx2>:
         : 6      __strlen_avx2():
         : 7      ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:50
    0.00 :   19d7e0: endbr64
         : 9      ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:63
    0.00 :   19d7e4: mov    %edi,%eax
         : 11     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:64
    0.00 :   19d7e6: mov    %rdi,%rdx
         : 13     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:65
    0.00 :   19d7e9: vpxor  %xmm0,%xmm0,%xmm0
         : 15     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:68
    0.00 :   19d7ed: and    $0xfff,%eax
         : 17     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:70
    0.00 :   19d7f2: cmp    $0xfe0,%eax
         : 19     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:71
    0.00 :   19d7f7: ja     19d930 <__strlen_avx2+0x150>
         : 21     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:74
    0.00 :   19d7fd: vpcmpeqb (%rdi),%ymm0,%ymm1
         : 23     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:75
    0.00 :   19d801: vpmovmskb %ymm1,%eax
         : 25     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:83
    0.00 :   19d805: test   %eax,%eax
         : 27     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:84
    0.00 :   19d807: je     19d860 <__strlen_avx2+0x80>
         : 29     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:85
  100.00 :   19d809: tzcnt  %eax,%eax
         : 31     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:90
    0.00 :   19d80d: vzeroupper
    0.00 :   19d810: ret
    0.00 :   19d811: data16 cs nopw 0x0(%rax,%rax,1)
    0.00 :   19d81c: nopl   0x0(%rax)
         : 36     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:116
    0.00 :   19d820: tzcnt  %eax,%eax
         : 38     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:129
    0.00 :   19d824: sub    %edx,%edi
         : 40     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:130
    0.00 :   19d826: inc    %edi
         : 42     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:131
    0.00 :   19d828: add    %edi,%eax
         : 44     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:137
    0.00 :   19d82a: vzeroupper
    0.00 :   19d82d: ret
    0.00 :   19d82e: xchg   %ax,%ax
         : 48     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:141
    0.00 :   19d830: tzcnt  %eax,%eax
         : 50     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:154
    0.00 :   19d834: sub    %edx,%edi
         : 52     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:155
    0.00 :   19d836: add    $0x21,%edi
         : 54     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:156
    0.00 :   19d839: add    %edi,%eax
         : 56     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:162
    0.00 :   19d83b: vzeroupper
    0.00 :   19d83e: ret
    0.00 :   19d83f: nop
         : 60     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:166
    0.00 :   19d840: tzcnt  %eax,%eax
         : 62     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:179
    0.00 :   19d844: sub    %edx,%edi
         : 64     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:180
    0.00 :   19d846: add    $0x41,%edi
         : 66     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:181
    0.00 :   19d849: add    %edi,%eax
         : 68     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:187
    0.00 :   19d84b: vzeroupper
    0.00 :   19d84e: ret
    0.00 :   19d84f: nop
         : 72     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:191
    0.00 :   19d850: tzcnt  %eax,%eax
         : 74     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:204
    0.00 :   19d854: sub    %edx,%edi
         : 76     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:205
    0.00 :   19d856: add    $0x61,%edi
         : 78     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:206
    0.00 :   19d859: add    %edi,%eax
         : 80     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:212
    0.00 :   19d85b: vzeroupper
    0.00 :   19d85e: ret
    0.00 :   19d85f: nop
         : 84     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:219
    0.00 :   19d860: or     $0x1f,%rdi
         : 86     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:234
    0.00 :   19d864: vpcmpeqb 0x1(%rdi),%ymm0,%ymm1
         : 88     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:240
    0.00 :   19d869: vpmovmskb %ymm1,%eax
         : 90     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:241
    0.00 :   19d86d: test   %eax,%eax
         : 92     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:242
    0.00 :   19d86f: jne    19d820 <__strlen_avx2+0x40>
         : 94     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:244
    0.00 :   19d871: vpcmpeqb 0x21(%rdi),%ymm0,%ymm1
         : 96     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:245
    0.00 :   19d876: vpmovmskb %ymm1,%eax
         : 98     ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:246
    0.00 :   19d87a: test   %eax,%eax
         : 100    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:247
    0.00 :   19d87c: jne    19d830 <__strlen_avx2+0x50>
         : 102    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:249
    0.00 :   19d87e: vpcmpeqb 0x41(%rdi),%ymm0,%ymm1
         : 104    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:250
    0.00 :   19d883: vpmovmskb %ymm1,%eax
         : 106    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:251
    0.00 :   19d887: test   %eax,%eax
         : 108    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:252
    0.00 :   19d889: jne    19d840 <__strlen_avx2+0x60>
         : 110    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:254
    0.00 :   19d88b: vpcmpeqb 0x61(%rdi),%ymm0,%ymm1
         : 112    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:255
    0.00 :   19d890: vpmovmskb %ymm1,%eax
         : 114    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:256
    0.00 :   19d894: test   %eax,%eax
         : 116    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:257
    0.00 :   19d896: jne    19d850 <__strlen_avx2+0x70>
         : 118    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:275
    0.00 :   19d898: inc    %rdi
         : 120    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:276
    0.00 :   19d89b: or     $0x7f,%rdi
    0.00 :   19d89f: nop
         : 123    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:290
    0.00 :   19d8a0: vmovdqa 0x1(%rdi),%ymm1
         : 125    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:291
    0.00 :   19d8a5: vpminub 0x21(%rdi),%ymm1,%ymm2
         : 127    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:292
    0.00 :   19d8aa: vmovdqa 0x41(%rdi),%ymm3
         : 129    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:293
    0.00 :   19d8af: vpminub 0x61(%rdi),%ymm3,%ymm4
         : 131    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:295
    0.00 :   19d8b4: vpminub %ymm2,%ymm4,%ymm5
         : 133    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:296
    0.00 :   19d8b8: vpcmpeqb %ymm5,%ymm0,%ymm5
         : 135    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:297
    0.00 :   19d8bc: vpmovmskb %ymm5,%ecx
         : 137    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:299
    0.00 :   19d8c0: sub    $0xffffffffffffff80,%rdi
         : 139    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:300
    0.00 :   19d8c4: test   %ecx,%ecx
         : 141    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:301
    0.00 :   19d8c6: je     19d8a0 <__strlen_avx2+0xc0>
         : 143    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:304
    0.00 :   19d8c8: vpcmpeqb %ymm1,%ymm0,%ymm1
         : 145    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:305
    0.00 :   19d8cc: vpmovmskb %ymm1,%eax
         : 147    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:306
    0.00 :   19d8d0: sub    %rdx,%rdi
         : 149    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:307
    0.00 :   19d8d3: test   %eax,%eax
         : 151    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:308
    0.00 :   19d8d5: jne    19d910 <__strlen_avx2+0x130>
         : 153    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:310
    0.00 :   19d8d7: vpcmpeqb %ymm2,%ymm0,%ymm2
         : 155    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:311
    0.00 :   19d8db: vpmovmskb %ymm2,%eax
         : 157    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:312
    0.00 :   19d8df: test   %eax,%eax
         : 159    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:313
    0.00 :   19d8e1: jne    19d920 <__strlen_avx2+0x140>
         : 161    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:316
    0.00 :   19d8e3: vpcmpeqb %ymm3,%ymm0,%ymm3
         : 163    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:317
    0.00 :   19d8e7: vpmovmskb %ymm3,%eax
         : 165    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:320
    0.00 :   19d8eb: shl    $0x20,%rcx
         : 167    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:321
    0.00 :   19d8ef: or     %rcx,%rax
         : 169    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:322
    0.00 :   19d8f2: tzcnt  %rax,%rax
         : 171    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:323
    0.00 :   19d8f7: sub    $0x3f,%rdi
         : 173    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:324
    0.00 :   19d8fb: add    %rdi,%rax
         : 175    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:329
    0.00 :   19d8fe: vzeroupper
    0.00 :   19d901: ret
    0.00 :   19d902: data16 cs nopw 0x0(%rax,%rax,1)
    0.00 :   19d90d: nopl   (%rax)
         : 180    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:379
    0.00 :   19d910: tzcnt  %eax,%eax
         : 182    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:380
    0.00 :   19d914: sub    $0x7f,%rdi
         : 184    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:381
    0.00 :   19d918: add    %rdi,%rax
         : 186    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:386
    0.00 :   19d91b: vzeroupper
    0.00 :   19d91e: ret
    0.00 :   19d91f: nop
         : 190    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:390
    0.00 :   19d920: tzcnt  %eax,%eax
         : 192    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:391
    0.00 :   19d924: sub    $0x5f,%rdi
         : 194    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:392
    0.00 :   19d928: add    %rdi,%rax
         : 196    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:397
    0.00 :   19d92b: vzeroupper
    0.00 :   19d92e: ret
    0.00 :   19d92f: nop
         : 200    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:509
    0.00 :   19d930: or     $0x1f,%rdi
         : 202    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:510
    0.00 :   19d934: vpcmpeqb -0x1f(%rdi),%ymm0,%ymm1
         : 204    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:511
    0.00 :   19d939: vpmovmskb %ymm1,%eax
         : 206    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:514
    0.00 :   19d93d: sarx   %edx,%eax,%eax
         : 208    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:529
    0.00 :   19d942: test   %eax,%eax
         : 210    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:530
    0.00 :   19d944: je     19d864 <__strlen_avx2+0x84>
         : 212    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:531
    0.00 :   19d94a: tzcnt  %eax,%eax
         : 214    ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S:538
    0.00 :   19d94e: vzeroupper
    0.00 :   19d951: ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000606f0 <_IO_printf>:
         : 6     __printf():
         : 7     ./stdio-common/printf.c:28
    0.00 :   606f0:  endbr64
    0.00 :   606f4:  sub    $0xd8,%rsp
    0.00 :   606fb:  mov    %rdi,%r10
    0.00 :   606fe:  mov    %rsi,0x28(%rsp)
    0.00 :   60703:  mov    %rdx,0x30(%rsp)
    0.00 :   60708:  mov    %rcx,0x38(%rsp)
    0.00 :   6070d:  mov    %r8,0x40(%rsp)
    0.00 :   60712:  mov    %r9,0x48(%rsp)
    0.00 :   60717:  test   %al,%al
    0.00 :   60719:  je     60752 <_IO_printf+0x62>
    0.00 :   6071b:  movaps %xmm0,0x50(%rsp)
    0.00 :   60720:  movaps %xmm1,0x60(%rsp)
    0.00 :   60725:  movaps %xmm2,0x70(%rsp)
    0.00 :   6072a:  movaps %xmm3,0x80(%rsp)
    0.00 :   60732:  movaps %xmm4,0x90(%rsp)
    0.00 :   6073a:  movaps %xmm5,0xa0(%rsp)
    0.00 :   60742:  movaps %xmm6,0xb0(%rsp)
    0.00 :   6074a:  movaps %xmm7,0xc0(%rsp)
    0.00 :   60752:  mov    %fs:0x28,%rax
    0.00 :   6075b:  mov    %rax,0x18(%rsp)
    0.00 :   60760:  xor    %eax,%eax
         : 29    ./stdio-common/printf.c:32
    0.00 :   60762:  lea    0xe0(%rsp),%rax
         : 31    ./stdio-common/printf.c:33
    0.00 :   6076a:  mov    %rsp,%rdx
    0.00 :   6076d:  xor    %ecx,%ecx
         : 34    ./stdio-common/printf.c:32
    0.00 :   6076f:  mov    %rax,0x8(%rsp)
    0.00 :   60774:  lea    0x20(%rsp),%rax
         : 37    ./stdio-common/printf.c:33
    0.00 :   60779:  mov    %r10,%rsi
         : 39    ./stdio-common/printf.c:32
    0.00 :   6077c:  mov    %rax,0x10(%rsp)
         : 41    ./stdio-common/printf.c:33
    0.00 :   60781:  mov    0x1b96b0(%rip),%rax        # 219e38 <stdout@@GLIBC_2.2.5-0x1a30>
         : 43    ./stdio-common/printf.c:32
    0.00 :   60788:  movl   $0x8,(%rsp)
         : 45    ./stdio-common/printf.c:33
    0.00 :   6078f:  mov    (%rax),%rdi
         : 47    ./stdio-common/printf.c:32
    0.00 :   60792:  movl   $0x30,0x4(%rsp)
         : 49    ./stdio-common/printf.c:33
    0.00 :   6079a:  call   75030 <__vfprintf_internal>
         : 51    ./stdio-common/printf.c:37
  100.00 :   6079f:  mov    0x18(%rsp),%rdx
    0.00 :   607a4:  sub    %fs:0x28,%rdx
    0.00 :   607ad:  jne    607b7 <_IO_printf+0xc7>
    0.00 :   607af:  add    $0xd8,%rsp
    0.00 :   607b6:  ret
    0.00 :   607b7:  call   136550 <__stack_chk_fail>
