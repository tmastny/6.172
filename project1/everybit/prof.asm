 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (239 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000002110 <reverse>:
         : 6    reverse():
    0.00 :   2110:   lea    0x1(%rsi),%rax
    0.00 :   2114:   cmp    %rdx,%rax
    0.00 :   2117:   jae    2520 <reverse+0x410>
    0.00 :   211d:   push   %rbp
    0.00 :   211e:   push   %r15
    0.00 :   2120:   push   %r14
    0.00 :   2122:   push   %r13
    0.00 :   2124:   push   %r12
    0.00 :   2126:   push   %rbx
    0.00 :   2127:   mov    %rdi,%r12
    0.00 :   212a:   mov    %rsi,%r9
    0.00 :   212d:   shr    $0x3,%r9
    0.00 :   2131:   mov    (%rdi),%rbp
    0.00 :   2134:   shr    $0x3,%rbp
    0.00 :   2138:   lea    0x1(%rbp),%rax
    0.00 :   213c:   cmp    %rax,%r9
    0.00 :   213f:   jne    214c <reverse+0x3c>
    0.00 :   2141:   mov    $0xff,%r8b
    0.00 :   2144:   xor    %r11d,%r11d
    0.00 :   2147:   mov    %rbp,%r9
    0.00 :   214a:   jmp    2166 <reverse+0x56>
    0.00 :   214c:   mov    %esi,%ecx
    0.00 :   214e:   and    $0x7,%cl
    0.00 :   2151:   mov    $0xff,%r8b
    0.00 :   2154:   shl    %cl,%r8b
    0.00 :   2157:   mov    %r8d,%r11d
    0.00 :   215a:   not    %r11b
    0.00 :   215d:   mov    0x8(%r12),%rcx
    0.00 :   2162:   and    (%rcx,%r9,1),%r11b
    0.00 :   2166:   mov    %rdx,%rbx
    0.00 :   2169:   shr    $0x3,%rbx
    0.00 :   216d:   mov    %rdx,%rcx
    0.00 :   2170:   and    $0x7,%rcx
    0.00 :   2174:   je     2188 <reverse+0x78>
    0.00 :   2176:   mov    $0xff,%r10b
    0.00 :   2179:   cmp    %rax,%rbx
    0.00 :   217c:   jne    219c <reverse+0x8c>
    0.00 :   217e:   xor    %r14d,%r14d
    0.00 :   2181:   cmp    %r9,%rbp
    0.00 :   2184:   jae    21b6 <reverse+0xa6>
    0.00 :   2186:   jmp    21f6 <reverse+0xe6>
    0.00 :   2188:   add    $0xffffffffffffffff,%rbx
    0.00 :   218c:   mov    $0xff,%r10b
    0.00 :   218f:   xor    %r14d,%r14d
    0.00 :   2192:   mov    %rbx,%rbp
    0.00 :   2195:   cmp    %r9,%rbp
    0.00 :   2198:   jae    21b6 <reverse+0xa6>
    0.00 :   219a:   jmp    21f6 <reverse+0xe6>
    0.00 :   219c:   shl    %cl,%r10b
    0.00 :   219f:   mov    0x8(%r12),%rax
    0.00 :   21a4:   mov    (%rax,%rbx,1),%r14b
    0.00 :   21a8:   and    %r10b,%r14b
    0.00 :   21ab:   not    %r10b
    0.00 :   21ae:   mov    %rbx,%rbp
    0.00 :   21b1:   cmp    %r9,%rbp
    0.00 :   21b4:   jb     21f6 <reverse+0xe6>
    0.00 :   21b6:   mov    %r9,%rax
    0.00 :   21b9:   nopl   0x0(%rax)
   33.47 :   21c0:   mov    0x8(%r12),%rdi
    0.00 :   21c5:   movzbl (%rdi,%rax,1),%ebx
    0.00 :   21c9:   rol    $0x4,%bl
    0.00 :   21cc:   mov    %ebx,%ecx
    0.00 :   21ce:   and    $0x33,%cl
    0.00 :   21d1:   shl    $0x2,%cl
    0.00 :   21d4:   shr    $0x2,%bl
    0.00 :   21d7:   and    $0x33,%bl
    0.00 :   21da:   or     %cl,%bl
    0.00 :   21dc:   mov    %ebx,%ecx
    0.00 :   21de:   and    $0x55,%cl
    0.00 :   21e1:   add    %cl,%cl
    0.00 :   21e3:   shr    %bl
    0.00 :   21e5:   and    $0x55,%bl
    0.00 :   21e8:   or     %cl,%bl
    0.00 :   21ea:   mov    %bl,(%rdi,%rax,1)
    0.00 :   21ed:   add    $0x1,%rax
    0.00 :   21f1:   cmp    %rbp,%rax
    0.00 :   21f4:   jbe    21c0 <reverse+0xb0>
    0.42 :   21f6:   mov    0x8(%r12),%rdi
    0.00 :   21fb:   lea    0x1(%rbp),%r15
    0.00 :   21ff:   mov    %rbp,-0x10(%rsp)
    0.00 :   2204:   lea    (%r9,%rbp,1),%rax
    0.00 :   2208:   add    $0x1,%rax
    0.00 :   220c:   shr    %rax
    0.00 :   220f:   cmp    %r9,%rax
    0.00 :   2212:   jbe    22ac <reverse+0x19c>
    0.00 :   2218:   mov    %r14d,-0x4(%rsp)
    0.00 :   221d:   mov    %r11d,-0x8(%rsp)
    0.00 :   2222:   mov    %eax,%r11d
    0.00 :   2225:   sub    %r9d,%r11d
    0.00 :   2228:   lea    0x1(%r9),%rbx
    0.00 :   222c:   mov    %r9,%r14
    0.00 :   222f:   mov    %r15,%r13
    0.00 :   2232:   test   $0x1,%r11b
    0.00 :   2236:   je     2253 <reverse+0x143>
    0.00 :   2238:   mov    %rdi,%rbp
    0.00 :   223b:   mov    (%rdi,%r9,1),%r11b
    0.00 :   223f:   mov    -0x10(%rsp),%r13
    0.00 :   2244:   mov    (%rdi,%r13,1),%cl
    0.00 :   2248:   mov    %cl,(%rdi,%r9,1)
    0.00 :   224c:   mov    %r11b,(%rdi,%r13,1)
    0.00 :   2250:   mov    %rbx,%r14
    0.00 :   2253:   cmp    %rbx,%rax
    0.00 :   2256:   je     229d <reverse+0x18d>
    0.00 :   2258:   lea    (%r14,%rdi,1),%rbx
    0.00 :   225c:   add    $0x1,%rbx
    0.00 :   2260:   sub    %rax,%r14
    0.00 :   2263:   lea    (%rdi,%r13,1),%rax
    0.00 :   2267:   add    $0xffffffffffffffff,%rax
    0.00 :   226b:   xor    %ebp,%ebp
    0.00 :   226d:   nopl   (%rax)
   10.88 :   2270:   movzbl -0x1(%rbx),%r11d
    0.00 :   2275:   movzbl (%rax,%rbp,1),%ecx
    0.00 :   2279:   mov    %cl,-0x1(%rbx)
    0.00 :   227c:   mov    %r11b,(%rax,%rbp,1)
    0.00 :   2280:   movzbl (%rbx),%r11d
    0.00 :   2284:   movzbl -0x1(%rax,%rbp,1),%ecx
    0.00 :   2289:   mov    %cl,(%rbx)
    0.00 :   228b:   mov    %r11b,-0x1(%rax,%rbp,1)
    0.00 :   2290:   add    $0xfffffffffffffffe,%rbp
    0.00 :   2294:   add    $0x2,%rbx
    0.00 :   2298:   cmp    %rbp,%r14
    0.00 :   229b:   jne    2270 <reverse+0x160>
    0.00 :   229d:   mov    0x8(%r12),%rdi
    0.00 :   22a2:   mov    -0x8(%rsp),%r11d
    0.00 :   22a7:   mov    -0x4(%rsp),%r14d
    0.00 :   22ac:   and    $0x7,%esi
    0.00 :   22af:   neg    %edx
    0.00 :   22b1:   and    $0x7,%edx
    0.00 :   22b4:   sub    %rsi,%rdx
    0.00 :   22b7:   je     24fb <reverse+0x3eb>
    0.00 :   22bd:   mov    %rdx,%rcx
    0.00 :   22c0:   neg    %rcx
    0.00 :   22c3:   cmovs  %rdx,%rcx
    0.00 :   22c7:   test   %rdx,%rdx
    0.00 :   22ca:   jle    22f3 <reverse+0x1e3>
    0.00 :   22cc:   mov    -0x10(%rsp),%r15
    0.00 :   22d1:   mov    %r15,%rbp
    0.00 :   22d4:   sub    %r9,%rbp
    0.00 :   22d7:   jbe    24ea <reverse+0x3da>
    0.00 :   22dd:   mov    (%rdi,%r9,1),%bl
    0.00 :   22e1:   cmp    $0x10,%rbp
    0.00 :   22e5:   jae    237b <reverse+0x26b>
    0.00 :   22eb:   mov    %r9,%rax
    0.00 :   22ee:   jmp    24ac <reverse+0x39c>
    0.00 :   22f3:   cmp    %r9,-0x10(%rsp)
    0.00 :   22f8:   jbe    236c <reverse+0x25c>
    0.00 :   22fa:   mov    %rdi,%rbp
    0.00 :   22fd:   mov    -0x10(%rsp),%rdi
    0.00 :   2302:   mov    %edi,%esi
    0.00 :   2304:   sub    %r9d,%esi
    0.00 :   2307:   lea    0x1(%r9),%rax
    0.00 :   230b:   mov    %rdi,%rdx
    0.00 :   230e:   test   $0x1,%sil
    0.00 :   2312:   je     2329 <reverse+0x219>
    0.00 :   2314:   lea    -0x1(%rdi),%rdx
    0.00 :   2318:   mov    %rbp,%rsi
    0.00 :   231b:   movzwl -0x1(%rbp,%rdi,1),%ebx
    0.00 :   2320:   shl    %cl,%ebx
    0.00 :   2322:   mov    %bh,0x0(%rbp,%rdi,1)
    0.00 :   2326:   mov    %rdi,%r15
    0.00 :   2329:   cmp    %rax,%rdi
    0.00 :   232c:   mov    %rbp,%rdi
    0.00 :   232f:   je     236c <reverse+0x25c>
    0.00 :   2331:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   233b:   nopl   0x0(%rax,%rax,1)
    5.02 :   2340:   movzbl (%rdi,%rdx,1),%eax
    0.00 :   2344:   shl    $0x8,%eax
    0.00 :   2347:   movzbl -0x2(%r15,%rdi,1),%ebx
    0.00 :   234d:   or     %eax,%ebx
    0.00 :   234f:   shl    %cl,%ebx
    0.00 :   2351:   mov    %bh,(%rdi,%rdx,1)
    0.00 :   2354:   movzwl -0x2(%rdi,%rdx,1),%eax
    0.00 :   2359:   shl    %cl,%eax
    0.00 :   235b:   lea    -0x1(%rdx),%r15
    0.00 :   235f:   mov    %ah,-0x1(%rdi,%rdx,1)
    0.00 :   2363:   add    $0xfffffffffffffffe,%rdx
    0.00 :   2367:   cmp    %r9,%rdx
    0.00 :   236a:   ja     2340 <reverse+0x230>
    0.00 :   236c:   movzbl (%rdi,%r9,1),%eax
    0.00 :   2371:   add    %r9,%rdi
    0.00 :   2374:   shl    %cl,%eax
    0.00 :   2376:   jmp    24f4 <reverse+0x3e4>
    0.00 :   237b:   mov    %rbp,%rsi
    0.00 :   237e:   and    $0xfffffffffffffff0,%rsi
    0.00 :   2382:   lea    (%r9,%rsi,1),%rax
    0.00 :   2386:   movzbl %bl,%edx
    0.00 :   2389:   mov    %rsi,%rbx
    0.00 :   238c:   movd   %edx,%xmm2
    0.00 :   2390:   pslldq $0xf,%xmm2
    0.00 :   2395:   movd   %ecx,%xmm3
    0.00 :   2399:   lea    (%r9,%rdi,1),%rdx
    0.00 :   239d:   add    $0x1,%rdx
    0.00 :   23a1:   xor    %esi,%esi
    0.00 :   23a3:   pxor   %xmm10,%xmm10
    0.00 :   23a8:   xorps  %xmm9,%xmm9
    0.00 :   23ac:   movss  %xmm3,%xmm9
    0.00 :   23b1:   movdqa 0xb36(%rip),%xmm8        # 2ef0 <_IO_stdin_used+0x430>
    0.00 :   23ba:   nopw   0x0(%rax,%rax,1)
   49.79 :   23c0:   movdqa %xmm2,%xmm4
    0.00 :   23c4:   movdqu (%rdx,%rsi,1),%xmm2
    0.00 :   23c9:   movdqa %xmm2,%xmm5
    0.00 :   23cd:   pslldq $0x1,%xmm5
    0.00 :   23d2:   psrldq $0xf,%xmm4
    0.00 :   23d7:   por    %xmm5,%xmm4
    0.00 :   23db:   movdqa %xmm2,%xmm7
    0.00 :   23df:   punpckhbw %xmm10,%xmm7
    0.00 :   23e4:   movdqa %xmm7,%xmm3
    0.00 :   23e8:   punpckhwd %xmm10,%xmm3
    0.00 :   23ed:   punpcklwd %xmm10,%xmm7
    0.00 :   23f2:   movdqa %xmm2,%xmm0
    0.00 :   23f6:   punpcklbw %xmm10,%xmm0
    0.00 :   23fb:   movdqa %xmm0,%xmm1
    0.00 :   23ff:   punpckhwd %xmm10,%xmm1
    0.00 :   2404:   punpcklwd %xmm10,%xmm0
    0.00 :   2409:   pslld  $0x8,%xmm0
    0.00 :   240e:   pslld  $0x8,%xmm1
    0.00 :   2413:   pslld  $0x8,%xmm7
    0.00 :   2418:   pslld  $0x8,%xmm3
    0.00 :   241d:   punpcklbw %xmm10,%xmm4
    0.00 :   2422:   movdqa %xmm4,%xmm6
    0.00 :   2426:   punpcklwd %xmm10,%xmm6
    0.00 :   242b:   por    %xmm0,%xmm6
    0.00 :   242f:   punpckhwd %xmm10,%xmm4
    0.00 :   2434:   por    %xmm1,%xmm4
    0.00 :   2438:   punpckhbw %xmm10,%xmm5
    0.00 :   243d:   movdqa %xmm5,%xmm0
    0.00 :   2441:   punpcklwd %xmm10,%xmm0
    0.00 :   2446:   por    %xmm7,%xmm0
    0.00 :   244a:   punpckhwd %xmm10,%xmm5
    0.00 :   244f:   por    %xmm3,%xmm5
    0.00 :   2453:   psrld  %xmm9,%xmm6
    0.00 :   2458:   psrld  %xmm9,%xmm4
    0.00 :   245d:   psrld  %xmm9,%xmm0
    0.00 :   2462:   psrld  %xmm9,%xmm5
    0.00 :   2467:   pand   %xmm8,%xmm5
    0.00 :   246c:   pand   %xmm8,%xmm0
    0.00 :   2471:   packuswb %xmm5,%xmm0
    0.00 :   2475:   pand   %xmm8,%xmm4
    0.00 :   247a:   pand   %xmm8,%xmm6
    0.00 :   247f:   packuswb %xmm4,%xmm6
    0.00 :   2483:   packuswb %xmm0,%xmm6
    0.00 :   2487:   movdqu %xmm6,-0x1(%rdx,%rsi,1)
    0.00 :   248d:   add    $0x10,%rsi
    0.00 :   2491:   cmp    %rsi,%rbx
    0.00 :   2494:   jne    23c0 <reverse+0x2b0>
    0.00 :   249a:   cmp    %rbx,%rbp
    0.00 :   249d:   mov    -0x10(%rsp),%r15
    0.00 :   24a2:   je     24ea <reverse+0x3da>
    0.00 :   24a4:   pextrw $0x7,%xmm2,%ebx
    0.00 :   24a9:   shr    $0x8,%ebx
    0.00 :   24ac:   mov    -0x10(%rsp),%r15
    0.00 :   24b1:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   24bb:   nopl   0x0(%rax,%rax,1)
    0.00 :   24c0:   movzbl 0x1(%rdi,%rax,1),%edx
    0.00 :   24c5:   mov    %edx,%esi
    0.00 :   24c7:   shl    $0x8,%esi
    0.00 :   24ca:   mov    %rdi,%rbp
    0.00 :   24cd:   movzbl %bl,%edi
    0.00 :   24d0:   or     %esi,%edi
    0.00 :   24d2:   shr    %cl,%edi
    0.00 :   24d4:   mov    %edx,%ebx
    0.00 :   24d6:   mov    %dil,0x0(%rbp,%rax,1)
    0.00 :   24db:   mov    %rbp,%rdi
    0.00 :   24de:   lea    0x1(%rax),%rdx
    0.00 :   24e2:   mov    %rdx,%rax
    0.00 :   24e5:   cmp    %rdx,%r15
    0.00 :   24e8:   jne    24c0 <reverse+0x3b0>
    0.42 :   24ea:   movzbl (%rdi,%r15,1),%eax
    0.00 :   24ef:   add    %r15,%rdi
    0.00 :   24f2:   shr    %cl,%eax
    0.00 :   24f4:   mov    %al,(%rdi)
    0.00 :   24f6:   mov    0x8(%r12),%rdi
    0.00 :   24fb:   and    (%rdi,%r9,1),%r8b
    0.00 :   24ff:   or     %r11b,%r8b
    0.00 :   2502:   mov    %r8b,(%rdi,%r9,1)
    0.00 :   2506:   mov    -0x10(%rsp),%rax
    0.00 :   250b:   and    (%rdi,%rax,1),%r10b
    0.00 :   250f:   or     %r14b,%r10b
    0.00 :   2512:   mov    %r10b,(%rdi,%rax,1)
    0.00 :   2516:   pop    %rbx
    0.00 :   2517:   pop    %r12
    0.00 :   2519:   pop    %r13
    0.00 :   251b:   pop    %r14
    0.00 :   251d:   pop    %r15
    0.00 :   251f:   pop    %rbp
    0.00 :   2520:   ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (81 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     0000000000046230 <random>:
         : 6     __random():
         : 7     ./stdlib/random.c:288
    2.47 :   46230:  endbr64
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
    4.94 :   46257:  lea    0x4(%rsp),%rsi
    0.00 :   4625c:  lea    0x1d45fd(%rip),%rdi        # 21a860 <unsafe_state>
    0.00 :   46263:  call   466c0 <random_r>
         : 23    ./stdlib/random.c:295 (discriminator 6)
   81.48 :   46268:  xor    %eax,%eax
    0.00 :   4626a:  xchg   %eax,0x1d64d8(%rip)        # 21c748 <lock>
    0.00 :   46270:  cmp    $0x1,%eax
    0.00 :   46273:  jg     462a0 <random+0x70>
         : 28    ./stdlib/random.c:297
    6.17 :   46275:  movslq 0x4(%rsp),%rax
         : 30    ./stdlib/random.c:298
    0.00 :   4627a:  mov    0x8(%rsp),%rdx
    0.00 :   4627f:  sub    %fs:0x28,%rdx
    0.00 :   46288:  jne    462ae <random+0x7e>
    4.94 :   4628a:  add    $0x18,%rsp
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
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (54 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     0000000000046760 <rand>:
         : 6     rand():
         : 7     ./stdlib/rand.c:26
   31.48 :   46760:  endbr64
    0.00 :   46764:  sub    $0x8,%rsp
         : 10    ./stdlib/rand.c:27
    0.00 :   46768:  call   46230 <random>
         : 12    ./stdlib/rand.c:28
   68.52 :   4676d:  add    $0x8,%rsp
    0.00 :   46771:  ret
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (41 samples, percent: local period)
-------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000466c0 <random_r>:
         : 6     __random_r():
         : 7     ./stdlib/random_r.c:354
    7.32 :   466c0:  endbr64
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
   21.95 :   466f8:  mov    (%rdi),%rcx
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
   65.85 :   4671c:  cmp    %r8,%r9
    0.00 :   4671f:  ja     46740 <random_r+0x80>
         : 57    ./stdlib/random_r.c:360
    0.00 :   46721:  mov    %rax,%r8
         : 59    ./stdlib/random_r.c:387
    0.00 :   46724:  mov    %rcx,%rax
         : 61    ./stdlib/random_r.c:390
    4.88 :   46727:  movq   %r8,%xmm1
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
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (32 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
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
    9.38 :   1ba0:   call   c70 <rand@plt>
   90.62 :   1ba5:   mov    %eax,(%r15,%rbx,4)
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
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (13 samples, percent: local period)
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
 Percent |	Source code & Disassembly of everybit for cpu-clock:pppH (2 samples, percent: local period)
-----------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000002580 <bitarray_rotate>:
         : 6    bitarray_rotate():
    0.00 :   2580:   push   %rbp
    0.00 :   2581:   push   %r15
    0.00 :   2583:   push   %r14
    0.00 :   2585:   push   %r13
    0.00 :   2587:   push   %r12
    0.00 :   2589:   push   %rbx
    0.00 :   258a:   sub    $0x38,%rsp
    0.00 :   258e:   mov    %rdx,%rbx
    0.00 :   2591:   mov    %rsi,%r14
    0.00 :   2594:   mov    %rdi,%r13
    0.00 :   2597:   cmp    $0x8,%rdx
    0.00 :   259b:   ja     25bc <bitarray_rotate+0x3c>
    0.00 :   259d:   test   %rbx,%rbx
    0.00 :   25a0:   je     27f6 <bitarray_rotate+0x276>
    0.00 :   25a6:   mov    %rcx,%rax
    0.00 :   25a9:   or     %rbx,%rax
    0.00 :   25ac:   shr    $0x20,%rax
    0.00 :   25b0:   je     25e5 <bitarray_rotate+0x65>
    0.00 :   25b2:   mov    %rcx,%rax
    0.00 :   25b5:   cqto
    0.00 :   25b7:   idiv   %rbx
    0.00 :   25ba:   jmp    25eb <bitarray_rotate+0x6b>
    0.00 :   25bc:   test   %rcx,%rcx
    0.00 :   25bf:   je     27f6 <bitarray_rotate+0x276>
    0.00 :   25c5:   mov    %rcx,%rax
    0.00 :   25c8:   or     %rbx,%rax
    0.00 :   25cb:   shr    $0x20,%rax
    0.00 :   25cf:   je     2714 <bitarray_rotate+0x194>
    0.00 :   25d5:   mov    %rcx,%rax
    0.00 :   25d8:   cqto
    0.00 :   25da:   idiv   %rbx
    0.00 :   25dd:   mov    %rdx,%rax
    0.00 :   25e0:   jmp    271c <bitarray_rotate+0x19c>
    0.00 :   25e5:   mov    %ecx,%eax
    0.00 :   25e7:   xor    %edx,%edx
    0.00 :   25e9:   div    %ebx
    0.00 :   25eb:   mov    %ebx,%eax
    0.00 :   25ed:   sub    %edx,%eax
    0.00 :   25ef:   cbtw
    0.00 :   25f1:   idiv   %bl
    0.00 :   25f3:   movsbl %ah,%eax
    0.00 :   25f6:   test   %al,%al
    0.00 :   25f8:   je     27f6 <bitarray_rotate+0x276>
    0.00 :   25fe:   cltq
    0.00 :   2600:   mov    %r14,%rbp
    0.00 :   2603:   shr    $0x3,%rbp
    0.00 :   2607:   lea    (%rbx,%r14,1),%rdi
    0.00 :   260b:   lea    0x1(%r14),%rsi
    0.00 :   260f:   mov    %r14d,%ecx
    0.00 :   2612:   and    $0x7,%cl
    0.00 :   2615:   mov    $0x1,%dl
    0.00 :   2617:   shl    %cl,%dl
    0.00 :   2619:   cmp    %rdi,%rsi
    0.00 :   261c:   jae    2784 <bitarray_rotate+0x204>
  100.00 :   2622:   add    $0xffffffffffffffff,%rbx
    0.00 :   2626:   xor    %r11d,%r11d
    0.00 :   2629:   xor    %ecx,%ecx
    0.00 :   262b:   mov    %rbx,0x28(%rsp)
    0.00 :   2630:   mov    %r14,0x20(%rsp)
    0.00 :   2635:   mov    %rbp,0x18(%rsp)
    0.00 :   263a:   mov    %dl,0xe(%rsp)
    0.00 :   263e:   mov    %rax,0x10(%rsp)
    0.00 :   2643:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   264d:   nopl   (%rax)
    0.00 :   2650:   mov    %rcx,0x30(%rsp)
    0.00 :   2655:   mov    0x8(%r13),%r12
    0.00 :   2659:   mov    (%r12,%rbp,1),%al
    0.00 :   265d:   mov    %al,0xf(%rsp)
    0.00 :   2661:   mov    %r14,%rax
    0.00 :   2664:   cs nopw 0x0(%rax,%rax,1)
    0.00 :   266e:   xchg   %ax,%ax
    0.00 :   2670:   lea    0x1(%rax),%rbp
    0.00 :   2674:   mov    %ebp,%ecx
    0.00 :   2676:   mov    %rbp,%rsi
    0.00 :   2679:   shr    $0x3,%rsi
    0.00 :   267d:   and    $0x7,%cl
    0.00 :   2680:   mov    $0x1,%r8b
    0.00 :   2683:   shl    %cl,%r8b
    0.00 :   2686:   movzbl (%r12,%rsi,1),%r15d
    0.00 :   268b:   movzbl %cl,%r14d
    0.00 :   268f:   mov    %rax,%r9
    0.00 :   2692:   shr    $0x3,%r9
    0.00 :   2696:   mov    %eax,%ecx
    0.00 :   2698:   and    $0x7,%cl
    0.00 :   269b:   mov    $0x1,%r10b
    0.00 :   269e:   shl    %cl,%r10b
    0.00 :   26a1:   bt     %r14d,%r15d
    0.00 :   26a5:   movzbl %r10b,%edi
    0.00 :   26a9:   cmovae %r11d,%edi
    0.00 :   26ad:   mov    $0xfe,%dl
    0.00 :   26af:   mov    %eax,%ecx
    0.00 :   26b1:   rol    %cl,%dl
    0.00 :   26b3:   mov    %rbp,%rax
    0.00 :   26b6:   and    (%r12,%r9,1),%dl
    0.00 :   26ba:   or     %dil,%dl
    0.00 :   26bd:   mov    %dl,(%r12,%r9,1)
    0.00 :   26c1:   mov    0x8(%r13),%r12
    0.00 :   26c5:   add    $0xffffffffffffffff,%rbx
    0.00 :   26c9:   jne    2670 <bitarray_rotate+0xf0>
    0.00 :   26cb:   mov    0xe(%rsp),%dl
    0.00 :   26cf:   test   %dl,0xf(%rsp)
    0.00 :   26d3:   movzbl %r8b,%eax
    0.00 :   26d7:   mov    %eax,%ecx
    0.00 :   26d9:   cmove  %r11d,%ecx
    0.00 :   26dd:   not    %al
    0.00 :   26df:   and    (%r12,%rsi,1),%al
    0.00 :   26e3:   or     %cl,%al
    0.00 :   26e5:   mov    %al,(%r12,%rsi,1)
    0.00 :   26e9:   mov    0x30(%rsp),%rcx
    0.00 :   26ee:   add    $0x1,%rcx
    0.00 :   26f2:   mov    0x10(%rsp),%rax
    0.00 :   26f7:   cmp    %rax,%rcx
    0.00 :   26fa:   mov    0x28(%rsp),%rbx
    0.00 :   26ff:   mov    0x20(%rsp),%r14
    0.00 :   2704:   mov    0x18(%rsp),%rbp
    0.00 :   2709:   jne    2650 <bitarray_rotate+0xd0>
    0.00 :   270f:   jmp    27f6 <bitarray_rotate+0x276>
    0.00 :   2714:   mov    %ecx,%eax
    0.00 :   2716:   xor    %edx,%edx
    0.00 :   2718:   div    %ebx
    0.00 :   271a:   mov    %edx,%eax
    0.00 :   271c:   add    %rbx,%rax
    0.00 :   271f:   mov    %rax,%rcx
    0.00 :   2722:   or     %rbx,%rcx
    0.00 :   2725:   shr    $0x20,%rcx
    0.00 :   2729:   je     2732 <bitarray_rotate+0x1b2>
    0.00 :   272b:   cqto
    0.00 :   272d:   idiv   %rbx
    0.00 :   2730:   jmp    2736 <bitarray_rotate+0x1b6>
    0.00 :   2732:   xor    %edx,%edx
    0.00 :   2734:   div    %ebx
    0.00 :   2736:   mov    %rbx,%rax
    0.00 :   2739:   sub    %rdx,%rax
    0.00 :   273c:   mov    %rax,%r12
    0.00 :   273f:   neg    %r12
    0.00 :   2742:   cmovs  %rax,%r12
    0.00 :   2746:   add    %r14,%rbx
    0.00 :   2749:   add    %r14,%r12
    0.00 :   274c:   mov    %r13,%rdi
    0.00 :   274f:   mov    %r14,%rsi
    0.00 :   2752:   mov    %r12,%rdx
    0.00 :   2755:   call   2110 <reverse>
    0.00 :   275a:   mov    %r13,%rdi
    0.00 :   275d:   mov    %r12,%rsi
    0.00 :   2760:   mov    %rbx,%rdx
    0.00 :   2763:   call   2110 <reverse>
    0.00 :   2768:   mov    %r13,%rdi
    0.00 :   276b:   mov    %r14,%rsi
    0.00 :   276e:   mov    %rbx,%rdx
    0.00 :   2771:   add    $0x38,%rsp
    0.00 :   2775:   pop    %rbx
    0.00 :   2776:   pop    %r12
    0.00 :   2778:   pop    %r13
    0.00 :   277a:   pop    %r14
    0.00 :   277c:   pop    %r15
    0.00 :   277e:   pop    %rbp
    0.00 :   277f:   jmp    2110 <reverse>
    0.00 :   2784:   movzbl %dl,%r9d
    0.00 :   2788:   not    %dl
    0.00 :   278a:   cmp    $0x1,%al
    0.00 :   278c:   je     27da <bitarray_rotate+0x25a>
    0.00 :   278e:   mov    %rax,%rcx
    0.00 :   2791:   and    $0xfffffffffffffffe,%rcx
    0.00 :   2795:   xor    %r8d,%r8d
    0.00 :   2798:   nopl   0x0(%rax,%rax,1)
    0.00 :   27a0:   mov    0x8(%r13),%rsi
    0.00 :   27a4:   movzbl (%rsi,%rbp,1),%ebx
    0.00 :   27a8:   test   %r9b,%bl
    0.00 :   27ab:   mov    %r9d,%edi
    0.00 :   27ae:   cmove  %r8d,%edi
    0.00 :   27b2:   and    %dl,%bl
    0.00 :   27b4:   or     %dil,%bl
    0.00 :   27b7:   mov    %bl,(%rsi,%rbp,1)
    0.00 :   27ba:   mov    0x8(%r13),%rsi
    0.00 :   27be:   movzbl (%rsi,%rbp,1),%ebx
    0.00 :   27c2:   test   %r9b,%bl
    0.00 :   27c5:   mov    %r9d,%edi
    0.00 :   27c8:   cmove  %r8d,%edi
    0.00 :   27cc:   and    %dl,%bl
    0.00 :   27ce:   or     %dil,%bl
    0.00 :   27d1:   mov    %bl,(%rsi,%rbp,1)
    0.00 :   27d4:   add    $0xfffffffffffffffe,%rcx
    0.00 :   27d8:   jne    27a0 <bitarray_rotate+0x220>
    0.00 :   27da:   test   $0x1,%al
    0.00 :   27dc:   je     27f6 <bitarray_rotate+0x276>
    0.00 :   27de:   mov    0x8(%r13),%rcx
    0.00 :   27e2:   mov    (%rcx,%rbp,1),%bl
    0.00 :   27e5:   xor    %esi,%esi
    0.00 :   27e7:   test   %r9b,%bl
    0.00 :   27ea:   cmovne %r9d,%esi
    0.00 :   27ee:   and    %bl,%dl
    0.00 :   27f0:   or     %sil,%dl
    0.00 :   27f3:   mov    %dl,(%rcx,%rbp,1)
    0.00 :   27f6:   add    $0x38,%rsp
    0.00 :   27fa:   pop    %rbx
    0.00 :   27fb:   pop    %r12
    0.00 :   27fd:   pop    %r13
    0.00 :   27ff:   pop    %r14
    0.00 :   2801:   pop    %r15
    0.00 :   2803:   pop    %rbp
    0.00 :   2804:   ret
 Percent |	Source code & Disassembly of 9pnet.ko for cpu-clock:pppH (1 samples, percent: local period)
-----------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000004810 <p9_client_read_once>:
         : 6    p9_client_read_once():
    0.00 :   4810:   call   4815 <p9_client_read_once+0x5>
    0.00 :   4815:   push   %rbp
    0.00 :   4816:   mov    %rdi,%rax
    0.00 :   4819:   mov    %rsi,%r8
    0.00 :   481c:   mov    %rsp,%rbp
    0.00 :   481f:   push   %r15
    0.00 :   4821:   push   %r14
    0.00 :   4823:   push   %r13
    0.00 :   4825:   mov    %rdx,%r13
    0.00 :   4828:   push   %r12
    0.00 :   482a:   push   %rbx
    0.00 :   482b:   sub    $0x28,%rsp
    0.00 :   482f:   mov    %rcx,-0x48(%rbp)
    0.00 :   4833:   mov    (%rdi),%r12
    0.00 :   4836:   mov    %gs:0x28,%rdx
    0.00 :   483f:   mov    %rdx,-0x30(%rbp)
    0.00 :   4843:   xor    %edx,%edx
    0.00 :   4845:   mov    0x10(%r13),%rdx
    0.00 :   4849:   movl   $0x0,(%rcx)
    0.00 :   484f:   mov    0x28(%rdi),%ebx
    0.00 :   4852:   mov    0x4(%r12),%edi
    0.00 :   4857:   mov    %edx,-0x3c(%rbp)
    0.00 :   485a:   lea    -0x18(%rdi),%ecx
    0.00 :   485d:   test   %ebx,%ebx
    0.00 :   485f:   je     49a6 <p9_client_read_once+0x196>
    0.00 :   4865:   cmp    %ecx,%ebx
    0.00 :   4867:   ja     49a6 <p9_client_read_once+0x196>
    0.00 :   486d:   mov    0x8(%rax),%ecx
    0.00 :   4870:   mov    0x10(%r12),%rax
    0.00 :   4875:   cmp    %edx,%ebx
    0.00 :   4877:   cmovg  %edx,%ebx
    0.00 :   487a:   cmpq   $0x0,0x50(%rax)
    0.00 :   487f:   je     488d <p9_client_read_once+0x7d>
    0.00 :   4881:   cmp    $0x400,%ebx
    0.00 :   4887:   jg     49ad <p9_client_read_once+0x19d>
    0.00 :   488d:   mov    %ebx,%r9d
    0.00 :   4890:   mov    $0x0,%rdx
    0.00 :   4897:   mov    $0x74,%esi
    0.00 :   489c:   mov    %r12,%rdi
    0.00 :   489f:   call   1aa0 <p9_client_rpc>
    0.00 :   48a4:   movl   $0x1,-0x4c(%rbp)
    0.00 :   48ab:   mov    %rax,%r14
    0.00 :   48ae:   cmp    $0xfffffffffffff000,%r14
    0.00 :   48b5:   ja     49eb <p9_client_read_once+0x1db>
    0.00 :   48bb:   movzbl 0x8(%r12),%esi
    0.00 :   48c1:   lea    0x50(%r14),%r15
    0.00 :   48c5:   lea    -0x38(%rbp),%r8
    0.00 :   48c9:   mov    $0x0,%rdx
    0.00 :   48d0:   lea    -0x3c(%rbp),%rcx
    0.00 :   48d4:   mov    %r15,%rdi
    0.00 :   48d7:   call   48dc <p9_client_read_once+0xcc>
    0.00 :   48dc:   mov    %eax,%r8d
    0.00 :   48df:   mov    -0x48(%rbp),%rax
    0.00 :   48e3:   mov    %r8d,(%rax)
    0.00 :   48e6:   test   %r8d,%r8d
    0.00 :   48e9:   jne    4a07 <p9_client_read_once+0x1f7>
    0.00 :   48ef:   mov    -0x3c(%rbp),%esi
    0.00 :   48f2:   cmp    %ebx,%esi
    0.00 :   48f4:   jg     48fa <p9_client_read_once+0xea>
    0.00 :   48fa:   mov    -0x4c(%rbp),%eax
    0.00 :   48fd:   movslq %esi,%rbx
    0.00 :   4900:   test   %eax,%eax
    0.00 :   4902:   je     49f7 <p9_client_read_once+0x1e7>
    0.00 :   4908:   mov    -0x38(%rbp),%r15
    0.00 :   490c:   cmp    $0x7fffffff,%rbx
    0.00 :   4913:   ja     4ac8 <p9_client_read_once+0x2b8>
    0.00 :   4919:   mov    $0x1,%edx
    0.00 :   491e:   mov    %rbx,%rsi
    0.00 :   4921:   mov    %r15,%rdi
    0.00 :   4924:   call   4929 <p9_client_read_once+0x119>
    0.00 :   4929:   mov    %rbx,%rsi
    0.00 :   492c:   mov    %r13,%rdx
    0.00 :   492f:   mov    %r15,%rdi
    0.00 :   4932:   call   4937 <p9_client_read_once+0x127>
    0.00 :   4937:   mov    -0x3c(%rbp),%esi
    0.00 :   493a:   mov    %eax,%r8d
    0.00 :   493d:   cmp    %esi,%r8d
    0.00 :   4940:   jne    4a47 <p9_client_read_once+0x237>
    0.00 :   4946:   movzwl 0x2e(%r14),%ebx
    0.00 :   494b:   mov    %r12,%rdi
    0.00 :   494e:   call   4953 <p9_client_read_once+0x143>
    0.00 :   4953:   lea    0x50(%r12),%rdi
    0.00 :   4958:   mov    %rax,%r13
    0.00 :   495b:   movzwl %bx,%esi
    0.00 :   495e:   call   4963 <p9_client_read_once+0x153>
    0.00 :   4963:   mov    %r13,%rsi
    0.00 :   4966:   mov    %r12,%rdi
    0.00 :   4969:   call   496e <p9_client_read_once+0x15e>
    0.00 :   496e:   mov    %r14,%rsi
    0.00 :   4971:   mov    %r12,%rdi
    0.00 :   4974:   call   4979 <p9_client_read_once+0x169>
    0.00 :   4979:   mov    -0x3c(%rbp),%r8d
    0.00 :   497d:   mov    -0x30(%rbp),%rax
    0.00 :   4981:   sub    %gs:0x28,%rax
    0.00 :   498a:   jne    4acf <p9_client_read_once+0x2bf>
    0.00 :   4990:   lea    -0x28(%rbp),%rsp
    0.00 :   4994:   mov    %r8d,%eax
    0.00 :   4997:   pop    %rbx
    0.00 :   4998:   pop    %r12
    0.00 :   499a:   pop    %r13
    0.00 :   499c:   pop    %r14
    0.00 :   499e:   pop    %r15
    0.00 :   49a0:   pop    %rbp
    0.00 :   49a1:   jmp    49a6 <p9_client_read_once+0x196>
    0.00 :   49a6:   mov    %ecx,%ebx
    0.00 :   49a8:   jmp    486d <p9_client_read_once+0x5d>
  100.00 :   49ad:   push   %rbx
    0.00 :   49ae:   xor    %r9d,%r9d
    0.00 :   49b1:   mov    %r13,%rdx
    0.00 :   49b4:   mov    $0x74,%esi
    0.00 :   49b9:   push   %r8
    0.00 :   49bb:   mov    %r12,%rdi
    0.00 :   49be:   mov    %ebx,%r8d
    0.00 :   49c1:   push   %rcx
    0.00 :   49c2:   xor    %ecx,%ecx
    0.00 :   49c4:   push   $0x0
    0.00 :   49c9:   push   $0xb
    0.00 :   49cb:   call   3dd0 <p9_client_zc_rpc.constprop.0>
    0.00 :   49d0:   movl   $0x0,-0x4c(%rbp)
    0.00 :   49d7:   mov    %rax,%r14
    0.00 :   49da:   add    $0x28,%rsp
    0.00 :   49de:   cmp    $0xfffffffffffff000,%r14
    0.00 :   49e5:   jbe    48bb <p9_client_read_once+0xab>
    0.00 :   49eb:   mov    -0x48(%rbp),%rax
    0.00 :   49ef:   xor    %r8d,%r8d
    0.00 :   49f2:   mov    %r14d,(%rax)
    0.00 :   49f5:   jmp    497d <p9_client_read_once+0x16d>
    0.00 :   49f7:   mov    %rbx,%rsi
    0.00 :   49fa:   mov    %r13,%rdi
    0.00 :   49fd:   call   4a02 <p9_client_read_once+0x1f2>
    0.00 :   4a02:   jmp    4946 <p9_client_read_once+0x136>
    0.00 :   4a07:   nopl   0x0(%rax,%rax,1)
    0.00 :   4a0c:   movzwl 0x2e(%r14),%ebx
    0.00 :   4a11:   mov    %r12,%rdi
    0.00 :   4a14:   call   4a19 <p9_client_read_once+0x209>
    0.00 :   4a19:   lea    0x50(%r12),%rdi
    0.00 :   4a1e:   mov    %rax,%r13
    0.00 :   4a21:   movzwl %bx,%esi
    0.00 :   4a24:   call   4a29 <p9_client_read_once+0x219>
    0.00 :   4a29:   mov    %r13,%rsi
    0.00 :   4a2c:   mov    %r12,%rdi
    0.00 :   4a2f:   call   4a34 <p9_client_read_once+0x224>
    0.00 :   4a34:   mov    %r14,%rsi
    0.00 :   4a37:   mov    %r12,%rdi
    0.00 :   4a3a:   call   4a3f <p9_client_read_once+0x22f>
    0.00 :   4a3f:   xor    %r8d,%r8d
    0.00 :   4a42:   jmp    497d <p9_client_read_once+0x16d>
    0.00 :   4a47:   mov    -0x48(%rbp),%rax
    0.00 :   4a4b:   mov    %r12,%rdi
    0.00 :   4a4e:   mov    %r8d,-0x4c(%rbp)
    0.00 :   4a52:   movl   $0xfffffff2,(%rax)
    0.00 :   4a58:   movzwl 0x2e(%r14),%ebx
    0.00 :   4a5d:   call   4a62 <p9_client_read_once+0x252>
    0.00 :   4a62:   movzwl %bx,%esi
    0.00 :   4a65:   lea    0x50(%r12),%rdi
    0.00 :   4a6a:   mov    %rax,%r13
    0.00 :   4a6d:   call   4a72 <p9_client_read_once+0x262>
    0.00 :   4a72:   mov    %r13,%rsi
    0.00 :   4a75:   mov    %r12,%rdi
    0.00 :   4a78:   call   4a7d <p9_client_read_once+0x26d>
    0.00 :   4a7d:   mov    %r14,%rsi
    0.00 :   4a80:   mov    %r12,%rdi
    0.00 :   4a83:   call   4a88 <p9_client_read_once+0x278>
    0.00 :   4a88:   mov    -0x4c(%rbp),%r8d
    0.00 :   4a8c:   jmp    497d <p9_client_read_once+0x16d>
    0.00 :   4a91:   mov    %gs:0x0(%rip),%eax        # 4a98 <p9_client_read_once+0x288>
    0.00 :   4a98:   mov    %eax,%eax
    0.00 :   4a9a:   bt     %rax,0x0(%rip)        # 4aa2 <p9_client_read_once+0x292>
    0.00 :   4aa2:   jae    4a0c <p9_client_read_once+0x1fc>
    0.00 :   4aa8:   mov    0x0(%rip),%rax        # 4aaf <p9_client_read_once+0x29f>
    0.00 :   4aaf:   test   %rax,%rax
    0.00 :   4ab2:   je     4ac3 <p9_client_read_once+0x2b3>
    0.00 :   4ab4:   mov    0x8(%rax),%rdi
    0.00 :   4ab8:   mov    %r15,%rdx
    0.00 :   4abb:   mov    %r12,%rsi
    0.00 :   4abe:   call   4ac3 <p9_client_read_once+0x2b3>
    0.00 :   4ac3:   jmp    4a0c <p9_client_read_once+0x1fc>
    0.00 :   4ac8:   ud2
    0.00 :   4aca:   jmp    493d <p9_client_read_once+0x12d>
    0.00 :   4acf:   call   4ad4 <p9_client_read_once+0x2c4>
 Percent |	Source code & Disassembly of virtio_net.ko for cpu-clock:pppH (1 samples, percent: local period)
----------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3    Disassembly of section .text:
         :
         : 5    0000000000007620 <receive_buf>:
         : 6    receive_buf():
    0.00 :   7620:   call   7625 <receive_buf+0x5>
    0.00 :   7625:   push   %rbp
    0.00 :   7626:   mov    %ecx,%r10d
    0.00 :   7629:   mov    %rsp,%rbp
    0.00 :   762c:   push   %r15
    0.00 :   762e:   mov    %rdx,%r15
    0.00 :   7631:   push   %r14
    0.00 :   7633:   push   %r13
    0.00 :   7635:   mov    %rdi,%r13
    0.00 :   7638:   push   %r12
    0.00 :   763a:   push   %rbx
    0.00 :   763b:   mov    %rsi,%rbx
    0.00 :   763e:   sub    $0x18,%rsp
    0.00 :   7642:   movzbl 0x37(%rdi),%eax
    0.00 :   7646:   mov    0x10(%rdi),%r14
    0.00 :   764a:   add    $0xe,%eax
    0.00 :   764d:   cmp    %ecx,%eax
    0.00 :   764f:   ja     7827 <receive_buf+0x207>
    0.00 :   7655:   movzbl 0x34(%rdi),%r12d
    0.00 :   765a:   cmp    $0x1,%r12b
    0.00 :   765e:   ja     7664 <receive_buf+0x44>
    0.00 :   7664:   and    $0x1,%r12d
    0.00 :   7668:   jne    77a3 <receive_buf+0x183>
    0.00 :   766e:   movzbl 0x33(%r13),%r12d
    0.00 :   7673:   cmp    $0x1,%r12b
    0.00 :   7677:   ja     767d <receive_buf+0x5d>
    0.00 :   767d:   and    $0x1,%r12d
    0.00 :   7681:   jne    7727 <receive_buf+0x107>
    0.00 :   7687:   push   0x10(%rbp)
    0.00 :   768a:   mov    %rbx,%rdx
    0.00 :   768d:   mov    %r15,%rcx
    0.00 :   7690:   mov    %r13,%rsi
    0.00 :   7693:   push   %r9
    0.00 :   7695:   mov    %r14,%rdi
    0.00 :   7698:   mov    %r10d,%r9d
    0.00 :   769b:   call   5e40 <receive_small>
    0.00 :   76a0:   mov    %rax,%r12
    0.00 :   76a3:   pop    %rax
    0.00 :   76a4:   pop    %rdx
    0.00 :   76a5:   test   %r12,%r12
    0.00 :   76a8:   je     7714 <receive_buf+0xf4>
    0.00 :   76aa:   testb  $0x2,0x28(%r12)
    0.00 :   76b0:   je     76c9 <receive_buf+0xa9>
    0.00 :   76b2:   movzbl 0x80(%r12),%eax
    0.00 :   76bb:   and    $0xffffff9f,%eax
    0.00 :   76be:   or     $0x20,%eax
    0.00 :   76c1:   mov    %al,0x80(%r12)
    0.00 :   76c9:   lea    0x28(%r12),%rsi
    0.00 :   76ce:   mov    %r12,%rdi
    0.00 :   76d1:   call   1910 <virtio_net_hdr_to_skb.constprop.0>
    0.00 :   76d6:   test   %eax,%eax
    0.00 :   76d8:   jne    77c6 <receive_buf+0x1a6>
  100.00 :   76de:   mov    (%rbx),%rax
    0.00 :   76e1:   mov    %r14,%rsi
    0.00 :   76e4:   mov    %r12,%rdi
    0.00 :   76e7:   mov    0x28(%rax),%eax
    0.00 :   76ea:   shr    %eax
    0.00 :   76ec:   add    $0x1,%eax
    0.00 :   76ef:   mov    %ax,0x7c(%r12)
    0.00 :   76f5:   call   76fa <receive_buf+0xda>
    0.00 :   76fa:   mov    %ax,0xb0(%r12)
    0.00 :   7703:   nopl   0x0(%rax,%rax,1)
    0.00 :   7708:   lea    0x8(%rbx),%rdi
    0.00 :   770c:   mov    %r12,%rsi
    0.00 :   770f:   call   7714 <receive_buf+0xf4>
    0.00 :   7714:   lea    -0x28(%rbp),%rsp
    0.00 :   7718:   pop    %rbx
    0.00 :   7719:   pop    %r12
    0.00 :   771b:   pop    %r13
    0.00 :   771d:   pop    %r14
    0.00 :   771f:   pop    %r15
    0.00 :   7721:   pop    %rbp
    0.00 :   7722:   jmp    7727 <receive_buf+0x107>
    0.00 :   7727:   push   $0x0
    0.00 :   7729:   mov    %r10d,%r8d
    0.00 :   772c:   mov    $0x1000,%r9d
    0.00 :   7732:   xor    %ecx,%ecx
    0.00 :   7734:   push   $0x0
    0.00 :   7736:   mov    %r15,%rdx
    0.00 :   7739:   mov    %rbx,%rsi
    0.00 :   773c:   mov    %r13,%rdi
    0.00 :   773f:   push   $0x1
    0.00 :   7741:   mov    %r10d,-0x2c(%rbp)
    0.00 :   7745:   call   56d0 <page_to_skb>
    0.00 :   774a:   mov    -0x2c(%rbp),%r10d
    0.00 :   774e:   mov    %rax,%r12
    0.00 :   7751:   movzbl 0x37(%r13),%eax
    0.00 :   7756:   add    $0x18,%rsp
    0.00 :   775a:   sub    %eax,%r10d
    0.00 :   775d:   mov    0x10(%rbp),%rax
    0.00 :   7761:   add    %r10,0x8(%rax)
    0.00 :   7765:   test   %r12,%r12
    0.00 :   7768:   jne    76aa <receive_buf+0x8a>
    0.00 :   776e:   addq   $0x1,0x10(%rax)
    0.00 :   7773:   mov    0x28(%r15),%rax
    0.00 :   7777:   test   %rax,%rax
    0.00 :   777a:   je     7920 <receive_buf+0x300>
    0.00 :   7780:   mov    %rax,%rdx
    0.00 :   7783:   mov    0x28(%rax),%rax
    0.00 :   7787:   test   %rax,%rax
    0.00 :   778a:   jne    7780 <receive_buf+0x160>
    0.00 :   778c:   mov    0x1e0(%rbx),%rax
    0.00 :   7793:   mov    %rax,0x28(%rdx)
    0.00 :   7797:   mov    %r15,0x1e0(%rbx)
    0.00 :   779e:   jmp    7714 <receive_buf+0xf4>
    0.00 :   77a3:   push   0x10(%rbp)
    0.00 :   77a6:   mov    %r15,%rcx
    0.00 :   77a9:   mov    %r13,%rsi
    0.00 :   77ac:   mov    %rbx,%rdx
    0.00 :   77af:   push   %r9
    0.00 :   77b1:   mov    %r14,%rdi
    0.00 :   77b4:   mov    %r10d,%r9d
    0.00 :   77b7:   call   66c0 <receive_mergeable>
    0.00 :   77bc:   pop    %rcx
    0.00 :   77bd:   pop    %rsi
    0.00 :   77be:   mov    %rax,%r12
    0.00 :   77c1:   jmp    76a5 <receive_buf+0x85>
    0.00 :   77c6:   call   77cb <receive_buf+0x1ab>
    0.00 :   77cb:   test   %eax,%eax
    0.00 :   77cd:   jne    77d3 <receive_buf+0x1b3>
    0.00 :   77d3:   addq   $0x1,0x190(%r14)
    0.00 :   77db:   mov    %r12,%rdi
    0.00 :   77de:   call   77e3 <receive_buf+0x1c3>
    0.00 :   77e3:   lea    -0x28(%rbp),%rsp
    0.00 :   77e7:   pop    %rbx
    0.00 :   77e8:   pop    %r12
    0.00 :   77ea:   pop    %r13
    0.00 :   77ec:   pop    %r14
    0.00 :   77ee:   pop    %r15
    0.00 :   77f0:   pop    %rbp
    0.00 :   77f1:   jmp    77f6 <receive_buf+0x1d6>
    0.00 :   77f6:   rol    $0x8,%ax
    0.00 :   77fa:   mov    0x70(%r12),%ecx
    0.00 :   77ff:   movzbl 0x80(%r12),%r8d
    0.00 :   7808:   mov    $0x0,%rsi
    0.00 :   780f:   movzwl %ax,%edx
    0.00 :   7812:   mov    $0x0,%rdi
    0.00 :   7819:   and    $0x7,%r8d
    0.00 :   781d:   call   7822 <receive_buf+0x202>
    0.00 :   7822:   jmp    7708 <receive_buf+0xe8>
    0.00 :   7827:   nopl   0x0(%rax,%rax,1)
    0.00 :   782c:   addq   $0x1,0x178(%r14)
    0.00 :   7834:   movzbl 0x34(%r13),%r12d
    0.00 :   7839:   cmp    $0x1,%r12b
    0.00 :   783d:   ja     7843 <receive_buf+0x223>
    0.00 :   7843:   and    $0x1,%r12d
    0.00 :   7847:   jne    787c <receive_buf+0x25c>
    0.00 :   7849:   movzbl 0x33(%r13),%r12d
    0.00 :   784e:   cmp    $0x1,%r12b
    0.00 :   7852:   ja     7858 <receive_buf+0x238>
    0.00 :   7858:   and    $0x1,%r12d
    0.00 :   785c:   je     787c <receive_buf+0x25c>
    0.00 :   785e:   mov    0x28(%r15),%rax
    0.00 :   7862:   test   %rax,%rax
    0.00 :   7865:   je     7920 <receive_buf+0x300>
    0.00 :   786b:   mov    %rax,%rdx
    0.00 :   786e:   mov    0x28(%rax),%rax
    0.00 :   7872:   test   %rax,%rax
    0.00 :   7875:   jne    786b <receive_buf+0x24b>
    0.00 :   7877:   jmp    778c <receive_buf+0x16c>
    0.00 :   787c:   mov    $0x80000000,%eax
    0.00 :   7881:   add    %r15,%rax
    0.00 :   7884:   jb     7928 <receive_buf+0x308>
    0.00 :   788a:   mov    $0xffffffff80000000,%rdx
    0.00 :   7891:   sub    0x0(%rip),%rdx        # 7898 <receive_buf+0x278>
    0.00 :   7898:   lea    (%rax,%rdx,1),%rdi
    0.00 :   789c:   shr    $0xc,%rdi
    0.00 :   78a0:   shl    $0x6,%rdi
    0.00 :   78a4:   add    0x0(%rip),%rdi        # 78ab <receive_buf+0x28b>
    0.00 :   78ab:   mov    0x8(%rdi),%rax
    0.00 :   78af:   lea    -0x1(%rax),%rdx
    0.00 :   78b3:   test   $0x1,%al
    0.00 :   78b5:   cmovne %rdx,%rdi
    0.00 :   78b9:   mov    0x8(%rdi),%rax
    0.00 :   78bd:   lea    -0x1(%rax),%rdx
    0.00 :   78c1:   test   $0x1,%al
    0.00 :   78c3:   cmovne %rdx,%rdi
    0.00 :   78c7:   xchg   %ax,%ax
    0.00 :   78c9:   lock decl 0x34(%rdi)
    0.00 :   78cd:   jne    7714 <receive_buf+0xf4>
    0.00 :   78d3:   call   78d8 <receive_buf+0x2b8>
    0.00 :   78d8:   jmp    7714 <receive_buf+0xf4>
    0.00 :   78dd:   mov    %r14,%rdx
    0.00 :   78e0:   mov    $0x0,%rsi
    0.00 :   78e7:   mov    $0x0,%rdi
    0.00 :   78ee:   call   78f3 <receive_buf+0x2d3>
    0.00 :   78f3:   jmp    782c <receive_buf+0x20c>
    0.00 :   78f8:   mov    (%rdi),%rax
    0.00 :   78fb:   shr    $0x33,%rax
    0.00 :   78ff:   and    $0x7,%eax
    0.00 :   7902:   cmp    $0x4,%eax
    0.00 :   7905:   jne    78c9 <receive_buf+0x2a9>
    0.00 :   7907:   mov    0x8(%rdi),%rax
    0.00 :   790b:   mov    0x60(%rax),%eax
    0.00 :   790e:   sub    $0x1,%eax
    0.00 :   7911:   cmp    $0x1,%eax
    0.00 :   7914:   ja     78c9 <receive_buf+0x2a9>
    0.00 :   7916:   call   791b <receive_buf+0x2fb>
    0.00 :   791b:   jmp    7714 <receive_buf+0xf4>
    0.00 :   7920:   mov    %r15,%rdx
    0.00 :   7923:   jmp    778c <receive_buf+0x16c>
    0.00 :   7928:   mov    0x0(%rip),%rdx        # 792f <receive_buf+0x30f>
    0.00 :   792f:   jmp    7898 <receive_buf+0x278>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     000000000008b600 <_IO_file_xsputn@@GLIBC_2.2.5>:
         : 6     _IO_new_file_xsputn():
         : 7     ./libio/fileops.c:1197
    0.00 :   8b600:  endbr64
    0.00 :   8b604:  push   %r15
    0.00 :   8b606:  push   %r14
    0.00 :   8b608:  push   %r13
    0.00 :   8b60a:  push   %r12
         : 13    ./libio/fileops.c:1204
    0.00 :   8b60c:  xor    %r12d,%r12d
         : 15    ./libio/fileops.c:1197
    0.00 :   8b60f:  push   %rbp
    0.00 :   8b610:  push   %rbx
    0.00 :   8b611:  sub    $0x18,%rsp
         : 19    ./libio/fileops.c:1203
    0.00 :   8b615:  test   %rdx,%rdx
    0.00 :   8b618:  je     8b66e <_IO_file_xsputn@@GLIBC_2.2.5+0x6e>
  100.00 :   8b61a:  mov    %rdi,%rbp
    0.00 :   8b61d:  mov    %rsi,%r13
         : 24    ./libio/fileops.c:1212
    0.00 :   8b620:  mov    0x28(%rdi),%rdi
    0.00 :   8b624:  mov    %rdx,%rbx
         : 27    ./libio/fileops.c:1210
    0.00 :   8b627:  mov    0x0(%rbp),%eax
    0.00 :   8b62a:  and    $0xa00,%eax
    0.00 :   8b62f:  cmp    $0xa00,%eax
    0.00 :   8b634:  je     8b680 <_IO_file_xsputn@@GLIBC_2.2.5+0x80>
         : 32    ./libio/fileops.c:1227
    0.00 :   8b636:  mov    0x30(%rbp),%r12
    0.00 :   8b63a:  cmp    %rdi,%r12
    0.00 :   8b63d:  jbe    8b6a0 <_IO_file_xsputn@@GLIBC_2.2.5+0xa0>
         : 36    ./libio/fileops.c:1228
    0.00 :   8b63f:  sub    %rdi,%r12
         : 38    ./libio/fileops.c:1231
    0.00 :   8b642:  xor    %r14d,%r14d
    0.00 :   8b645:  test   %r12,%r12
    0.00 :   8b648:  je     8b6a0 <_IO_file_xsputn@@GLIBC_2.2.5+0xa0>
         : 42    ./libio/fileops.c:1233
    0.00 :   8b64a:  cmp    %rbx,%r12
         : 44    ./libio/fileops.c:1235
    0.00 :   8b64d:  mov    %r13,%rsi
         : 46    ./libio/fileops.c:1237
    0.00 :   8b650:  mov    %rbx,%r15
    0.00 :   8b653:  cmova  %rbx,%r12
         : 49    ./libio/fileops.c:1235
    0.00 :   8b657:  mov    %r12,%rdx
         : 51    ./libio/fileops.c:1236
    0.00 :   8b65a:  add    %r12,%r13
         : 53    ./libio/fileops.c:1237
    0.00 :   8b65d:  sub    %r12,%r15
         : 55    ./libio/fileops.c:1235
    0.00 :   8b660:  call   283e0 <*ABS*+0xa97d0@plt>
    0.00 :   8b665:  mov    %rax,0x28(%rbp)
         : 58    ./libio/fileops.c:1239
    0.00 :   8b669:  add    %r15,%r14
    0.00 :   8b66c:  jne    8b6a3 <_IO_file_xsputn@@GLIBC_2.2.5+0xa3>
         : 61    ./libio/fileops.c:1267
    0.00 :   8b66e:  add    $0x18,%rsp
    0.00 :   8b672:  mov    %r12,%rax
    0.00 :   8b675:  pop    %rbx
    0.00 :   8b676:  pop    %rbp
    0.00 :   8b677:  pop    %r12
    0.00 :   8b679:  pop    %r13
    0.00 :   8b67b:  pop    %r14
    0.00 :   8b67d:  pop    %r15
    0.00 :   8b67f:  ret
         : 71    ./libio/fileops.c:1212
    0.00 :   8b680:  mov    0x40(%rbp),%r12
         : 73    ./libio/fileops.c:1216
    0.00 :   8b684:  lea    (%rsi,%rdx,1),%rax
         : 75    ./libio/fileops.c:1212
    0.00 :   8b688:  sub    %rdi,%r12
         : 77    ./libio/fileops.c:1213
    0.00 :   8b68b:  cmp    %r12,%rdx
    0.00 :   8b68e:  jbe    8b73d <_IO_file_xsputn@@GLIBC_2.2.5+0x13d>
         : 80    ./libio/fileops.c:1231
    0.00 :   8b694:  xor    %r14d,%r14d
    0.00 :   8b697:  test   %r12,%r12
    0.00 :   8b69a:  jne    8b64a <_IO_file_xsputn@@GLIBC_2.2.5+0x4a>
    0.00 :   8b69c:  nopl   0x0(%rax)
    0.00 :   8b6a0:  mov    %rbx,%r15
         : 86    ./libio/fileops.c:1243
    0.00 :   8b6a3:  mov    0xd8(%rbp),%rax
         : 88    IO_validate_vtable():
         : 89    ./libio/libioP.h:940
    0.00 :   8b6aa:  lea    0x18b34f(%rip),%r14        # 216a00 <_IO_helper_jumps>
    0.00 :   8b6b1:  lea    0x18c0b0(%rip),%r12        # 217768 <__stop___libc_IO_vtables>
    0.00 :   8b6b8:  sub    %r14,%r12
         : 93    ./libio/libioP.h:942
    0.00 :   8b6bb:  mov    %rax,%rdx
    0.00 :   8b6be:  sub    %r14,%rdx
         : 96    ./libio/libioP.h:943
    0.00 :   8b6c1:  cmp    %rdx,%r12
    0.00 :   8b6c4:  jbe    8b880 <_IO_file_xsputn@@GLIBC_2.2.5+0x280>
         : 99    _IO_new_file_xsputn():
         : 100   ./libio/fileops.c:1243
    0.00 :   8b6ca:  mov    $0xffffffff,%esi
    0.00 :   8b6cf:  mov    %rbp,%rdi
    0.00 :   8b6d2:  call   *0x18(%rax)
    0.00 :   8b6d5:  cmp    $0xffffffff,%eax
    0.00 :   8b6d8:  je     8b830 <_IO_file_xsputn@@GLIBC_2.2.5+0x230>
         : 106   ./libio/fileops.c:1249
    0.00 :   8b6de:  mov    0x40(%rbp),%rcx
    0.00 :   8b6e2:  sub    0x38(%rbp),%rcx
         : 109   ./libio/fileops.c:1250
    0.00 :   8b6e6:  mov    %r15,%r8
    0.00 :   8b6e9:  cmp    $0x7f,%rcx
    0.00 :   8b6ed:  jbe    8b6fa <_IO_file_xsputn@@GLIBC_2.2.5+0xfa>
    0.00 :   8b6ef:  mov    %r15,%rax
    0.00 :   8b6f2:  xor    %edx,%edx
    0.00 :   8b6f4:  div    %rcx
    0.00 :   8b6f7:  sub    %rdx,%r8
         : 117   ./libio/fileops.c:1252
    0.00 :   8b6fa:  test   %r8,%r8
    0.00 :   8b6fd:  jne    8b750 <_IO_file_xsputn@@GLIBC_2.2.5+0x150>
         : 120   ./libio/fileops.c:1263
    0.00 :   8b6ff:  mov    %rbx,%r12
    0.00 :   8b702:  test   %r15,%r15
    0.00 :   8b705:  je     8b66e <_IO_file_xsputn@@GLIBC_2.2.5+0x6e>
         : 124   ./libio/fileops.c:1264
    0.00 :   8b70b:  lea    0x0(%r13,%r8,1),%rsi
    0.00 :   8b710:  mov    %r15,%rdx
    0.00 :   8b713:  mov    %rbp,%rdi
    0.00 :   8b716:  call   8ddc0 <_IO_default_xsputn>
         : 129   ./libio/fileops.c:1266
    0.00 :   8b71b:  sub    %r15,%rax
    0.00 :   8b71e:  add    %rax,%r12
    0.00 :   8b721:  jmp    8b66e <_IO_file_xsputn@@GLIBC_2.2.5+0x6e>
    0.00 :   8b726:  cs nopw 0x0(%rax,%rax,1)
         : 134   ./libio/fileops.c:1218
    0.00 :   8b730:  sub    $0x1,%rax
    0.00 :   8b734:  cmpb   $0xa,(%rax)
    0.00 :   8b737:  je     8b850 <_IO_file_xsputn@@GLIBC_2.2.5+0x250>
         : 138   ./libio/fileops.c:1216
    0.00 :   8b73d:  cmp    %rax,%r13
    0.00 :   8b740:  jb     8b730 <_IO_file_xsputn@@GLIBC_2.2.5+0x130>
    0.00 :   8b742:  xor    %r14d,%r14d
    0.00 :   8b745:  jmp    8b64a <_IO_file_xsputn@@GLIBC_2.2.5+0x4a>
    0.00 :   8b74a:  nopw   0x0(%rax,%rax,1)
         : 144   new_do_write():
         : 145   ./libio/fileops.c:443
    0.00 :   8b750:  mov    0xd8(%rbp),%rax
         : 147   ./libio/fileops.c:433
    0.00 :   8b757:  testl  $0x1000,0x0(%rbp)
    0.00 :   8b75e:  jne    8b870 <_IO_file_xsputn@@GLIBC_2.2.5+0x270>
         : 150   ./libio/fileops.c:440
    0.00 :   8b764:  mov    0x10(%rbp),%rdx
    0.00 :   8b768:  mov    0x20(%rbp),%rsi
    0.00 :   8b76c:  cmp    %rsi,%rdx
    0.00 :   8b76f:  je     8b7b1 <_IO_file_xsputn@@GLIBC_2.2.5+0x1b1>
         : 155   IO_validate_vtable():
         : 156   ./libio/libioP.h:942
    0.00 :   8b771:  mov    %rax,%rcx
    0.00 :   8b774:  sub    %r14,%rcx
         : 159   ./libio/libioP.h:943
    0.00 :   8b777:  cmp    %rcx,%r12
    0.00 :   8b77a:  jbe    8b8fd <_IO_file_xsputn@@GLIBC_2.2.5+0x2fd>
         : 162   new_do_write():
         : 163   ./libio/fileops.c:443
    0.00 :   8b780:  sub    %rdx,%rsi
    0.00 :   8b783:  mov    %r8,(%rsp)
    0.00 :   8b787:  mov    $0x1,%edx
    0.00 :   8b78c:  mov    %rbp,%rdi
    0.00 :   8b78f:  call   *0x80(%rax)
         : 169   ./libio/fileops.c:444
    0.00 :   8b795:  cmp    $0xffffffffffffffff,%rax
    0.00 :   8b799:  je     8b8aa <_IO_file_xsputn@@GLIBC_2.2.5+0x2aa>
         : 172   ./libio/fileops.c:446
    0.00 :   8b79f:  mov    %rax,0x90(%rbp)
    0.00 :   8b7a6:  mov    (%rsp),%r8
    0.00 :   8b7aa:  mov    0xd8(%rbp),%rax
         : 176   IO_validate_vtable():
         : 177   ./libio/libioP.h:942
    0.00 :   8b7b1:  mov    %rax,%rdx
    0.00 :   8b7b4:  sub    %r14,%rdx
         : 180   ./libio/libioP.h:943
    0.00 :   8b7b7:  cmp    %rdx,%r12
    0.00 :   8b7ba:  jbe    8b8e1 <_IO_file_xsputn@@GLIBC_2.2.5+0x2e1>
         : 183   new_do_write():
         : 184   ./libio/fileops.c:448
    0.00 :   8b7c0:  mov    %r8,(%rsp)
    0.00 :   8b7c4:  mov    %r8,%rdx
    0.00 :   8b7c7:  mov    %r13,%rsi
    0.00 :   8b7ca:  mov    %rbp,%rdi
    0.00 :   8b7cd:  call   *0x78(%rax)
         : 190   ./libio/fileops.c:449
    0.00 :   8b7d0:  mov    (%rsp),%r8
         : 192   ./libio/fileops.c:448
    0.00 :   8b7d4:  mov    %rax,%r14
         : 194   ./libio/fileops.c:449
    0.00 :   8b7d7:  movzwl 0x80(%rbp),%eax
    0.00 :   8b7de:  test   %r14,%r14
    0.00 :   8b7e1:  je     8b7ec <_IO_file_xsputn@@GLIBC_2.2.5+0x1ec>
    0.00 :   8b7e3:  test   %ax,%ax
    0.00 :   8b7e6:  jne    8b8c0 <_IO_file_xsputn@@GLIBC_2.2.5+0x2c0>
         : 200   ./libio/fileops.c:451
    0.00 :   8b7ec:  mov    0x38(%rbp),%rax
         : 202   ./libio/fileops.c:455
    0.00 :   8b7f0:  mov    0xc0(%rbp),%edx
    0.00 :   8b7f6:  movq   %rax,%xmm0
         : 205   ./libio/fileops.c:452
    0.00 :   8b7fb:  mov    %rax,0x28(%rbp)
    0.00 :   8b7ff:  punpcklqdq %xmm0,%xmm0
         : 208   ./libio/fileops.c:451
    0.00 :   8b803:  movups %xmm0,0x8(%rbp)
    0.00 :   8b807:  movups %xmm0,0x18(%rbp)
         : 211   ./libio/fileops.c:455
    0.00 :   8b80b:  test   %edx,%edx
    0.00 :   8b80d:  jle    8b898 <_IO_file_xsputn@@GLIBC_2.2.5+0x298>
    0.00 :   8b813:  mov    0x40(%rbp),%rax
         : 215   ./libio/fileops.c:453
    0.00 :   8b817:  mov    %rax,0x30(%rbp)
         : 217   _IO_new_file_xsputn():
         : 218   ./libio/fileops.c:1256
    0.00 :   8b81b:  cmp    %r8,%r14
    0.00 :   8b81e:  jb     8b8ad <_IO_file_xsputn@@GLIBC_2.2.5+0x2ad>
         : 221   ./libio/fileops.c:1255
    0.00 :   8b824:  sub    %r14,%r15
    0.00 :   8b827:  jmp    8b6ff <_IO_file_xsputn@@GLIBC_2.2.5+0xff>
    0.00 :   8b82c:  nopl   0x0(%rax)
         : 225   ./libio/fileops.c:1246
    0.00 :   8b830:  sub    %r15,%rbx
    0.00 :   8b833:  mov    $0xffffffffffffffff,%rax
    0.00 :   8b83a:  test   %r15,%r15
    0.00 :   8b83d:  mov    %rbx,%r12
    0.00 :   8b840:  cmove  %rax,%r12
    0.00 :   8b844:  jmp    8b66e <_IO_file_xsputn@@GLIBC_2.2.5+0x6e>
    0.00 :   8b849:  nopl   0x0(%rax)
         : 233   ./libio/fileops.c:1220
    0.00 :   8b850:  sub    %r13,%rax
         : 235   ./libio/fileops.c:1231
    0.00 :   8b853:  add    $0x1,%rax
    0.00 :   8b857:  mov    %rax,%r12
    0.00 :   8b85a:  jne    8b921 <_IO_file_xsputn@@GLIBC_2.2.5+0x321>
    0.00 :   8b860:  mov    %rbx,%r15
    0.00 :   8b863:  mov    $0x1,%r14d
    0.00 :   8b869:  jmp    8b669 <_IO_file_xsputn@@GLIBC_2.2.5+0x69>
    0.00 :   8b86e:  xchg   %ax,%ax
         : 243   new_do_write():
         : 244   ./libio/fileops.c:439
    0.00 :   8b870:  movq   $0xffffffffffffffff,0x90(%rbp)
    0.00 :   8b87b:  jmp    8b7b1 <_IO_file_xsputn@@GLIBC_2.2.5+0x1b1>
    0.00 :   8b880:  mov    %rax,(%rsp)
         : 248   IO_validate_vtable():
         : 249   ./libio/libioP.h:946
    0.00 :   8b884:  call   89ef0 <_IO_vtable_check>
    0.00 :   8b889:  mov    (%rsp),%rax
    0.00 :   8b88d:  jmp    8b6ca <_IO_file_xsputn@@GLIBC_2.2.5+0xca>
    0.00 :   8b892:  nopw   0x0(%rax,%rax,1)
         : 254   new_do_write():
         : 255   ./libio/fileops.c:454
    0.00 :   8b898:  testl  $0x202,0x0(%rbp)
    0.00 :   8b89f:  jne    8b817 <_IO_file_xsputn@@GLIBC_2.2.5+0x217>
    0.00 :   8b8a5:  jmp    8b813 <_IO_file_xsputn@@GLIBC_2.2.5+0x213>
         : 259   ./libio/fileops.c:445
    0.00 :   8b8aa:  xor    %r14d,%r14d
         : 261   _IO_new_file_xsputn():
         : 262   ./libio/fileops.c:1257
    0.00 :   8b8ad:  sub    %r15,%rbx
    0.00 :   8b8b0:  mov    %rbx,%r12
    0.00 :   8b8b3:  add    %r14,%r12
    0.00 :   8b8b6:  jmp    8b66e <_IO_file_xsputn@@GLIBC_2.2.5+0x6e>
    0.00 :   8b8bb:  nopl   0x0(%rax,%rax,1)
         : 268   new_do_write():
         : 269   ./libio/fileops.c:450
    0.00 :   8b8c0:  lea    -0x1(%rax),%edi
    0.00 :   8b8c3:  mov    %r14d,%edx
    0.00 :   8b8c6:  mov    %r13,%rsi
    0.00 :   8b8c9:  call   8e8b0 <_IO_adjust_column>
    0.00 :   8b8ce:  mov    (%rsp),%r8
    0.00 :   8b8d2:  add    $0x1,%eax
    0.00 :   8b8d5:  mov    %ax,0x80(%rbp)
    0.00 :   8b8dc:  jmp    8b7ec <_IO_file_xsputn@@GLIBC_2.2.5+0x1ec>
    0.00 :   8b8e1:  mov    %rax,0x8(%rsp)
    0.00 :   8b8e6:  mov    %r8,(%rsp)
         : 280   IO_validate_vtable():
         : 281   ./libio/libioP.h:946
    0.00 :   8b8ea:  call   89ef0 <_IO_vtable_check>
    0.00 :   8b8ef:  mov    0x8(%rsp),%rax
    0.00 :   8b8f4:  mov    (%rsp),%r8
    0.00 :   8b8f8:  jmp    8b7c0 <_IO_file_xsputn@@GLIBC_2.2.5+0x1c0>
    0.00 :   8b8fd:  mov    %rax,0x8(%rsp)
    0.00 :   8b902:  mov    %r8,(%rsp)
    0.00 :   8b906:  call   89ef0 <_IO_vtable_check>
         : 289   new_do_write():
         : 290   ./libio/fileops.c:443
    0.00 :   8b90b:  mov    0x20(%rbp),%rsi
    0.00 :   8b90f:  mov    0x10(%rbp),%rdx
    0.00 :   8b913:  mov    0x8(%rsp),%rax
    0.00 :   8b918:  mov    (%rsp),%r8
    0.00 :   8b91c:  jmp    8b780 <_IO_file_xsputn@@GLIBC_2.2.5+0x180>
         : 296   _IO_new_file_xsputn():
         : 297   ./libio/fileops.c:443
    0.00 :   8b921:  mov    $0x1,%r14d
    0.00 :   8b927:  jmp    8b64a <_IO_file_xsputn@@GLIBC_2.2.5+0x4a>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     000000000005a930 <__GI___printf_fp_l>:
         : 6     __GI___printf_fp_l():
         : 7     ./stdio-common/printf_fp.c:216
    0.00 :   5a930:  endbr64
    0.00 :   5a934:  push   %rbp
    0.00 :   5a935:  mov    %rsp,%rbp
    0.00 :   5a938:  push   %r15
    0.00 :   5a93a:  push   %r14
    0.00 :   5a93c:  push   %r13
    0.00 :   5a93e:  push   %r12
    0.00 :   5a940:  mov    %rdi,%r12
    0.00 :   5a943:  mov    %rdx,%rdi
    0.00 :   5a946:  push   %rbx
    0.00 :   5a947:  sub    $0x128,%rsp
    0.00 :   5a94e:  mov    %rdx,-0xb8(%rbp)
    0.00 :   5a955:  mov    %rsi,-0xf8(%rbp)
    0.00 :   5a95c:  mov    %fs:0x28,%rax
    0.00 :   5a965:  mov    %rax,-0x38(%rbp)
    0.00 :   5a969:  xor    %eax,%eax
         : 24    ./stdio-common/printf_fp.c:266
    0.00 :   5a96b:  movzbl 0xd(%rdx),%eax
         : 26    ./stdio-common/printf_fp.c:257
    0.00 :   5a96f:  movl   $0x0,-0xa4(%rbp)
         : 28    ./stdio-common/printf_fp.c:274
    0.00 :   5a979:  movl   $0x0,-0xa0(%rbp)
         : 30    ./stdio-common/printf_fp.c:266
    0.00 :   5a983:  mov    %eax,%edx
    0.00 :   5a985:  shr    $0x2,%dl
    0.00 :   5a988:  mov    %edx,%ebx
         : 34    ./stdio-common/printf_fp.c:298
    0.00 :   5a98a:  movzbl 0xc(%rdi),%edx
         : 36    ./stdio-common/printf_fp.c:277
    0.00 :   5a98e:  mov    %eax,%edi
         : 38    ./stdio-common/printf_fp.c:266
    0.00 :   5a990:  and    $0x1,%ebx
    0.00 :   5a993:  mov    %ebx,-0xbc(%rbp)
         : 41    ./stdio-common/printf_fp.c:277
    0.00 :   5a999:  and    $0x1,%edi
    0.00 :   5a99c:  jne    5ab50 <__GI___printf_fp_l+0x220>
         : 44    _nl_lookup():
         : 45    ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5a9a2:  mov    0x8(%rsi),%rsi
    0.00 :   5a9a6:  mov    0x40(%rsi),%rbx
    0.00 :   5a9aa:  mov    %rbx,-0x108(%rbp)
         : 49    __GI___printf_fp_l():
         : 50    ./stdio-common/printf_fp.c:280
    0.00 :   5a9b1:  mov    0x58(%rsi),%ebx
    0.00 :   5a9b4:  mov    %ebx,-0xc0(%rbp)
         : 53    ./stdio-common/printf_fp.c:298
    0.00 :   5a9ba:  test   %dl,%dl
    0.00 :   5a9bc:  js     5acf0 <__GI___printf_fp_l+0x3c0>
         : 56    ./stdio-common/printf_fp.c:306
    0.00 :   5a9c2:  movq   $0x0,-0xe8(%rbp)
         : 58    ./stdio-common/printf_fp.c:234
    0.00 :   5a9cd:  movl   $0x0,-0x114(%rbp)
         : 60    ./stdio-common/printf_fp.c:233
    0.00 :   5a9d7:  movq   $0x0,-0x110(%rbp)
         : 62    ./stdio-common/printf_fp.c:388
    0.00 :   5a9e2:  mov    (%rcx),%rcx
         : 64    ./stdio-common/printf_fp.c:387
    0.00 :   5a9e5:  test   $0x10,%al
    0.00 :   5a9e7:  je     5ac28 <__GI___printf_fp_l+0x2f8>
         : 67    ./stdio-common/printf_fp.c:388
    0.00 :   5a9ed:  movdqa (%rcx),%xmm2
    0.00 :   5a9f1:  mov    %dl,-0xe0(%rbp)
    0.00 :   5a9f7:  movdqa %xmm2,%xmm1
    0.00 :   5a9fb:  movdqa %xmm2,%xmm0
    0.00 :   5a9ff:  movaps %xmm2,-0xd0(%rbp)
    0.00 :   5aa06:  call   1ba060 <__unordtf2>
    0.00 :   5aa0b:  movdqa -0xd0(%rbp),%xmm2
    0.00 :   5aa13:  movzbl -0xe0(%rbp),%edx
    0.00 :   5aa1a:  test   %rax,%rax
    0.00 :   5aa1d:  jne    5b8af <__GI___printf_fp_l+0xf7f>
         : 78    ./stdio-common/printf_fp.c:388 (discriminator 2)
    0.00 :   5aa23:  movdqa %xmm2,%xmm0
    0.00 :   5aa27:  movdqa 0x187741(%rip),%xmm1        # 1e2170 <othermask+0xe0>
    0.00 :   5aa2f:  pand   0x1876d9(%rip),%xmm0        # 1e2110 <othermask+0x80>
    0.00 :   5aa37:  movaps %xmm2,-0xd0(%rbp)
    0.00 :   5aa3e:  mov    %dl,-0xf0(%rbp)
    0.00 :   5aa44:  movaps %xmm0,-0xe0(%rbp)
    0.00 :   5aa4b:  call   1ba060 <__unordtf2>
    0.00 :   5aa50:  movdqa -0xd0(%rbp),%xmm2
    0.00 :   5aa58:  test   %rax,%rax
    0.00 :   5aa5b:  jne    5b7a8 <__GI___printf_fp_l+0xe78>
    0.00 :   5aa61:  movdqa 0x187707(%rip),%xmm1        # 1e2170 <othermask+0xe0>
    0.00 :   5aa69:  movdqa -0xe0(%rbp),%xmm0
    0.00 :   5aa71:  call   1ba460 <__letf2>
    0.00 :   5aa76:  movdqa -0xd0(%rbp),%xmm2
    0.00 :   5aa7e:  test   %rax,%rax
    0.00 :   5aa81:  jle    5b7a8 <__GI___printf_fp_l+0xe78>
         : 95    ./stdio-common/printf_fp.c:388 (discriminator 5)
    0.00 :   5aa87:  mov    -0xb8(%rbp),%rax
    0.00 :   5aa8e:  movmskps %xmm2,%r13d
    0.00 :   5aa92:  lea    0x17dc6e(%rip),%r14        # 1d8707 <not_available+0x1a9>
    0.00 :   5aa99:  movzbl -0xf0(%rbp),%edx
    0.00 :   5aaa0:  and    $0x8,%r13d
    0.00 :   5aaa4:  movslq 0x8(%rax),%rcx
    0.00 :   5aaa8:  mov    0x1bf349(%rip),%rax        # 219df8 <_DYNAMIC+0x238>
    0.00 :   5aaaf:  mov    %r13d,-0xa4(%rbp)
    0.00 :   5aab6:  mov    %fs:(%rax),%rax
    0.00 :   5aaba:  testb  $0x1,0x1(%rax,%rcx,2)
    0.00 :   5aabf:  lea    0x187f6a(%rip),%rax        # 1e2a30 <default_rwlockattr+0x358>
    0.00 :   5aac6:  lea    0x187f43(%rip),%rcx        # 1e2a10 <default_rwlockattr+0x338>
    0.00 :   5aacd:  cmove  %rax,%rcx
    0.00 :   5aad1:  lea    0x17daf2(%rip),%rax        # 1d85ca <not_available+0x6c>
    0.00 :   5aad8:  cmove  %rax,%r14
         : 111   ./stdio-common/printf_fp.c:402
    0.00 :   5aadc:  mov    -0xb8(%rbp),%rax
    0.00 :   5aae3:  mov    0x4(%rax),%ebx
         : 114   ./stdio-common/printf_fp.c:408
    0.00 :   5aae6:  mov    %edx,%eax
    0.00 :   5aae8:  shr    $0x5,%al
    0.00 :   5aaeb:  xor    $0x1,%eax
    0.00 :   5aaee:  and    $0x1,%eax
         : 119   ./stdio-common/printf_fp.c:404
    0.00 :   5aaf1:  test   %r13d,%r13d
    0.00 :   5aaf4:  je     5ada8 <__GI___printf_fp_l+0x478>
         : 122   ./stdio-common/printf_fp.c:406
    0.00 :   5aafa:  sub    $0x4,%ebx
         : 124   ./stdio-common/printf_fp.c:408
    0.00 :   5aafd:  test   %ebx,%ebx
    0.00 :   5aaff:  setg   %r15b
    0.00 :   5ab03:  jle    5ab0d <__GI___printf_fp_l+0x1dd>
    0.00 :   5ab05:  test   %al,%al
    0.00 :   5ab07:  jne    5ad00 <__GI___printf_fp_l+0x3d0>
         : 130   ./stdio-common/printf_fp.c:260
    0.00 :   5ab0d:  xor    %r13d,%r13d
         : 132   ./stdio-common/printf_fp.c:412
    0.00 :   5ab10:  mov    -0xbc(%rbp),%eax
    0.00 :   5ab16:  test   %eax,%eax
    0.00 :   5ab18:  je     5af18 <__GI___printf_fp_l+0x5e8>
         : 136   ./stdio-common/printf_fp.c:412 (discriminator 1)
    0.00 :   5ab1e:  mov    0xa0(%r12),%rax
    0.00 :   5ab26:  test   %rax,%rax
    0.00 :   5ab29:  je     5cc6d <__GI___printf_fp_l+0x233d>
         : 140   ./stdio-common/printf_fp.c:412 (discriminator 4)
    0.00 :   5ab2f:  mov    0x20(%rax),%rdx
    0.00 :   5ab33:  cmp    0x28(%rax),%rdx
    0.00 :   5ab37:  jae    5cc6d <__GI___printf_fp_l+0x233d>
         : 144   ./stdio-common/printf_fp.c:412 (discriminator 6)
    0.00 :   5ab3d:  lea    0x4(%rdx),%rsi
    0.00 :   5ab41:  mov    %rsi,0x20(%rax)
    0.00 :   5ab45:  movl   $0x2d,(%rdx)
    0.00 :   5ab4b:  jmp    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5ab50:  mov    %rsi,%r11
         : 150   _nl_lookup():
         : 151   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5ab53:  mov    0x20(%rsi),%rsi
    0.00 :   5ab57:  mov    0x50(%rsi),%rbx
         : 154   __GI___printf_fp_l():
         : 155   ./stdio-common/printf_fp.c:286
    0.00 :   5ab5b:  cmpb   $0x0,(%rbx)
         : 157   _nl_lookup():
         : 158   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5ab5e:  mov    %rbx,-0x108(%rbp)
         : 160   __GI___printf_fp_l():
         : 161   ./stdio-common/printf_fp.c:286
    0.00 :   5ab65:  jne    5ab76 <__GI___printf_fp_l+0x246>
         : 163   _nl_lookup():
         : 164   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5ab67:  mov    0x8(%r11),%r8
    0.00 :   5ab6b:  mov    0x40(%r8),%rbx
    0.00 :   5ab6f:  mov    %rbx,-0x108(%rbp)
         : 168   __GI___printf_fp_l():
         : 169   ./stdio-common/printf_fp.c:288
    0.00 :   5ab76:  mov    0x198(%rsi),%ebx
    0.00 :   5ab7c:  mov    %ebx,-0xc0(%rbp)
         : 172   ./stdio-common/printf_fp.c:290
    0.00 :   5ab82:  test   %ebx,%ebx
    0.00 :   5ab84:  jne    5ab9b <__GI___printf_fp_l+0x26b>
         : 175   _nl_lookup_word():
         : 176   ./stdio-common/../include/../locale/localeinfo.h:330
    0.00 :   5ab86:  mov    -0xf8(%rbp),%rbx
    0.00 :   5ab8d:  mov    0x8(%rbx),%r8
         : 179   __GI___printf_fp_l():
         : 180   ./stdio-common/printf_fp.c:291
    0.00 :   5ab91:  mov    0x58(%r8),%ebx
    0.00 :   5ab95:  mov    %ebx,-0xc0(%rbp)
         : 183   ./stdio-common/printf_fp.c:298
    0.00 :   5ab9b:  test   %dl,%dl
    0.00 :   5ab9d:  jns    5a9c2 <__GI___printf_fp_l+0x92>
         : 186   _nl_lookup():
         : 187   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5aba3:  mov    0x60(%rsi),%rsi
    0.00 :   5aba7:  mov    %rsi,-0xe8(%rbp)
         : 190   __GI___printf_fp_l():
         : 191   ./stdio-common/printf_fp.c:305
    0.00 :   5abae:  movzbl (%rsi),%esi
    0.00 :   5abb1:  mov    %sil,-0xd0(%rbp)
    0.00 :   5abb8:  sub    $0x1,%esi
    0.00 :   5abbb:  cmp    $0x7d,%sil
    0.00 :   5abbf:  ja     5a9c2 <__GI___printf_fp_l+0x92>
         : 197   ./stdio-common/printf_fp.c:310
    0.00 :   5abc5:  mov    -0xbc(%rbp),%r8d
    0.00 :   5abcc:  test   %r8d,%r8d
    0.00 :   5abcf:  je     5af58 <__GI___printf_fp_l+0x628>
         : 201   ./stdio-common/printf_fp.c:312
    0.00 :   5abd5:  test   %dil,%dil
    0.00 :   5abd8:  jne    5b878 <__GI___printf_fp_l+0xf48>
         : 204   _nl_lookup_word():
         : 205   ./stdio-common/../include/../locale/localeinfo.h:330
    0.00 :   5abde:  mov    -0xf8(%rbp),%rsi
    0.00 :   5abe5:  mov    0x8(%rsi),%rsi
         : 208   __GI___printf_fp_l():
         : 209   ./stdio-common/printf_fp.c:313
    0.00 :   5abe9:  mov    0x60(%rsi),%esi
    0.00 :   5abec:  mov    %esi,-0x114(%rbp)
         : 212   ./stdio-common/printf_fp.c:331
    0.00 :   5abf2:  mov    -0x114(%rbp),%edi
    0.00 :   5abf8:  xor    %esi,%esi
         : 215   ./stdio-common/printf_fp.c:388
    0.00 :   5abfa:  mov    (%rcx),%rcx
         : 217   ./stdio-common/printf_fp.c:331
    0.00 :   5abfd:  movq   $0x0,-0x110(%rbp)
    0.00 :   5ac08:  test   %edi,%edi
    0.00 :   5ac0a:  cmovne -0xe8(%rbp),%rsi
    0.00 :   5ac12:  mov    %rsi,-0xe8(%rbp)
         : 222   ./stdio-common/printf_fp.c:387
    0.00 :   5ac19:  test   $0x10,%al
    0.00 :   5ac1b:  jne    5a9ed <__GI___printf_fp_l+0xbd>
    0.00 :   5ac21:  nopl   0x0(%rax)
         : 226   ./stdio-common/printf_fp.c:392
    0.00 :   5ac28:  test   $0x1,%dl
    0.00 :   5ac2b:  je     5acb0 <__GI___printf_fp_l+0x380>
         : 229   ./stdio-common/printf_fp.c:393
    0.00 :   5ac31:  fldt   (%rcx)
    0.00 :   5ac33:  fucomi %st(0),%st
    0.00 :   5ac35:  jp     5cddf <__GI___printf_fp_l+0x24af>
         : 233   ./stdio-common/printf_fp.c:393 (discriminator 2)
    0.00 :   5ac3b:  fld    %st(0)
    0.00 :   5ac3d:  fabs
    0.00 :   5ac3f:  fldt   0x18742b(%rip)        # 1e2070 <in6addr_any+0x90>
    0.00 :   5ac45:  fxch   %st(1)
    0.00 :   5ac47:  fucomip %st(1),%st
    0.00 :   5ac49:  fstp   %st(0)
    0.00 :   5ac4b:  jbe    5b688 <__GI___printf_fp_l+0xd58>
         : 241   ./stdio-common/printf_fp.c:393 (discriminator 5)
    0.00 :   5ac51:  fxam
    0.00 :   5ac53:  fnstsw %ax
    0.00 :   5ac55:  fstp   %st(0)
    0.00 :   5ac57:  mov    %eax,%r13d
    0.00 :   5ac5a:  and    $0x200,%r13d
         : 247   ./stdio-common/printf_fp.c:396 (discriminator 5)
    0.00 :   5ac61:  mov    -0xb8(%rbp),%rax
    0.00 :   5ac68:  mov    %r13d,-0xa4(%rbp)
    0.00 :   5ac6f:  lea    0x17da91(%rip),%r14        # 1d8707 <not_available+0x1a9>
    0.00 :   5ac76:  movslq 0x8(%rax),%rcx
    0.00 :   5ac7a:  mov    0x1bf177(%rip),%rax        # 219df8 <_DYNAMIC+0x238>
    0.00 :   5ac81:  mov    %fs:(%rax),%rax
    0.00 :   5ac85:  testb  $0x1,0x1(%rax,%rcx,2)
    0.00 :   5ac8a:  lea    0x187d9f(%rip),%rax        # 1e2a30 <default_rwlockattr+0x358>
    0.00 :   5ac91:  lea    0x187d78(%rip),%rcx        # 1e2a10 <default_rwlockattr+0x338>
    0.00 :   5ac98:  cmove  %rax,%rcx
    0.00 :   5ac9c:  lea    0x17d927(%rip),%rax        # 1d85ca <not_available+0x6c>
    0.00 :   5aca3:  cmove  %rax,%r14
    0.00 :   5aca7:  jmp    5aadc <__GI___printf_fp_l+0x1ac>
    0.00 :   5acac:  nopl   0x0(%rax)
         : 262   ./stdio-common/printf_fp.c:396
    0.00 :   5acb0:  movsd  (%rcx),%xmm0
    0.00 :   5acb4:  ucomisd %xmm0,%xmm0
    0.00 :   5acb8:  jp     5cdf4 <__GI___printf_fp_l+0x24c4>
         : 266   ./stdio-common/printf_fp.c:396 (discriminator 2)
    0.00 :   5acbe:  movapd %xmm0,%xmm1
    0.00 :   5acc2:  andpd  0x1873c6(%rip),%xmm1        # 1e2090 <othermask>
    0.00 :   5acca:  ucomisd 0x187a0e(%rip),%xmm1        # 1e26e0 <default_rwlockattr+0x8>
    0.00 :   5acd2:  jbe    5afb0 <__GI___printf_fp_l+0x680>
         : 271   ./stdio-common/printf_fp.c:396 (discriminator 5)
    0.00 :   5acd8:  movmskpd %xmm0,%r13d
    0.00 :   5acdd:  and    $0x1,%r13d
    0.00 :   5ace1:  jmp    5ac61 <__GI___printf_fp_l+0x331>
    0.00 :   5ace6:  cs nopw 0x0(%rax,%rax,1)
         : 276   _nl_lookup():
         : 277   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5acf0:  mov    0x50(%rsi),%rsi
    0.00 :   5acf4:  mov    %rsi,-0xe8(%rbp)
         : 280   __GI___printf_fp_l():
         : 281   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5acfb:  jmp    5abae <__GI___printf_fp_l+0x27e>
         : 283   ./stdio-common/printf_fp.c:409
    0.00 :   5ad00:  mov    -0xbc(%rbp),%edx
    0.00 :   5ad06:  movslq %ebx,%r13
    0.00 :   5ad09:  mov    $0x20,%esi
    0.00 :   5ad0e:  mov    %r12,%rdi
    0.00 :   5ad11:  mov    %rcx,-0xd0(%rbp)
    0.00 :   5ad18:  test   %edx,%edx
    0.00 :   5ad1a:  mov    %r13,%rdx
    0.00 :   5ad1d:  je     5af40 <__GI___printf_fp_l+0x610>
         : 292   ./stdio-common/printf_fp.c:409 (discriminator 1)
    0.00 :   5ad23:  call   824e0 <_IO_wpadn>
    0.00 :   5ad28:  mov    -0xd0(%rbp),%rcx
         : 295   ./stdio-common/printf_fp.c:409 (discriminator 4)
    0.00 :   5ad2f:  cmp    %r13,%rax
    0.00 :   5ad32:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 298   ./stdio-common/printf_fp.c:411
    0.00 :   5ad38:  mov    -0xa4(%rbp),%eax
    0.00 :   5ad3e:  mov    %ebx,%r13d
    0.00 :   5ad41:  mov    $0x1,%r15d
    0.00 :   5ad47:  test   %eax,%eax
    0.00 :   5ad49:  jne    5ab10 <__GI___printf_fp_l+0x1e0>
    0.00 :   5ad4f:  mov    -0xb8(%rbp),%rax
    0.00 :   5ad56:  movzbl 0xc(%rax),%edx
         : 306   ./stdio-common/printf_fp.c:413
    0.00 :   5ad5a:  test   $0x40,%dl
    0.00 :   5ad5d:  jne    5adc9 <__GI___printf_fp_l+0x499>
         : 309   ./stdio-common/printf_fp.c:415
    0.00 :   5ad5f:  and    $0x10,%edx
    0.00 :   5ad62:  je     5ae08 <__GI___printf_fp_l+0x4d8>
         : 312   ./stdio-common/printf_fp.c:416
    0.00 :   5ad68:  mov    -0xbc(%rbp),%eax
    0.00 :   5ad6e:  test   %eax,%eax
    0.00 :   5ad70:  je     5b90d <__GI___printf_fp_l+0xfdd>
         : 316   ./stdio-common/printf_fp.c:416 (discriminator 1)
    0.00 :   5ad76:  mov    0xa0(%r12),%rax
    0.00 :   5ad7e:  test   %rax,%rax
    0.00 :   5ad81:  je     5d20f <__GI___printf_fp_l+0x28df>
         : 320   ./stdio-common/printf_fp.c:416 (discriminator 4)
    0.00 :   5ad87:  mov    0x20(%rax),%rdx
    0.00 :   5ad8b:  cmp    0x28(%rax),%rdx
    0.00 :   5ad8f:  jae    5d20f <__GI___printf_fp_l+0x28df>
         : 324   ./stdio-common/printf_fp.c:416 (discriminator 6)
    0.00 :   5ad95:  lea    0x4(%rdx),%rsi
    0.00 :   5ad99:  mov    %rsi,0x20(%rax)
    0.00 :   5ad9d:  movl   $0x20,(%rdx)
    0.00 :   5ada3:  jmp    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5ada5:  nopl   (%rax)
         : 330   ./stdio-common/printf_fp.c:404 (discriminator 1)
    0.00 :   5ada8:  test   $0x50,%dl
    0.00 :   5adab:  jne    5af00 <__GI___printf_fp_l+0x5d0>
         : 333   ./stdio-common/printf_fp.c:406
    0.00 :   5adb1:  sub    $0x3,%ebx
         : 335   ./stdio-common/printf_fp.c:408
    0.00 :   5adb4:  test   %ebx,%ebx
    0.00 :   5adb6:  setg   %r15b
    0.00 :   5adba:  jle    5adc4 <__GI___printf_fp_l+0x494>
    0.00 :   5adbc:  test   %al,%al
    0.00 :   5adbe:  jne    5ad00 <__GI___printf_fp_l+0x3d0>
         : 341   ./stdio-common/printf_fp.c:413
    0.00 :   5adc4:  test   $0x40,%dl
    0.00 :   5adc7:  je     5ad5f <__GI___printf_fp_l+0x42f>
         : 344   ./stdio-common/printf_fp.c:414
    0.00 :   5adc9:  mov    -0xbc(%rbp),%eax
    0.00 :   5adcf:  test   %eax,%eax
    0.00 :   5add1:  je     5b7e0 <__GI___printf_fp_l+0xeb0>
         : 348   ./stdio-common/printf_fp.c:414 (discriminator 1)
    0.00 :   5add7:  mov    0xa0(%r12),%rax
    0.00 :   5addf:  test   %rax,%rax
    0.00 :   5ade2:  je     5d053 <__GI___printf_fp_l+0x2723>
         : 352   ./stdio-common/printf_fp.c:414 (discriminator 4)
    0.00 :   5ade8:  mov    0x20(%rax),%rdx
    0.00 :   5adec:  cmp    0x28(%rax),%rdx
    0.00 :   5adf0:  jae    5d053 <__GI___printf_fp_l+0x2723>
         : 356   ./stdio-common/printf_fp.c:414 (discriminator 6)
    0.00 :   5adf6:  lea    0x4(%rdx),%rsi
    0.00 :   5adfa:  mov    %rsi,0x20(%rax)
    0.00 :   5adfe:  movl   $0x2b,(%rdx)
         : 360   ./stdio-common/printf_fp.c:416 (discriminator 16)
    0.00 :   5ae04:  add    $0x1,%r13d
         : 362   ./stdio-common/printf_fp.c:418 (discriminator 20)
    0.00 :   5ae08:  mov    -0xbc(%rbp),%eax
    0.00 :   5ae0e:  test   %eax,%eax
    0.00 :   5ae10:  je     5b710 <__GI___printf_fp_l+0xde0>
         : 366   ./stdio-common/printf_fp.c:418
    0.00 :   5ae16:  mov    0xa0(%r12),%rax
    0.00 :   5ae1e:  mov    (%rcx),%esi
    0.00 :   5ae20:  test   %rax,%rax
    0.00 :   5ae23:  je     5b801 <__GI___printf_fp_l+0xed1>
    0.00 :   5ae29:  mov    0x20(%rax),%rdx
    0.00 :   5ae2d:  cmp    %rdx,0x28(%rax)
    0.00 :   5ae31:  jbe    5b801 <__GI___printf_fp_l+0xed1>
    0.00 :   5ae37:  lea    0x4(%rdx),%rdi
    0.00 :   5ae3b:  mov    %rdi,0x20(%rax)
    0.00 :   5ae3f:  mov    %esi,(%rdx)
    0.00 :   5ae41:  cmp    $0xffffffff,%esi
    0.00 :   5ae44:  je     5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5ae4a:  mov    0x4(%rcx),%esi
    0.00 :   5ae4d:  add    $0x1,%r13d
    0.00 :   5ae51:  lea    0x8(%rcx),%r14
    0.00 :   5ae55:  mov    0x20(%rax),%rdx
    0.00 :   5ae59:  cmp    %rdx,0x28(%rax)
    0.00 :   5ae5d:  jbe    5b83c <__GI___printf_fp_l+0xf0c>
    0.00 :   5ae63:  lea    0x4(%rdx),%rcx
    0.00 :   5ae67:  mov    %rcx,0x20(%rax)
    0.00 :   5ae6b:  mov    %esi,(%rdx)
    0.00 :   5ae6d:  cmp    $0xffffffff,%esi
    0.00 :   5ae70:  je     5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5ae76:  mov    (%r14),%esi
    0.00 :   5ae79:  add    $0x1,%r13d
         : 392   ./stdio-common/printf_fp.c:418 (discriminator 18)
    0.00 :   5ae7d:  mov    0x20(%rax),%rdx
    0.00 :   5ae81:  cmp    0x28(%rax),%rdx
    0.00 :   5ae85:  jae    5b865 <__GI___printf_fp_l+0xf35>
         : 396   ./stdio-common/printf_fp.c:418 (discriminator 20)
    0.00 :   5ae8b:  lea    0x4(%rdx),%rcx
    0.00 :   5ae8f:  cmp    $0xffffffff,%esi
    0.00 :   5ae92:  mov    %rcx,0x20(%rax)
    0.00 :   5ae96:  sete   %al
    0.00 :   5ae99:  mov    %esi,(%rdx)
         : 402   ./stdio-common/printf_fp.c:418
    0.00 :   5ae9b:  test   %al,%al
    0.00 :   5ae9d:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 405   ./stdio-common/printf_fp.c:420 (discriminator 30)
    0.00 :   5aea3:  mov    -0xb8(%rbp),%rax
         : 407   ./stdio-common/printf_fp.c:418 (discriminator 30)
    0.00 :   5aeaa:  add    $0x1,%r13d
         : 409   ./stdio-common/printf_fp.c:420 (discriminator 30)
    0.00 :   5aeae:  testb  $0x20,0xc(%rax)
    0.00 :   5aeb2:  je     5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5aeb4:  test   %r15b,%r15b
    0.00 :   5aeb7:  je     5aed8 <__GI___printf_fp_l+0x5a8>
         : 414   ./stdio-common/printf_fp.c:421 (discriminator 1)
    0.00 :   5aeb9:  movslq %ebx,%r14
    0.00 :   5aebc:  mov    $0x20,%esi
    0.00 :   5aec1:  mov    %r12,%rdi
    0.00 :   5aec4:  mov    %r14,%rdx
    0.00 :   5aec7:  call   824e0 <_IO_wpadn>
         : 420   ./stdio-common/printf_fp.c:421 (discriminator 4)
    0.00 :   5aecc:  cmp    %r14,%rax
    0.00 :   5aecf:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 423   ./stdio-common/printf_fp.c:421 (discriminator 6)
    0.00 :   5aed5:  add    %ebx,%r13d
         : 425   ./stdio-common/printf_fp.c:1272
    0.00 :   5aed8:  mov    -0x38(%rbp),%rax
    0.00 :   5aedc:  sub    %fs:0x28,%rax
    0.00 :   5aee5:  jne    5d4ba <__GI___printf_fp_l+0x2b8a>
    0.00 :   5aeeb:  lea    -0x28(%rbp),%rsp
    0.00 :   5aeef:  mov    %r13d,%eax
    0.00 :   5aef2:  pop    %rbx
    0.00 :   5aef3:  pop    %r12
    0.00 :   5aef5:  pop    %r13
    0.00 :   5aef7:  pop    %r14
    0.00 :   5aef9:  pop    %r15
    0.00 :   5aefb:  pop    %rbp
    0.00 :   5aefc:  ret
    0.00 :   5aefd:  nopl   (%rax)
         : 439   ./stdio-common/printf_fp.c:406
    0.00 :   5af00:  sub    $0x4,%ebx
         : 441   ./stdio-common/printf_fp.c:408
    0.00 :   5af03:  test   %ebx,%ebx
    0.00 :   5af05:  setg   %r15b
    0.00 :   5af09:  jg     5adbc <__GI___printf_fp_l+0x48c>
    0.00 :   5af0f:  jmp    5adc4 <__GI___printf_fp_l+0x494>
    0.00 :   5af14:  nopl   0x0(%rax)
         : 447   ./stdio-common/printf_fp.c:412 (discriminator 2)
    0.00 :   5af18:  mov    0x28(%r12),%rax
    0.00 :   5af1d:  cmp    0x30(%r12),%rax
    0.00 :   5af22:  jae    5cff6 <__GI___printf_fp_l+0x26c6>
         : 451   ./stdio-common/printf_fp.c:412 (discriminator 11)
    0.00 :   5af28:  lea    0x1(%rax),%rdx
    0.00 :   5af2c:  mov    %rdx,0x28(%r12)
    0.00 :   5af31:  movb   $0x2d,(%rax)
    0.00 :   5af34:  jmp    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5af39:  nopl   0x0(%rax)
         : 457   ./stdio-common/printf_fp.c:409 (discriminator 2)
    0.00 :   5af40:  call   806a0 <_IO_padn>
    0.00 :   5af45:  mov    -0xd0(%rbp),%rcx
    0.00 :   5af4c:  jmp    5ad2f <__GI___printf_fp_l+0x3ff>
    0.00 :   5af51:  nopl   0x0(%rax)
         : 462   ./stdio-common/printf_fp.c:322
    0.00 :   5af58:  test   %dil,%dil
    0.00 :   5af5b:  jne    5b894 <__GI___printf_fp_l+0xf64>
         : 465   _nl_lookup():
         : 466   ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5af61:  mov    -0xf8(%rbp),%rsi
    0.00 :   5af68:  mov    0x8(%rsi),%rsi
    0.00 :   5af6c:  mov    0x48(%rsi),%rbx
    0.00 :   5af70:  mov    %rbx,-0x110(%rbp)
    0.00 :   5af77:  mov    %rbx,%rsi
         : 472   __GI___printf_fp_l():
         : 473   ./stdio-common/printf_fp.c:337
    0.00 :   5af7a:  movzbl (%rsi),%ebx
    0.00 :   5af7d:  neg    %bl
    0.00 :   5af7f:  sbb    %edi,%edi
    0.00 :   5af81:  and    $0xfffffffe,%edi
    0.00 :   5af84:  cmpb   $0x0,(%rsi)
    0.00 :   5af87:  mov    $0x0,%esi
    0.00 :   5af8c:  cmovne -0xe8(%rbp),%rsi
    0.00 :   5af94:  mov    %edi,-0x114(%rbp)
    0.00 :   5af9a:  mov    %rsi,-0xe8(%rbp)
    0.00 :   5afa1:  jmp    5a9e2 <__GI___printf_fp_l+0xb2>
    0.00 :   5afa6:  cs nopw 0x0(%rax,%rax,1)
         : 485   ./stdio-common/printf_fp.c:396
    0.00 :   5afb0:  lea    -0x60(%rbp),%r15
    0.00 :   5afb4:  lea    -0xa4(%rbp),%rcx
    0.00 :   5afbb:  mov    $0x2,%esi
    0.00 :   5afc0:  lea    -0x98(%rbp),%rdx
    0.00 :   5afc7:  mov    %r15,%rdi
    0.00 :   5afca:  call   564c0 <__mpn_extract_double>
    0.00 :   5afcf:  mov    %eax,%r14d
    0.00 :   5afd2:  mov    %rax,%r13
    0.00 :   5afd5:  shl    $0x6,%r14d
    0.00 :   5afd9:  sub    $0x34,%r14d
         : 496   ./stdio-common/printf_fp.c:432
    0.00 :   5afdd:  mov    -0x98(%rbp),%ecx
         : 498   ./stdio-common/printf_fp.c:437
    0.00 :   5afe3:  mov    %rsp,%rsi
         : 500   ./stdio-common/printf_fp.c:388
    0.00 :   5afe6:  mov    %r13,-0x88(%rbp)
         : 502   ./stdio-common/printf_fp.c:432
    0.00 :   5afed:  mov    %ecx,%eax
    0.00 :   5afef:  neg    %eax
    0.00 :   5aff1:  cmovs  %ecx,%eax
    0.00 :   5aff4:  add    $0x3f,%eax
         : 507   ./stdio-common/printf_fp.c:433
    0.00 :   5aff7:  sar    $0x6,%eax
         : 509   ./stdio-common/printf_fp.c:434
    0.00 :   5affa:  add    $0x4,%eax
    0.00 :   5affd:  cltq
         : 512   ./stdio-common/printf_fp.c:437
    0.00 :   5afff:  lea    0x17(,%rax,8),%rax
    0.00 :   5b007:  mov    %rax,%rdi
    0.00 :   5b00a:  mov    %rax,%rdx
    0.00 :   5b00d:  and    $0xfffffffffffff000,%rdi
    0.00 :   5b014:  and    $0xfffffffffffffff0,%rdx
    0.00 :   5b018:  sub    %rdi,%rsi
    0.00 :   5b01b:  cmp    %rsi,%rsp
    0.00 :   5b01e:  je     5b035 <__GI___printf_fp_l+0x705>
    0.00 :   5b020:  sub    $0x1000,%rsp
    0.00 :   5b027:  orq    $0x0,0xff8(%rsp)
    0.00 :   5b030:  cmp    %rsi,%rsp
    0.00 :   5b033:  jne    5b020 <__GI___printf_fp_l+0x6f0>
    0.00 :   5b035:  and    $0xfff,%edx
    0.00 :   5b03b:  sub    %rdx,%rsp
    0.00 :   5b03e:  test   %rdx,%rdx
    0.00 :   5b041:  jne    5b902 <__GI___printf_fp_l+0xfd2>
         : 529   ./stdio-common/printf_fp.c:438
    0.00 :   5b047:  mov    %rax,%r8
         : 531   ./stdio-common/printf_fp.c:437
    0.00 :   5b04a:  lea    0xf(%rsp),%rdi
         : 533   ./stdio-common/printf_fp.c:438
    0.00 :   5b04f:  mov    %rsp,%rsi
    0.00 :   5b052:  mov    %rax,%rdx
    0.00 :   5b055:  and    $0xfffffffffffff000,%r8
         : 537   ./stdio-common/printf_fp.c:437
    0.00 :   5b05c:  and    $0xfffffffffffffff0,%rdi
         : 539   ./stdio-common/printf_fp.c:438
    0.00 :   5b060:  and    $0xfffffffffffffff0,%rdx
    0.00 :   5b064:  sub    %r8,%rsi
         : 542   ./stdio-common/printf_fp.c:437
    0.00 :   5b067:  mov    %rdi,-0x90(%rbp)
         : 544   ./stdio-common/printf_fp.c:438
    0.00 :   5b06e:  cmp    %rsi,%rsp
    0.00 :   5b071:  je     5b088 <__GI___printf_fp_l+0x758>
    0.00 :   5b073:  sub    $0x1000,%rsp
    0.00 :   5b07a:  orq    $0x0,0xff8(%rsp)
    0.00 :   5b083:  cmp    %rsi,%rsp
    0.00 :   5b086:  jne    5b073 <__GI___printf_fp_l+0x743>
    0.00 :   5b088:  and    $0xfff,%edx
    0.00 :   5b08e:  sub    %rdx,%rsp
    0.00 :   5b091:  test   %rdx,%rdx
    0.00 :   5b094:  je     5b09c <__GI___printf_fp_l+0x76c>
    0.00 :   5b096:  orq    $0x0,-0x8(%rsp,%rdx,1)
    0.00 :   5b09c:  lea    0xf(%rsp),%rdx
         : 557   ./stdio-common/printf_fp.c:439
    0.00 :   5b0a1:  mov    %rsp,%rsi
         : 559   ./stdio-common/printf_fp.c:438
    0.00 :   5b0a4:  and    $0xfffffffffffffff0,%rdx
    0.00 :   5b0a8:  mov    %rdx,-0x70(%rbp)
         : 562   ./stdio-common/printf_fp.c:439
    0.00 :   5b0ac:  mov    %rax,%rdx
    0.00 :   5b0af:  and    $0xfffffffffffff000,%rax
    0.00 :   5b0b5:  sub    %rax,%rsi
    0.00 :   5b0b8:  and    $0xfffffffffffffff0,%rdx
    0.00 :   5b0bc:  cmp    %rsi,%rsp
    0.00 :   5b0bf:  je     5b0d6 <__GI___printf_fp_l+0x7a6>
    0.00 :   5b0c1:  sub    $0x1000,%rsp
    0.00 :   5b0c8:  orq    $0x0,0xff8(%rsp)
    0.00 :   5b0d1:  cmp    %rsi,%rsp
    0.00 :   5b0d4:  jne    5b0c1 <__GI___printf_fp_l+0x791>
    0.00 :   5b0d6:  mov    %rdx,%rax
    0.00 :   5b0d9:  and    $0xfff,%eax
    0.00 :   5b0de:  sub    %rax,%rsp
    0.00 :   5b0e1:  test   %rax,%rax
    0.00 :   5b0e4:  je     5b0ec <__GI___printf_fp_l+0x7bc>
    0.00 :   5b0e6:  orq    $0x0,-0x8(%rsp,%rax,1)
    0.00 :   5b0ec:  lea    0xf(%rsp),%rax
         : 580   ./stdio-common/printf_fp.c:445
    0.00 :   5b0f1:  movq   $0x0,-0x78(%rbp)
         : 582   ./stdio-common/printf_fp.c:439
    0.00 :   5b0f9:  and    $0xfffffffffffffff0,%rax
    0.00 :   5b0fd:  mov    %rax,-0x80(%rbp)
         : 585   ./stdio-common/printf_fp.c:446
    0.00 :   5b101:  cmp    $0x2,%ecx
    0.00 :   5b104:  jle    5c19b <__GI___printf_fp_l+0x186b>
         : 588   ./stdio-common/printf_fp.c:463
    0.00 :   5b10a:  lea    (%rcx,%r14,1),%esi
         : 590   ./stdio-common/printf_fp.c:467
    0.00 :   5b10e:  test   %esi,%esi
    0.00 :   5b110:  lea    0x3f(%rsi),%edx
    0.00 :   5b113:  cmovns %esi,%edx
    0.00 :   5b116:  sar    $0x6,%edx
         : 595   ./stdio-common/printf_fp.c:463
    0.00 :   5b119:  test   $0x3f,%sil
    0.00 :   5b11d:  jne    5c895 <__GI___printf_fp_l+0x1f65>
         : 598   ./stdio-common/printf_fp.c:465
    0.00 :   5b123:  test   %r13,%r13
    0.00 :   5b126:  jle    5cca1 <__GI___printf_fp_l+0x2371>
    0.00 :   5b12c:  movslq %edx,%rbx
    0.00 :   5b12f:  mov    %r15,%rsi
    0.00 :   5b132:  mov    %ecx,-0xd0(%rbp)
    0.00 :   5b138:  lea    0x0(,%r13,8),%rdx
    0.00 :   5b140:  lea    (%rdi,%rbx,8),%rdi
    0.00 :   5b144:  call   28620 <*ABS*+0xa9c10@plt>
    0.00 :   5b149:  mov    -0xd0(%rbp),%ecx
         : 608   ./stdio-common/printf_fp.c:467
    0.00 :   5b14f:  add    %rbx,%r13
    0.00 :   5b152:  mov    %rbx,%rdx
    0.00 :   5b155:  mov    %r13,-0x88(%rbp)
         : 612   ./stdio-common/printf_fp.c:479 (discriminator 1)
    0.00 :   5b15c:  test   %rdx,%rdx
    0.00 :   5b15f:  jle    5b17f <__GI___printf_fp_l+0x84f>
         : 615   ./stdio-common/printf_fp.c:479
    0.00 :   5b161:  mov    -0x90(%rbp),%rdi
    0.00 :   5b168:  shl    $0x3,%rdx
    0.00 :   5b16c:  xor    %esi,%esi
    0.00 :   5b16e:  mov    %ecx,-0xd0(%rbp)
    0.00 :   5b174:  call   28670 <*ABS*+0xa96d0@plt>
    0.00 :   5b179:  mov    -0xd0(%rbp),%ecx
         : 622   ./stdio-common/printf_fp.c:490
    0.00 :   5b17f:  mov    $0xc,%r13d
         : 624   ./stdio-common/printf_fp.c:449
    0.00 :   5b185:  xor    %r14d,%r14d
         : 626   ./stdio-common/printf_fp.c:459
    0.00 :   5b188:  xor    %eax,%eax
         : 628   ./stdio-common/printf_fp.c:490
    0.00 :   5b18a:  mov    -0x78(%rbp),%rdx
         : 630   ./stdio-common/printf_fp.c:460
    0.00 :   5b18e:  lea    0x171ce3(%rip),%r15        # 1cce78 <_fpioconst_pow10+0x138>
    0.00 :   5b195:  mov    %r12,-0xd0(%rbp)
    0.00 :   5b19c:  mov    %r14d,%r12d
    0.00 :   5b19f:  mov    %r13d,%r14d
    0.00 :   5b1a2:  lea    -0x138(%r15),%rbx
    0.00 :   5b1a9:  mov    %eax,%r13d
    0.00 :   5b1ac:  jmp    5b20e <__GI___printf_fp_l+0x8de>
    0.00 :   5b1ae:  xchg   %ax,%ax
         : 639   ./stdio-common/printf_fp.c:493
    0.00 :   5b1b0:  mov    -0xb8(%rbp),%rax
    0.00 :   5b1b7:  testb  $0x10,0xd(%rax)
    0.00 :   5b1bb:  jne    5b930 <__GI___printf_fp_l+0x1000>
         : 643   ./stdio-common/printf_fp.c:534
    0.00 :   5b1c1:  mov    0x8(%r15),%rdx
         : 645   ./stdio-common/printf_fp.c:535
    0.00 :   5b1c5:  mov    (%r15),%rax
    0.00 :   5b1c8:  lea    0x171cf1(%rip),%rcx        # 1ccec0 <__tens>
         : 648   ./stdio-common/printf_fp.c:534
    0.00 :   5b1cf:  mov    %rdx,-0x68(%rbp)
         : 650   ./stdio-common/printf_fp.c:535
    0.00 :   5b1d3:  lea    (%rcx,%rax,8),%rsi
    0.00 :   5b1d7:  shl    $0x3,%rdx
    0.00 :   5b1db:  call   28620 <*ABS*+0xa9c10@plt>
         : 654   ./stdio-common/printf_fp.c:551
    0.00 :   5b1e0:  mov    -0x68(%rbp),%rdx
    0.00 :   5b1e4:  cmp    %rdx,-0x88(%rbp)
    0.00 :   5b1eb:  jg     5b270 <__GI___printf_fp_l+0x940>
         : 658   ./stdio-common/printf_fp.c:551 (discriminator 1)
    0.00 :   5b1f1:  je     5c1e0 <__GI___printf_fp_l+0x18b0>
         : 660   ./stdio-common/printf_fp.c:569
    0.00 :   5b1f7:  mov    -0x78(%rbp),%rdx
         : 662   ./stdio-common/printf_fp.c:560
    0.00 :   5b1fb:  sub    $0x1,%r14d
         : 664   ./stdio-common/printf_fp.c:562
    0.00 :   5b1ff:  cmp    %rbx,%r15
    0.00 :   5b202:  je     5b2c3 <__GI___printf_fp_l+0x993>
         : 667   ./stdio-common/printf_fp.c:488
    0.00 :   5b208:  mov    -0x98(%rbp),%ecx
         : 669   ./stdio-common/printf_fp.c:488 (discriminator 4)
    0.00 :   5b20e:  mov    -0x8(%r15),%eax
         : 671   ./stdio-common/printf_fp.c:484 (discriminator 4)
    0.00 :   5b212:  sub    $0x18,%r15
         : 673   ./stdio-common/printf_fp.c:488 (discriminator 4)
    0.00 :   5b216:  add    %r12d,%eax
    0.00 :   5b219:  sub    $0x1,%eax
    0.00 :   5b21c:  cmp    %ecx,%eax
    0.00 :   5b21e:  jg     5b1fb <__GI___printf_fp_l+0x8cb>
         : 678   ./stdio-common/printf_fp.c:503
    0.00 :   5b220:  mov    -0x70(%rbp),%rdi
         : 680   ./stdio-common/printf_fp.c:490
    0.00 :   5b224:  test   %rdx,%rdx
    0.00 :   5b227:  je     5b1b0 <__GI___printf_fp_l+0x880>
         : 683   ./stdio-common/printf_fp.c:543
    0.00 :   5b229:  mov    (%r15),%rcx
         : 685   ./stdio-common/printf_fp.c:541
    0.00 :   5b22c:  mov    0x8(%r15),%rax
    0.00 :   5b230:  lea    0x171c89(%rip),%rsi        # 1ccec0 <__tens>
    0.00 :   5b237:  lea    0x8(%rsi,%rcx,8),%rcx
    0.00 :   5b23c:  mov    -0x80(%rbp),%rsi
    0.00 :   5b240:  lea    -0x1(%rax),%r8
    0.00 :   5b244:  call   54f90 <__mpn_mul>
         : 692   ./stdio-common/printf_fp.c:546
    0.00 :   5b249:  mov    0x8(%r15),%rdx
    0.00 :   5b24d:  add    -0x78(%rbp),%rdx
         : 695   ./stdio-common/printf_fp.c:547
    0.00 :   5b251:  test   %rax,%rax
    0.00 :   5b254:  je     5b978 <__GI___printf_fp_l+0x1048>
         : 698   ./stdio-common/printf_fp.c:546
    0.00 :   5b25a:  sub    $0x1,%rdx
         : 700   ./stdio-common/printf_fp.c:545
    0.00 :   5b25e:  mov    %rdx,-0x68(%rbp)
         : 702   ./stdio-common/printf_fp.c:551
    0.00 :   5b262:  cmp    %rdx,-0x88(%rbp)
    0.00 :   5b269:  jle    5b1f1 <__GI___printf_fp_l+0x8c1>
    0.00 :   5b26b:  nopl   0x0(%rax,%rax,1)
         : 706   ./stdio-common/printf_fp.c:554
    0.00 :   5b270:  mov    -0x70(%rbp),%rsi
    0.00 :   5b274:  mov    -0x80(%rbp),%rdi
    0.00 :   5b278:  mov    %rdx,-0x78(%rbp)
    0.00 :   5b27c:  shl    $0x3,%rdx
    0.00 :   5b280:  call   28620 <*ABS*+0xa9c10@plt>
         : 712   ./stdio-common/printf_fp.c:555
    0.00 :   5b285:  mov    -0x78(%rbp),%rdx
    0.00 :   5b289:  mov    -0x80(%rbp),%rax
    0.00 :   5b28d:  bsr    -0x8(%rax,%rdx,8),%rax
         : 716   ./stdio-common/printf_fp.c:556
    0.00 :   5b293:  mov    %edx,%ecx
    0.00 :   5b295:  shl    $0x6,%ecx
    0.00 :   5b298:  lea    -0x81(%rcx),%r10d
         : 720   ./stdio-common/printf_fp.c:557
    0.00 :   5b29f:  mov    %r14d,%ecx
         : 722   ./stdio-common/printf_fp.c:560
    0.00 :   5b2a2:  sub    $0x1,%r14d
         : 724   ./stdio-common/printf_fp.c:555
    0.00 :   5b2a6:  xor    $0x3f,%rax
         : 726   ./stdio-common/printf_fp.c:556
    0.00 :   5b2aa:  sub    %eax,%r10d
         : 728   ./stdio-common/printf_fp.c:557
    0.00 :   5b2ad:  mov    $0x1,%eax
    0.00 :   5b2b2:  shl    %cl,%eax
         : 731   ./stdio-common/printf_fp.c:556
    0.00 :   5b2b4:  mov    %r10d,%r12d
         : 733   ./stdio-common/printf_fp.c:557
    0.00 :   5b2b7:  or     %eax,%r13d
         : 735   ./stdio-common/printf_fp.c:562
    0.00 :   5b2ba:  cmp    %rbx,%r15
    0.00 :   5b2bd:  jne    5b208 <__GI___printf_fp_l+0x8d8>
         : 738   ./stdio-common/printf_fp.c:563
    0.00 :   5b2c3:  mov    %r13d,-0x98(%rbp)
    0.00 :   5b2ca:  mov    -0xd0(%rbp),%r12
         : 741   ./stdio-common/printf_fp.c:569
    0.00 :   5b2d1:  test   %rdx,%rdx
    0.00 :   5b2d4:  jle    5b348 <__GI___printf_fp_l+0xa18>
         : 744   ./stdio-common/printf_fp.c:573
    0.00 :   5b2d6:  mov    -0x80(%rbp),%rdi
         : 746   ./stdio-common/printf_fp.c:577
    0.00 :   5b2da:  bsr    -0x8(%rdi,%rdx,8),%rsi
         : 748   ./stdio-common/printf_fp.c:573
    0.00 :   5b2e0:  mov    (%rdi),%rax
         : 750   ./stdio-common/printf_fp.c:577
    0.00 :   5b2e3:  xor    $0x3f,%rsi
    0.00 :   5b2e7:  mov    %esi,%ecx
         : 753   ./stdio-common/printf_fp.c:573
    0.00 :   5b2e9:  test   %rax,%rax
    0.00 :   5b2ec:  jne    5d3c0 <__GI___printf_fp_l+0x2a90>
    0.00 :   5b2f2:  mov    -0x90(%rbp),%r9
    0.00 :   5b2f9:  mov    %rdi,%rsi
    0.00 :   5b2fc:  xor    %r13d,%r13d
    0.00 :   5b2ff:  jmp    5b325 <__GI___printf_fp_l+0x9f5>
    0.00 :   5b301:  nopl   0x0(%rax)
         : 761   ./stdio-common/printf_fp.c:573 (discriminator 4)
    0.00 :   5b308:  mov    0x8(%rsi),%r8
    0.00 :   5b30c:  lea    0x1(%rax),%r14d
    0.00 :   5b310:  add    $0x8,%rsi
    0.00 :   5b314:  add    $0x1,%rax
    0.00 :   5b318:  add    $0x8,%r13
    0.00 :   5b31c:  test   %r8,%r8
    0.00 :   5b31f:  jne    5ca47 <__GI___printf_fp_l+0x2117>
         : 769   ./stdio-common/printf_fp.c:573 (discriminator 3)
    0.00 :   5b325:  mov    (%r9,%r13,1),%r8
    0.00 :   5b329:  mov    %eax,%r14d
    0.00 :   5b32c:  test   %r8,%r8
    0.00 :   5b32f:  je     5b308 <__GI___printf_fp_l+0x9d8>
         : 774   ./stdio-common/printf_fp.c:579
    0.00 :   5b331:  test   %ecx,%ecx
    0.00 :   5b333:  jne    5cf27 <__GI___printf_fp_l+0x25f7>
         : 777   ./stdio-common/printf_fp.c:583
    0.00 :   5b339:  test   %r14d,%r14d
    0.00 :   5b33c:  jne    5ceb1 <__GI___printf_fp_l+0x2581>
    0.00 :   5b342:  nopw   0x0(%rax,%rax,1)
         : 781   ./stdio-common/printf_fp.c:831
    0.00 :   5b348:  mov    -0xb8(%rbp),%rsi
         : 783   ./stdio-common/printf_fp.c:841
    0.00 :   5b34f:  mov    0x1bea92(%rip),%rdx        # 219de8 <_DYNAMIC+0x228>
         : 785   ./stdio-common/printf_fp.c:831
    0.00 :   5b356:  mov    0x4(%rsi),%eax
         : 787   ./stdio-common/printf_fp.c:841
    0.00 :   5b359:  movslq 0x8(%rsi),%rcx
         : 789   ./stdio-common/printf_fp.c:847
    0.00 :   5b35d:  mov    (%rsi),%edi
         : 791   ./stdio-common/printf_fp.c:831
    0.00 :   5b35f:  mov    %eax,-0x138(%rbp)
         : 793   ./stdio-common/printf_fp.c:841
    0.00 :   5b365:  mov    %fs:(%rdx),%rdx
    0.00 :   5b369:  mov    %rcx,%rax
         : 796   ./stdio-common/printf_fp.c:847
    0.00 :   5b36c:  mov    %edi,-0xf0(%rbp)
         : 798   ./stdio-common/printf_fp.c:841
    0.00 :   5b372:  mov    (%rdx,%rcx,4),%ecx
    0.00 :   5b375:  mov    %ecx,-0x13c(%rbp)
         : 801   ./stdio-common/printf_fp.c:843
    0.00 :   5b37b:  cmp    $0x65,%cl
    0.00 :   5b37e:  je     5c2a8 <__GI___printf_fp_l+0x1978>
         : 804   ./stdio-common/printf_fp.c:853
  100.00 :   5b384:  cmpb   $0x66,-0x13c(%rbp)
    0.00 :   5b38b:  je     5c3d4 <__GI___printf_fp_l+0x1aa4>
         : 807   ./stdio-common/printf_fp.c:873
    0.00 :   5b391:  movl   $0x6,-0x128(%rbp)
    0.00 :   5b39b:  test   %edi,%edi
    0.00 :   5b39d:  js     5b3ad <__GI___printf_fp_l+0xa7d>
         : 811   ./stdio-common/printf_fp.c:873 (discriminator 1)
    0.00 :   5b39f:  mov    $0x1,%edx
    0.00 :   5b3a4:  cmovne %edi,%edx
    0.00 :   5b3a7:  mov    %edx,-0x128(%rbp)
         : 815   ./stdio-common/printf_fp.c:874 (discriminator 8)
    0.00 :   5b3ad:  mov    -0xa0(%rbp),%r14d
         : 817   ./stdio-common/printf_fp.c:861 (discriminator 8)
    0.00 :   5b3b4:  mov    -0x98(%rbp),%edx
         : 819   ./stdio-common/printf_fp.c:874 (discriminator 8)
    0.00 :   5b3ba:  test   %r14d,%r14d
    0.00 :   5b3bd:  je     5c452 <__GI___printf_fp_l+0x1b22>
         : 822   ./stdio-common/printf_fp.c:875 (discriminator 1)
    0.00 :   5b3c3:  cmp    $0x4,%edx
    0.00 :   5b3c6:  jg     5c859 <__GI___printf_fp_l+0x1f29>
         : 825   ./stdio-common/printf_fp.c:888
    0.00 :   5b3cc:  movl   $0x0,-0x118(%rbp)
    0.00 :   5b3d6:  mov    -0x128(%rbp),%eax
    0.00 :   5b3dc:  mov    %eax,-0xe0(%rbp)
         : 829   ./stdio-common/printf_fp.c:895 (discriminator 4)
    0.00 :   5b3e2:  movslq -0x128(%rbp),%rax
         : 831   ./stdio-common/printf_fp.c:887 (discriminator 4)
    0.00 :   5b3e9:  movl   $0x66,-0x9c(%rbp)
         : 833   ./stdio-common/printf_fp.c:895 (discriminator 4)
    0.00 :   5b3f3:  add    $0x5,%rax
    0.00 :   5b3f7:  mov    %rax,-0x120(%rbp)
         : 836   ./stdio-common/printf_fp.c:898
    0.00 :   5b3fe:  mov    -0xb8(%rbp),%rax
    0.00 :   5b405:  xor    %esi,%esi
    0.00 :   5b407:  testb  $0x8,0xc(%rax)
    0.00 :   5b40b:  mov    -0xe0(%rbp),%eax
    0.00 :   5b411:  cmove  %esi,%eax
    0.00 :   5b414:  mov    %eax,-0xf0(%rbp)
         : 843   ./stdio-common/printf_fp.c:901
    0.00 :   5b41a:  cmpq   $0x0,-0xe8(%rbp)
    0.00 :   5b422:  je     5c350 <__GI___printf_fp_l+0x1a20>
         : 846   __guess_grouping():
         : 847   ./stdio-common/printf_fp.c:1295
    0.00 :   5b428:  mov    -0xe8(%rbp),%rax
    0.00 :   5b42f:  movzbl (%rax),%eax
    0.00 :   5b432:  mov    %al,-0xd0(%rbp)
    0.00 :   5b438:  sub    $0x1,%eax
    0.00 :   5b43b:  cmp    $0x7d,%al
    0.00 :   5b43d:  ja     5c3c0 <__GI___printf_fp_l+0x1a90>
         : 854   __GI___printf_fp_l():
         : 855   ./stdio-common/printf_fp.c:905
    0.00 :   5b443:  mov    -0x118(%rbp),%edx
    0.00 :   5b449:  mov    -0xe8(%rbp),%rax
         : 858   __guess_grouping():
         : 859   ./stdio-common/printf_fp.c:1299
    0.00 :   5b450:  xor    %r9d,%r9d
    0.00 :   5b453:  jmp    5b47d <__GI___printf_fp_l+0xb4d>
    0.00 :   5b455:  nopl   (%rax)
         : 863   ./stdio-common/printf_fp.c:1305
    0.00 :   5b458:  movzbl 0x1(%rax),%r8d
         : 865   ./stdio-common/printf_fp.c:1303
    0.00 :   5b45d:  add    $0x1,%rax
         : 867   ./stdio-common/printf_fp.c:1302
    0.00 :   5b461:  lea    0x1(%r9),%edi
         : 869   ./stdio-common/printf_fp.c:1303
    0.00 :   5b465:  sub    %ecx,%edx
         : 871   ./stdio-common/printf_fp.c:1305
    0.00 :   5b467:  cmp    $0x7e,%r8b
    0.00 :   5b46b:  ja     5c90b <__GI___printf_fp_l+0x1fdb>
         : 874   ./stdio-common/printf_fp.c:1312
    0.00 :   5b471:  test   %r8b,%r8b
    0.00 :   5b474:  je     5c91c <__GI___printf_fp_l+0x1fec>
         : 877   ./stdio-common/printf_fp.c:1302
    0.00 :   5b47a:  mov    %edi,%r9d
         : 879   ./stdio-common/printf_fp.c:1300
    0.00 :   5b47d:  movsbl (%rax),%ecx
    0.00 :   5b480:  cmp    %ecx,%edx
    0.00 :   5b482:  ja     5b458 <__GI___printf_fp_l+0xb28>
         : 883   __GI___printf_fp_l():
         : 884   ./stdio-common/printf_fp.c:905
    0.00 :   5b484:  mov    %r9d,%eax
    0.00 :   5b487:  mov    %r9d,-0x124(%rbp)
         : 887   ./stdio-common/printf_fp.c:908
    0.00 :   5b48e:  add    $0x1,%eax
    0.00 :   5b491:  cltq
    0.00 :   5b493:  add    %rax,-0x120(%rbp)
         : 891   ./stdio-common/printf_fp.c:915
    0.00 :   5b49a:  movabs $0x3ffffffffffffffc,%rax
    0.00 :   5b4a4:  cmp    %rax,-0x120(%rbp)
    0.00 :   5b4ab:  ja     5c840 <__GI___printf_fp_l+0x1f10>
         : 895   ./stdio-common/printf_fp.c:916 (discriminator 1)
    0.00 :   5b4b1:  movslq -0xe0(%rbp),%rax
         : 897   ./stdio-common/printf_fp.c:915 (discriminator 1)
    0.00 :   5b4b8:  mov    -0x120(%rbp),%rdi
    0.00 :   5b4bf:  mov    %esi,-0xd0(%rbp)
    0.00 :   5b4c5:  cmp    %rdi,%rax
    0.00 :   5b4c8:  ja     5c840 <__GI___printf_fp_l+0x1f10>
         : 902   ./stdio-common/printf_fp.c:922
    0.00 :   5b4ce:  lea    0x8(,%rdi,4),%r15
         : 904   __libc_use_alloca():
         : 905   ./stdio-common/../sysdeps/pthread/allocalim.h:27
    0.00 :   5b4d6:  mov    %r15,%rdi
    0.00 :   5b4d9:  call   909a0 <__libc_alloca_cutoff>
         : 908   ./stdio-common/../sysdeps/pthread/allocalim.h:29
    0.00 :   5b4de:  mov    -0xd0(%rbp),%esi
    0.00 :   5b4e4:  test   %eax,%eax
    0.00 :   5b4e6:  jne    5b4f5 <__GI___printf_fp_l+0xbc5>
    0.00 :   5b4e8:  cmp    $0x1000,%r15
    0.00 :   5b4ef:  ja     5ce5e <__GI___printf_fp_l+0x252e>
         : 914   __GI___printf_fp_l():
         : 915   ./stdio-common/printf_fp.c:932
    0.00 :   5b4f5:  add    $0x17,%r15
    0.00 :   5b4f9:  mov    %rsp,%rdx
    0.00 :   5b4fc:  mov    %r15,%rax
    0.00 :   5b4ff:  and    $0xfffffffffffff000,%r15
    0.00 :   5b506:  sub    %r15,%rdx
    0.00 :   5b509:  and    $0xfffffffffffffff0,%rax
    0.00 :   5b50d:  cmp    %rdx,%rsp
    0.00 :   5b510:  je     5b527 <__GI___printf_fp_l+0xbf7>
    0.00 :   5b512:  sub    $0x1000,%rsp
    0.00 :   5b519:  orq    $0x0,0xff8(%rsp)
    0.00 :   5b522:  cmp    %rdx,%rsp
    0.00 :   5b525:  jne    5b512 <__GI___printf_fp_l+0xbe2>
    0.00 :   5b527:  and    $0xfff,%eax
    0.00 :   5b52c:  sub    %rax,%rsp
    0.00 :   5b52f:  test   %rax,%rax
    0.00 :   5b532:  je     5b53a <__GI___printf_fp_l+0xc0a>
    0.00 :   5b534:  orq    $0x0,-0x8(%rsp,%rax,1)
    0.00 :   5b53a:  movl   $0x1,-0x14c(%rbp)
    0.00 :   5b544:  lea    0xf(%rsp),%rax
    0.00 :   5b549:  movl   $0x0,-0x140(%rbp)
    0.00 :   5b553:  and    $0xfffffffffffffff0,%rax
    0.00 :   5b557:  mov    %rax,-0x130(%rbp)
         : 938   ./stdio-common/printf_fp.c:936
    0.00 :   5b55e:  mov    -0xa0(%rbp),%r13d
         : 940   ./stdio-common/printf_fp.c:933
    0.00 :   5b565:  lea    0x8(%rax),%r14
         : 942   ./stdio-common/printf_fp.c:936
    0.00 :   5b569:  test   %r13d,%r13d
    0.00 :   5b56c:  je     5b57b <__GI___printf_fp_l+0xc4b>
         : 945   ./stdio-common/printf_fp.c:936 (discriminator 1)
    0.00 :   5b56e:  cmpl   $0x66,-0x9c(%rbp)
    0.00 :   5b575:  je     5c9f0 <__GI___printf_fp_l+0x20c0>
         : 948   ./stdio-common/printf_fp.c:939
    0.00 :   5b57b:  mov    -0x118(%rbp),%eax
    0.00 :   5b581:  test   %eax,%eax
    0.00 :   5b583:  jle    5cfaa <__GI___printf_fp_l+0x267a>
    0.00 :   5b589:  mov    -0x130(%rbp),%rdi
    0.00 :   5b590:  sub    $0x1,%eax
         : 954   ./stdio-common/printf_fp.c:933
    0.00 :   5b593:  mov    %r14,%r15
    0.00 :   5b596:  lea    -0xa0(%rbp),%r13
    0.00 :   5b59d:  lea    0xc(%rdi,%rax,4),%rbx
    0.00 :   5b5a2:  nopw   0x0(%rax,%rax,1)
         : 959   ./stdio-common/printf_fp.c:942
    0.00 :   5b5a8:  mov    %r13,%rdi
    0.00 :   5b5ab:  add    $0x4,%r15
    0.00 :   5b5af:  call   5a4d0 <hack_digit>
    0.00 :   5b5b4:  mov    %eax,-0x4(%r15)
         : 964   ./stdio-common/printf_fp.c:939
    0.00 :   5b5b8:  cmp    %rbx,%r15
    0.00 :   5b5bb:  jne    5b5a8 <__GI___printf_fp_l+0xc78>
         : 967   ./stdio-common/printf_fp.c:942
    0.00 :   5b5bd:  mov    -0x118(%rbp),%eax
    0.00 :   5b5c3:  mov    %rax,%rcx
    0.00 :   5b5c6:  lea    (%r14,%rax,4),%rax
    0.00 :   5b5ca:  mov    %ecx,-0x134(%rbp)
         : 972   ./stdio-common/printf_fp.c:946
    0.00 :   5b5d0:  mov    -0xb8(%rbp),%rdi
    0.00 :   5b5d7:  testb  $0x8,0xc(%rdi)
    0.00 :   5b5db:  jne    5b5eb <__GI___printf_fp_l+0xcbb>
    0.00 :   5b5dd:  mov    -0xf0(%rbp),%ebx
    0.00 :   5b5e3:  test   %ebx,%ebx
    0.00 :   5b5e5:  jle    5c9b4 <__GI___printf_fp_l+0x2084>
         : 979   ./stdio-common/printf_fp.c:948
    0.00 :   5b5eb:  mov    -0xc0(%rbp),%ecx
    0.00 :   5b5f1:  lea    0x4(%rax),%r15
         : 982   ./stdio-common/printf_fp.c:944
    0.00 :   5b5f5:  mov    $0x1,%esi
         : 984   ./stdio-common/printf_fp.c:948
    0.00 :   5b5fa:  mov    %ecx,(%rax)
         : 986   ./stdio-common/printf_fp.c:962
    0.00 :   5b5fc:  mov    -0xf0(%rbp),%eax
         : 988   ./stdio-common/printf_fp.c:960
    0.00 :   5b602:  xor    %ebx,%ebx
    0.00 :   5b604:  mov    %r12,-0x148(%rbp)
    0.00 :   5b60b:  mov    %r13,%r12
         : 992   ./stdio-common/printf_fp.c:961
    0.00 :   5b60e:  movl   $0x0,-0x100(%rbp)
    0.00 :   5b618:  mov    %ebx,%r13d
    0.00 :   5b61b:  mov    %esi,%ebx
    0.00 :   5b61d:  mov    %eax,-0xd0(%rbp)
         : 997   ./stdio-common/printf_fp.c:962
    0.00 :   5b623:  mov    -0xd0(%rbp),%eax
    0.00 :   5b629:  mov    %eax,%r9d
         : 1000  ./stdio-common/printf_fp.c:963
    0.00 :   5b62c:  cmp    %r13d,%eax
    0.00 :   5b62f:  jg     5b64c <__GI___printf_fp_l+0xd1c>
         : 1003  ./stdio-common/printf_fp.c:963 (discriminator 1)
    0.00 :   5b631:  cmp    %r13d,-0xe0(%rbp)
    0.00 :   5b638:  jle    5b999 <__GI___printf_fp_l+0x1069>
         : 1006  ./stdio-common/printf_fp.c:963 (discriminator 2)
    0.00 :   5b63e:  cmpq   $0x1,-0x88(%rbp)
    0.00 :   5b646:  jle    5b988 <__GI___printf_fp_l+0x1058>
         : 1009  ./stdio-common/printf_fp.c:966
    0.00 :   5b64c:  mov    %r12,%rdi
         : 1011  ./stdio-common/printf_fp.c:965
    0.00 :   5b64f:  add    $0x1,%r13d
         : 1013  ./stdio-common/printf_fp.c:967
    0.00 :   5b653:  add    $0x4,%r15
         : 1015  ./stdio-common/printf_fp.c:966
    0.00 :   5b657:  call   5a4d0 <hack_digit>
    0.00 :   5b65c:  mov    %eax,-0x4(%r15)
         : 1018  ./stdio-common/printf_fp.c:969
    0.00 :   5b660:  test   %ebx,%ebx
    0.00 :   5b662:  jne    5b66d <__GI___printf_fp_l+0xd3d>
    0.00 :   5b664:  cmp    $0x30,%eax
    0.00 :   5b667:  je     5c030 <__GI___printf_fp_l+0x1700>
         : 1023  ./stdio-common/printf_fp.c:962
    0.00 :   5b66d:  mov    -0xd0(%rbp),%eax
    0.00 :   5b673:  mov    $0x1,%ebx
    0.00 :   5b678:  mov    %eax,%r9d
         : 1027  ./stdio-common/printf_fp.c:963
    0.00 :   5b67b:  cmp    %r13d,%eax
    0.00 :   5b67e:  jle    5b631 <__GI___printf_fp_l+0xd01>
    0.00 :   5b680:  jmp    5b64c <__GI___printf_fp_l+0xd1c>
    0.00 :   5b682:  nopw   0x0(%rax,%rax,1)
         : 1032  ./stdio-common/printf_fp.c:393
    0.00 :   5b688:  lea    -0x60(%rbp),%r15
    0.00 :   5b68c:  sub    $0x10,%rsp
    0.00 :   5b690:  lea    -0xa4(%rbp),%rcx
    0.00 :   5b697:  mov    $0x2,%esi
    0.00 :   5b69c:  lea    -0x98(%rbp),%rdx
    0.00 :   5b6a3:  mov    %r15,%rdi
    0.00 :   5b6a6:  fstpt  (%rsp)
    0.00 :   5b6a9:  call   56550 <__mpn_extract_long_double>
    0.00 :   5b6ae:  pop    %rcx
    0.00 :   5b6af:  pop    %rsi
    0.00 :   5b6b0:  mov    %eax,%r14d
    0.00 :   5b6b3:  mov    %rax,%r13
    0.00 :   5b6b6:  shl    $0x6,%r14d
    0.00 :   5b6ba:  sub    $0x3f,%r14d
         : 1047  ./stdio-common/printf_fp.c:400
    0.00 :   5b6be:  jmp    5afdd <__GI___printf_fp_l+0x6ad>
    0.00 :   5b6c3:  mov    %r9d,-0xe0(%rbp)
         : 1050  ./stdio-common/printf_fp.c:1174 (discriminator 5)
    0.00 :   5b6ca:  mov    $0x2d,%esi
         : 1052  ./stdio-common/printf_fp.c:1178 (discriminator 5)
    0.00 :   5b6cf:  mov    %r12,%rdi
    0.00 :   5b6d2:  call   838b0 <__woverflow>
    0.00 :   5b6d7:  mov    -0xe0(%rbp),%r9d
    0.00 :   5b6de:  cmp    $0xffffffff,%eax
    0.00 :   5b6e1:  sete   %al
         : 1058  ./stdio-common/printf_fp.c:1178
    0.00 :   5b6e4:  test   %al,%al
    0.00 :   5b6e6:  je     5bd8e <__GI___printf_fp_l+0x145e>
         : 1061  ./stdio-common/printf_fp.c:1254 (discriminator 37)
    0.00 :   5b6ec:  mov    -0x14c(%rbp),%eax
    0.00 :   5b6f2:  test   %eax,%eax
    0.00 :   5b6f4:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 1065  ./stdio-common/printf_fp.c:1269 (discriminator 7)
    0.00 :   5b6f6:  mov    -0x130(%rbp),%rdi
    0.00 :   5b6fd:  call   28370 <free@plt>
    0.00 :   5b702:  mov    $0xffffffff,%r13d
    0.00 :   5b708:  jmp    5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5b70d:  nopl   (%rax)
         : 1071  ./stdio-common/printf_fp.c:418
    0.00 :   5b710:  movzbl (%r14),%edx
    0.00 :   5b714:  mov    0x28(%r12),%rax
    0.00 :   5b719:  cmp    %rax,0x30(%r12)
    0.00 :   5b71e:  jbe    5cbf0 <__GI___printf_fp_l+0x22c0>
    0.00 :   5b724:  lea    0x1(%rax),%rcx
    0.00 :   5b728:  mov    %rcx,0x28(%r12)
    0.00 :   5b72d:  mov    %dl,(%rax)
    0.00 :   5b72f:  movzbl 0x1(%r14),%edx
    0.00 :   5b734:  mov    0x28(%r12),%rax
    0.00 :   5b739:  cmp    %rax,0x30(%r12)
    0.00 :   5b73e:  jbe    5cbd0 <__GI___printf_fp_l+0x22a0>
    0.00 :   5b744:  lea    0x1(%rax),%rcx
    0.00 :   5b748:  mov    %rcx,0x28(%r12)
    0.00 :   5b74d:  mov    %dl,(%rax)
    0.00 :   5b74f:  movzbl 0x2(%r14),%edx
    0.00 :   5b754:  mov    0x28(%r12),%rax
    0.00 :   5b759:  cmp    0x30(%r12),%rax
    0.00 :   5b75e:  jae    5cbb2 <__GI___printf_fp_l+0x2282>
         : 1090  ./stdio-common/printf_fp.c:418 (discriminator 46)
    0.00 :   5b764:  lea    0x1(%rax),%rcx
    0.00 :   5b768:  mov    %rcx,0x28(%r12)
    0.00 :   5b76d:  mov    %dl,(%rax)
         : 1094  ./stdio-common/printf_fp.c:420 (discriminator 51)
    0.00 :   5b76f:  mov    -0xb8(%rbp),%rax
         : 1096  ./stdio-common/printf_fp.c:418 (discriminator 51)
    0.00 :   5b776:  add    $0x3,%r13d
         : 1098  ./stdio-common/printf_fp.c:420 (discriminator 51)
    0.00 :   5b77a:  testb  $0x20,0xc(%rax)
    0.00 :   5b77e:  je     5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5b784:  test   %r15b,%r15b
    0.00 :   5b787:  je     5aed8 <__GI___printf_fp_l+0x5a8>
         : 1103  ./stdio-common/printf_fp.c:421 (discriminator 2)
    0.00 :   5b78d:  movslq %ebx,%r14
    0.00 :   5b790:  mov    $0x20,%esi
    0.00 :   5b795:  mov    %r12,%rdi
    0.00 :   5b798:  mov    %r14,%rdx
    0.00 :   5b79b:  call   806a0 <_IO_padn>
    0.00 :   5b7a0:  jmp    5aecc <__GI___printf_fp_l+0x59c>
    0.00 :   5b7a5:  nopl   (%rax)
         : 1111  ./stdio-common/printf_fp.c:388
    0.00 :   5b7a8:  lea    -0x60(%rbp),%r15
    0.00 :   5b7ac:  lea    -0xa4(%rbp),%rcx
    0.00 :   5b7b3:  movdqa %xmm2,%xmm0
    0.00 :   5b7b7:  mov    $0x2,%esi
    0.00 :   5b7bc:  lea    -0x98(%rbp),%rdx
    0.00 :   5b7c3:  mov    %r15,%rdi
    0.00 :   5b7c6:  call   566b0 <__mpn_extract_float128>
    0.00 :   5b7cb:  mov    %eax,%r14d
    0.00 :   5b7ce:  mov    %rax,%r13
    0.00 :   5b7d1:  shl    $0x6,%r14d
    0.00 :   5b7d5:  sub    $0x70,%r14d
         : 1123  ./stdio-common/printf_fp.c:400
    0.00 :   5b7d9:  jmp    5afdd <__GI___printf_fp_l+0x6ad>
    0.00 :   5b7de:  xchg   %ax,%ax
         : 1126  ./stdio-common/printf_fp.c:414 (discriminator 2)
    0.00 :   5b7e0:  mov    0x28(%r12),%rax
    0.00 :   5b7e5:  cmp    0x30(%r12),%rax
    0.00 :   5b7ea:  jae    5d1fe <__GI___printf_fp_l+0x28ce>
         : 1130  ./stdio-common/printf_fp.c:414 (discriminator 11)
    0.00 :   5b7f0:  lea    0x1(%rax),%rdx
    0.00 :   5b7f4:  mov    %rdx,0x28(%r12)
    0.00 :   5b7f9:  movb   $0x2b,(%rax)
    0.00 :   5b7fc:  jmp    5ae04 <__GI___printf_fp_l+0x4d4>
         : 1135  ./stdio-common/printf_fp.c:418
    0.00 :   5b801:  mov    %r12,%rdi
    0.00 :   5b804:  mov    %rcx,-0xd0(%rbp)
    0.00 :   5b80b:  call   838b0 <__woverflow>
    0.00 :   5b810:  mov    -0xd0(%rbp),%rcx
    0.00 :   5b817:  cmp    $0xffffffff,%eax
    0.00 :   5b81a:  je     5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5b820:  mov    0xa0(%r12),%rax
    0.00 :   5b828:  mov    0x4(%rcx),%esi
    0.00 :   5b82b:  add    $0x1,%r13d
    0.00 :   5b82f:  lea    0x8(%rcx),%r14
    0.00 :   5b833:  test   %rax,%rax
    0.00 :   5b836:  jne    5ae55 <__GI___printf_fp_l+0x525>
    0.00 :   5b83c:  mov    %r12,%rdi
    0.00 :   5b83f:  call   838b0 <__woverflow>
    0.00 :   5b844:  cmp    $0xffffffff,%eax
    0.00 :   5b847:  je     5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5b84d:  mov    0xa0(%r12),%rax
    0.00 :   5b855:  mov    (%r14),%esi
    0.00 :   5b858:  add    $0x1,%r13d
    0.00 :   5b85c:  test   %rax,%rax
    0.00 :   5b85f:  jne    5ae7d <__GI___printf_fp_l+0x54d>
         : 1157  ./stdio-common/printf_fp.c:418 (discriminator 19)
    0.00 :   5b865:  mov    %r12,%rdi
    0.00 :   5b868:  call   838b0 <__woverflow>
    0.00 :   5b86d:  cmp    $0xffffffff,%eax
    0.00 :   5b870:  sete   %al
    0.00 :   5b873:  jmp    5ae9b <__GI___printf_fp_l+0x56b>
         : 1163  _nl_lookup_word():
         : 1164  ./stdio-common/../include/../locale/localeinfo.h:330
    0.00 :   5b878:  mov    -0xf8(%rbp),%rbx
    0.00 :   5b87f:  mov    0x20(%rbx),%rsi
         : 1167  __GI___printf_fp_l():
         : 1168  ./stdio-common/printf_fp.c:316
    0.00 :   5b883:  mov    0x1a0(%rsi),%edi
    0.00 :   5b889:  mov    %edi,-0x114(%rbp)
    0.00 :   5b88f:  jmp    5abf2 <__GI___printf_fp_l+0x2c2>
         : 1172  _nl_lookup():
         : 1173  ./stdio-common/../include/../locale/localeinfo.h:315
    0.00 :   5b894:  mov    -0xf8(%rbp),%rdi
    0.00 :   5b89b:  mov    0x20(%rdi),%rsi
    0.00 :   5b89f:  mov    0x58(%rsi),%rsi
    0.00 :   5b8a3:  mov    %rsi,-0x110(%rbp)
    0.00 :   5b8aa:  jmp    5af7a <__GI___printf_fp_l+0x64a>
         : 1179  __GI___printf_fp_l():
         : 1180  ./stdio-common/printf_fp.c:388 (discriminator 1)
    0.00 :   5b8af:  movmskps %xmm2,%r13d
    0.00 :   5b8b3:  and    $0x8,%r13d
         : 1183  ./stdio-common/printf_fp.c:396 (discriminator 1)
    0.00 :   5b8b7:  mov    -0xb8(%rbp),%rax
    0.00 :   5b8be:  mov    %r13d,-0xa4(%rbp)
    0.00 :   5b8c5:  lea    0x17ce37(%rip),%r14        # 1d8703 <not_available+0x1a5>
    0.00 :   5b8cc:  movslq 0x8(%rax),%rcx
    0.00 :   5b8d0:  mov    0x1be521(%rip),%rax        # 219df8 <_DYNAMIC+0x238>
    0.00 :   5b8d7:  mov    %fs:(%rax),%rax
    0.00 :   5b8db:  testb  $0x1,0x1(%rax,%rcx,2)
    0.00 :   5b8e0:  lea    0x187139(%rip),%rax        # 1e2a20 <default_rwlockattr+0x348>
    0.00 :   5b8e7:  lea    0x187112(%rip),%rcx        # 1e2a00 <default_rwlockattr+0x328>
    0.00 :   5b8ee:  cmove  %rax,%rcx
    0.00 :   5b8f2:  lea    0x17ccdb(%rip),%rax        # 1d85d4 <not_available+0x76>
    0.00 :   5b8f9:  cmove  %rax,%r14
    0.00 :   5b8fd:  jmp    5aadc <__GI___printf_fp_l+0x1ac>
         : 1197  ./stdio-common/printf_fp.c:437
    0.00 :   5b902:  orq    $0x0,-0x8(%rsp,%rdx,1)
    0.00 :   5b908:  jmp    5b047 <__GI___printf_fp_l+0x717>
         : 1200  ./stdio-common/printf_fp.c:416 (discriminator 2)
    0.00 :   5b90d:  mov    0x28(%r12),%rax
    0.00 :   5b912:  cmp    0x30(%r12),%rax
    0.00 :   5b917:  jae    5d406 <__GI___printf_fp_l+0x2ad6>
         : 1204  ./stdio-common/printf_fp.c:416 (discriminator 11)
    0.00 :   5b91d:  lea    0x1(%rax),%rdx
    0.00 :   5b921:  mov    %rdx,0x28(%r12)
    0.00 :   5b926:  movb   $0x20,(%rax)
    0.00 :   5b929:  jmp    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5b92e:  xchg   %ax,%ax
         : 1210  ./stdio-common/printf_fp.c:502
    0.00 :   5b930:  mov    0x8(%r15),%rax
         : 1212  ./stdio-common/printf_fp.c:504
    0.00 :   5b934:  lea    0x171585(%rip),%rcx        # 1ccec0 <__tens>
         : 1214  ./stdio-common/printf_fp.c:503
    0.00 :   5b93b:  add    $0x8,%rdi
         : 1216  ./stdio-common/printf_fp.c:502
    0.00 :   5b93f:  lea    0x1(%rax),%rdx
         : 1218  ./stdio-common/printf_fp.c:504
    0.00 :   5b943:  mov    (%r15),%rax
         : 1220  ./stdio-common/printf_fp.c:502
    0.00 :   5b946:  mov    %rdx,-0x68(%rbp)
         : 1222  ./stdio-common/printf_fp.c:503
    0.00 :   5b94a:  shl    $0x3,%rdx
         : 1224  ./stdio-common/printf_fp.c:504
    0.00 :   5b94e:  lea    (%rcx,%rax,8),%rsi
         : 1226  ./stdio-common/printf_fp.c:503
    0.00 :   5b952:  call   28620 <*ABS*+0xa9c10@plt>
         : 1228  ./stdio-common/printf_fp.c:506
    0.00 :   5b957:  mov    -0x70(%rbp),%rax
    0.00 :   5b95b:  movq   $0x0,(%rax)
         : 1231  ./stdio-common/printf_fp.c:551
    0.00 :   5b962:  mov    -0x68(%rbp),%rdx
         : 1233  ./stdio-common/printf_fp.c:509
    0.00 :   5b966:  addl   $0x40,-0x98(%rbp)
    0.00 :   5b96d:  jmp    5b1e4 <__GI___printf_fp_l+0x8b4>
    0.00 :   5b972:  nopw   0x0(%rax,%rax,1)
         : 1237  ./stdio-common/printf_fp.c:548
    0.00 :   5b978:  sub    $0x2,%rdx
    0.00 :   5b97c:  mov    %rdx,-0x68(%rbp)
    0.00 :   5b980:  jmp    5b1e4 <__GI___printf_fp_l+0x8b4>
    0.00 :   5b985:  nopl   (%rax)
         : 1242  ./stdio-common/printf_fp.c:963 (discriminator 3)
    0.00 :   5b988:  mov    -0x90(%rbp),%rax
    0.00 :   5b98f:  cmpq   $0x0,(%rax)
    0.00 :   5b993:  jne    5b64c <__GI___printf_fp_l+0xd1c>
    0.00 :   5b999:  mov    %r13d,%ebx
    0.00 :   5b99c:  mov    %r12,%r13
    0.00 :   5b99f:  mov    -0x148(%rbp),%r12
         : 1249  ./stdio-common/printf_fp.c:978
    0.00 :   5b9a6:  mov    -0x4(%r15),%edx
    0.00 :   5b9aa:  cmp    -0xc0(%rbp),%edx
    0.00 :   5b9b0:  jne    5b9b6 <__GI___printf_fp_l+0x1086>
         : 1253  ./stdio-common/printf_fp.c:978 (discriminator 2)
    0.00 :   5b9b2:  mov    -0x8(%r15),%edx
         : 1255  ./stdio-common/printf_fp.c:979 (discriminator 4)
    0.00 :   5b9b6:  mov    %r13,%rdi
    0.00 :   5b9b9:  mov    %edx,-0xe0(%rbp)
    0.00 :   5b9bf:  mov    %r9d,-0xd0(%rbp)
    0.00 :   5b9c6:  call   5a4d0 <hack_digit>
         : 1260  ./stdio-common/printf_fp.c:981 (discriminator 4)
    0.00 :   5b9cb:  mov    -0xd0(%rbp),%r9d
    0.00 :   5b9d2:  mov    -0xe0(%rbp),%edx
    0.00 :   5b9d8:  cmp    $0x30,%eax
         : 1264  ./stdio-common/printf_fp.c:979 (discriminator 4)
    0.00 :   5b9db:  mov    %eax,%esi
         : 1266  ./stdio-common/printf_fp.c:981 (discriminator 4)
    0.00 :   5b9dd:  setne  %dil
    0.00 :   5b9e1:  cmp    $0x35,%eax
    0.00 :   5b9e4:  setne  %al
    0.00 :   5b9e7:  and    %al,%dil
    0.00 :   5b9ea:  jne    5ba2b <__GI___printf_fp_l+0x10fb>
         : 1272  ./stdio-common/printf_fp.c:983
    0.00 :   5b9ec:  mov    -0x88(%rbp),%rax
    0.00 :   5b9f3:  cmp    $0x1,%rax
    0.00 :   5b9f7:  je     5ca21 <__GI___printf_fp_l+0x20f1>
         : 1276  ./stdio-common/printf_fp.c:986
    0.00 :   5b9fd:  cmpq   $0x0,-0x78(%rbp)
    0.00 :   5ba02:  jne    5ba26 <__GI___printf_fp_l+0x10f6>
         : 1279  ./stdio-common/printf_fp.c:983
    0.00 :   5ba04:  mov    -0x90(%rbp),%r10
         : 1281  ./stdio-common/printf_fp.c:991
    0.00 :   5ba0b:  test   %rax,%rax
    0.00 :   5ba0e:  jne    5ba1e <__GI___printf_fp_l+0x10ee>
    0.00 :   5ba10:  jmp    5ba2b <__GI___printf_fp_l+0x10fb>
    0.00 :   5ba12:  nopw   0x0(%rax,%rax,1)
    0.00 :   5ba18:  sub    $0x1,%rax
    0.00 :   5ba1c:  je     5ba2b <__GI___printf_fp_l+0x10fb>
         : 1288  ./stdio-common/printf_fp.c:991 (discriminator 1)
    0.00 :   5ba1e:  cmpq   $0x0,-0x8(%r10,%rax,8)
    0.00 :   5ba24:  je     5ba18 <__GI___printf_fp_l+0x10e8>
         : 1291  ./stdio-common/printf_fp.c:982
    0.00 :   5ba26:  mov    $0x1,%edi
         : 1293  get_rounding_mode():
         : 1294  ./stdio-common/../sysdeps/generic/get-rounding-mode.h:94
    0.00 :   5ba2b:  fnstcw -0xa6(%rbp)
         : 1296  ./stdio-common/../sysdeps/generic/get-rounding-mode.h:95
    0.00 :   5ba31:  movzwl -0xa6(%rbp),%eax
    0.00 :   5ba38:  and    $0xc00,%ax
    0.00 :   5ba3c:  cmp    $0x800,%ax
    0.00 :   5ba40:  je     5c75c <__GI___printf_fp_l+0x1e2c>
    0.00 :   5ba46:  ja     5c060 <__GI___printf_fp_l+0x1730>
    0.00 :   5ba4c:  test   %ax,%ax
    0.00 :   5ba4f:  jne    5c070 <__GI___printf_fp_l+0x1740>
         : 1304  round_away():
         : 1305  ./stdio-common/../include/rounding-mode.h:52
    0.00 :   5ba55:  cmp    $0x34,%esi
    0.00 :   5ba58:  jle    5ba70 <__GI___printf_fp_l+0x1140>
    0.00 :   5ba5a:  and    $0x1,%edx
    0.00 :   5ba5d:  jne    5c093 <__GI___printf_fp_l+0x1763>
         : 1310  ./stdio-common/../include/rounding-mode.h:58
    0.00 :   5ba63:  test   %dil,%dil
    0.00 :   5ba66:  jne    5c093 <__GI___printf_fp_l+0x1763>
    0.00 :   5ba6c:  nopl   0x0(%rax)
         : 1314  __GI___printf_fp_l():
         : 1315  ./stdio-common/printf_fp.c:1097
    0.00 :   5ba70:  cmp    %r9d,%ebx
    0.00 :   5ba73:  jg     5ba8c <__GI___printf_fp_l+0x115c>
    0.00 :   5ba75:  jmp    5ba93 <__GI___printf_fp_l+0x1163>
    0.00 :   5ba77:  nopw   0x0(%rax,%rax,1)
         : 1320  ./stdio-common/printf_fp.c:1100
    0.00 :   5ba80:  sub    $0x1,%ebx
         : 1322  ./stdio-common/printf_fp.c:1099
    0.00 :   5ba83:  sub    $0x4,%r15
         : 1324  ./stdio-common/printf_fp.c:1097
    0.00 :   5ba87:  cmp    %r9d,%ebx
    0.00 :   5ba8a:  jle    5ba93 <__GI___printf_fp_l+0x1163>
         : 1327  ./stdio-common/printf_fp.c:1097 (discriminator 1)
    0.00 :   5ba8c:  cmpl   $0x30,-0x4(%r15)
    0.00 :   5ba91:  je     5ba80 <__GI___printf_fp_l+0x1150>
         : 1330  ./stdio-common/printf_fp.c:1104
    0.00 :   5ba93:  test   %ebx,%ebx
    0.00 :   5ba95:  jne    5bab8 <__GI___printf_fp_l+0x1188>
         : 1333  ./stdio-common/printf_fp.c:1104 (discriminator 1)
    0.00 :   5ba97:  mov    -0xb8(%rbp),%rax
    0.00 :   5ba9e:  testb  $0x8,0xc(%rax)
    0.00 :   5baa2:  jne    5bab8 <__GI___printf_fp_l+0x1188>
         : 1337  ./stdio-common/printf_fp.c:1104 (discriminator 2)
    0.00 :   5baa4:  mov    -0xc0(%rbp),%eax
    0.00 :   5baaa:  cmp    %eax,-0x4(%r15)
    0.00 :   5baae:  jne    5bab8 <__GI___printf_fp_l+0x1188>
         : 1341  ./stdio-common/printf_fp.c:1105
    0.00 :   5bab0:  sub    $0x4,%r15
    0.00 :   5bab4:  nopl   0x0(%rax)
         : 1344  ./stdio-common/printf_fp.c:1107
    0.00 :   5bab8:  mov    -0xe8(%rbp),%rcx
    0.00 :   5babf:  test   %rcx,%rcx
    0.00 :   5bac2:  je     5bc1a <__GI___printf_fp_l+0x12ea>
         : 1348  ./stdio-common/printf_fp.c:1112
    0.00 :   5bac8:  mov    -0x134(%rbp),%edx
         : 1350  ./stdio-common/printf_fp.c:1111
    0.00 :   5bace:  mov    -0x118(%rbp),%eax
         : 1352  ./stdio-common/printf_fp.c:1112
    0.00 :   5bad4:  mov    %edx,%ebx
         : 1354  ./stdio-common/printf_fp.c:1111
    0.00 :   5bad6:  cmp    %eax,%edx
    0.00 :   5bad8:  je     5bb27 <__GI___printf_fp_l+0x11f7>
         : 1357  __guess_grouping():
         : 1358  ./stdio-common/printf_fp.c:1295
    0.00 :   5bada:  movl   $0x0,-0x124(%rbp)
    0.00 :   5bae4:  movzbl (%rcx),%eax
    0.00 :   5bae7:  mov    %al,-0xd0(%rbp)
    0.00 :   5baed:  sub    $0x1,%eax
    0.00 :   5baf0:  cmp    $0x7d,%al
    0.00 :   5baf2:  ja     5bc1a <__GI___printf_fp_l+0x12ea>
    0.00 :   5baf8:  mov    %rcx,%rax
         : 1366  ./stdio-common/printf_fp.c:1299
    0.00 :   5bafb:  xor    %esi,%esi
    0.00 :   5bafd:  jmp    5bb1a <__GI___printf_fp_l+0x11ea>
    0.00 :   5baff:  nop
         : 1370  ./stdio-common/printf_fp.c:1305
    0.00 :   5bb00:  movzbl 0x1(%rax),%ecx
         : 1372  ./stdio-common/printf_fp.c:1303
    0.00 :   5bb04:  add    $0x1,%rax
         : 1374  ./stdio-common/printf_fp.c:1302
    0.00 :   5bb08:  add    $0x1,%esi
         : 1376  ./stdio-common/printf_fp.c:1303
    0.00 :   5bb0b:  sub    %edi,%edx
         : 1378  ./stdio-common/printf_fp.c:1305
    0.00 :   5bb0d:  cmp    $0x7e,%cl
    0.00 :   5bb10:  ja     5bb21 <__GI___printf_fp_l+0x11f1>
         : 1381  ./stdio-common/printf_fp.c:1312
    0.00 :   5bb12:  test   %cl,%cl
    0.00 :   5bb14:  je     5ce02 <__GI___printf_fp_l+0x24d2>
         : 1384  ./stdio-common/printf_fp.c:1300
    0.00 :   5bb1a:  movsbl (%rax),%edi
    0.00 :   5bb1d:  cmp    %edi,%edx
    0.00 :   5bb1f:  ja     5bb00 <__GI___printf_fp_l+0x11d0>
         : 1388  __GI___printf_fp_l():
         : 1389  ./stdio-common/printf_fp.c:1112
    0.00 :   5bb21:  mov    %esi,-0x124(%rbp)
         : 1391  group_number():
         : 1392  ./stdio-common/printf_fp.c:1333
    0.00 :   5bb27:  mov    -0x124(%rbp),%edi
    0.00 :   5bb2d:  test   %edi,%edi
    0.00 :   5bb2f:  je     5bc1a <__GI___printf_fp_l+0x12ea>
         : 1396  ./stdio-common/printf_fp.c:1338
    0.00 :   5bb35:  movslq -0x134(%rbp),%rax
         : 1398  ./stdio-common/printf_fp.c:1337
    0.00 :   5bb3c:  movslq %edi,%r13
         : 1400  ./stdio-common/printf_fp.c:1338
    0.00 :   5bb3f:  mov    %r15,%rdx
    0.00 :   5bb42:  lea    (%r14,%rax,4),%rsi
         : 1403  ./stdio-common/printf_fp.c:1337
    0.00 :   5bb46:  add    %r13,%rax
    0.00 :   5bb49:  lea    0x0(,%rax,4),%rcx
         : 1406  ./stdio-common/printf_fp.c:1338
    0.00 :   5bb51:  sub    %rsi,%rdx
         : 1408  ./stdio-common/printf_fp.c:1337
    0.00 :   5bb54:  lea    (%r14,%rcx,1),%rdi
         : 1410  ./stdio-common/printf_fp.c:1338
    0.00 :   5bb58:  sar    $0x2,%rdx
         : 1412  ./stdio-common/printf_fp.c:1337
    0.00 :   5bb5c:  mov    %rcx,-0xd0(%rbp)
    0.00 :   5bb63:  call   c5af0 <wmemmove>
         : 1415  ./stdio-common/printf_fp.c:1340
    0.00 :   5bb68:  mov    -0xd0(%rbp),%rcx
    0.00 :   5bb6f:  mov    -0x114(%rbp),%r8d
    0.00 :   5bb76:  lea    -0x4(%r14,%rcx,1),%rdi
    0.00 :   5bb7b:  mov    -0xe8(%rbp),%rcx
    0.00 :   5bb82:  movsbl (%rcx),%r9d
    0.00 :   5bb86:  cs nopw 0x0(%rax,%rax,1)
         : 1422  ./stdio-common/printf_fp.c:1343
    0.00 :   5bb90:  mov    %ebx,%esi
    0.00 :   5bb92:  mov    %rdi,%rax
    0.00 :   5bb95:  sub    %r9d,%esi
    0.00 :   5bb98:  nopl   0x0(%rax,%rax,1)
         : 1427  ./stdio-common/printf_fp.c:1345
    0.00 :   5bba0:  lea    -0x1(%rbx),%edx
    0.00 :   5bba3:  sub    $0x4,%rax
    0.00 :   5bba7:  mov    %rdx,%rbx
    0.00 :   5bbaa:  mov    (%r14,%rdx,4),%edx
    0.00 :   5bbae:  mov    %edx,0x4(%rax)
         : 1433  ./stdio-common/printf_fp.c:1346
    0.00 :   5bbb1:  cmp    %esi,%ebx
    0.00 :   5bbb3:  jne    5bba0 <__GI___printf_fp_l+0x1270>
    0.00 :   5bbb5:  lea    -0x1(%r9),%eax
    0.00 :   5bbb9:  neg    %rax
    0.00 :   5bbbc:  shl    $0x2,%rax
         : 1439  ./stdio-common/printf_fp.c:1345
    0.00 :   5bbc0:  lea    -0x4(%rdi,%rax,1),%rdx
         : 1441  ./stdio-common/printf_fp.c:1347
    0.00 :   5bbc5:  lea    -0x8(%rdi,%rax,1),%rdi
    0.00 :   5bbca:  mov    %r8d,(%rdx)
         : 1444  ./stdio-common/printf_fp.c:1349
    0.00 :   5bbcd:  movsbl 0x1(%rcx),%r9d
    0.00 :   5bbd2:  cmp    $0x7e,%r9b
    0.00 :   5bbd6:  ja     5bc00 <__GI___printf_fp_l+0x12d0>
         : 1448  ./stdio-common/printf_fp.c:1356
    0.00 :   5bbd8:  test   %r9b,%r9b
    0.00 :   5bbdb:  je     5bbf0 <__GI___printf_fp_l+0x12c0>
         : 1451  ./stdio-common/printf_fp.c:1343
    0.00 :   5bbdd:  add    $0x1,%rcx
         : 1453  ./stdio-common/printf_fp.c:1359
    0.00 :   5bbe1:  cmp    %esi,%r9d
    0.00 :   5bbe4:  jae    5bc00 <__GI___printf_fp_l+0x12d0>
         : 1456  __guess_grouping():
         : 1457  ./stdio-common/printf_fp.c:1299
    0.00 :   5bbe6:  mov    %esi,%ebx
    0.00 :   5bbe8:  jmp    5bb90 <__GI___printf_fp_l+0x1260>
    0.00 :   5bbea:  nopw   0x0(%rax,%rax,1)
         : 1461  group_number():
         : 1462  ./stdio-common/printf_fp.c:1359
    0.00 :   5bbf0:  movsbl (%rcx),%r9d
    0.00 :   5bbf4:  cmp    %esi,%r9d
    0.00 :   5bbf7:  jb     5bbe6 <__GI___printf_fp_l+0x12b6>
    0.00 :   5bbf9:  nopl   0x0(%rax)
         : 1467  ./stdio-common/printf_fp.c:1363
    0.00 :   5bc00:  lea    -0x1(%rsi),%eax
    0.00 :   5bc03:  sub    $0x4,%rdi
    0.00 :   5bc07:  mov    %rax,%rsi
    0.00 :   5bc0a:  mov    (%r14,%rax,4),%eax
    0.00 :   5bc0e:  mov    %eax,0x4(%rdi)
         : 1473  ./stdio-common/printf_fp.c:1364
    0.00 :   5bc11:  cmp    %r14,%rdi
    0.00 :   5bc14:  ja     5bc00 <__GI___printf_fp_l+0x12d0>
         : 1476  ./stdio-common/printf_fp.c:1366
    0.00 :   5bc16:  lea    (%r15,%r13,4),%r15
         : 1478  __GI___printf_fp_l():
         : 1479  ./stdio-common/printf_fp.c:1120
    0.00 :   5bc1a:  mov    -0x9c(%rbp),%edx
    0.00 :   5bc20:  cmp    $0x66,%edx
    0.00 :   5bc23:  je     5bcb3 <__GI___printf_fp_l+0x1383>
         : 1483  ./stdio-common/printf_fp.c:1122
    0.00 :   5bc29:  mov    -0xa0(%rbp),%ecx
    0.00 :   5bc2f:  mov    -0x98(%rbp),%eax
         : 1486  ./stdio-common/printf_fp.c:1142
    0.00 :   5bc35:  mov    $0x2b,%edi
         : 1488  ./stdio-common/printf_fp.c:1122
    0.00 :   5bc3a:  test   %ecx,%ecx
    0.00 :   5bc3c:  jne    5d037 <__GI___printf_fp_l+0x2707>
         : 1491  ./stdio-common/printf_fp.c:1141 (discriminator 4)
    0.00 :   5bc42:  movd   %edx,%xmm0
    0.00 :   5bc46:  movd   %edi,%xmm3
         : 1494  ./stdio-common/printf_fp.c:1142 (discriminator 4)
    0.00 :   5bc4a:  lea    0x8(%r15),%rsi
         : 1496  ./stdio-common/printf_fp.c:1141 (discriminator 4)
    0.00 :   5bc4e:  punpckldq %xmm3,%xmm0
    0.00 :   5bc52:  movq   %xmm0,(%r15)
         : 1499  ./stdio-common/printf_fp.c:1146 (discriminator 4)
    0.00 :   5bc57:  cmp    $0x9,%eax
    0.00 :   5bc5a:  jle    5c33d <__GI___printf_fp_l+0x1a0d>
         : 1502  ./stdio-common/printf_fp.c:1145
    0.00 :   5bc60:  mov    $0xa,%ecx
    0.00 :   5bc65:  nopl   (%rax)
         : 1505  ./stdio-common/printf_fp.c:1147
    0.00 :   5bc68:  lea    (%rcx,%rcx,4),%ecx
    0.00 :   5bc6b:  add    %ecx,%ecx
         : 1508  ./stdio-common/printf_fp.c:1146
    0.00 :   5bc6d:  cmp    %eax,%ecx
    0.00 :   5bc6f:  jle    5bc68 <__GI___printf_fp_l+0x1338>
    0.00 :   5bc71:  nopl   0x0(%rax)
         : 1512  ./stdio-common/printf_fp.c:1155 (discriminator 1)
    0.00 :   5bc78:  movslq %ecx,%rcx
         : 1514  ./stdio-common/printf_fp.c:1156 (discriminator 1)
    0.00 :   5bc7b:  add    $0x4,%rsi
    0.00 :   5bc7f:  mov    %rcx,%rdi
         : 1517  ./stdio-common/printf_fp.c:1155 (discriminator 1)
    0.00 :   5bc82:  imul   $0x66666667,%rcx,%rcx
    0.00 :   5bc89:  mov    %edi,%edx
    0.00 :   5bc8b:  sar    $0x1f,%edx
    0.00 :   5bc8e:  sar    $0x22,%rcx
    0.00 :   5bc92:  sub    %edx,%ecx
         : 1523  ./stdio-common/printf_fp.c:1156 (discriminator 1)
    0.00 :   5bc94:  cltd
    0.00 :   5bc95:  idiv   %ecx
    0.00 :   5bc97:  add    $0x30,%eax
    0.00 :   5bc9a:  mov    %eax,-0x4(%rsi)
         : 1528  ./stdio-common/printf_fp.c:1157 (discriminator 1)
    0.00 :   5bc9d:  mov    %edx,%eax
         : 1530  ./stdio-common/printf_fp.c:1159 (discriminator 1)
    0.00 :   5bc9f:  cmp    $0x6d,%edi
    0.00 :   5bca2:  jg     5bc78 <__GI___printf_fp_l+0x1348>
    0.00 :   5bca4:  mov    %edx,-0x98(%rbp)
         : 1534  ./stdio-common/printf_fp.c:1160
    0.00 :   5bcaa:  add    $0x30,%eax
    0.00 :   5bcad:  lea    0x4(%rsi),%r15
    0.00 :   5bcb1:  mov    %eax,(%rsi)
         : 1538  ./stdio-common/printf_fp.c:1166
    0.00 :   5bcb3:  mov    -0xb8(%rbp),%rcx
    0.00 :   5bcba:  mov    -0xa4(%rbp),%eax
         : 1541  ./stdio-common/printf_fp.c:1168
    0.00 :   5bcc0:  mov    %r15,%rbx
    0.00 :   5bcc3:  sub    %r14,%rbx
         : 1544  ./stdio-common/printf_fp.c:1166
    0.00 :   5bcc6:  movzbl 0xc(%rcx),%edx
    0.00 :   5bcca:  test   %eax,%eax
    0.00 :   5bccc:  jne    5c138 <__GI___printf_fp_l+0x1808>
         : 1548  ./stdio-common/printf_fp.c:1166 (discriminator 1)
    0.00 :   5bcd2:  test   $0x50,%dl
    0.00 :   5bcd5:  jne    5c138 <__GI___printf_fp_l+0x1808>
         : 1551  ./stdio-common/printf_fp.c:1168
    0.00 :   5bcdb:  mov    -0x138(%rbp),%edi
    0.00 :   5bce1:  mov    %rbx,%rax
    0.00 :   5bce4:  sar    $0x2,%rax
    0.00 :   5bce8:  sub    %eax,%edi
    0.00 :   5bcea:  mov    %edi,-0xd0(%rbp)
         : 1557  ./stdio-common/printf_fp.c:1170
    0.00 :   5bcf0:  test   $0x20,%dl
    0.00 :   5bcf3:  jne    5c903 <__GI___printf_fp_l+0x1fd3>
    0.00 :   5bcf9:  mov    0x10(%rcx),%esi
    0.00 :   5bcfc:  cmp    $0x30,%esi
    0.00 :   5bcff:  je     5c903 <__GI___printf_fp_l+0x1fd3>
    0.00 :   5bd05:  mov    -0xd0(%rbp),%eax
    0.00 :   5bd0b:  test   %eax,%eax
    0.00 :   5bd0d:  jle    5c903 <__GI___printf_fp_l+0x1fd3>
         : 1566  ./stdio-common/printf_fp.c:1171
    0.00 :   5bd13:  movslq -0xd0(%rbp),%r13
    0.00 :   5bd1a:  mov    -0xbc(%rbp),%eax
    0.00 :   5bd20:  mov    %r12,%rdi
    0.00 :   5bd23:  mov    %r13,%rdx
    0.00 :   5bd26:  test   %eax,%eax
    0.00 :   5bd28:  je     5ce9b <__GI___printf_fp_l+0x256b>
         : 1573  ./stdio-common/printf_fp.c:1171 (discriminator 1)
    0.00 :   5bd2e:  call   824e0 <_IO_wpadn>
         : 1575  ./stdio-common/printf_fp.c:1171 (discriminator 4)
    0.00 :   5bd33:  cmp    %r13,%rax
    0.00 :   5bd36:  jne    5b6ec <__GI___printf_fp_l+0xdbc>
         : 1578  ./stdio-common/printf_fp.c:1173
    0.00 :   5bd3c:  mov    -0xa4(%rbp),%eax
    0.00 :   5bd42:  mov    -0xd0(%rbp),%r9d
         : 1581  ./stdio-common/printf_fp.c:1173 (discriminator 10)
    0.00 :   5bd49:  test   %eax,%eax
    0.00 :   5bd4b:  je     5c360 <__GI___printf_fp_l+0x1a30>
         : 1584  ./stdio-common/printf_fp.c:1174
    0.00 :   5bd51:  mov    -0xbc(%rbp),%r11d
    0.00 :   5bd58:  test   %r11d,%r11d
    0.00 :   5bd5b:  je     5c6f0 <__GI___printf_fp_l+0x1dc0>
         : 1588  ./stdio-common/printf_fp.c:1174 (discriminator 1)
    0.00 :   5bd61:  mov    0xa0(%r12),%rax
    0.00 :   5bd69:  test   %rax,%rax
    0.00 :   5bd6c:  je     5b6c3 <__GI___printf_fp_l+0xd93>
         : 1592  ./stdio-common/printf_fp.c:1174 (discriminator 4)
    0.00 :   5bd72:  mov    0x20(%rax),%rdx
    0.00 :   5bd76:  cmp    0x28(%rax),%rdx
    0.00 :   5bd7a:  jae    5b6c3 <__GI___printf_fp_l+0xd93>
         : 1596  ./stdio-common/printf_fp.c:1174 (discriminator 6)
    0.00 :   5bd80:  lea    0x4(%rdx),%rsi
    0.00 :   5bd84:  mov    %rsi,0x20(%rax)
    0.00 :   5bd88:  movl   $0x2d,(%rdx)
         : 1600  ./stdio-common/printf_fp.c:1180 (discriminator 16)
    0.00 :   5bd8e:  mov    -0xb8(%rbp),%rax
         : 1602  ./stdio-common/printf_fp.c:1178 (discriminator 16)
    0.00 :   5bd95:  add    $0x1,%r9d
         : 1604  ./stdio-common/printf_fp.c:1180 (discriminator 16)
    0.00 :   5bd99:  movzbl 0xc(%rax),%eax
         : 1606  ./stdio-common/printf_fp.c:1180 (discriminator 20)
    0.00 :   5bd9d:  test   $0x20,%al
    0.00 :   5bd9f:  jne    5bdbc <__GI___printf_fp_l+0x148c>
         : 1609  ./stdio-common/printf_fp.c:1180 (discriminator 1)
    0.00 :   5bda1:  mov    -0xb8(%rbp),%rax
    0.00 :   5bda8:  cmpl   $0x30,0x10(%rax)
    0.00 :   5bdac:  jne    5bdbc <__GI___printf_fp_l+0x148c>
    0.00 :   5bdae:  mov    -0xd0(%rbp),%edi
    0.00 :   5bdb4:  test   %edi,%edi
    0.00 :   5bdb6:  jg     5ce16 <__GI___printf_fp_l+0x24e6>
         : 1616  ./stdio-common/printf_fp.c:1188 (discriminator 10)
    0.00 :   5bdbc:  mov    -0xbc(%rbp),%ecx
         : 1618  ./stdio-common/printf_fp.c:1195 (discriminator 10)
    0.00 :   5bdc2:  mov    -0xb8(%rbp),%rax
         : 1620  ./stdio-common/printf_fp.c:1188 (discriminator 10)
    0.00 :   5bdc9:  test   %ecx,%ecx
    0.00 :   5bdcb:  jne    5c208 <__GI___printf_fp_l+0x18d8>
         : 1623  ./stdio-common/printf_fp.c:1195
    0.00 :   5bdd1:  testb  $0x8,0xd(%rax)
    0.00 :   5bdd5:  je     5bdf6 <__GI___printf_fp_l+0x14c6>
         : 1626  _nl_lookup_word():
         : 1627  ./stdio-common/../include/../locale/localeinfo.h:330
    0.00 :   5bdd7:  mov    -0xf8(%rbp),%rax
    0.00 :   5bdde:  mov    (%rax),%rax
         : 1630  __GI___printf_fp_l():
         : 1631  ./stdio-common/printf_fp.c:1196
    0.00 :   5bde1:  mov    0xa8(%rax),%eax
         : 1633  ./stdio-common/printf_fp.c:1207
    0.00 :   5bde7:  imul   -0x120(%rbp),%rax
    0.00 :   5bdef:  mov    %rax,-0x120(%rbp)
         : 1636  ./stdio-common/printf_fp.c:1200
    0.00 :   5bdf6:  mov    -0x108(%rbp),%rdi
    0.00 :   5bdfd:  mov    %r9d,-0xe0(%rbp)
    0.00 :   5be04:  call   28490 <*ABS*+0xa86a0@plt>
         : 1640  ./stdio-common/printf_fp.c:1202
    0.00 :   5be09:  mov    -0x110(%rbp),%rdi
    0.00 :   5be10:  mov    -0xe0(%rbp),%r9d
         : 1643  ./stdio-common/printf_fp.c:1200
    0.00 :   5be17:  mov    %rax,%rbx
         : 1645  ./stdio-common/printf_fp.c:1202
    0.00 :   5be1a:  test   %rdi,%rdi
    0.00 :   5be1d:  je     5cba8 <__GI___printf_fp_l+0x2278>
         : 1648  ./stdio-common/printf_fp.c:1205
    0.00 :   5be23:  call   28490 <*ABS*+0xa86a0@plt>
    0.00 :   5be28:  mov    -0xe0(%rbp),%r9d
    0.00 :   5be2f:  mov    %rax,%r13
         : 1652  ./stdio-common/printf_fp.c:1208
    0.00 :   5be32:  movslq -0x124(%rbp),%rax
    0.00 :   5be39:  imul   %r13,%rax
         : 1655  ./stdio-common/printf_fp.c:1207
    0.00 :   5be3d:  mov    -0x120(%rbp),%rdi
    0.00 :   5be44:  lea    0x2(%rdi,%rbx,1),%rdx
    0.00 :   5be49:  add    %rdx,%rax
         : 1659  ./stdio-common/printf_fp.c:1209
    0.00 :   5be4c:  mov    -0x140(%rbp),%edx
         : 1661  ./stdio-common/printf_fp.c:1207
    0.00 :   5be52:  mov    %rax,-0xf0(%rbp)
         : 1663  ./stdio-common/printf_fp.c:1209
    0.00 :   5be59:  test   %edx,%edx
    0.00 :   5be5b:  jne    5d14c <__GI___printf_fp_l+0x281c>
         : 1666  ./stdio-common/printf_fp.c:1220
    0.00 :   5be61:  add    $0x17,%rax
    0.00 :   5be65:  mov    %rsp,%rsi
    0.00 :   5be68:  mov    %rax,%rdx
    0.00 :   5be6b:  and    $0xfffffffffffff000,%rax
    0.00 :   5be71:  sub    %rax,%rsi
    0.00 :   5be74:  and    $0xfffffffffffffff0,%rdx
    0.00 :   5be78:  cmp    %rsi,%rsp
    0.00 :   5be7b:  je     5be92 <__GI___printf_fp_l+0x1562>
    0.00 :   5be7d:  sub    $0x1000,%rsp
    0.00 :   5be84:  orq    $0x0,0xff8(%rsp)
    0.00 :   5be8d:  cmp    %rsi,%rsp
    0.00 :   5be90:  jne    5be7d <__GI___printf_fp_l+0x154d>
    0.00 :   5be92:  and    $0xfff,%edx
    0.00 :   5be98:  sub    %rdx,%rsp
    0.00 :   5be9b:  test   %rdx,%rdx
    0.00 :   5be9e:  je     5bea6 <__GI___printf_fp_l+0x1576>
    0.00 :   5bea0:  orq    $0x0,-0x8(%rsp,%rdx,1)
    0.00 :   5bea6:  lea    0xf(%rsp),%rax
    0.00 :   5beab:  and    $0xfffffffffffffff0,%rax
    0.00 :   5beaf:  mov    %rax,-0xe0(%rbp)
         : 1687  ./stdio-common/printf_fp.c:1227
    0.00 :   5beb6:  cmp    %r14,%r15
    0.00 :   5beb9:  jbe    5d0b5 <__GI___printf_fp_l+0x2785>
    0.00 :   5bebf:  mov    %r13,-0xe8(%rbp)
    0.00 :   5bec6:  mov    -0xe0(%rbp),%rdi
    0.00 :   5becd:  mov    %r12,-0x100(%rbp)
    0.00 :   5bed4:  mov    -0x114(%rbp),%r13d
    0.00 :   5bedb:  mov    %r15,%r12
    0.00 :   5bede:  mov    %r14,%r15
    0.00 :   5bee1:  mov    %r9d,-0xf8(%rbp)
    0.00 :   5bee8:  mov    %rbx,%r14
    0.00 :   5beeb:  mov    -0xc0(%rbp),%ebx
    0.00 :   5bef1:  jmp    5bf10 <__GI___printf_fp_l+0x15e0>
    0.00 :   5bef3:  nopl   0x0(%rax,%rax,1)
         : 1701  ./stdio-common/printf_fp.c:1230
    0.00 :   5bef8:  cmp    %edx,%r13d
    0.00 :   5befb:  je     5c180 <__GI___printf_fp_l+0x1850>
         : 1704  ./stdio-common/printf_fp.c:1233
    0.00 :   5bf01:  mov    %dl,(%rdi)
    0.00 :   5bf03:  add    $0x1,%rdi
         : 1707  ./stdio-common/printf_fp.c:1227 (discriminator 2)
    0.00 :   5bf07:  add    $0x4,%r15
    0.00 :   5bf0b:  cmp    %r15,%r12
    0.00 :   5bf0e:  jbe    5bf32 <__GI___printf_fp_l+0x1602>
         : 1711  ./stdio-common/printf_fp.c:1228
    0.00 :   5bf10:  mov    (%r15),%edx
    0.00 :   5bf13:  cmp    %ebx,%edx
    0.00 :   5bf15:  jne    5bef8 <__GI___printf_fp_l+0x15c8>
         : 1715  ./stdio-common/printf_fp.c:1229
    0.00 :   5bf17:  mov    -0x108(%rbp),%rsi
    0.00 :   5bf1e:  mov    %r14,%rdx
         : 1718  ./stdio-common/printf_fp.c:1227
    0.00 :   5bf21:  add    $0x4,%r15
         : 1720  ./stdio-common/printf_fp.c:1229
    0.00 :   5bf25:  call   283e0 <*ABS*+0xa97d0@plt>
    0.00 :   5bf2a:  mov    %rax,%rdi
         : 1723  ./stdio-common/printf_fp.c:1227
    0.00 :   5bf2d:  cmp    %r15,%r12
    0.00 :   5bf30:  ja     5bf10 <__GI___printf_fp_l+0x15e0>
         : 1726  ./stdio-common/printf_fp.c:1237
    0.00 :   5bf32:  mov    -0xb8(%rbp),%rax
    0.00 :   5bf39:  mov    -0xf8(%rbp),%r9d
    0.00 :   5bf40:  mov    -0x100(%rbp),%r12
    0.00 :   5bf47:  testb  $0x8,0xd(%rax)
    0.00 :   5bf4b:  jne    5d0e5 <__GI___printf_fp_l+0x27b5>
    0.00 :   5bf51:  mov    -0xe0(%rbp),%r14
         : 1733  ./stdio-common/printf_fp.c:1254 (discriminator 2)
    0.00 :   5bf58:  sub    %r14,%rdi
    0.00 :   5bf5b:  mov    %rdi,%rbx
    0.00 :   5bf5e:  mov    %rdi,%r8
    0.00 :   5bf61:  cmp    $0x14,%rdi
    0.00 :   5bf65:  jle    5c7ad <__GI___printf_fp_l+0x1e7d>
         : 1739  ./stdio-common/printf_fp.c:1254
    0.00 :   5bf6b:  mov    0xd8(%r12),%rbx
         : 1741  IO_validate_vtable():
         : 1742  ./stdio-common/../libio/libioP.h:940
    0.00 :   5bf73:  lea    0x1baa86(%rip),%rdx        # 216a00 <_IO_helper_jumps>
    0.00 :   5bf7a:  lea    0x1bb7e7(%rip),%rax        # 217768 <__stop___libc_IO_vtables>
    0.00 :   5bf81:  sub    %rdx,%rax
         : 1746  ./stdio-common/../libio/libioP.h:942
    0.00 :   5bf84:  mov    %rbx,%rcx
    0.00 :   5bf87:  sub    %rdx,%rcx
         : 1749  ./stdio-common/../libio/libioP.h:943
    0.00 :   5bf8a:  cmp    %rcx,%rax
    0.00 :   5bf8d:  jbe    5d2f0 <__GI___printf_fp_l+0x29c0>
         : 1752  __GI___printf_fp_l():
         : 1753  ./stdio-common/printf_fp.c:1254
    0.00 :   5bf93:  mov    0x38(%rbx),%rax
    0.00 :   5bf97:  mov    %r9d,-0xf0(%rbp)
         : 1756  ./stdio-common/printf_fp.c:1254 (discriminator 14)
    0.00 :   5bf9e:  mov    %r8,%rdx
    0.00 :   5bfa1:  mov    %r14,%rsi
    0.00 :   5bfa4:  mov    %r12,%rdi
    0.00 :   5bfa7:  mov    %r8,-0xe8(%rbp)
    0.00 :   5bfae:  call   *%rax
    0.00 :   5bfb0:  mov    -0xe8(%rbp),%r8
    0.00 :   5bfb7:  mov    -0xf0(%rbp),%r9d
    0.00 :   5bfbe:  cmp    %r8,%rax
    0.00 :   5bfc1:  jne    5d443 <__GI___printf_fp_l+0x2b13>
         : 1766  ./stdio-common/printf_fp.c:1254
    0.00 :   5bfc7:  lea    (%r9,%r8,1),%r13d
         : 1768  ./stdio-common/printf_fp.c:1257 (discriminator 65)
    0.00 :   5bfcb:  mov    -0x140(%rbp),%r14d
    0.00 :   5bfd2:  test   %r14d,%r14d
    0.00 :   5bfd5:  jne    5cfc3 <__GI___printf_fp_l+0x2693>
         : 1772  ./stdio-common/printf_fp.c:1268
    0.00 :   5bfdb:  mov    -0xb8(%rbp),%rax
    0.00 :   5bfe2:  testb  $0x20,0xc(%rax)
    0.00 :   5bfe6:  je     5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5bfec:  mov    -0xd0(%rbp),%ecx
    0.00 :   5bff2:  test   %ecx,%ecx
    0.00 :   5bff4:  jle    5aed8 <__GI___printf_fp_l+0x5a8>
         : 1779  ./stdio-common/printf_fp.c:1269
    0.00 :   5bffa:  mov    %r12,%rdi
    0.00 :   5bffd:  mov    -0xbc(%rbp),%r12d
         : 1782  ./stdio-common/printf_fp.c:1171
    0.00 :   5c004:  movslq %ecx,%rbx
         : 1784  ./stdio-common/printf_fp.c:1269
    0.00 :   5c007:  mov    0x10(%rax),%esi
    0.00 :   5c00a:  mov    %rbx,%rdx
    0.00 :   5c00d:  test   %r12d,%r12d
    0.00 :   5c010:  je     5cd61 <__GI___printf_fp_l+0x2431>
         : 1789  ./stdio-common/printf_fp.c:1269 (discriminator 1)
    0.00 :   5c016:  call   824e0 <_IO_wpadn>
         : 1791  ./stdio-common/printf_fp.c:1269 (discriminator 4)
    0.00 :   5c01b:  cmp    %rbx,%rax
    0.00 :   5c01e:  jne    5d443 <__GI___printf_fp_l+0x2b13>
         : 1794  ./stdio-common/printf_fp.c:1269 (discriminator 6)
    0.00 :   5c024:  add    -0xd0(%rbp),%r13d
    0.00 :   5c02b:  jmp    5aed8 <__GI___printf_fp_l+0x5a8>
         : 1797  ./stdio-common/printf_fp.c:972
    0.00 :   5c030:  mov    -0xf0(%rbp),%eax
         : 1799  ./stdio-common/printf_fp.c:971
    0.00 :   5c036:  addl   $0x1,-0xe0(%rbp)
         : 1801  ./stdio-common/printf_fp.c:972
    0.00 :   5c03d:  test   %eax,%eax
    0.00 :   5c03f:  jle    5b623 <__GI___printf_fp_l+0xcf3>
         : 1804  ./stdio-common/printf_fp.c:973
    0.00 :   5c045:  addl   $0x1,-0x100(%rbp)
    0.00 :   5c04c:  mov    -0x100(%rbp),%edi
    0.00 :   5c052:  add    %edi,%eax
    0.00 :   5c054:  mov    %eax,-0xd0(%rbp)
    0.00 :   5c05a:  jmp    5b623 <__GI___printf_fp_l+0xcf3>
    0.00 :   5c05f:  nop
         : 1811  get_rounding_mode():
         : 1812  ./stdio-common/../sysdeps/generic/get-rounding-mode.h:95
    0.00 :   5c060:  cmp    $0xc00,%ax
    0.00 :   5c064:  je     5ba70 <__GI___printf_fp_l+0x1140>
    0.00 :   5c06a:  jmp    28961 <__GI___printf_fp_l.cold>
    0.00 :   5c06f:  nop
    0.00 :   5c070:  cmp    $0x400,%ax
    0.00 :   5c074:  jne    5d51a <__GI___printf_fp_l+0x2bea>
         : 1819  round_away():
         : 1820  ./stdio-common/../include/rounding-mode.h:49
    0.00 :   5c07a:  mov    -0xa4(%rbp),%r8d
    0.00 :   5c081:  test   %r8d,%r8d
    0.00 :   5c084:  je     5ba70 <__GI___printf_fp_l+0x1140>
         : 1824  ./stdio-common/../include/rounding-mode.h:58
    0.00 :   5c08a:  cmp    $0x34,%esi
    0.00 :   5c08d:  jle    5ba63 <__GI___printf_fp_l+0x1133>
         : 1827  __GI___printf_fp_l():
         : 1828  ./stdio-common/printf_fp.c:1008
    0.00 :   5c093:  mov    -0x4(%r15),%esi
         : 1830  ./stdio-common/printf_fp.c:1003
    0.00 :   5c097:  test   %ebx,%ebx
    0.00 :   5c099:  je     5c2ee <__GI___printf_fp_l+0x19be>
    0.00 :   5c09f:  mov    -0xc0(%rbp),%edx
         : 1834  ./stdio-common/printf_fp.c:1008
    0.00 :   5c0a5:  lea    -0x4(%r15),%rax
         : 1836  ./stdio-common/printf_fp.c:1007
    0.00 :   5c0a9:  xor    %edi,%edi
         : 1838  ./stdio-common/printf_fp.c:1008
    0.00 :   5c0ab:  cmp    %esi,-0xc0(%rbp)
    0.00 :   5c0b1:  jne    5c0d8 <__GI___printf_fp_l+0x17a8>
    0.00 :   5c0b3:  jmp    5cca9 <__GI___printf_fp_l+0x2379>
    0.00 :   5c0b8:  nopl   0x0(%rax,%rax,1)
         : 1843  ./stdio-common/printf_fp.c:1010
    0.00 :   5c0c0:  movl   $0x30,(%rax)
         : 1845  ./stdio-common/printf_fp.c:1008
    0.00 :   5c0c6:  mov    -0x4(%rax),%esi
    0.00 :   5c0c9:  sub    $0x4,%rax
         : 1848  ./stdio-common/printf_fp.c:1011
    0.00 :   5c0cd:  add    $0x1,%edi
         : 1850  ./stdio-common/printf_fp.c:1008
    0.00 :   5c0d0:  cmp    %edx,%esi
    0.00 :   5c0d2:  je     5cca9 <__GI___printf_fp_l+0x2379>
         : 1853  ./stdio-common/printf_fp.c:1008 (discriminator 1)
    0.00 :   5c0d8:  cmp    $0x39,%esi
    0.00 :   5c0db:  je     5c0c0 <__GI___printf_fp_l+0x1790>
         : 1856  ./stdio-common/printf_fp.c:1013
    0.00 :   5c0dd:  cmp    -0xf0(%rbp),%edi
    0.00 :   5c0e3:  jne    5c113 <__GI___printf_fp_l+0x17e3>
    0.00 :   5c0e5:  mov    -0x100(%rbp),%r10d
    0.00 :   5c0ec:  test   %r10d,%r10d
    0.00 :   5c0ef:  jle    5c113 <__GI___printf_fp_l+0x17e3>
         : 1862  ./stdio-common/printf_fp.c:1014
    0.00 :   5c0f1:  subl   $0x1,-0x100(%rbp)
    0.00 :   5c0f8:  mov    -0x100(%rbp),%edi
         : 1865  ./stdio-common/printf_fp.c:1015
    0.00 :   5c0fe:  cmp    -0xc0(%rbp),%esi
    0.00 :   5c104:  je     5ccc1 <__GI___printf_fp_l+0x2391>
         : 1868  ./stdio-common/printf_fp.c:1097
    0.00 :   5c10a:  add    -0xf0(%rbp),%edi
    0.00 :   5c110:  mov    %edi,%r9d
         : 1871  ./stdio-common/printf_fp.c:1017
    0.00 :   5c113:  add    $0x1,%esi
    0.00 :   5c116:  mov    %esi,(%rax)
         : 1874  ./stdio-common/printf_fp.c:1028
    0.00 :   5c118:  cmp    %esi,-0xc0(%rbp)
    0.00 :   5c11e:  je     5c2f1 <__GI___printf_fp_l+0x19c1>
         : 1877  ./stdio-common/printf_fp.c:1097
    0.00 :   5c124:  cmp    %r9d,%ebx
    0.00 :   5c127:  jg     5ba8c <__GI___printf_fp_l+0x115c>
    0.00 :   5c12d:  jmp    5bab8 <__GI___printf_fp_l+0x1188>
    0.00 :   5c132:  nopw   0x0(%rax,%rax,1)
         : 1882  ./stdio-common/printf_fp.c:1167
    0.00 :   5c138:  mov    -0x138(%rbp),%edi
         : 1884  ./stdio-common/printf_fp.c:1168
    0.00 :   5c13e:  mov    %rbx,%rsi
    0.00 :   5c141:  sar    $0x2,%rsi
         : 1887  ./stdio-common/printf_fp.c:1167
    0.00 :   5c145:  sub    $0x1,%edi
         : 1889  ./stdio-common/printf_fp.c:1168
    0.00 :   5c148:  sub    %esi,%edi
         : 1891  ./stdio-common/printf_fp.c:1170
    0.00 :   5c14a:  and    $0x20,%edx
         : 1893  ./stdio-common/printf_fp.c:1168
    0.00 :   5c14d:  mov    %edi,-0xd0(%rbp)
         : 1895  ./stdio-common/printf_fp.c:1170
    0.00 :   5c153:  jne    5c170 <__GI___printf_fp_l+0x1840>
         : 1897  ./stdio-common/printf_fp.c:1170 (discriminator 1)
    0.00 :   5c155:  mov    -0xb8(%rbp),%rsi
    0.00 :   5c15c:  mov    0x10(%rsi),%esi
    0.00 :   5c15f:  test   %edi,%edi
    0.00 :   5c161:  jle    5c170 <__GI___printf_fp_l+0x1840>
    0.00 :   5c163:  cmp    $0x30,%esi
    0.00 :   5c166:  jne    5bd13 <__GI___printf_fp_l+0x13e3>
    0.00 :   5c16c:  nopl   0x0(%rax)
         : 1905  ./stdio-common/printf_fp.c:260
    0.00 :   5c170:  xor    %r9d,%r9d
    0.00 :   5c173:  jmp    5bd49 <__GI___printf_fp_l+0x1419>
    0.00 :   5c178:  nopl   0x0(%rax,%rax,1)
         : 1909  ./stdio-common/printf_fp.c:1231
    0.00 :   5c180:  mov    -0xe8(%rbp),%rdx
    0.00 :   5c187:  mov    -0x110(%rbp),%rsi
    0.00 :   5c18e:  call   283e0 <*ABS*+0xa97d0@plt>
    0.00 :   5c193:  mov    %rax,%rdi
    0.00 :   5c196:  jmp    5bf07 <__GI___printf_fp_l+0x15d7>
         : 1915  ./stdio-common/printf_fp.c:649
    0.00 :   5c19b:  test   %ecx,%ecx
    0.00 :   5c19d:  js     5c47a <__GI___printf_fp_l+0x1b4a>
         : 1918  ./stdio-common/printf_fp.c:825
    0.00 :   5c1a3:  mov    %r13,%rdx
    0.00 :   5c1a6:  add    %r14d,%ecx
    0.00 :   5c1a9:  mov    %r15,%rsi
    0.00 :   5c1ac:  call   54d10 <__mpn_lshift>
    0.00 :   5c1b1:  mov    %rax,%r8
         : 1924  ./stdio-common/printf_fp.c:826
    0.00 :   5c1b4:  mov    -0x88(%rbp),%rax
    0.00 :   5c1bb:  lea    0x1(%rax),%rdx
    0.00 :   5c1bf:  mov    %rdx,-0x88(%rbp)
    0.00 :   5c1c6:  mov    -0x90(%rbp),%rdx
    0.00 :   5c1cd:  mov    %r8,(%rdx,%rax,8)
         : 1930  ./stdio-common/printf_fp.c:827
    0.00 :   5c1d1:  movl   $0x0,-0x98(%rbp)
    0.00 :   5c1db:  jmp    5b348 <__GI___printf_fp_l+0xa18>
         : 1933  ./stdio-common/printf_fp.c:551 (discriminator 2)
    0.00 :   5c1e0:  mov    -0x70(%rbp),%rsi
    0.00 :   5c1e4:  mov    -0x90(%rbp),%rdi
    0.00 :   5c1eb:  call   54620 <__mpn_cmp>
         : 1937  ./stdio-common/printf_fp.c:554 (discriminator 2)
    0.00 :   5c1f0:  mov    -0x68(%rbp),%rdx
         : 1939  ./stdio-common/printf_fp.c:551 (discriminator 2)
    0.00 :   5c1f4:  test   %eax,%eax
    0.00 :   5c1f6:  jns    5b270 <__GI___printf_fp_l+0x940>
    0.00 :   5c1fc:  jmp    5b1f7 <__GI___printf_fp_l+0x8c7>
    0.00 :   5c201:  nopl   0x0(%rax)
         : 1944  ./stdio-common/printf_fp.c:1237
    0.00 :   5c208:  testb  $0x8,0xd(%rax)
    0.00 :   5c20c:  jne    5d12e <__GI___printf_fp_l+0x27fe>
         : 1947  ./stdio-common/printf_fp.c:1254 (discriminator 1)
    0.00 :   5c212:  sar    $0x2,%rbx
    0.00 :   5c216:  mov    %rbx,%r8
    0.00 :   5c219:  cmp    %r14,%r15
    0.00 :   5c21c:  jne    5c771 <__GI___printf_fp_l+0x1e41>
         : 1952  ./stdio-common/printf_fp.c:1254
    0.00 :   5c222:  lea    0x1(%rbx),%r15d
    0.00 :   5c226:  test   %rbx,%rbx
    0.00 :   5c229:  je     5d430 <__GI___printf_fp_l+0x2b00>
    0.00 :   5c22f:  mov    %r12,%rdi
    0.00 :   5c232:  mov    %r15d,%r12d
    0.00 :   5c235:  mov    %r9d,%r15d
    0.00 :   5c238:  jmp    5c273 <__GI___printf_fp_l+0x1943>
    0.00 :   5c23a:  nopw   0x0(%rax,%rax,1)
         : 1961  ./stdio-common/printf_fp.c:1254 (discriminator 26)
    0.00 :   5c240:  mov    0x20(%rax),%rdx
    0.00 :   5c244:  cmp    0x28(%rax),%rdx
    0.00 :   5c248:  jae    5c287 <__GI___printf_fp_l+0x1957>
         : 1965  ./stdio-common/printf_fp.c:1254 (discriminator 28)
    0.00 :   5c24a:  lea    0x4(%rdx),%rcx
    0.00 :   5c24e:  cmp    $0xffffffff,%esi
    0.00 :   5c251:  mov    %rcx,0x20(%rax)
    0.00 :   5c255:  sete   %al
    0.00 :   5c258:  mov    %esi,(%rdx)
         : 1971  ./stdio-common/printf_fp.c:1254
    0.00 :   5c25a:  test   %al,%al
    0.00 :   5c25c:  jne    5b6ec <__GI___printf_fp_l+0xdbc>
         : 1974  ./stdio-common/printf_fp.c:1254 (discriminator 38)
    0.00 :   5c262:  lea    (%r12,%r15,1),%r13d
    0.00 :   5c266:  sub    %ebx,%r13d
    0.00 :   5c269:  sub    $0x1,%rbx
    0.00 :   5c26d:  je     5cd6b <__GI___printf_fp_l+0x243b>
         : 1979  ./stdio-common/printf_fp.c:1254 (discriminator 43)
    0.00 :   5c273:  mov    0xa0(%rdi),%rax
    0.00 :   5c27a:  add    $0x4,%r14
    0.00 :   5c27e:  mov    -0x4(%r14),%esi
    0.00 :   5c282:  test   %rax,%rax
    0.00 :   5c285:  jne    5c240 <__GI___printf_fp_l+0x1910>
         : 1985  ./stdio-common/printf_fp.c:1254 (discriminator 27)
    0.00 :   5c287:  mov    %rdi,-0xe0(%rbp)
    0.00 :   5c28e:  call   838b0 <__woverflow>
    0.00 :   5c293:  mov    -0xe0(%rbp),%rdi
    0.00 :   5c29a:  cmp    $0xffffffff,%eax
    0.00 :   5c29d:  sete   %al
    0.00 :   5c2a0:  jmp    5c25a <__GI___printf_fp_l+0x192a>
    0.00 :   5c2a2:  nopw   0x0(%rax,%rax,1)
         : 1993  ./stdio-common/printf_fp.c:845
    0.00 :   5c2a8:  mov    %eax,-0x9c(%rbp)
         : 1995  ./stdio-common/printf_fp.c:847
    0.00 :   5c2ae:  movslq %edi,%rax
    0.00 :   5c2b1:  test   %eax,%eax
    0.00 :   5c2b3:  js     5c99a <__GI___printf_fp_l+0x206a>
         : 1999  ./stdio-common/printf_fp.c:848
    0.00 :   5c2b9:  add    $0x8,%rax
    0.00 :   5c2bd:  mov    %rax,-0x120(%rbp)
         : 2002  ./stdio-common/printf_fp.c:856
    0.00 :   5c2c4:  mov    -0xf0(%rbp),%eax
         : 2004  ./stdio-common/printf_fp.c:858
    0.00 :   5c2ca:  mov    $0x1,%esi
         : 2006  ./stdio-common/printf_fp.c:857
    0.00 :   5c2cf:  movl   $0x7fffffff,-0x128(%rbp)
         : 2008  ./stdio-common/printf_fp.c:867
    0.00 :   5c2d9:  movl   $0x1,-0x118(%rbp)
         : 2010  ./stdio-common/printf_fp.c:856
    0.00 :   5c2e3:  mov    %eax,-0xe0(%rbp)
    0.00 :   5c2e9:  jmp    5b41a <__GI___printf_fp_l+0xaea>
    0.00 :   5c2ee:  mov    %r15,%rax
         : 2014  ./stdio-common/printf_fp.c:1031
    0.00 :   5c2f1:  mov    -0xc0(%rbp),%edi
    0.00 :   5c2f7:  cmp    %edi,-0x4(%rax)
    0.00 :   5c2fa:  jne    5c300 <__GI___printf_fp_l+0x19d0>
         : 2018  ./stdio-common/printf_fp.c:1032
    0.00 :   5c2fc:  sub    $0x4,%rax
         : 2020  ./stdio-common/printf_fp.c:1034
    0.00 :   5c300:  sub    $0x4,%rax
    0.00 :   5c304:  cmp    %r14,%rax
    0.00 :   5c307:  jae    5c323 <__GI___printf_fp_l+0x19f3>
    0.00 :   5c309:  jmp    5c935 <__GI___printf_fp_l+0x2005>
    0.00 :   5c30e:  xchg   %ax,%ax
         : 2026  ./stdio-common/printf_fp.c:1035
    0.00 :   5c310:  movl   $0x30,(%rax)
         : 2028  ./stdio-common/printf_fp.c:1034
    0.00 :   5c316:  sub    $0x4,%rax
    0.00 :   5c31a:  cmp    %rax,%r14
    0.00 :   5c31d:  ja     5c935 <__GI___printf_fp_l+0x2005>
         : 2032  ./stdio-common/printf_fp.c:1034 (discriminator 1)
    0.00 :   5c323:  mov    (%rax),%esi
    0.00 :   5c325:  cmp    $0x39,%esi
    0.00 :   5c328:  je     5c310 <__GI___printf_fp_l+0x19e0>
         : 2036  ./stdio-common/printf_fp.c:1037
    0.00 :   5c32a:  cmp    %r14,%rax
    0.00 :   5c32d:  jb     5c935 <__GI___printf_fp_l+0x2005>
         : 2039  ./stdio-common/printf_fp.c:1039
    0.00 :   5c333:  add    $0x1,%esi
    0.00 :   5c336:  mov    %esi,(%rax)
    0.00 :   5c338:  jmp    5ba70 <__GI___printf_fp_l+0x1140>
         : 2043  ./stdio-common/printf_fp.c:1151
    0.00 :   5c33d:  movl   $0x30,0x8(%r15)
    0.00 :   5c345:  lea    0xc(%r15),%rsi
    0.00 :   5c349:  jmp    5bcaa <__GI___printf_fp_l+0x137a>
    0.00 :   5c34e:  xchg   %ax,%ax
         : 2048  ./stdio-common/printf_fp.c:840
    0.00 :   5c350:  movl   $0x0,-0x124(%rbp)
    0.00 :   5c35a:  jmp    5b4b1 <__GI___printf_fp_l+0xb81>
    0.00 :   5c35f:  nop
    0.00 :   5c360:  mov    -0xb8(%rbp),%rax
    0.00 :   5c367:  movzbl 0xc(%rax),%edx
         : 2054  ./stdio-common/printf_fp.c:1175
    0.00 :   5c36b:  mov    %edx,%eax
    0.00 :   5c36d:  test   $0x40,%dl
    0.00 :   5c370:  je     5c711 <__GI___printf_fp_l+0x1de1>
         : 2058  ./stdio-common/printf_fp.c:1176
    0.00 :   5c376:  mov    -0xbc(%rbp),%r10d
    0.00 :   5c37d:  test   %r10d,%r10d
    0.00 :   5c380:  je     5cd40 <__GI___printf_fp_l+0x2410>
         : 2062  ./stdio-common/printf_fp.c:1176 (discriminator 1)
    0.00 :   5c386:  mov    0xa0(%r12),%rax
    0.00 :   5c38e:  test   %rax,%rax
    0.00 :   5c391:  je     5d31a <__GI___printf_fp_l+0x29ea>
         : 2066  ./stdio-common/printf_fp.c:1176 (discriminator 4)
    0.00 :   5c397:  mov    0x20(%rax),%rdx
    0.00 :   5c39b:  cmp    0x28(%rax),%rdx
    0.00 :   5c39f:  jae    5d31a <__GI___printf_fp_l+0x29ea>
         : 2070  ./stdio-common/printf_fp.c:1176 (discriminator 6)
    0.00 :   5c3a5:  lea    0x4(%rdx),%rsi
    0.00 :   5c3a9:  mov    %rsi,0x20(%rax)
    0.00 :   5c3ad:  movl   $0x2b,(%rdx)
    0.00 :   5c3b3:  jmp    5bd8e <__GI___printf_fp_l+0x145e>
    0.00 :   5c3b8:  nopl   0x0(%rax,%rax,1)
         : 2076  __guess_grouping():
         : 2077  ./stdio-common/printf_fp.c:1176 (discriminator 6)
    0.00 :   5c3c0:  movl   $0x0,-0x124(%rbp)
    0.00 :   5c3ca:  mov    $0x1,%eax
    0.00 :   5c3cf:  jmp    5b493 <__GI___printf_fp_l+0xb63>
         : 2081  __GI___printf_fp_l():
         : 2082  ./stdio-common/printf_fp.c:855
    0.00 :   5c3d4:  movl   $0x66,-0x9c(%rbp)
         : 2084  ./stdio-common/printf_fp.c:848
    0.00 :   5c3de:  movslq %edi,%rdx
         : 2086  ./stdio-common/printf_fp.c:856
    0.00 :   5c3e1:  test   %edi,%edi
    0.00 :   5c3e3:  jns    5c3f4 <__GI___printf_fp_l+0x1ac4>
    0.00 :   5c3e5:  movl   $0x6,-0xf0(%rbp)
    0.00 :   5c3ef:  mov    $0x6,%edx
         : 2091  ./stdio-common/printf_fp.c:859 (discriminator 4)
    0.00 :   5c3f4:  mov    -0xa0(%rbp),%eax
    0.00 :   5c3fa:  mov    %eax,-0x124(%rbp)
    0.00 :   5c400:  test   %eax,%eax
    0.00 :   5c402:  jne    5cc10 <__GI___printf_fp_l+0x22e0>
         : 2096  ./stdio-common/printf_fp.c:861
    0.00 :   5c408:  movslq -0x98(%rbp),%rax
         : 2098  ./stdio-common/printf_fp.c:901
    0.00 :   5c40f:  cmpq   $0x0,-0xe8(%rbp)
         : 2100  ./stdio-common/printf_fp.c:858
    0.00 :   5c417:  mov    $0x1,%esi
         : 2102  ./stdio-common/printf_fp.c:857
    0.00 :   5c41c:  movl   $0x7fffffff,-0x128(%rbp)
         : 2104  ./stdio-common/printf_fp.c:861
    0.00 :   5c426:  lea    0x1(%rax),%edi
         : 2106  ./stdio-common/printf_fp.c:863
    0.00 :   5c429:  lea    0x2(%rdx,%rax,1),%rax
    0.00 :   5c42e:  mov    %rax,-0x120(%rbp)
         : 2109  ./stdio-common/printf_fp.c:856
    0.00 :   5c435:  mov    -0xf0(%rbp),%eax
         : 2111  ./stdio-common/printf_fp.c:861
    0.00 :   5c43b:  mov    %edi,-0x118(%rbp)
         : 2113  ./stdio-common/printf_fp.c:856
    0.00 :   5c441:  mov    %eax,-0xe0(%rbp)
         : 2115  ./stdio-common/printf_fp.c:901
    0.00 :   5c447:  jne    5b428 <__GI___printf_fp_l+0xaf8>
    0.00 :   5c44d:  jmp    5b49a <__GI___printf_fp_l+0xb6a>
         : 2118  ./stdio-common/printf_fp.c:874 (discriminator 1)
    0.00 :   5c452:  cmp    %edx,-0x128(%rbp)
    0.00 :   5c458:  jle    5c859 <__GI___printf_fp_l+0x1f29>
         : 2121  ./stdio-common/printf_fp.c:889
    0.00 :   5c45e:  mov    -0x128(%rbp),%esi
         : 2123  ./stdio-common/printf_fp.c:888
    0.00 :   5c464:  lea    0x1(%rdx),%eax
    0.00 :   5c467:  mov    %eax,-0x118(%rbp)
         : 2126  ./stdio-common/printf_fp.c:889
    0.00 :   5c46d:  sub    %eax,%esi
    0.00 :   5c46f:  mov    %esi,-0xe0(%rbp)
    0.00 :   5c475:  jmp    5b3e2 <__GI___printf_fp_l+0xab2>
         : 2130  ./stdio-common/printf_fp.c:665
    0.00 :   5c47a:  mov    %r15,%rsi
    0.00 :   5c47d:  mov    %r13,%rdx
    0.00 :   5c480:  mov    %r14d,%ecx
         : 2134  ./stdio-common/printf_fp.c:670
    0.00 :   5c483:  mov    $0xc,%r15d
         : 2136  ./stdio-common/printf_fp.c:665
    0.00 :   5c489:  call   54d10 <__mpn_lshift>
         : 2138  ./stdio-common/printf_fp.c:670
    0.00 :   5c48e:  mov    -0x98(%rbp),%esi
         : 2140  ./stdio-common/printf_fp.c:652
    0.00 :   5c494:  movl   $0x0,-0xd0(%rbp)
         : 2142  ./stdio-common/printf_fp.c:662
    0.00 :   5c49e:  lea    0x1709d3(%rip),%rbx        # 1cce78 <_fpioconst_pow10+0x138>
         : 2144  ./stdio-common/printf_fp.c:665
    0.00 :   5c4a5:  mov    %rax,%r8
         : 2146  ./stdio-common/printf_fp.c:666
    0.00 :   5c4a8:  mov    -0x88(%rbp),%rax
         : 2148  ./stdio-common/printf_fp.c:690
    0.00 :   5c4af:  mov    %r12,-0xe0(%rbp)
         : 2150  ./stdio-common/printf_fp.c:670
    0.00 :   5c4b6:  neg    %esi
         : 2152  ./stdio-common/printf_fp.c:666
    0.00 :   5c4b8:  lea    0x1(%rax),%rdx
    0.00 :   5c4bc:  mov    %rdx,-0x88(%rbp)
    0.00 :   5c4c3:  mov    -0x90(%rbp),%rdx
    0.00 :   5c4ca:  mov    %r8,(%rdx,%rax,8)
         : 2157  ./stdio-common/printf_fp.c:669
    0.00 :   5c4ce:  movl   $0x1,-0xa0(%rbp)
         : 2159  ./stdio-common/printf_fp.c:670
    0.00 :   5c4d8:  mov    %esi,-0x98(%rbp)
    0.00 :   5c4de:  jmp    5c585 <__GI___printf_fp_l+0x1c55>
    0.00 :   5c4e3:  nopl   0x0(%rax,%rax,1)
         : 2163  ./stdio-common/printf_fp.c:685
    0.00 :   5c4e8:  lea    0x8(%rcx,%rax,8),%r10
    0.00 :   5c4ed:  mov    %r9,%r8
    0.00 :   5c4f0:  mov    %rsi,%rcx
    0.00 :   5c4f3:  mov    %r10,%rsi
    0.00 :   5c4f6:  call   54f90 <__mpn_mul>
         : 2169  ./stdio-common/printf_fp.c:693
    0.00 :   5c4fb:  mov    -0x88(%rbp),%rsi
    0.00 :   5c502:  mov    0x8(%rbx),%r8
    0.00 :   5c506:  add    %rsi,%r8
         : 2173  ./stdio-common/printf_fp.c:694
    0.00 :   5c509:  test   %rax,%rax
    0.00 :   5c50c:  je     5c5d0 <__GI___printf_fp_l+0x1ca0>
         : 2176  ./stdio-common/printf_fp.c:693
    0.00 :   5c512:  sub    $0x1,%r8
    0.00 :   5c516:  mov    %r8,-0x68(%rbp)
         : 2179  ./stdio-common/printf_fp.c:697
    0.00 :   5c51a:  mov    -0x70(%rbp),%r10
    0.00 :   5c51e:  lea    0x0(,%r8,8),%rdx
         : 2182  ./stdio-common/printf_fp.c:698
    0.00 :   5c526:  mov    %r8,%r13
         : 2184  ./stdio-common/printf_fp.c:697
    0.00 :   5c529:  lea    -0x8(%r10,%rdx,1),%rax
    0.00 :   5c52e:  bsr    (%rax),%rcx
         : 2187  ./stdio-common/printf_fp.c:698
    0.00 :   5c532:  sub    %rsi,%r13
         : 2189  ./stdio-common/printf_fp.c:706
    0.00 :   5c535:  mov    -0x98(%rbp),%esi
         : 2191  ./stdio-common/printf_fp.c:699
    0.00 :   5c53b:  add    $0x1,%r13
    0.00 :   5c53f:  shl    $0x6,%r13d
         : 2194  ./stdio-common/printf_fp.c:706
    0.00 :   5c543:  lea    0x3(%rsi),%edi
         : 2196  ./stdio-common/printf_fp.c:697
    0.00 :   5c546:  xor    $0x3f,%rcx
         : 2198  ./stdio-common/printf_fp.c:699
    0.00 :   5c54a:  sub    %ecx,%r13d
         : 2200  ./stdio-common/printf_fp.c:697
    0.00 :   5c54d:  mov    %ecx,%r12d
         : 2202  ./stdio-common/printf_fp.c:699
    0.00 :   5c550:  sub    $0x1,%r13d
         : 2204  ./stdio-common/printf_fp.c:706
    0.00 :   5c554:  cmp    %r13d,%edi
    0.00 :   5c557:  je     5c698 <__GI___printf_fp_l+0x1d68>
         : 2207  ./stdio-common/printf_fp.c:728
    0.00 :   5c55d:  lea    0x2(%rsi),%eax
    0.00 :   5c560:  cmp    %eax,%r13d
    0.00 :   5c563:  jle    5c5e8 <__GI___printf_fp_l+0x1cb8>
         : 2211  ./stdio-common/printf_fp.c:789
    0.00 :   5c569:  lea    0x1707e8(%rip),%rax        # 1ccd58 <_fpioconst_pow10+0x18>
         : 2213  ./stdio-common/printf_fp.c:787
    0.00 :   5c570:  sub    $0x1,%r15d
         : 2215  ./stdio-common/printf_fp.c:789
    0.00 :   5c574:  cmp    %rax,%rbx
    0.00 :   5c577:  je     5caf3 <__GI___printf_fp_l+0x21c3>
         : 2218  ./stdio-common/printf_fp.c:789 (discriminator 1)
    0.00 :   5c57d:  test   %esi,%esi
    0.00 :   5c57f:  jle    5cea5 <__GI___printf_fp_l+0x2575>
         : 2221  ./stdio-common/printf_fp.c:675
    0.00 :   5c585:  sub    $0x18,%rbx
         : 2223  ./stdio-common/printf_fp.c:677
    0.00 :   5c589:  cmp    %esi,0x14(%rbx)
    0.00 :   5c58c:  jg     5c569 <__GI___printf_fp_l+0x1c39>
         : 2226  ./stdio-common/printf_fp.c:684
    0.00 :   5c58e:  mov    0x8(%rbx),%rax
         : 2228  ./stdio-common/printf_fp.c:685
    0.00 :   5c592:  mov    -0x70(%rbp),%rdi
    0.00 :   5c596:  lea    0x170923(%rip),%rcx        # 1ccec0 <__tens>
         : 2231  ./stdio-common/printf_fp.c:684
    0.00 :   5c59d:  mov    -0x88(%rbp),%r9
         : 2233  ./stdio-common/printf_fp.c:688
    0.00 :   5c5a4:  mov    -0x90(%rbp),%rsi
         : 2235  ./stdio-common/printf_fp.c:684
    0.00 :   5c5ab:  lea    -0x1(%rax),%rdx
         : 2237  ./stdio-common/printf_fp.c:686
    0.00 :   5c5af:  mov    (%rbx),%rax
         : 2239  ./stdio-common/printf_fp.c:684
    0.00 :   5c5b2:  cmp    %rdx,%r9
    0.00 :   5c5b5:  jl     5c4e8 <__GI___printf_fp_l+0x1bb8>
         : 2242  ./stdio-common/printf_fp.c:690
    0.00 :   5c5bb:  mov    %rdx,%r8
    0.00 :   5c5be:  lea    0x8(%rcx,%rax,8),%rcx
    0.00 :   5c5c3:  mov    %r9,%rdx
    0.00 :   5c5c6:  call   54f90 <__mpn_mul>
    0.00 :   5c5cb:  jmp    5c4fb <__GI___printf_fp_l+0x1bcb>
         : 2248  ./stdio-common/printf_fp.c:695
    0.00 :   5c5d0:  sub    $0x2,%r8
    0.00 :   5c5d4:  mov    %r8,-0x68(%rbp)
    0.00 :   5c5d8:  jmp    5c51a <__GI___printf_fp_l+0x1bea>
         : 2252  ./stdio-common/printf_fp.c:745
    0.00 :   5c5dd:  mov    -0x70(%rbp),%r10
         : 2254  ./stdio-common/printf_fp.c:748
    0.00 :   5c5e1:  mov    -0x68(%rbp),%r8
    0.00 :   5c5e5:  nopl   (%rax)
         : 2257  ./stdio-common/printf_fp.c:737
    0.00 :   5c5e8:  mov    $0x1,%eax
    0.00 :   5c5ed:  mov    %r15d,%ecx
         : 2260  ./stdio-common/printf_fp.c:736
    0.00 :   5c5f0:  sub    %r13d,%esi
         : 2262  ./stdio-common/printf_fp.c:737
    0.00 :   5c5f3:  shl    %cl,%eax
    0.00 :   5c5f5:  or     %eax,-0xd0(%rbp)
         : 2265  ./stdio-common/printf_fp.c:742
    0.00 :   5c5fb:  mov    %r12d,%eax
    0.00 :   5c5fe:  sub    %esi,%eax
    0.00 :   5c600:  test   %esi,%esi
         : 2269  ./stdio-common/printf_fp.c:736
    0.00 :   5c602:  mov    %esi,-0x98(%rbp)
         : 2271  ./stdio-common/printf_fp.c:742
    0.00 :   5c608:  cmovs  %eax,%r12d
         : 2273  ./stdio-common/printf_fp.c:745
    0.00 :   5c60c:  mov    (%r10),%rax
    0.00 :   5c60f:  test   %rax,%rax
    0.00 :   5c612:  jne    5d18e <__GI___printf_fp_l+0x285e>
    0.00 :   5c618:  lea    0x8(%r10),%rdx
    0.00 :   5c61c:  mov    $0x1,%eax
    0.00 :   5c621:  nopl   0x0(%rax)
         : 2280  ./stdio-common/printf_fp.c:745 (discriminator 3)
    0.00 :   5c628:  mov    (%rdx),%rcx
    0.00 :   5c62b:  lea    -0x1(%rax),%r9d
    0.00 :   5c62f:  movslq %eax,%rdi
    0.00 :   5c632:  mov    %rdx,%r14
    0.00 :   5c635:  lea    0x0(,%rax,8),%r11
    0.00 :   5c63d:  mov    %rax,%r13
    0.00 :   5c640:  add    $0x8,%rdx
    0.00 :   5c644:  add    $0x1,%rax
    0.00 :   5c648:  test   %rcx,%rcx
    0.00 :   5c64b:  je     5c628 <__GI___printf_fp_l+0x1cf8>
         : 2291  ./stdio-common/printf_fp.c:746
    0.00 :   5c64d:  cmp    $0x3f,%r12d
    0.00 :   5c651:  jne    5cc20 <__GI___printf_fp_l+0x22f0>
         : 2294  ./stdio-common/printf_fp.c:748
    0.00 :   5c657:  sub    %rdi,%r8
    0.00 :   5c65a:  test   %r8,%r8
    0.00 :   5c65d:  jle    5c688 <__GI___printf_fp_l+0x1d58>
    0.00 :   5c65f:  mov    -0x90(%rbp),%r9
    0.00 :   5c666:  lea    (%r10,%r13,8),%rcx
    0.00 :   5c66a:  xor    %eax,%eax
    0.00 :   5c66c:  nopl   0x0(%rax)
         : 2302  ./stdio-common/printf_fp.c:748 (discriminator 3)
    0.00 :   5c670:  mov    (%rcx,%rax,8),%rdx
    0.00 :   5c674:  mov    %rdx,(%r9,%rax,8)
    0.00 :   5c678:  mov    -0x68(%rbp),%r8
    0.00 :   5c67c:  add    $0x1,%rax
    0.00 :   5c680:  sub    %rdi,%r8
    0.00 :   5c683:  cmp    %rax,%r8
    0.00 :   5c686:  jg     5c670 <__GI___printf_fp_l+0x1d40>
         : 2310  ./stdio-common/printf_fp.c:749 (discriminator 4)
    0.00 :   5c688:  mov    %r8,-0x88(%rbp)
    0.00 :   5c68f:  jmp    5c569 <__GI___printf_fp_l+0x1c39>
    0.00 :   5c694:  nopl   0x0(%rax)
         : 2314  ./stdio-common/printf_fp.c:708
    0.00 :   5c698:  cmp    $0x3c,%ecx
    0.00 :   5c69b:  jg     5cd7e <__GI___printf_fp_l+0x244e>
         : 2317  ./stdio-common/printf_fp.c:712
    0.00 :   5c6a1:  mov    $0x3c,%ecx
    0.00 :   5c6a6:  mov    $0xa,%edi
         : 2320  ./stdio-common/printf_fp.c:710
    0.00 :   5c6ab:  movq   $0x0,-0x50(%rbp)
         : 2322  ./stdio-common/printf_fp.c:712
    0.00 :   5c6b3:  sub    %r12d,%ecx
    0.00 :   5c6b6:  shl    %cl,%rdi
    0.00 :   5c6b9:  mov    %rdi,-0x48(%rbp)
    0.00 :   5c6bd:  mov    %rdi,%rcx
         : 2327  ./stdio-common/printf_fp.c:728
    0.00 :   5c6c0:  lea    0x2(%rsi),%edi
    0.00 :   5c6c3:  cmp    %edi,%r13d
    0.00 :   5c6c6:  jle    5c5e8 <__GI___printf_fp_l+0x1cb8>
         : 2331  ./stdio-common/printf_fp.c:730
    0.00 :   5c6cc:  cmp    %rcx,(%rax)
    0.00 :   5c6cf:  jb     5c5e8 <__GI___printf_fp_l+0x1cb8>
         : 2334  ./stdio-common/printf_fp.c:731
    0.00 :   5c6d5:  jne    5c569 <__GI___printf_fp_l+0x1c39>
         : 2336  ./stdio-common/printf_fp.c:732
    0.00 :   5c6db:  mov    -0x50(%rbp),%rax
    0.00 :   5c6df:  cmp    %rax,-0x10(%r10,%rdx,1)
    0.00 :   5c6e4:  jae    5c569 <__GI___printf_fp_l+0x1c39>
    0.00 :   5c6ea:  jmp    5c5e8 <__GI___printf_fp_l+0x1cb8>
    0.00 :   5c6ef:  nop
         : 2342  ./stdio-common/printf_fp.c:1174 (discriminator 2)
    0.00 :   5c6f0:  mov    0x28(%r12),%rax
    0.00 :   5c6f5:  cmp    0x30(%r12),%rax
    0.00 :   5c6fa:  jae    5d2ca <__GI___printf_fp_l+0x299a>
         : 2346  ./stdio-common/printf_fp.c:1174 (discriminator 11)
    0.00 :   5c700:  lea    0x1(%rax),%rdx
    0.00 :   5c704:  mov    %rdx,0x28(%r12)
    0.00 :   5c709:  movb   $0x2d,(%rax)
    0.00 :   5c70c:  jmp    5bd8e <__GI___printf_fp_l+0x145e>
         : 2351  ./stdio-common/printf_fp.c:1177
    0.00 :   5c711:  and    $0x10,%edx
    0.00 :   5c714:  je     5bd9d <__GI___printf_fp_l+0x146d>
         : 2354  ./stdio-common/printf_fp.c:1178
    0.00 :   5c71a:  mov    -0xbc(%rbp),%r8d
    0.00 :   5c721:  test   %r8d,%r8d
    0.00 :   5c724:  je     5d064 <__GI___printf_fp_l+0x2734>
         : 2358  ./stdio-common/printf_fp.c:1178 (discriminator 1)
    0.00 :   5c72a:  mov    0xa0(%r12),%rax
    0.00 :   5c732:  test   %rax,%rax
    0.00 :   5c735:  je     5d475 <__GI___printf_fp_l+0x2b45>
         : 2362  ./stdio-common/printf_fp.c:1178 (discriminator 4)
    0.00 :   5c73b:  mov    0x20(%rax),%rdx
    0.00 :   5c73f:  cmp    0x28(%rax),%rdx
    0.00 :   5c743:  jae    5d475 <__GI___printf_fp_l+0x2b45>
         : 2366  ./stdio-common/printf_fp.c:1178 (discriminator 6)
    0.00 :   5c749:  lea    0x4(%rdx),%rsi
    0.00 :   5c74d:  mov    %rsi,0x20(%rax)
    0.00 :   5c751:  movl   $0x20,(%rdx)
    0.00 :   5c757:  jmp    5bd8e <__GI___printf_fp_l+0x145e>
         : 2371  round_away():
         : 2372  ./stdio-common/../include/rounding-mode.h:58
    0.00 :   5c75c:  mov    -0xa4(%rbp),%r10d
    0.00 :   5c763:  test   %r10d,%r10d
    0.00 :   5c766:  jne    5ba70 <__GI___printf_fp_l+0x1140>
    0.00 :   5c76c:  jmp    5c08a <__GI___printf_fp_l+0x175a>
         : 2377  __GI___printf_fp_l():
         : 2378  ./stdio-common/printf_fp.c:1254
    0.00 :   5c771:  mov    0xd8(%r12),%rbx
         : 2380  IO_validate_vtable():
         : 2381  ./stdio-common/../libio/libioP.h:940
    0.00 :   5c779:  lea    0x1ba280(%rip),%rdx        # 216a00 <_IO_helper_jumps>
    0.00 :   5c780:  lea    0x1bafe1(%rip),%rax        # 217768 <__stop___libc_IO_vtables>
    0.00 :   5c787:  sub    %rdx,%rax
         : 2385  ./stdio-common/../libio/libioP.h:942
    0.00 :   5c78a:  mov    %rbx,%rcx
    0.00 :   5c78d:  sub    %rdx,%rcx
         : 2388  ./stdio-common/../libio/libioP.h:943
    0.00 :   5c790:  cmp    %rcx,%rax
    0.00 :   5c793:  jbe    5d295 <__GI___printf_fp_l+0x2965>
         : 2391  __GI___printf_fp_l():
         : 2392  ./stdio-common/printf_fp.c:1254
    0.00 :   5c799:  movq   $0x0,-0xe0(%rbp)
    0.00 :   5c7a4:  mov    0x38(%rbx),%rax
    0.00 :   5c7a8:  jmp    5bf97 <__GI___printf_fp_l+0x1667>
    0.00 :   5c7ad:  mov    %r14,%r15
    0.00 :   5c7b0:  mov    %r9d,%r13d
    0.00 :   5c7b3:  test   %rdi,%rdi
    0.00 :   5c7b6:  jne    5c7e2 <__GI___printf_fp_l+0x1eb2>
    0.00 :   5c7b8:  jmp    5d0c2 <__GI___printf_fp_l+0x2792>
    0.00 :   5c7bd:  nopl   (%rax)
         : 2402  ./stdio-common/printf_fp.c:1254 (discriminator 54)
    0.00 :   5c7c0:  lea    0x1(%rax),%rcx
    0.00 :   5c7c4:  mov    %rcx,0x28(%r12)
    0.00 :   5c7c9:  mov    %dl,(%rax)
         : 2406  ./stdio-common/printf_fp.c:1254 (discriminator 59)
    0.00 :   5c7cb:  mov    %r14,%rdx
    0.00 :   5c7ce:  lea    0x0(%r13,%r15,1),%eax
    0.00 :   5c7d3:  sub    %r15,%rdx
    0.00 :   5c7d6:  sub    %r14d,%eax
    0.00 :   5c7d9:  add    %rbx,%rdx
    0.00 :   5c7dc:  je     5c88d <__GI___printf_fp_l+0x1f5d>
         : 2413  ./stdio-common/printf_fp.c:1254 (discriminator 64)
    0.00 :   5c7e2:  add    $0x1,%r15
    0.00 :   5c7e6:  mov    0x28(%r12),%rax
    0.00 :   5c7eb:  movzbl -0x1(%r15),%edx
    0.00 :   5c7f0:  cmp    0x30(%r12),%rax
    0.00 :   5c7f5:  jb     5c7c0 <__GI___printf_fp_l+0x1e90>
         : 2419  ./stdio-common/printf_fp.c:1254 (discriminator 53)
    0.00 :   5c7f7:  movzbl %dl,%esi
    0.00 :   5c7fa:  mov    %r12,%rdi
    0.00 :   5c7fd:  call   8d800 <__overflow>
    0.00 :   5c802:  cmp    $0xffffffff,%eax
    0.00 :   5c805:  jne    5c7cb <__GI___printf_fp_l+0x1e9b>
         : 2425  ./stdio-common/printf_fp.c:1254
    0.00 :   5c807:  mov    -0x14c(%rbp),%r15d
    0.00 :   5c80e:  mov    %eax,%r13d
    0.00 :   5c811:  test   %r15d,%r15d
    0.00 :   5c814:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 2430  ./stdio-common/printf_fp.c:1254 (discriminator 60)
    0.00 :   5c81a:  mov    -0xe0(%rbp),%rdi
    0.00 :   5c821:  call   28370 <free@plt>
    0.00 :   5c826:  mov    -0x130(%rbp),%rdi
    0.00 :   5c82d:  call   28370 <free@plt>
    0.00 :   5c832:  jmp    5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5c837:  nopw   0x0(%rax,%rax,1)
         : 2437  ./stdio-common/printf_fp.c:919
    0.00 :   5c840:  mov    0x1bd5c9(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
         : 2439  ./stdio-common/printf_fp.c:920
    0.00 :   5c847:  mov    $0xffffffff,%r13d
         : 2441  ./stdio-common/printf_fp.c:919
    0.00 :   5c84d:  movl   $0x22,%fs:(%rax)
         : 2443  ./stdio-common/printf_fp.c:920
    0.00 :   5c854:  jmp    5aed8 <__GI___printf_fp_l+0x5a8>
         : 2445  ./stdio-common/printf_fp.c:882
    0.00 :   5c859:  movl   $0x1,-0x118(%rbp)
         : 2447  ./stdio-common/printf_fp.c:878
    0.00 :   5c863:  sub    $0x2,%eax
    0.00 :   5c866:  mov    %eax,-0x9c(%rbp)
         : 2450  ./stdio-common/printf_fp.c:881
    0.00 :   5c86c:  mov    -0x128(%rbp),%eax
    0.00 :   5c872:  sub    $0x1,%eax
    0.00 :   5c875:  mov    %eax,-0xe0(%rbp)
         : 2454  ./stdio-common/printf_fp.c:883
    0.00 :   5c87b:  cltq
    0.00 :   5c87d:  add    $0x8,%rax
    0.00 :   5c881:  mov    %rax,-0x120(%rbp)
    0.00 :   5c888:  jmp    5b3fe <__GI___printf_fp_l+0xace>
    0.00 :   5c88d:  mov    %eax,%r13d
    0.00 :   5c890:  jmp    5bfcb <__GI___printf_fp_l+0x169b>
         : 2461  ./stdio-common/printf_fp.c:474
    0.00 :   5c895:  mov    %esi,%eax
         : 2463  ./stdio-common/printf_fp.c:472
    0.00 :   5c897:  movslq %edx,%rdx
         : 2465  ./stdio-common/printf_fp.c:474
    0.00 :   5c89a:  sar    $0x1f,%eax
         : 2467  ./stdio-common/printf_fp.c:471
    0.00 :   5c89d:  lea    (%rdi,%rdx,8),%rdi
    0.00 :   5c8a1:  mov    %r13,%rdx
         : 2470  ./stdio-common/printf_fp.c:474
    0.00 :   5c8a4:  shr    $0x1a,%eax
    0.00 :   5c8a7:  lea    (%rsi,%rax,1),%ecx
         : 2473  ./stdio-common/printf_fp.c:471
    0.00 :   5c8aa:  mov    %r15,%rsi
         : 2475  ./stdio-common/printf_fp.c:474
    0.00 :   5c8ad:  and    $0x3f,%ecx
    0.00 :   5c8b0:  sub    %eax,%ecx
         : 2478  ./stdio-common/printf_fp.c:471
    0.00 :   5c8b2:  call   54d10 <__mpn_lshift>
         : 2480  ./stdio-common/printf_fp.c:475
    0.00 :   5c8b7:  mov    -0x98(%rbp),%ecx
    0.00 :   5c8bd:  mov    -0x88(%rbp),%rsi
    0.00 :   5c8c4:  add    %ecx,%r14d
    0.00 :   5c8c7:  lea    0x3f(%r14),%edx
    0.00 :   5c8cb:  cmovns %r14d,%edx
    0.00 :   5c8cf:  sar    $0x6,%edx
    0.00 :   5c8d2:  movslq %edx,%rdx
    0.00 :   5c8d5:  add    %rdx,%rsi
    0.00 :   5c8d8:  mov    %rsi,-0x88(%rbp)
         : 2490  ./stdio-common/printf_fp.c:476
    0.00 :   5c8df:  test   %rax,%rax
    0.00 :   5c8e2:  je     5b15c <__GI___printf_fp_l+0x82c>
         : 2493  ./stdio-common/printf_fp.c:477
    0.00 :   5c8e8:  lea    0x1(%rsi),%rdi
    0.00 :   5c8ec:  mov    %rdi,-0x88(%rbp)
    0.00 :   5c8f3:  mov    -0x90(%rbp),%rdi
    0.00 :   5c8fa:  mov    %rax,(%rdi,%rsi,8)
    0.00 :   5c8fe:  jmp    5b15c <__GI___printf_fp_l+0x82c>
         : 2499  ./stdio-common/printf_fp.c:260
    0.00 :   5c903:  xor    %r9d,%r9d
    0.00 :   5c906:  jmp    5c36b <__GI___printf_fp_l+0x1a3b>
         : 2502  ./stdio-common/printf_fp.c:908
    0.00 :   5c90b:  lea    0x2(%r9),%eax
         : 2504  ./stdio-common/printf_fp.c:905
    0.00 :   5c90f:  mov    %edi,-0x124(%rbp)
         : 2506  ./stdio-common/printf_fp.c:908
    0.00 :   5c915:  cltq
    0.00 :   5c917:  jmp    5b493 <__GI___printf_fp_l+0xb63>
         : 2509  __guess_grouping():
         : 2510  ./stdio-common/printf_fp.c:1315
    0.00 :   5c91c:  lea    -0x1(%rdx),%eax
    0.00 :   5c91f:  xor    %edx,%edx
    0.00 :   5c921:  div    %ecx
    0.00 :   5c923:  add    %edi,%eax
    0.00 :   5c925:  mov    %eax,-0x124(%rbp)
         : 2516  __GI___printf_fp_l():
         : 2517  ./stdio-common/printf_fp.c:908
    0.00 :   5c92b:  add    $0x1,%eax
    0.00 :   5c92e:  cltq
         : 2520  __guess_grouping():
         : 2521  ./stdio-common/printf_fp.c:1316
    0.00 :   5c930:  jmp    5b493 <__GI___printf_fp_l+0xb63>
         : 2523  __GI___printf_fp_l():
         : 2524  ./stdio-common/printf_fp.c:1043
    0.00 :   5c935:  cmpl   $0x66,-0x9c(%rbp)
    0.00 :   5c93c:  je     5d085 <__GI___printf_fp_l+0x2755>
         : 2527  ./stdio-common/printf_fp.c:1045
    0.00 :   5c942:  mov    -0x130(%rbp),%rax
         : 2529  ./stdio-common/printf_fp.c:1046
    0.00 :   5c949:  cmpl   $0x1,-0xa0(%rbp)
         : 2531  ./stdio-common/printf_fp.c:1045
    0.00 :   5c950:  movl   $0x31,0x8(%rax)
         : 2533  ./stdio-common/printf_fp.c:1046
    0.00 :   5c957:  sbb    %eax,%eax
    0.00 :   5c959:  and    $0x2,%eax
    0.00 :   5c95c:  sub    $0x1,%eax
    0.00 :   5c95f:  add    %eax,-0x98(%rbp)
         : 2538  ./stdio-common/printf_fp.c:1051
    0.00 :   5c965:  jne    5c971 <__GI___printf_fp_l+0x2041>
         : 2540  ./stdio-common/printf_fp.c:1052
    0.00 :   5c967:  movl   $0x0,-0xa0(%rbp)
         : 2542  ./stdio-common/printf_fp.c:1087
    0.00 :   5c971:  mov    -0x134(%rbp),%eax
    0.00 :   5c977:  mov    -0x128(%rbp),%ecx
    0.00 :   5c97d:  add    %ebx,%eax
    0.00 :   5c97f:  cmp    %ecx,%eax
    0.00 :   5c981:  jle    5ba70 <__GI___printf_fp_l+0x1140>
         : 2548  ./stdio-common/printf_fp.c:1089
    0.00 :   5c987:  sub    %ecx,%eax
    0.00 :   5c989:  movslq %eax,%rsi
         : 2551  ./stdio-common/printf_fp.c:1090
    0.00 :   5c98c:  sub    %eax,%ebx
         : 2553  ./stdio-common/printf_fp.c:1089
    0.00 :   5c98e:  shl    $0x2,%rsi
    0.00 :   5c992:  sub    %rsi,%r15
         : 2556  ./stdio-common/printf_fp.c:1090
    0.00 :   5c995:  jmp    5ba70 <__GI___printf_fp_l+0x1140>
    0.00 :   5c99a:  movq   $0xe,-0x120(%rbp)
         : 2559  ./stdio-common/printf_fp.c:847
    0.00 :   5c9a5:  movl   $0x6,-0xf0(%rbp)
         : 2561  ./stdio-common/printf_fp.c:851
    0.00 :   5c9af:  jmp    5c2c4 <__GI___printf_fp_l+0x1994>
         : 2563  ./stdio-common/printf_fp.c:947
    0.00 :   5c9b4:  mov    -0xe0(%rbp),%r11d
    0.00 :   5c9bb:  test   %r11d,%r11d
    0.00 :   5c9be:  jle    5d01c <__GI___printf_fp_l+0x26ec>
         : 2567  ./stdio-common/printf_fp.c:947 (discriminator 1)
    0.00 :   5c9c4:  cmpq   $0x1,-0x88(%rbp)
    0.00 :   5c9cc:  jg     5b5eb <__GI___printf_fp_l+0xcbb>
         : 2570  ./stdio-common/printf_fp.c:947 (discriminator 2)
    0.00 :   5c9d2:  mov    -0x90(%rbp),%rdx
    0.00 :   5c9d9:  cmpq   $0x0,(%rdx)
    0.00 :   5c9dd:  jne    5b5eb <__GI___printf_fp_l+0xcbb>
    0.00 :   5c9e3:  mov    %rax,%r15
         : 2575  ./stdio-common/printf_fp.c:944
    0.00 :   5c9e6:  mov    $0x1,%esi
    0.00 :   5c9eb:  jmp    5b5fc <__GI___printf_fp_l+0xccc>
         : 2578  ./stdio-common/printf_fp.c:956
    0.00 :   5c9f0:  mov    -0xc0(%rbp),%ebx
    0.00 :   5c9f6:  lea    0x10(%rax),%r15
         : 2581  ./stdio-common/printf_fp.c:955
    0.00 :   5c9fa:  subl   $0x1,-0x98(%rbp)
    0.00 :   5ca01:  lea    -0xa0(%rbp),%r13
         : 2584  ./stdio-common/printf_fp.c:954
    0.00 :   5ca08:  movl   $0x30,0x8(%rax)
         : 2586  ./stdio-common/printf_fp.c:956
    0.00 :   5ca0f:  mov    %ebx,0xc(%rax)
         : 2588  ./stdio-common/printf_fp.c:835
    0.00 :   5ca12:  movl   $0x0,-0x134(%rbp)
    0.00 :   5ca1c:  jmp    5b5fc <__GI___printf_fp_l+0xccc>
         : 2591  ./stdio-common/printf_fp.c:983 (discriminator 1)
    0.00 :   5ca21:  mov    -0x90(%rbp),%r10
    0.00 :   5ca28:  cmpq   $0x0,(%r10)
    0.00 :   5ca2c:  je     5ba2b <__GI___printf_fp_l+0x10fb>
         : 2595  ./stdio-common/printf_fp.c:986
    0.00 :   5ca32:  cmpq   $0x0,-0x78(%rbp)
         : 2597  ./stdio-common/printf_fp.c:990
    0.00 :   5ca37:  mov    $0x1,%eax
         : 2599  ./stdio-common/printf_fp.c:986
    0.00 :   5ca3c:  je     5ba1e <__GI___printf_fp_l+0x10ee>
    0.00 :   5ca42:  jmp    5ba26 <__GI___printf_fp_l+0x10f6>
         : 2602  ./stdio-common/printf_fp.c:579
    0.00 :   5ca47:  test   %ecx,%ecx
    0.00 :   5ca49:  je     5ceb1 <__GI___printf_fp_l+0x2581>
         : 2605  ./stdio-common/printf_fp.c:595
    0.00 :   5ca4f:  xor    %eax,%eax
         : 2607  ./stdio-common/printf_fp.c:596
    0.00 :   5ca51:  mov    (%r9,%r13,1),%r9
         : 2609  ./stdio-common/printf_fp.c:595
    0.00 :   5ca55:  tzcnt  %r8,%rax
    0.00 :   5ca5a:  mov    %eax,%r8d
         : 2612  ./stdio-common/printf_fp.c:596
    0.00 :   5ca5d:  test   %r9,%r9
    0.00 :   5ca60:  je     5d180 <__GI___printf_fp_l+0x2850>
         : 2615  ./stdio-common/printf_fp.c:599
    0.00 :   5ca66:  xor    %r8d,%r8d
         : 2617  ./stdio-common/printf_fp.c:608
    0.00 :   5ca69:  mov    $0x40,%r15d
         : 2619  ./stdio-common/printf_fp.c:599
    0.00 :   5ca6f:  tzcnt  %r9,%r8
         : 2621  ./stdio-common/printf_fp.c:600
    0.00 :   5ca74:  cmp    %r8d,%eax
    0.00 :   5ca77:  cmovle %eax,%r8d
         : 2624  ./stdio-common/printf_fp.c:608
    0.00 :   5ca7b:  sub    %ecx,%r15d
         : 2626  ./stdio-common/printf_fp.c:639
    0.00 :   5ca7e:  movslq %r14d,%rbx
         : 2628  ./stdio-common/printf_fp.c:618
    0.00 :   5ca81:  cmp    %r8d,%r15d
    0.00 :   5ca84:  jle    5cf4c <__GI___printf_fp_l+0x261c>
         : 2631  ./stdio-common/printf_fp.c:637
    0.00 :   5ca8a:  sub    $0x1,%r14d
         : 2633  ./stdio-common/printf_fp.c:636
    0.00 :   5ca8e:  sub    $0x8,%r13
    0.00 :   5ca92:  mov    %r15d,%ecx
         : 2636  ./stdio-common/printf_fp.c:637
    0.00 :   5ca95:  movslq %r14d,%r14
         : 2638  ./stdio-common/printf_fp.c:636
    0.00 :   5ca98:  lea    (%rdi,%r13,1),%rsi
    0.00 :   5ca9c:  sub    %r14,%rdx
    0.00 :   5ca9f:  call   54e30 <__mpn_rshift>
         : 2642  ./stdio-common/printf_fp.c:640
    0.00 :   5caa4:  mov    -0x90(%rbp),%rdi
    0.00 :   5caab:  mov    %r15d,%ecx
         : 2645  ./stdio-common/printf_fp.c:639
    0.00 :   5caae:  sub    %rbx,-0x78(%rbp)
         : 2647  ./stdio-common/printf_fp.c:640
    0.00 :   5cab2:  mov    -0x88(%rbp),%rdx
    0.00 :   5cab9:  lea    (%rdi,%r13,1),%rsi
    0.00 :   5cabd:  sub    %r14,%rdx
    0.00 :   5cac0:  call   54e30 <__mpn_rshift>
         : 2652  ./stdio-common/printf_fp.c:643
    0.00 :   5cac5:  mov    -0x88(%rbp),%rdx
         : 2654  ./stdio-common/printf_fp.c:644
    0.00 :   5cacc:  mov    -0x90(%rbp),%rcx
    0.00 :   5cad3:  mov    %rdx,%rax
    0.00 :   5cad6:  sub    %r14,%rax
    0.00 :   5cad9:  cmpq   $0x0,-0x8(%rcx,%rax,8)
    0.00 :   5cadf:  jne    5cae7 <__GI___printf_fp_l+0x21b7>
         : 2660  ./stdio-common/printf_fp.c:643
    0.00 :   5cae1:  mov    %rdx,%rax
    0.00 :   5cae4:  sub    %rbx,%rax
    0.00 :   5cae7:  mov    %rax,-0x88(%rbp)
    0.00 :   5caee:  jmp    5b348 <__GI___printf_fp_l+0xa18>
         : 2665  ./stdio-common/printf_fp.c:791
    0.00 :   5caf3:  mov    -0xe0(%rbp),%r12
    0.00 :   5cafa:  test   %esi,%esi
    0.00 :   5cafc:  jle    5cb97 <__GI___printf_fp_l+0x2267>
         : 2669  ./stdio-common/printf_fp.c:795
    0.00 :   5cb02:  mov    -0x88(%rbp),%rdx
    0.00 :   5cb09:  mov    -0x70(%rbp),%rdi
    0.00 :   5cb0d:  mov    $0xa,%ecx
    0.00 :   5cb12:  mov    -0x90(%rbp),%rsi
    0.00 :   5cb19:  call   55420 <__mpn_mul_1>
         : 2675  ./stdio-common/printf_fp.c:799
    0.00 :   5cb1e:  mov    -0x70(%rbp),%rsi
    0.00 :   5cb22:  xor    %edi,%edi
         : 2678  ./stdio-common/printf_fp.c:800
    0.00 :   5cb24:  mov    $0x4,%edx
         : 2680  ./stdio-common/printf_fp.c:796
    0.00 :   5cb29:  mov    -0x88(%rbp),%r8
         : 2682  ./stdio-common/printf_fp.c:800
    0.00 :   5cb30:  mov    -0x98(%rbp),%eax
    0.00 :   5cb36:  mov    %edx,%ecx
         : 2685  ./stdio-common/printf_fp.c:796
    0.00 :   5cb38:  mov    %r8,-0x68(%rbp)
         : 2687  ./stdio-common/printf_fp.c:799
    0.00 :   5cb3c:  tzcnt  (%rsi),%rdi
         : 2689  ./stdio-common/printf_fp.c:800
    0.00 :   5cb41:  cmp    %edx,%eax
    0.00 :   5cb43:  cmovle %eax,%ecx
    0.00 :   5cb46:  cmp    %edi,%ecx
    0.00 :   5cb48:  jle    5d0ca <__GI___printf_fp_l+0x279a>
         : 2694  ./stdio-common/printf_fp.c:803
    0.00 :   5cb4e:  mov    $0x40,%r9d
         : 2696  ./stdio-common/printf_fp.c:802
    0.00 :   5cb54:  mov    -0x90(%rbp),%rdi
    0.00 :   5cb5b:  mov    %r8,%rdx
         : 2699  ./stdio-common/printf_fp.c:803
    0.00 :   5cb5e:  sub    %ecx,%r9d
         : 2701  ./stdio-common/printf_fp.c:802
    0.00 :   5cb61:  mov    %r9d,%ecx
    0.00 :   5cb64:  call   54d10 <__mpn_lshift>
         : 2704  ./stdio-common/printf_fp.c:804
    0.00 :   5cb69:  test   %rax,%rax
    0.00 :   5cb6c:  je     5cb85 <__GI___printf_fp_l+0x2255>
         : 2707  ./stdio-common/printf_fp.c:805
    0.00 :   5cb6e:  mov    -0x68(%rbp),%rdx
    0.00 :   5cb72:  lea    0x1(%rdx),%rcx
    0.00 :   5cb76:  mov    %rcx,-0x68(%rbp)
    0.00 :   5cb7a:  mov    -0x90(%rbp),%rcx
    0.00 :   5cb81:  mov    %rax,(%rcx,%rdx,8)
         : 2713  ./stdio-common/printf_fp.c:809
    0.00 :   5cb85:  mov    -0x68(%rbp),%rax
         : 2715  ./stdio-common/printf_fp.c:810
    0.00 :   5cb89:  orl    $0x1,-0xd0(%rbp)
         : 2717  ./stdio-common/printf_fp.c:809
    0.00 :   5cb90:  mov    %rax,-0x88(%rbp)
         : 2719  ./stdio-common/printf_fp.c:813
    0.00 :   5cb97:  mov    -0xd0(%rbp),%eax
    0.00 :   5cb9d:  mov    %eax,-0x98(%rbp)
    0.00 :   5cba3:  jmp    5b348 <__GI___printf_fp_l+0xa18>
    0.00 :   5cba8:  xor    %eax,%eax
         : 2724  ./stdio-common/printf_fp.c:1203
    0.00 :   5cbaa:  xor    %r13d,%r13d
    0.00 :   5cbad:  jmp    5be3d <__GI___printf_fp_l+0x150d>
         : 2727  ./stdio-common/printf_fp.c:418 (discriminator 45)
    0.00 :   5cbb2:  movzbl %dl,%esi
    0.00 :   5cbb5:  mov    %r12,%rdi
    0.00 :   5cbb8:  call   8d800 <__overflow>
    0.00 :   5cbbd:  cmp    $0xffffffff,%eax
    0.00 :   5cbc0:  jne    5b76f <__GI___printf_fp_l+0xe3f>
    0.00 :   5cbc6:  jmp    5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5cbcb:  nopl   0x0(%rax,%rax,1)
         : 2735  ./stdio-common/printf_fp.c:418
    0.00 :   5cbd0:  movzbl %dl,%esi
    0.00 :   5cbd3:  mov    %r12,%rdi
    0.00 :   5cbd6:  call   8d800 <__overflow>
    0.00 :   5cbdb:  cmp    $0xffffffff,%eax
    0.00 :   5cbde:  jne    5b74f <__GI___printf_fp_l+0xe1f>
    0.00 :   5cbe4:  jmp    5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5cbe9:  nopl   0x0(%rax)
    0.00 :   5cbf0:  movzbl %dl,%esi
    0.00 :   5cbf3:  mov    %r12,%rdi
    0.00 :   5cbf6:  call   8d800 <__overflow>
    0.00 :   5cbfb:  cmp    $0xffffffff,%eax
    0.00 :   5cbfe:  jne    5b72f <__GI___printf_fp_l+0xdff>
    0.00 :   5cc04:  jmp    5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5cc09:  nopl   0x0(%rax)
         : 2750  ./stdio-common/printf_fp.c:868
    0.00 :   5cc10:  lea    0x2(%rdx),%rax
    0.00 :   5cc14:  mov    %rax,-0x120(%rbp)
    0.00 :   5cc1b:  jmp    5c2c4 <__GI___printf_fp_l+0x1994>
         : 2754  ./stdio-common/printf_fp.c:753
    0.00 :   5cc20:  xor    %eax,%eax
    0.00 :   5cc22:  tzcnt  %rcx,%rax
         : 2757  ./stdio-common/printf_fp.c:767
    0.00 :   5cc27:  mov    $0x3f,%ecx
    0.00 :   5cc2c:  sub    %r12d,%ecx
         : 2760  ./stdio-common/printf_fp.c:748
    0.00 :   5cc2f:  mov    -0x90(%rbp),%r12
         : 2762  ./stdio-common/printf_fp.c:767
    0.00 :   5cc36:  cmp    %ecx,%eax
    0.00 :   5cc38:  jge    5d32b <__GI___printf_fp_l+0x29fb>
         : 2765  ./stdio-common/printf_fp.c:780
    0.00 :   5cc3e:  movslq %r9d,%r13
         : 2767  ./stdio-common/printf_fp.c:779
    0.00 :   5cc41:  mov    %r8,%rdx
    0.00 :   5cc44:  lea    -0x8(%r10,%r11,1),%rsi
    0.00 :   5cc49:  sub    %r13,%rdx
    0.00 :   5cc4c:  mov    %r12,%rdi
    0.00 :   5cc4f:  call   54e30 <__mpn_rshift>
         : 2773  ./stdio-common/printf_fp.c:782
    0.00 :   5cc54:  mov    -0x68(%rbp),%rax
         : 2775  ./stdio-common/printf_fp.c:789
    0.00 :   5cc58:  mov    -0x98(%rbp),%esi
         : 2777  ./stdio-common/printf_fp.c:782
    0.00 :   5cc5e:  sub    %r13,%rax
    0.00 :   5cc61:  mov    %rax,-0x88(%rbp)
    0.00 :   5cc68:  jmp    5c569 <__GI___printf_fp_l+0x1c39>
    0.00 :   5cc6d:  mov    %rcx,-0xd0(%rbp)
         : 2782  ./stdio-common/printf_fp.c:412 (discriminator 5)
    0.00 :   5cc74:  mov    $0x2d,%esi
         : 2784  ./stdio-common/printf_fp.c:414 (discriminator 5)
    0.00 :   5cc79:  mov    %r12,%rdi
    0.00 :   5cc7c:  call   838b0 <__woverflow>
    0.00 :   5cc81:  mov    -0xd0(%rbp),%rcx
    0.00 :   5cc88:  cmp    $0xffffffff,%eax
    0.00 :   5cc8b:  sete   %al
         : 2790  ./stdio-common/printf_fp.c:414
    0.00 :   5cc8e:  test   %al,%al
    0.00 :   5cc90:  je     5ae04 <__GI___printf_fp_l+0x4d4>
         : 2793  ./stdio-common/printf_fp.c:1269
    0.00 :   5cc96:  mov    $0xffffffff,%r13d
    0.00 :   5cc9c:  jmp    5aed8 <__GI___printf_fp_l+0x5a8>
    0.00 :   5cca1:  movslq %edx,%rbx
    0.00 :   5cca4:  jmp    5b14f <__GI___printf_fp_l+0x81f>
         : 2798  ./stdio-common/printf_fp.c:1013
    0.00 :   5cca9:  cmp    -0xf0(%rbp),%edi
    0.00 :   5ccaf:  jne    5ccc1 <__GI___printf_fp_l+0x2391>
    0.00 :   5ccb1:  mov    -0x100(%rbp),%r8d
    0.00 :   5ccb8:  test   %r8d,%r8d
    0.00 :   5ccbb:  jg     5c0f1 <__GI___printf_fp_l+0x17c1>
         : 2804  ./stdio-common/printf_fp.c:1097
    0.00 :   5ccc1:  mov    -0xf0(%rbp),%r9d
    0.00 :   5ccc8:  add    -0x100(%rbp),%r9d
         : 2807  ./stdio-common/printf_fp.c:1018
    0.00 :   5cccf:  cmpb   $0x67,-0x13c(%rbp)
         : 2809  ./stdio-common/printf_fp.c:1028
    0.00 :   5ccd6:  mov    (%rax),%esi
         : 2811  ./stdio-common/printf_fp.c:1018
    0.00 :   5ccd8:  jne    5c118 <__GI___printf_fp_l+0x17e8>
         : 2813  ./stdio-common/printf_fp.c:1018 (discriminator 1)
    0.00 :   5ccde:  cmpl   $0x66,-0x9c(%rbp)
    0.00 :   5cce5:  jne    5c118 <__GI___printf_fp_l+0x17e8>
         : 2816  ./stdio-common/printf_fp.c:1018
    0.00 :   5cceb:  mov    -0xb8(%rbp),%rdi
    0.00 :   5ccf2:  testb  $0x8,0xc(%rdi)
    0.00 :   5ccf6:  je     5c118 <__GI___printf_fp_l+0x17e8>
         : 2820  ./stdio-common/printf_fp.c:1019
    0.00 :   5ccfc:  mov    -0x130(%rbp),%rdi
    0.00 :   5cd03:  add    $0xc,%rdi
         : 2823  ./stdio-common/printf_fp.c:1018
    0.00 :   5cd07:  cmp    %rdi,%rax
    0.00 :   5cd0a:  jne    5c118 <__GI___printf_fp_l+0x17e8>
    0.00 :   5cd10:  mov    -0x130(%rbp),%rdi
    0.00 :   5cd17:  cmpl   $0x30,0x8(%rdi)
    0.00 :   5cd1b:  jne    5c118 <__GI___printf_fp_l+0x17e8>
         : 2829  ./stdio-common/printf_fp.c:1097
    0.00 :   5cd21:  mov    -0x100(%rbp),%edi
    0.00 :   5cd27:  mov    -0xf0(%rbp),%ecx
    0.00 :   5cd2d:  lea    -0x1(%rdi,%rcx,1),%r9d
    0.00 :   5cd32:  jmp    5c118 <__GI___printf_fp_l+0x17e8>
    0.00 :   5cd37:  nopw   0x0(%rax,%rax,1)
         : 2835  ./stdio-common/printf_fp.c:1176 (discriminator 2)
    0.00 :   5cd40:  mov    0x28(%r12),%rax
    0.00 :   5cd45:  cmp    0x30(%r12),%rax
    0.00 :   5cd4a:  jae    5d464 <__GI___printf_fp_l+0x2b34>
         : 2839  ./stdio-common/printf_fp.c:1176 (discriminator 11)
    0.00 :   5cd50:  lea    0x1(%rax),%rdx
    0.00 :   5cd54:  mov    %rdx,0x28(%r12)
    0.00 :   5cd59:  movb   $0x2b,(%rax)
    0.00 :   5cd5c:  jmp    5bd8e <__GI___printf_fp_l+0x145e>
         : 2844  ./stdio-common/printf_fp.c:1269 (discriminator 2)
    0.00 :   5cd61:  call   806a0 <_IO_padn>
    0.00 :   5cd66:  jmp    5c01b <__GI___printf_fp_l+0x16eb>
    0.00 :   5cd6b:  movq   $0x0,-0xe0(%rbp)
    0.00 :   5cd76:  mov    %rdi,%r12
    0.00 :   5cd79:  jmp    5bfcb <__GI___printf_fp_l+0x169b>
         : 2850  ./stdio-common/printf_fp.c:718
    0.00 :   5cd7e:  lea    -0x50(%rbp),%rdi
         : 2852  ./stdio-common/printf_fp.c:719
    0.00 :   5cd82:  mov    $0x40,%ecx
         : 2854  ./stdio-common/printf_fp.c:718
    0.00 :   5cd87:  mov    $0x2,%edx
         : 2856  ./stdio-common/printf_fp.c:716
    0.00 :   5cd8c:  movdqa 0x1854bc(%rip),%xmm4        # 1e2250 <othermask+0x1c0>
         : 2858  ./stdio-common/printf_fp.c:718
    0.00 :   5cd94:  mov    %rdi,%rsi
         : 2860  ./stdio-common/printf_fp.c:719
    0.00 :   5cd97:  sub    %r12d,%ecx
         : 2862  ./stdio-common/printf_fp.c:716
    0.00 :   5cd9a:  movaps %xmm4,-0x50(%rbp)
         : 2864  ./stdio-common/printf_fp.c:718
    0.00 :   5cd9e:  call   54d10 <__mpn_lshift>
         : 2866  ./stdio-common/printf_fp.c:728
    0.00 :   5cda3:  mov    -0x98(%rbp),%esi
    0.00 :   5cda9:  lea    0x2(%rsi),%eax
    0.00 :   5cdac:  cmp    %r13d,%eax
    0.00 :   5cdaf:  jge    5c5dd <__GI___printf_fp_l+0x1cad>
         : 2871  ./stdio-common/printf_fp.c:729
    0.00 :   5cdb5:  lea    0x3(%rsi),%eax
    0.00 :   5cdb8:  cmp    %r13d,%eax
    0.00 :   5cdbb:  jne    5c569 <__GI___printf_fp_l+0x1c39>
         : 2875  ./stdio-common/printf_fp.c:748
    0.00 :   5cdc1:  mov    -0x68(%rbp),%r8
         : 2877  ./stdio-common/printf_fp.c:745
    0.00 :   5cdc5:  mov    -0x70(%rbp),%r10
         : 2879  ./stdio-common/printf_fp.c:730
    0.00 :   5cdc9:  mov    -0x48(%rbp),%rcx
    0.00 :   5cdcd:  lea    0x0(,%r8,8),%rdx
    0.00 :   5cdd5:  lea    -0x8(%r10,%rdx,1),%rax
    0.00 :   5cdda:  jmp    5c6cc <__GI___printf_fp_l+0x1d9c>
         : 2884  ./stdio-common/printf_fp.c:393 (discriminator 1)
    0.00 :   5cddf:  fxam
    0.00 :   5cde1:  fnstsw %ax
    0.00 :   5cde3:  fstp   %st(0)
    0.00 :   5cde5:  mov    %eax,%r13d
    0.00 :   5cde8:  and    $0x200,%r13d
    0.00 :   5cdef:  jmp    5b8b7 <__GI___printf_fp_l+0xf87>
         : 2891  ./stdio-common/printf_fp.c:396 (discriminator 1)
    0.00 :   5cdf4:  movmskpd %xmm0,%r13d
    0.00 :   5cdf9:  and    $0x1,%r13d
    0.00 :   5cdfd:  jmp    5b8b7 <__GI___printf_fp_l+0xf87>
         : 2895  __guess_grouping():
         : 2896  ./stdio-common/printf_fp.c:1315
    0.00 :   5ce02:  lea    -0x1(%rdx),%eax
    0.00 :   5ce05:  xor    %edx,%edx
    0.00 :   5ce07:  div    %edi
    0.00 :   5ce09:  add    %esi,%eax
    0.00 :   5ce0b:  mov    %eax,-0x124(%rbp)
         : 2902  ./stdio-common/printf_fp.c:1316
    0.00 :   5ce11:  jmp    5bb27 <__GI___printf_fp_l+0x11f7>
         : 2904  __GI___printf_fp_l():
         : 2905  ./stdio-common/printf_fp.c:1181
    0.00 :   5ce16:  mov    -0xbc(%rbp),%esi
         : 2907  ./stdio-common/printf_fp.c:1171
    0.00 :   5ce1c:  movslq -0xd0(%rbp),%r13
    0.00 :   5ce23:  mov    %r9d,-0xe0(%rbp)
         : 2910  ./stdio-common/printf_fp.c:1181
    0.00 :   5ce2a:  mov    %r12,%rdi
    0.00 :   5ce2d:  test   %esi,%esi
    0.00 :   5ce2f:  mov    %r13,%rdx
    0.00 :   5ce32:  mov    $0x30,%esi
    0.00 :   5ce37:  je     5d11d <__GI___printf_fp_l+0x27ed>
         : 2916  ./stdio-common/printf_fp.c:1181 (discriminator 1)
    0.00 :   5ce3d:  call   824e0 <_IO_wpadn>
    0.00 :   5ce42:  mov    -0xe0(%rbp),%r9d
         : 2919  ./stdio-common/printf_fp.c:1181 (discriminator 4)
    0.00 :   5ce49:  cmp    %r13,%rax
    0.00 :   5ce4c:  jne    5b6ec <__GI___printf_fp_l+0xdbc>
         : 2922  ./stdio-common/printf_fp.c:1181 (discriminator 6)
    0.00 :   5ce52:  add    -0xd0(%rbp),%r9d
    0.00 :   5ce59:  jmp    5bdbc <__GI___printf_fp_l+0x148c>
         : 2925  ./stdio-common/printf_fp.c:926
    0.00 :   5ce5e:  mov    %r15,%rdi
    0.00 :   5ce61:  mov    %esi,-0xd0(%rbp)
    0.00 :   5ce67:  call   28380 <malloc@plt>
    0.00 :   5ce6c:  mov    %rax,-0x130(%rbp)
         : 2930  ./stdio-common/printf_fp.c:927
    0.00 :   5ce73:  test   %rax,%rax
    0.00 :   5ce76:  je     5b702 <__GI___printf_fp_l+0xdd2>
         : 2933  __libc_use_alloca():
         : 2934  ./stdio-common/../sysdeps/pthread/allocalim.h:29
    0.00 :   5ce7c:  movl   $0x0,-0x14c(%rbp)
    0.00 :   5ce86:  mov    -0xd0(%rbp),%esi
         : 2937  __GI___printf_fp_l():
         : 2938  ./stdio-common/../sysdeps/pthread/allocalim.h:29
    0.00 :   5ce8c:  movl   $0x1,-0x140(%rbp)
    0.00 :   5ce96:  jmp    5b55e <__GI___printf_fp_l+0xc2e>
         : 2941  ./stdio-common/printf_fp.c:1171 (discriminator 2)
    0.00 :   5ce9b:  call   806a0 <_IO_padn>
    0.00 :   5cea0:  jmp    5bd33 <__GI___printf_fp_l+0x1403>
    0.00 :   5cea5:  mov    -0xe0(%rbp),%r12
    0.00 :   5ceac:  jmp    5cb97 <__GI___printf_fp_l+0x2267>
         : 2946  ./stdio-common/printf_fp.c:585
    0.00 :   5ceb1:  movslq %r14d,%r14
    0.00 :   5ceb4:  sub    %r14,%rdx
    0.00 :   5ceb7:  test   %rdx,%rdx
    0.00 :   5ceba:  jle    5cee0 <__GI___printf_fp_l+0x25b0>
    0.00 :   5cebc:  lea    (%rdi,%rax,8),%rsi
    0.00 :   5cec0:  xor    %ecx,%ecx
    0.00 :   5cec2:  nopw   0x0(%rax,%rax,1)
         : 2954  ./stdio-common/printf_fp.c:585 (discriminator 3)
    0.00 :   5cec8:  mov    (%rsi,%rcx,8),%rdx
    0.00 :   5cecc:  mov    %rdx,(%rdi,%rcx,8)
    0.00 :   5ced0:  mov    -0x78(%rbp),%rdx
    0.00 :   5ced4:  add    $0x1,%rcx
    0.00 :   5ced8:  sub    %r14,%rdx
    0.00 :   5cedb:  cmp    %rcx,%rdx
    0.00 :   5cede:  jg     5cec8 <__GI___printf_fp_l+0x2598>
         : 2962  ./stdio-common/printf_fp.c:586 (discriminator 4)
    0.00 :   5cee0:  mov    %rdx,-0x78(%rbp)
         : 2964  ./stdio-common/printf_fp.c:587 (discriminator 4)
    0.00 :   5cee4:  mov    -0x88(%rbp),%rdx
    0.00 :   5ceeb:  sub    %r14,%rdx
    0.00 :   5ceee:  test   %rdx,%rdx
    0.00 :   5cef1:  jle    5cf1b <__GI___printf_fp_l+0x25eb>
    0.00 :   5cef3:  lea    (%r9,%rax,8),%rcx
         : 2970  ./stdio-common/printf_fp.c:587
    0.00 :   5cef7:  xor    %eax,%eax
    0.00 :   5cef9:  nopl   0x0(%rax)
         : 2973  ./stdio-common/printf_fp.c:587 (discriminator 3)
    0.00 :   5cf00:  mov    (%rcx,%rax,8),%rdx
    0.00 :   5cf04:  mov    %rdx,(%r9,%rax,8)
    0.00 :   5cf08:  mov    -0x88(%rbp),%rdx
    0.00 :   5cf0f:  add    $0x1,%rax
    0.00 :   5cf13:  sub    %r14,%rdx
    0.00 :   5cf16:  cmp    %rax,%rdx
    0.00 :   5cf19:  jg     5cf00 <__GI___printf_fp_l+0x25d0>
         : 2981  ./stdio-common/printf_fp.c:588 (discriminator 4)
    0.00 :   5cf1b:  mov    %rdx,-0x88(%rbp)
    0.00 :   5cf22:  jmp    5b348 <__GI___printf_fp_l+0xa18>
         : 2984  ./stdio-common/printf_fp.c:608
    0.00 :   5cf27:  mov    $0x40,%r15d
         : 2986  ./stdio-common/printf_fp.c:605
    0.00 :   5cf2d:  tzcnt  %r8,%r8
         : 2988  ./stdio-common/printf_fp.c:608
    0.00 :   5cf32:  sub    %ecx,%r15d
    0.00 :   5cf35:  test   %r14d,%r14d
    0.00 :   5cf38:  jne    5ca7e <__GI___printf_fp_l+0x214e>
    0.00 :   5cf3e:  xor    %r14d,%r14d
    0.00 :   5cf41:  xor    %ebx,%ebx
         : 2994  ./stdio-common/printf_fp.c:608 (discriminator 1)
    0.00 :   5cf43:  cmp    %r8d,%r15d
    0.00 :   5cf46:  jg     5d240 <__GI___printf_fp_l+0x2910>
         : 2997  ./stdio-common/printf_fp.c:624
    0.00 :   5cf4c:  sub    %rbx,%rdx
    0.00 :   5cf4f:  mov    %r15d,%ecx
         : 3000  ./stdio-common/printf_fp.c:626
    0.00 :   5cf52:  add    $0x1,%r14d
         : 3002  ./stdio-common/printf_fp.c:624
    0.00 :   5cf56:  call   54e30 <__mpn_rshift>
         : 3004  ./stdio-common/printf_fp.c:627
    0.00 :   5cf5b:  mov    -0x90(%rbp),%rdi
    0.00 :   5cf62:  mov    %r15d,%ecx
         : 3007  ./stdio-common/printf_fp.c:626
    0.00 :   5cf65:  movslq %r14d,%r14
         : 3009  ./stdio-common/printf_fp.c:627
    0.00 :   5cf68:  mov    -0x88(%rbp),%rdx
         : 3011  ./stdio-common/printf_fp.c:626
    0.00 :   5cf6f:  sub    %r14,-0x78(%rbp)
         : 3013  ./stdio-common/printf_fp.c:627
    0.00 :   5cf73:  lea    (%rdi,%r13,1),%rsi
    0.00 :   5cf77:  sub    %rbx,%rdx
    0.00 :   5cf7a:  call   54e30 <__mpn_rshift>
         : 3017  ./stdio-common/printf_fp.c:629
    0.00 :   5cf7f:  mov    -0x88(%rbp),%rdx
    0.00 :   5cf86:  mov    -0x90(%rbp),%rcx
    0.00 :   5cf8d:  mov    %rdx,%rax
    0.00 :   5cf90:  sub    %rbx,%rax
    0.00 :   5cf93:  cmpq   $0x0,-0x8(%rcx,%rax,8)
    0.00 :   5cf99:  jne    5cae7 <__GI___printf_fp_l+0x21b7>
    0.00 :   5cf9f:  mov    %rdx,%rax
    0.00 :   5cfa2:  sub    %r14,%rax
    0.00 :   5cfa5:  jmp    5cae7 <__GI___printf_fp_l+0x21b7>
         : 3027  ./stdio-common/printf_fp.c:939
    0.00 :   5cfaa:  movl   $0x0,-0x134(%rbp)
         : 3029  ./stdio-common/printf_fp.c:933
    0.00 :   5cfb4:  mov    %r14,%rax
    0.00 :   5cfb7:  lea    -0xa0(%rbp),%r13
    0.00 :   5cfbe:  jmp    5b5d0 <__GI___printf_fp_l+0xca0>
         : 3033  ./stdio-common/printf_fp.c:1259
    0.00 :   5cfc3:  mov    -0xe0(%rbp),%rdi
    0.00 :   5cfca:  call   28370 <free@plt>
         : 3036  ./stdio-common/printf_fp.c:1260
    0.00 :   5cfcf:  mov    -0x130(%rbp),%rdi
    0.00 :   5cfd6:  call   28370 <free@plt>
         : 3039  ./stdio-common/printf_fp.c:1263
    0.00 :   5cfdb:  movq   $0x0,-0xe0(%rbp)
         : 3041  ./stdio-common/printf_fp.c:1264
    0.00 :   5cfe6:  movq   $0x0,-0x130(%rbp)
    0.00 :   5cff1:  jmp    5bfdb <__GI___printf_fp_l+0x16ab>
    0.00 :   5cff6:  mov    %rcx,-0xd0(%rbp)
         : 3045  ./stdio-common/printf_fp.c:412 (discriminator 10)
    0.00 :   5cffd:  mov    $0x2d,%esi
         : 3047  ./stdio-common/printf_fp.c:414 (discriminator 10)
    0.00 :   5d002:  mov    %r12,%rdi
    0.00 :   5d005:  call   8d800 <__overflow>
    0.00 :   5d00a:  mov    -0xd0(%rbp),%rcx
    0.00 :   5d011:  cmp    $0xffffffff,%eax
    0.00 :   5d014:  sete   %al
    0.00 :   5d017:  jmp    5cc8e <__GI___printf_fp_l+0x235e>
         : 3054  ./stdio-common/printf_fp.c:961
    0.00 :   5d01c:  movl   $0x0,-0x100(%rbp)
    0.00 :   5d026:  mov    -0xf0(%rbp),%r9d
    0.00 :   5d02d:  mov    %rax,%r15
         : 3058  ./stdio-common/printf_fp.c:960
    0.00 :   5d030:  xor    %ebx,%ebx
    0.00 :   5d032:  jmp    5b9a6 <__GI___printf_fp_l+0x1076>
         : 3061  ./stdio-common/printf_fp.c:1122 (discriminator 1)
    0.00 :   5d037:  cmpb   $0x67,-0x13c(%rbp)
    0.00 :   5d03e:  jne    5d049 <__GI___printf_fp_l+0x2719>
    0.00 :   5d040:  cmp    $0x4,%eax
    0.00 :   5d043:  je     5d4bf <__GI___printf_fp_l+0x2b8f>
         : 3066  ./stdio-common/printf_fp.c:1142
    0.00 :   5d049:  mov    $0x2d,%edi
    0.00 :   5d04e:  jmp    5bc42 <__GI___printf_fp_l+0x1312>
    0.00 :   5d053:  mov    %rcx,-0xd0(%rbp)
         : 3070  ./stdio-common/printf_fp.c:414 (discriminator 5)
    0.00 :   5d05a:  mov    $0x2b,%esi
    0.00 :   5d05f:  jmp    5cc79 <__GI___printf_fp_l+0x2349>
         : 3073  ./stdio-common/printf_fp.c:1178 (discriminator 2)
    0.00 :   5d064:  mov    0x28(%r12),%rax
    0.00 :   5d069:  cmp    0x30(%r12),%rax
    0.00 :   5d06e:  jae    5d4a9 <__GI___printf_fp_l+0x2b79>
         : 3077  ./stdio-common/printf_fp.c:1178 (discriminator 11)
    0.00 :   5d074:  lea    0x1(%rax),%rdx
    0.00 :   5d078:  mov    %rdx,0x28(%r12)
    0.00 :   5d07d:  movb   $0x20,(%rax)
    0.00 :   5d080:  jmp    5bd8e <__GI___printf_fp_l+0x145e>
         : 3082  ./stdio-common/printf_fp.c:1054
    0.00 :   5d085:  mov    -0x128(%rbp),%esi
         : 3084  ./stdio-common/printf_fp.c:1059
    0.00 :   5d08b:  mov    -0x130(%rbp),%rax
         : 3086  ./stdio-common/printf_fp.c:1054
    0.00 :   5d092:  cmp    %esi,-0x134(%rbp)
    0.00 :   5d098:  je     5d339 <__GI___printf_fp_l+0x2a09>
         : 3089  ./stdio-common/printf_fp.c:1081
    0.00 :   5d09e:  addl   $0x1,-0x134(%rbp)
         : 3091  ./stdio-common/printf_fp.c:1080
    0.00 :   5d0a5:  lea    0x4(%rax),%r14
    0.00 :   5d0a9:  movl   $0x31,0x4(%rax)
         : 3094  ./stdio-common/printf_fp.c:1081
    0.00 :   5d0b0:  jmp    5c971 <__GI___printf_fp_l+0x2041>
         : 3096  ./stdio-common/printf_fp.c:1237
    0.00 :   5d0b5:  mov    -0xb8(%rbp),%rax
    0.00 :   5d0bc:  testb  $0x8,0xd(%rax)
    0.00 :   5d0c0:  jne    5d0de <__GI___printf_fp_l+0x27ae>
         : 3100  ./stdio-common/printf_fp.c:1254
    0.00 :   5d0c2:  mov    %r9d,%r13d
    0.00 :   5d0c5:  jmp    5bfcb <__GI___printf_fp_l+0x169b>
         : 3103  ./stdio-common/printf_fp.c:808
    0.00 :   5d0ca:  mov    -0x90(%rbp),%rdi
    0.00 :   5d0d1:  mov    %r8,%rdx
    0.00 :   5d0d4:  call   54e30 <__mpn_rshift>
    0.00 :   5d0d9:  jmp    5cb85 <__GI___printf_fp_l+0x2255>
         : 3108  ./stdio-common/printf_fp.c:1227
    0.00 :   5d0de:  mov    -0xe0(%rbp),%rdi
         : 3110  ./stdio-common/printf_fp.c:1221
    0.00 :   5d0e5:  mov    -0xe0(%rbp),%rax
    0.00 :   5d0ec:  mov    -0xf0(%rbp),%rbx
         : 3113  ./stdio-common/printf_fp.c:1247
    0.00 :   5d0f3:  mov    %rdi,%rsi
    0.00 :   5d0f6:  mov    %r9d,-0xe8(%rbp)
         : 3116  ./stdio-common/printf_fp.c:1221
    0.00 :   5d0fd:  add    %rax,%rbx
         : 3118  ./stdio-common/printf_fp.c:1247
    0.00 :   5d100:  mov    %rax,%rdi
    0.00 :   5d103:  mov    %rbx,%rdx
    0.00 :   5d106:  call   5a620 <_i18n_number_rewrite>
    0.00 :   5d10b:  mov    -0xe8(%rbp),%r9d
         : 3123  ./stdio-common/printf_fp.c:1221
    0.00 :   5d112:  mov    %rbx,%rdi
         : 3125  ./stdio-common/printf_fp.c:1247
    0.00 :   5d115:  mov    %rax,%r14
         : 3127  ./stdio-common/printf_fp.c:1254
    0.00 :   5d118:  jmp    5bf58 <__GI___printf_fp_l+0x1628>
         : 3129  ./stdio-common/printf_fp.c:1181 (discriminator 2)
    0.00 :   5d11d:  call   806a0 <_IO_padn>
    0.00 :   5d122:  mov    -0xe0(%rbp),%r9d
    0.00 :   5d129:  jmp    5ce49 <__GI___printf_fp_l+0x2519>
         : 3133  ./stdio-common/printf_fp.c:1247
    0.00 :   5d12e:  xor    %edx,%edx
    0.00 :   5d130:  xor    %esi,%esi
    0.00 :   5d132:  xor    %edi,%edi
    0.00 :   5d134:  mov    %r9d,-0xe0(%rbp)
    0.00 :   5d13b:  call   5a620 <_i18n_number_rewrite>
         : 3139  ./stdio-common/printf_fp.c:1254
    0.00 :   5d140:  mov    -0xe0(%rbp),%r9d
    0.00 :   5d147:  jmp    5c212 <__GI___printf_fp_l+0x18e2>
         : 3142  ./stdio-common/printf_fp.c:1211
    0.00 :   5d14c:  mov    %rax,%rdi
    0.00 :   5d14f:  mov    %r9d,-0xe8(%rbp)
    0.00 :   5d156:  call   28380 <malloc@plt>
         : 3146  ./stdio-common/printf_fp.c:1212
    0.00 :   5d15b:  mov    -0xe8(%rbp),%r9d
    0.00 :   5d162:  test   %rax,%rax
         : 3149  ./stdio-common/printf_fp.c:1211
    0.00 :   5d165:  mov    %rax,-0xe0(%rbp)
         : 3151  ./stdio-common/printf_fp.c:1212
    0.00 :   5d16c:  jne    5beb6 <__GI___printf_fp_l+0x1586>
    0.00 :   5d172:  jmp    5b6f6 <__GI___printf_fp_l+0xdc6>
    0.00 :   5d177:  nopw   0x0(%rax,%rax,1)
         : 3155  ./stdio-common/printf_fp.c:608
    0.00 :   5d180:  mov    $0x40,%r15d
    0.00 :   5d186:  sub    %ecx,%r15d
    0.00 :   5d189:  jmp    5ca7e <__GI___printf_fp_l+0x214e>
         : 3159  ./stdio-common/printf_fp.c:746
    0.00 :   5d18e:  cmp    $0x3f,%r12d
    0.00 :   5d192:  je     5d4ef <__GI___printf_fp_l+0x2bbf>
         : 3162  ./stdio-common/printf_fp.c:756
    0.00 :   5d198:  mov    $0x3f,%ecx
         : 3164  ./stdio-common/printf_fp.c:753
    0.00 :   5d19d:  tzcnt  %rax,%rax
         : 3166  ./stdio-common/printf_fp.c:756
    0.00 :   5d1a2:  sub    %r12d,%ecx
    0.00 :   5d1a5:  cmp    %ecx,%eax
    0.00 :   5d1a7:  jl     5d1be <__GI___printf_fp_l+0x288e>
    0.00 :   5d1a9:  mov    -0x90(%rbp),%r12
    0.00 :   5d1b0:  xor    %r13d,%r13d
         : 3172  ./stdio-common/printf_fp.c:769
    0.00 :   5d1b3:  mov    %r8,%rdx
    0.00 :   5d1b6:  mov    %r10,%rsi
    0.00 :   5d1b9:  jmp    5cc4c <__GI___printf_fp_l+0x231c>
         : 3176  ./stdio-common/printf_fp.c:762
    0.00 :   5d1be:  mov    -0x90(%rbp),%rdi
    0.00 :   5d1c5:  mov    %r8,%rdx
    0.00 :   5d1c8:  mov    %r10,%rsi
         : 3180  ./stdio-common/printf_fp.c:763
    0.00 :   5d1cb:  lea    0x1(%r12),%ecx
         : 3182  ./stdio-common/printf_fp.c:762
    0.00 :   5d1d0:  call   54d10 <__mpn_lshift>
         : 3184  ./stdio-common/printf_fp.c:765
    0.00 :   5d1d5:  mov    -0x90(%rbp),%rdx
         : 3186  ./stdio-common/printf_fp.c:789
    0.00 :   5d1dc:  mov    -0x98(%rbp),%esi
         : 3188  ./stdio-common/printf_fp.c:762
    0.00 :   5d1e2:  mov    %rax,%r8
         : 3190  ./stdio-common/printf_fp.c:764
    0.00 :   5d1e5:  mov    -0x68(%rbp),%rax
    0.00 :   5d1e9:  add    $0x1,%rax
    0.00 :   5d1ed:  mov    %rax,-0x88(%rbp)
         : 3194  ./stdio-common/printf_fp.c:765
    0.00 :   5d1f4:  mov    %r8,-0x8(%rdx,%rax,8)
    0.00 :   5d1f9:  jmp    5c569 <__GI___printf_fp_l+0x1c39>
    0.00 :   5d1fe:  mov    %rcx,-0xd0(%rbp)
         : 3198  ./stdio-common/printf_fp.c:414 (discriminator 10)
    0.00 :   5d205:  mov    $0x2b,%esi
    0.00 :   5d20a:  jmp    5d002 <__GI___printf_fp_l+0x26d2>
         : 3201  ./stdio-common/printf_fp.c:416 (discriminator 5)
    0.00 :   5d20f:  mov    $0x20,%esi
    0.00 :   5d214:  mov    %r12,%rdi
    0.00 :   5d217:  mov    %rcx,-0xd0(%rbp)
    0.00 :   5d21e:  call   838b0 <__woverflow>
    0.00 :   5d223:  mov    -0xd0(%rbp),%rcx
    0.00 :   5d22a:  cmp    $0xffffffff,%eax
    0.00 :   5d22d:  jne    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5d233:  jmp    5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5d238:  nopl   0x0(%rax,%rax,1)
         : 3211  ./stdio-common/printf_fp.c:613
    0.00 :   5d240:  mov    %rdi,%rsi
    0.00 :   5d243:  mov    %ecx,-0xd0(%rbp)
    0.00 :   5d249:  call   54d10 <__mpn_lshift>
         : 3215  ./stdio-common/printf_fp.c:614
    0.00 :   5d24e:  mov    -0x90(%rbp),%rdi
    0.00 :   5d255:  mov    -0xd0(%rbp),%ecx
    0.00 :   5d25b:  mov    -0x88(%rbp),%rdx
    0.00 :   5d262:  mov    %rdi,%rsi
    0.00 :   5d265:  call   54d10 <__mpn_lshift>
         : 3221  ./stdio-common/printf_fp.c:615
    0.00 :   5d26a:  test   %rax,%rax
    0.00 :   5d26d:  je     5b348 <__GI___printf_fp_l+0xa18>
         : 3224  ./stdio-common/printf_fp.c:616
    0.00 :   5d273:  mov    -0x88(%rbp),%rdx
    0.00 :   5d27a:  lea    0x1(%rdx),%rcx
    0.00 :   5d27e:  mov    %rcx,-0x88(%rbp)
    0.00 :   5d285:  mov    -0x90(%rbp),%rcx
    0.00 :   5d28c:  mov    %rax,(%rcx,%rdx,8)
    0.00 :   5d290:  jmp    5b348 <__GI___printf_fp_l+0xa18>
    0.00 :   5d295:  mov    %r8,-0xf0(%rbp)
    0.00 :   5d29c:  mov    %r9d,-0xe8(%rbp)
         : 3233  IO_validate_vtable():
         : 3234  ./stdio-common/../libio/libioP.h:946
    0.00 :   5d2a3:  call   89ef0 <_IO_vtable_check>
         : 3236  __GI___printf_fp_l():
         : 3237  ./stdio-common/printf_fp.c:1254
    0.00 :   5d2a8:  mov    0x38(%rbx),%rax
    0.00 :   5d2ac:  movq   $0x0,-0xe0(%rbp)
    0.00 :   5d2b7:  mov    -0xe8(%rbp),%r9d
    0.00 :   5d2be:  mov    -0xf0(%rbp),%r8
    0.00 :   5d2c5:  jmp    5bf97 <__GI___printf_fp_l+0x1667>
    0.00 :   5d2ca:  mov    %r9d,-0xe0(%rbp)
         : 3244  ./stdio-common/printf_fp.c:1174 (discriminator 10)
    0.00 :   5d2d1:  mov    $0x2d,%esi
         : 3246  ./stdio-common/printf_fp.c:1178 (discriminator 10)
    0.00 :   5d2d6:  mov    %r12,%rdi
    0.00 :   5d2d9:  call   8d800 <__overflow>
    0.00 :   5d2de:  mov    -0xe0(%rbp),%r9d
    0.00 :   5d2e5:  cmp    $0xffffffff,%eax
    0.00 :   5d2e8:  sete   %al
    0.00 :   5d2eb:  jmp    5b6e4 <__GI___printf_fp_l+0xdb4>
    0.00 :   5d2f0:  mov    %r9d,-0xe8(%rbp)
         : 3254  IO_validate_vtable():
         : 3255  ./stdio-common/../libio/libioP.h:946
    0.00 :   5d2f7:  mov    %rdi,-0xf0(%rbp)
    0.00 :   5d2fe:  call   89ef0 <_IO_vtable_check>
         : 3258  __GI___printf_fp_l():
         : 3259  ./stdio-common/printf_fp.c:1254
    0.00 :   5d303:  mov    0x38(%rbx),%rax
    0.00 :   5d307:  mov    -0xe8(%rbp),%r9d
    0.00 :   5d30e:  mov    -0xf0(%rbp),%r8
    0.00 :   5d315:  jmp    5bf97 <__GI___printf_fp_l+0x1667>
    0.00 :   5d31a:  mov    %r9d,-0xe0(%rbp)
         : 3265  ./stdio-common/printf_fp.c:1176 (discriminator 5)
    0.00 :   5d321:  mov    $0x2b,%esi
    0.00 :   5d326:  jmp    5b6cf <__GI___printf_fp_l+0xd9f>
         : 3268  ./stdio-common/printf_fp.c:748
    0.00 :   5d32b:  movslq %edi,%r13
         : 3270  ./stdio-common/printf_fp.c:745
    0.00 :   5d32e:  mov    %r14,%r10
         : 3272  ./stdio-common/printf_fp.c:748
    0.00 :   5d331:  sub    %r13,%r8
    0.00 :   5d334:  jmp    5d1b3 <__GI___printf_fp_l+0x2883>
         : 3275  ./stdio-common/printf_fp.c:1059
    0.00 :   5d339:  mov    -0xc0(%rbp),%esi
         : 3277  ./stdio-common/printf_fp.c:1060
    0.00 :   5d33f:  movl   $0x31,(%rax)
         : 3279  ./stdio-common/printf_fp.c:1059
    0.00 :   5d345:  mov    %esi,0x4(%rax)
         : 3281  ./stdio-common/printf_fp.c:1062
    0.00 :   5d348:  mov    -0xb8(%rbp),%rax
    0.00 :   5d34f:  testb  $0x8,0xc(%rax)
    0.00 :   5d353:  jne    5d35d <__GI___printf_fp_l+0x2a2d>
    0.00 :   5d355:  test   %ebx,%ebx
    0.00 :   5d357:  je     5d486 <__GI___printf_fp_l+0x2b56>
         : 3287  ./stdio-common/printf_fp.c:1065
    0.00 :   5d35d:  movslq -0x134(%rbp),%rax
    0.00 :   5d364:  mov    -0x130(%rbp),%rdi
    0.00 :   5d36b:  movl   $0x30,0x8(%rdi,%rax,4)
         : 3291  ./stdio-common/printf_fp.c:1069
    0.00 :   5d373:  lea    0x1(%rbx,%rax,1),%ebx
    0.00 :   5d377:  mov    %rdi,%r14
         : 3294  ./stdio-common/printf_fp.c:1074
    0.00 :   5d37a:  mov    -0xb8(%rbp),%rax
         : 3296  ./stdio-common/printf_fp.c:1072
    0.00 :   5d381:  addl   $0x1,-0x98(%rbp)
         : 3298  ./stdio-common/printf_fp.c:1074
    0.00 :   5d388:  movslq 0x8(%rax),%rsi
    0.00 :   5d38c:  mov    0x1bca65(%rip),%rax        # 219df8 <_DYNAMIC+0x238>
    0.00 :   5d393:  mov    %fs:(%rax),%rax
         : 3302  ./stdio-common/printf_fp.c:1070
    0.00 :   5d397:  movl   $0x1,-0x134(%rbp)
         : 3304  ./stdio-common/printf_fp.c:1074
    0.00 :   5d3a1:  movzwl (%rax,%rsi,2),%eax
    0.00 :   5d3a5:  and    $0x100,%ax
    0.00 :   5d3a9:  cmp    $0x1,%ax
    0.00 :   5d3ad:  sbb    %eax,%eax
    0.00 :   5d3af:  and    $0x20,%eax
    0.00 :   5d3b2:  add    $0x45,%eax
    0.00 :   5d3b5:  mov    %eax,-0x9c(%rbp)
    0.00 :   5d3bb:  jmp    5c971 <__GI___printf_fp_l+0x2041>
         : 3313  ./stdio-common/printf_fp.c:579
    0.00 :   5d3c0:  test   %esi,%esi
    0.00 :   5d3c2:  je     5b348 <__GI___printf_fp_l+0xa18>
         : 3316  ./stdio-common/printf_fp.c:596
    0.00 :   5d3c8:  mov    -0x90(%rbp),%rsi
         : 3318  ./stdio-common/printf_fp.c:595
    0.00 :   5d3cf:  tzcnt  %rax,%rax
    0.00 :   5d3d4:  mov    %eax,%r8d
         : 3321  ./stdio-common/printf_fp.c:596
    0.00 :   5d3d7:  mov    (%rsi),%r13
    0.00 :   5d3da:  test   %r13,%r13
    0.00 :   5d3dd:  je     5d498 <__GI___printf_fp_l+0x2b68>
         : 3325  ./stdio-common/printf_fp.c:599
    0.00 :   5d3e3:  xor    %r8d,%r8d
         : 3327  ./stdio-common/printf_fp.c:608
    0.00 :   5d3e6:  mov    $0x40,%r15d
         : 3329  ./stdio-common/printf_fp.c:573
    0.00 :   5d3ec:  mov    %rdi,%rsi
         : 3331  ./stdio-common/printf_fp.c:599
    0.00 :   5d3ef:  tzcnt  %r13,%r8
         : 3333  ./stdio-common/printf_fp.c:600
    0.00 :   5d3f4:  cmp    %r8d,%eax
    0.00 :   5d3f7:  cmovle %eax,%r8d
         : 3336  ./stdio-common/printf_fp.c:608
    0.00 :   5d3fb:  sub    %ecx,%r15d
         : 3338  ./stdio-common/printf_fp.c:573
    0.00 :   5d3fe:  xor    %r13d,%r13d
    0.00 :   5d401:  jmp    5cf3e <__GI___printf_fp_l+0x260e>
         : 3341  ./stdio-common/printf_fp.c:416 (discriminator 10)
    0.00 :   5d406:  mov    $0x20,%esi
    0.00 :   5d40b:  mov    %r12,%rdi
    0.00 :   5d40e:  mov    %rcx,-0xd0(%rbp)
    0.00 :   5d415:  call   8d800 <__overflow>
    0.00 :   5d41a:  mov    -0xd0(%rbp),%rcx
    0.00 :   5d421:  cmp    $0xffffffff,%eax
    0.00 :   5d424:  jne    5ae04 <__GI___printf_fp_l+0x4d4>
    0.00 :   5d42a:  jmp    5b702 <__GI___printf_fp_l+0xdd2>
    0.00 :   5d42f:  nop
         : 3351  ./stdio-common/printf_fp.c:1254
    0.00 :   5d430:  movq   $0x0,-0xe0(%rbp)
    0.00 :   5d43b:  mov    %r9d,%r13d
    0.00 :   5d43e:  jmp    5bfcb <__GI___printf_fp_l+0x169b>
         : 3355  ./stdio-common/printf_fp.c:1269 (discriminator 5)
    0.00 :   5d443:  mov    -0x14c(%rbp),%r11d
    0.00 :   5d44a:  test   %r11d,%r11d
    0.00 :   5d44d:  jne    5b702 <__GI___printf_fp_l+0xdd2>
         : 3359  ./stdio-common/printf_fp.c:1269 (discriminator 7)
    0.00 :   5d453:  mov    -0xe0(%rbp),%rdi
    0.00 :   5d45a:  call   28370 <free@plt>
    0.00 :   5d45f:  jmp    5b6f6 <__GI___printf_fp_l+0xdc6>
    0.00 :   5d464:  mov    %r9d,-0xe0(%rbp)
         : 3364  ./stdio-common/printf_fp.c:1176 (discriminator 10)
    0.00 :   5d46b:  mov    $0x2b,%esi
    0.00 :   5d470:  jmp    5d2d6 <__GI___printf_fp_l+0x29a6>
    0.00 :   5d475:  mov    %r9d,-0xe0(%rbp)
         : 3368  ./stdio-common/printf_fp.c:1178 (discriminator 5)
    0.00 :   5d47c:  mov    $0x20,%esi
    0.00 :   5d481:  jmp    5b6cf <__GI___printf_fp_l+0xd9f>
    0.00 :   5d486:  mov    -0x128(%rbp),%ebx
    0.00 :   5d48c:  mov    -0x130(%rbp),%r14
    0.00 :   5d493:  jmp    5d37a <__GI___printf_fp_l+0x2a4a>
         : 3374  ./stdio-common/printf_fp.c:608
    0.00 :   5d498:  mov    $0x40,%r15d
         : 3376  ./stdio-common/printf_fp.c:573
    0.00 :   5d49e:  mov    %rdi,%rsi
         : 3378  ./stdio-common/printf_fp.c:608
    0.00 :   5d4a1:  sub    %ecx,%r15d
    0.00 :   5d4a4:  jmp    5cf3e <__GI___printf_fp_l+0x260e>
    0.00 :   5d4a9:  mov    %r9d,-0xe0(%rbp)
         : 3382  ./stdio-common/printf_fp.c:1178 (discriminator 10)
    0.00 :   5d4b0:  mov    $0x20,%esi
    0.00 :   5d4b5:  jmp    5d2d6 <__GI___printf_fp_l+0x29a6>
         : 3385  ./stdio-common/printf_fp.c:1272
    0.00 :   5d4ba:  call   136550 <__stack_chk_fail>
         : 3387  ./stdio-common/printf_fp.c:1129
    0.00 :   5d4bf:  mov    $0x6,%edx
    0.00 :   5d4c4:  lea    0x185575(%rip),%rsi        # 1e2a40 <default_rwlockattr+0x368>
    0.00 :   5d4cb:  mov    %r14,%rdi
    0.00 :   5d4ce:  call   c5ae0 <wmemcpy>
         : 3392  ./stdio-common/printf_fp.c:1130
    0.00 :   5d4d3:  mov    -0xc0(%rbp),%eax
    0.00 :   5d4d9:  mov    %eax,0x4(%r14)
         : 3395  ./stdio-common/printf_fp.c:1131
    0.00 :   5d4dd:  lea    0x8(%r14),%rax
    0.00 :   5d4e1:  cmp    %r15,%rax
    0.00 :   5d4e4:  jbe    5d4f9 <__GI___printf_fp_l+0x2bc9>
         : 3399  ./stdio-common/printf_fp.c:1137
    0.00 :   5d4e6:  add    $0x14,%r15
    0.00 :   5d4ea:  jmp    5bcb3 <__GI___printf_fp_l+0x1383>
         : 3402  ./stdio-common/printf_fp.c:745
    0.00 :   5d4ef:  xor    %r13d,%r13d
    0.00 :   5d4f2:  xor    %edi,%edi
    0.00 :   5d4f4:  jmp    5c657 <__GI___printf_fp_l+0x1d27>
         : 3406  ./stdio-common/printf_fp.c:1133
    0.00 :   5d4f9:  mov    %r15,%rdx
    0.00 :   5d4fc:  lea    0x18(%r14),%rdi
    0.00 :   5d500:  mov    $0x30,%esi
         : 3410  ./stdio-common/printf_fp.c:1134
    0.00 :   5d505:  add    $0x10,%r15
         : 3412  ./stdio-common/printf_fp.c:1133
    0.00 :   5d509:  sub    %rax,%rdx
    0.00 :   5d50c:  sar    $0x2,%rdx
    0.00 :   5d510:  call   283f0 <*ABS*+0xc5b00@plt>
         : 3416  ./stdio-common/printf_fp.c:1134
    0.00 :   5d515:  jmp    5bcb3 <__GI___printf_fp_l+0x1383>
    0.00 :   5d51a:  jmp    28961 <__GI___printf_fp_l.cold>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000a6520 <__libc_calloc>:
         : 6     __libc_calloc():
         : 7     ./malloc/malloc.c:3624
    0.00 :   a6520:  endbr64
    0.00 :   a6524:  push   %r13
         : 10    ./malloc/malloc.c:3634
    0.00 :   a6526:  mov    %rdi,%rax
         : 12    ./malloc/malloc.c:3624
    0.00 :   a6529:  push   %r12
    0.00 :   a652b:  push   %rbp
    0.00 :   a652c:  push   %rbx
    0.00 :   a652d:  sub    $0x18,%rsp
         : 17    ./malloc/malloc.c:3634
    0.00 :   a6531:  mul    %rsi
    0.00 :   a6534:  mov    %rax,%r12
    0.00 :   a6537:  seto   %al
    0.00 :   a653a:  test   %r12,%r12
    0.00 :   a653d:  js     a67d8 <__libc_calloc+0x2b8>
    0.00 :   a6543:  movzbl %al,%eax
    0.00 :   a6546:  test   %rax,%rax
    0.00 :   a6549:  jne    a67d8 <__libc_calloc+0x2b8>
         : 26    ./malloc/malloc.c:3642
    0.00 :   a654f:  cmpb   $0x0,0x17af92(%rip)        # 2214e8 <__malloc_initialized>
    0.00 :   a6556:  je     a6728 <__libc_calloc+0x208>
         : 29    ./malloc/malloc.c:3645
    0.00 :   a655c:  mov    0x173845(%rip),%rax        # 219da8 <_DYNAMIC+0x1e8>
    0.00 :   a6563:  cmpq   $0x0,%fs:(%rax)
    0.00 :   a6568:  je     a67f8 <__libc_calloc+0x2d8>
         : 33    ./malloc/malloc.c:3647 (discriminator 4)
    0.00 :   a656e:  mov    %fs:0x18,%eax
    0.00 :   a6576:  test   %eax,%eax
    0.00 :   a6578:  je     a6738 <__libc_calloc+0x218>
         : 37    ./malloc/malloc.c:3650
    0.00 :   a657e:  mov    0x17381b(%rip),%rax        # 219da0 <_DYNAMIC+0x1e0>
    0.00 :   a6585:  mov    %fs:(%rax),%r13
    0.00 :   a6589:  test   %r13,%r13
    0.00 :   a658c:  je     a6790 <__libc_calloc+0x270>
         : 42    ./malloc/malloc.c:3650 (discriminator 1)
    0.00 :   a6592:  xor    %eax,%eax
    0.00 :   a6594:  mov    $0x1,%edx
    0.00 :   a6599:  lock cmpxchg %edx,0x0(%r13)
    0.00 :   a659f:  jne    a6818 <__libc_calloc+0x2f8>
         : 47    ./malloc/malloc.c:3657
    0.00 :   a65a5:  mov    0x60(%r13),%rbx
         : 49    ./malloc/malloc.c:3665
    0.00 :   a65a9:  lea    0x1746d0(%rip),%rax        # 21ac80 <main_arena>
         : 51    ./malloc/malloc.c:3658
    0.00 :   a65b0:  mov    0x8(%rbx),%rbp
    0.00 :   a65b4:  and    $0xfffffffffffffff8,%rbp
         : 54    ./malloc/malloc.c:3665
    0.00 :   a65b8:  cmp    %rax,%r13
    0.00 :   a65bb:  je     a65ee <__libc_calloc+0xce>
         : 57    heap_max_size():
         : 58    ./malloc/arena.c:61
    0.00 :   a65bd:  mov    0x173dcc(%rip),%rax        # 21a390 <mp_+0x30>
         : 60    heap_for_ptr():
         : 61    ./malloc/arena.c:156
    0.00 :   a65c4:  lea    0x0(,%rax,4),%rcx
    0.00 :   a65cc:  neg    %rcx
    0.00 :   a65cf:  test   %rax,%rax
    0.00 :   a65d2:  mov    $0xfffffffffc000000,%rax
    0.00 :   a65d9:  cmove  %rax,%rcx
    0.00 :   a65dd:  and    %rbx,%rcx
         : 68    __libc_calloc():
         : 69    ./malloc/malloc.c:3668
    0.00 :   a65e0:  add    0x18(%rcx),%rcx
    0.00 :   a65e4:  sub    %rbx,%rcx
    0.00 :   a65e7:  cmp    %rcx,%rbp
    0.00 :   a65ea:  cmovb  %rcx,%rbp
         : 74    ./malloc/malloc.c:3679
    0.00 :   a65ee:  mov    %r12,%rsi
    0.00 :   a65f1:  mov    %r13,%rdi
    0.00 :   a65f4:  call   a39b0 <_int_malloc>
         : 78    ./malloc/malloc.c:3681
    0.00 :   a65f9:  test   %rax,%rax
    0.00 :   a65fc:  je     a6620 <__libc_calloc+0x100>
         : 81    ./malloc/malloc.c:3681 (discriminator 1)
  100.00 :   a65fe:  mov    -0x8(%rax),%rdx
    0.00 :   a6602:  test   $0x2,%dl
    0.00 :   a6605:  jne    a6620 <__libc_calloc+0x100>
         : 85    arena_for_chunk():
         : 86    ./malloc/arena.c:162 (discriminator 2)
    0.00 :   a6607:  and    $0x4,%edx
    0.00 :   a660a:  lea    0x17466f(%rip),%rcx        # 21ac80 <main_arena>
    0.00 :   a6611:  jne    a6758 <__libc_calloc+0x238>
         : 90    __libc_calloc():
         : 91    ./malloc/malloc.c:3681
    0.00 :   a6617:  cmp    %r13,%rcx
    0.00 :   a661a:  jne    a6844 <__libc_calloc+0x324>
         : 94    ./malloc/malloc.c:3684 (discriminator 4)
    0.00 :   a6620:  mov    %fs:0x18,%edx
    0.00 :   a6628:  test   %edx,%edx
    0.00 :   a662a:  je     a6640 <__libc_calloc+0x120>
         : 98    ./malloc/malloc.c:3686
    0.00 :   a662c:  test   %rax,%rax
    0.00 :   a662f:  jne    a66f2 <__libc_calloc+0x1d2>
    0.00 :   a6635:  test   %r13,%r13
    0.00 :   a6638:  jne    a66d8 <__libc_calloc+0x1b8>
    0.00 :   a663e:  xchg   %ax,%ax
         : 104   ./malloc/malloc.c:3698
    0.00 :   a6640:  test   %rax,%rax
    0.00 :   a6643:  je     a665f <__libc_calloc+0x13f>
         : 107   ./malloc/malloc.c:3709
    0.00 :   a6645:  mov    -0x8(%rax),%rdx
         : 109   ./malloc/malloc.c:3714
    0.00 :   a6649:  mov    0x17aead(%rip),%ecx        # 2214fc <perturb_byte>
         : 111   ./malloc/malloc.c:3712
    0.00 :   a664f:  test   $0x2,%dl
    0.00 :   a6652:  je     a6670 <__libc_calloc+0x150>
         : 114   ./malloc/malloc.c:3715
    0.00 :   a6654:  mov    %r12,%rdx
         : 116   ./malloc/malloc.c:3714
    0.00 :   a6657:  test   %ecx,%ecx
    0.00 :   a6659:  jne    a67c0 <__libc_calloc+0x2a0>
         : 119   ./malloc/malloc.c:3762
    0.00 :   a665f:  add    $0x18,%rsp
    0.00 :   a6663:  pop    %rbx
    0.00 :   a6664:  pop    %rbp
    0.00 :   a6665:  pop    %r12
    0.00 :   a6667:  pop    %r13
    0.00 :   a6669:  ret
    0.00 :   a666a:  nopw   0x0(%rax,%rax,1)
         : 127   ./malloc/malloc.c:3709
    0.00 :   a6670:  and    $0xfffffffffffffff8,%rdx
         : 129   ./malloc/malloc.c:3721
    0.00 :   a6674:  test   %ecx,%ecx
    0.00 :   a6676:  jne    a668d <__libc_calloc+0x16d>
    0.00 :   a6678:  cmp    %rdx,%rbp
    0.00 :   a667b:  mov    %rdx,%rsi
         : 134   ./malloc/malloc.c:3701 (discriminator 1)
    0.00 :   a667e:  lea    -0x10(%rax),%rcx
    0.00 :   a6682:  cmovbe %rbp,%rdx
    0.00 :   a6686:  cmp    %rcx,%rbx
    0.00 :   a6689:  cmovne %rsi,%rdx
         : 139   ./malloc/malloc.c:3732
    0.00 :   a668d:  sub    $0x8,%rdx
         : 141   ./malloc/malloc.c:3734
    0.00 :   a6691:  cmp    $0x17,%rdx
    0.00 :   a6695:  jbe    a6825 <__libc_calloc+0x305>
         : 144   ./malloc/malloc.c:3736
    0.00 :   a669b:  cmp    $0x4f,%rdx
    0.00 :   a669f:  ja     a67c0 <__libc_calloc+0x2a0>
         : 147   ./malloc/malloc.c:3741
    0.00 :   a66a5:  pxor   %xmm0,%xmm0
         : 149   ./malloc/malloc.c:3743
    0.00 :   a66a9:  movq   $0x0,0x10(%rax)
         : 151   ./malloc/malloc.c:3741
    0.00 :   a66b1:  movups %xmm0,(%rax)
         : 153   ./malloc/malloc.c:3744
    0.00 :   a66b4:  cmp    $0x27,%rdx
    0.00 :   a66b8:  jbe    a665f <__libc_calloc+0x13f>
         : 156   ./malloc/malloc.c:3746
    0.00 :   a66ba:  movups %xmm0,0x18(%rax)
         : 158   ./malloc/malloc.c:3748
    0.00 :   a66be:  cmp    $0x37,%rdx
    0.00 :   a66c2:  jbe    a665f <__libc_calloc+0x13f>
         : 161   ./malloc/malloc.c:3750
    0.00 :   a66c4:  movups %xmm0,0x28(%rax)
         : 163   ./malloc/malloc.c:3752
    0.00 :   a66c8:  cmp    $0x47,%rdx
    0.00 :   a66cc:  jbe    a665f <__libc_calloc+0x13f>
         : 166   ./malloc/malloc.c:3754
    0.00 :   a66ce:  movups %xmm0,0x38(%rax)
    0.00 :   a66d2:  jmp    a665f <__libc_calloc+0x13f>
    0.00 :   a66d4:  nopl   0x0(%rax)
         : 170   ./malloc/malloc.c:3688
    0.00 :   a66d8:  nop
         : 172   ./malloc/malloc.c:3689
    0.00 :   a66d9:  mov    %r13,%rdi
    0.00 :   a66dc:  mov    %r12,%rsi
    0.00 :   a66df:  call   a23c0 <arena_get_retry>
         : 176   ./malloc/malloc.c:3690
    0.00 :   a66e4:  mov    %r12,%rsi
    0.00 :   a66e7:  mov    %rax,%rdi
         : 179   ./malloc/malloc.c:3689
    0.00 :   a66ea:  mov    %rax,%r13
         : 181   ./malloc/malloc.c:3690
    0.00 :   a66ed:  call   a39b0 <_int_malloc>
         : 183   ./malloc/malloc.c:3693
    0.00 :   a66f2:  test   %r13,%r13
    0.00 :   a66f5:  je     a6640 <__libc_calloc+0x120>
         : 186   ./malloc/malloc.c:3694
    0.00 :   a66fb:  xor    %edx,%edx
    0.00 :   a66fd:  xchg   %edx,0x0(%r13)
    0.00 :   a6701:  cmp    $0x1,%edx
    0.00 :   a6704:  jle    a6640 <__libc_calloc+0x120>
         : 191   ./malloc/malloc.c:3694 (discriminator 15)
    0.00 :   a670a:  mov    %r13,%rdi
    0.00 :   a670d:  mov    %rax,0x8(%rsp)
    0.00 :   a6712:  call   91300 <__lll_lock_wake_private>
    0.00 :   a6717:  mov    0x8(%rsp),%rax
    0.00 :   a671c:  jmp    a6640 <__libc_calloc+0x120>
    0.00 :   a6721:  nopl   0x0(%rax)
         : 198   ptmalloc_init():
         : 199   ./malloc/arena.c:315
    0.00 :   a6728:  call   a19b0 <ptmalloc_init.part.0>
    0.00 :   a672d:  jmp    a655c <__libc_calloc+0x3c>
    0.00 :   a6732:  nopw   0x0(%rax,%rax,1)
         : 203   __libc_calloc():
         : 204   ./malloc/malloc.c:3657
    0.00 :   a6738:  mov    0x1745a1(%rip),%rbx        # 21ace0 <main_arena+0x60>
         : 206   ./malloc/malloc.c:3658
    0.00 :   a673f:  lea    0x17453a(%rip),%r13        # 21ac80 <main_arena>
    0.00 :   a6746:  mov    0x8(%rbx),%rbp
    0.00 :   a674a:  and    $0xfffffffffffffff8,%rbp
         : 210   ./malloc/malloc.c:3665
    0.00 :   a674e:  jmp    a65ee <__libc_calloc+0xce>
    0.00 :   a6753:  nopl   0x0(%rax,%rax,1)
         : 213   heap_max_size():
         : 214   ./malloc/arena.c:61
    0.00 :   a6758:  mov    0x173c31(%rip),%rcx        # 21a390 <mp_+0x30>
         : 216   heap_for_ptr():
         : 217   ./malloc/arena.c:156
    0.00 :   a675f:  lea    0x0(,%rcx,4),%rdx
    0.00 :   a6767:  neg    %rdx
    0.00 :   a676a:  test   %rcx,%rcx
    0.00 :   a676d:  mov    $0xfffffffffc000000,%rcx
    0.00 :   a6774:  cmove  %rcx,%rdx
         : 223   __libc_calloc():
         : 224   ./malloc/malloc.c:3681
    0.00 :   a6778:  lea    -0x10(%rax),%rcx
         : 226   arena_for_chunk():
         : 227   ./malloc/arena.c:162
    0.00 :   a677c:  and    %rcx,%rdx
    0.00 :   a677f:  mov    (%rdx),%rcx
    0.00 :   a6782:  jmp    a6617 <__libc_calloc+0xf7>
    0.00 :   a6787:  nopw   0x0(%rax,%rax,1)
         : 232   arena_get2():
         : 233   ./malloc/arena.c:930
    0.00 :   a6790:  call   a1090 <get_free_list>
    0.00 :   a6795:  mov    %rax,%r13
         : 236   ./malloc/arena.c:931
    0.00 :   a6798:  test   %rax,%rax
    0.00 :   a679b:  jne    a65a5 <__libc_calloc+0x85>
    0.00 :   a67a1:  xor    %esi,%esi
    0.00 :   a67a3:  mov    %r12,%rdi
    0.00 :   a67a6:  call   a1ee0 <arena_get2.part.0>
    0.00 :   a67ab:  mov    %rax,%r13
         : 243   __libc_calloc():
         : 244   ./malloc/malloc.c:3652
    0.00 :   a67ae:  test   %rax,%rax
    0.00 :   a67b1:  jne    a65a5 <__libc_calloc+0x85>
         : 247   ./malloc/malloc.c:3676
    0.00 :   a67b7:  xor    %ebx,%ebx
         : 249   ./malloc/malloc.c:3677
    0.00 :   a67b9:  xor    %ebp,%ebp
    0.00 :   a67bb:  jmp    a65ee <__libc_calloc+0xce>
         : 252   ./malloc/malloc.c:3762
    0.00 :   a67c0:  add    $0x18,%rsp
         : 254   ./malloc/malloc.c:3737
    0.00 :   a67c4:  xor    %esi,%esi
    0.00 :   a67c6:  mov    %rax,%rdi
         : 257   ./malloc/malloc.c:3762
    0.00 :   a67c9:  pop    %rbx
    0.00 :   a67ca:  pop    %rbp
    0.00 :   a67cb:  pop    %r12
    0.00 :   a67cd:  pop    %r13
         : 262   ./malloc/malloc.c:3737
    0.00 :   a67cf:  jmp    28670 <*ABS*+0xa96d0@plt>
    0.00 :   a67d4:  nopl   0x0(%rax)
         : 265   ./malloc/malloc.c:3636
    0.00 :   a67d8:  mov    0x173631(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
    0.00 :   a67df:  movl   $0xc,%fs:(%rax)
         : 268   ./malloc/malloc.c:3762
    0.00 :   a67e6:  add    $0x18,%rsp
         : 270   ./malloc/malloc.c:3637
    0.00 :   a67ea:  xor    %eax,%eax
         : 272   ./malloc/malloc.c:3762
    0.00 :   a67ec:  pop    %rbx
    0.00 :   a67ed:  pop    %rbp
    0.00 :   a67ee:  pop    %r12
    0.00 :   a67f0:  pop    %r13
    0.00 :   a67f2:  ret
    0.00 :   a67f3:  nopl   0x0(%rax,%rax,1)
         : 279   tcache_init():
         : 280   ./malloc/malloc.c:3241
    0.00 :   a67f8:  mov    0x1735b1(%rip),%rax        # 219db0 <_DYNAMIC+0x1f0>
    0.00 :   a67ff:  cmpb   $0x0,%fs:(%rax)
    0.00 :   a6803:  jne    a656e <__libc_calloc+0x4e>
    0.00 :   a6809:  call   a4990 <tcache_init.part.0>
    0.00 :   a680e:  jmp    a656e <__libc_calloc+0x4e>
    0.00 :   a6813:  nopl   0x0(%rax,%rax,1)
         : 287   __libc_calloc():
         : 288   ./malloc/malloc.c:3650 (discriminator 5)
    0.00 :   a6818:  mov    %r13,%rdi
    0.00 :   a681b:  call   91230 <__lll_lock_wait_private>
    0.00 :   a6820:  jmp    a65a5 <__libc_calloc+0x85>
         : 292   ./malloc/malloc.c:3734 (discriminator 1)
    0.00 :   a6825:  lea    0x13892c(%rip),%rcx        # 1df158 <__PRETTY_FUNCTION__.19>
    0.00 :   a682c:  mov    $0xe96,%edx
    0.00 :   a6831:  lea    0x132e54(%rip),%rsi        # 1d968c <null+0xe11>
    0.00 :   a6838:  lea    0x133082(%rip),%rdi        # 1d98c1 <null+0x1046>
    0.00 :   a683f:  call   a0e70 <__malloc_assert>
         : 298   ./malloc/malloc.c:3681 (discriminator 3)
    0.00 :   a6844:  lea    0x13890d(%rip),%rcx        # 1df158 <__PRETTY_FUNCTION__.19>
    0.00 :   a684b:  mov    $0xe61,%edx
    0.00 :   a6850:  lea    0x132e35(%rip),%rsi        # 1d968c <null+0xe11>
    0.00 :   a6857:  lea    0x13883a(%rip),%rdi        # 1df098 <__PRETTY_FUNCTION__.1+0xf58>
    0.00 :   a685e:  call   a0e70 <__malloc_assert>
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
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
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
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
  100.00 :   75500:  cmp    $0xffffffff,%eax
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
    0.00 :   75595:  jmp    75354 <__vfprintf_internal+0x324>
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
    0.00 :   760a0:  endbr64
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
 Percent |	Source code & Disassembly of libc.so.6 for cpu-clock:pppH (1 samples, percent: local period)
------------------------------------------------------------------------------------------------------------
         :
         :
         :
         : 3     Disassembly of section .text:
         :
         : 5     00000000000e5650 <__clock_gettime>:
         : 6     __GI___clock_gettime():
         : 7     ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:30
    0.00 :   e5650:  endbr64
         : 9     ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:38
    0.00 :   e5654:  mov    0x13486d(%rip),%rax        # 219ec8 <_rtld_global_ro@GLIBC_PRIVATE>
    0.00 :   e565b:  mov    0x2f8(%rax),%rax
         : 12    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:40
    0.00 :   e5662:  test   %rax,%rax
    0.00 :   e5665:  je     e5680 <__clock_gettime+0x30>
         : 15    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:30
    0.00 :   e5667:  sub    $0x8,%rsp
         : 17    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:42
    0.00 :   e566b:  call   *%rax
         : 19    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:43
  100.00 :   e566d:  test   %eax,%eax
    0.00 :   e566f:  jne    e56c8 <__clock_gettime+0x78>
         : 22    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:44
    0.00 :   e5671:  xor    %eax,%eax
         : 24    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:86
    0.00 :   e5673:  add    $0x8,%rsp
    0.00 :   e5677:  ret
    0.00 :   e5678:  nopl   0x0(%rax,%rax,1)
         : 28    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:68
    0.00 :   e5680:  mov    $0xe4,%eax
    0.00 :   e5685:  syscall
         : 31    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:69
    0.00 :   e5687:  test   %eax,%eax
    0.00 :   e5689:  je     e56a8 <__clock_gettime+0x58>
         : 34    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:71
    0.00 :   e568b:  cmp    $0xffffffda,%eax
    0.00 :   e568e:  je     e56b0 <__clock_gettime+0x60>
         : 37    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:72
    0.00 :   e5690:  mov    0x134779(%rip),%rdx        # 219e10 <_DYNAMIC+0x250>
    0.00 :   e5697:  neg    %eax
    0.00 :   e5699:  mov    %eax,%fs:(%rdx)
    0.00 :   e569c:  mov    $0xffffffff,%eax
    0.00 :   e56a1:  ret
    0.00 :   e56a2:  nopw   0x0(%rax,%rax,1)
         : 44    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:44
    0.00 :   e56a8:  xor    %eax,%eax
         : 46    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:86
    0.00 :   e56aa:  ret
    0.00 :   e56ab:  nopl   0x0(%rax,%rax,1)
         : 49    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:85
    0.00 :   e56b0:  mov    0x134759(%rip),%rax        # 219e10 <_DYNAMIC+0x250>
    0.00 :   e56b7:  movl   $0x26,%fs:(%rax)
    0.00 :   e56be:  mov    $0xffffffff,%eax
    0.00 :   e56c3:  ret
    0.00 :   e56c4:  nopl   0x0(%rax)
         : 55    ./time/../sysdeps/unix/sysv/linux/clock_gettime.c:45
    0.00 :   e56c8:  mov    0x134741(%rip),%rdx        # 219e10 <_DYNAMIC+0x250>
    0.00 :   e56cf:  neg    %eax
    0.00 :   e56d1:  mov    %eax,%fs:(%rdx)
    0.00 :   e56d4:  mov    $0xffffffff,%eax
    0.00 :   e56d9:  jmp    e5673 <__clock_gettime+0x23>
