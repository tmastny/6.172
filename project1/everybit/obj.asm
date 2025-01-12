
everybit:     file format elf64-x86-64


Disassembly of section .init:

0000000000000b18 <_init>:
_init():
 b18:	f3 0f 1e fa          	endbr64 
 b1c:	48 83 ec 08          	sub    $0x8,%rsp
 b20:	48 8b 05 81 44 00 00 	mov    0x4481(%rip),%rax        # 4fa8 <__gmon_start__>
 b27:	48 85 c0             	test   %rax,%rax
 b2a:	74 02                	je     b2e <_init+0x16>
 b2c:	ff d0                	call   *%rax
 b2e:	48 83 c4 08          	add    $0x8,%rsp
 b32:	c3                   	ret    

Disassembly of section .plt:

0000000000000b40 <__cxa_finalize@plt-0x10>:
 b40:	ff 35 aa 44 00 00    	push   0x44aa(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
 b46:	ff 25 ac 44 00 00    	jmp    *0x44ac(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
 b4c:	90                   	nop
 b4d:	90                   	nop
 b4e:	90                   	nop
 b4f:	90                   	nop

0000000000000b50 <__cxa_finalize@plt>:
 b50:	ff 25 aa 44 00 00    	jmp    *0x44aa(%rip)        # 5000 <__cxa_finalize@GLIBC_2.2.5>
 b56:	68 00 00 00 00       	push   $0x0
 b5b:	e9 e0 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000b60 <__posix_getopt@plt>:
 b60:	ff 25 a2 44 00 00    	jmp    *0x44a2(%rip)        # 5008 <__posix_getopt@GLIBC_2.10>
 b66:	68 01 00 00 00       	push   $0x1
 b6b:	e9 d0 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000b70 <strtol@plt>:
 b70:	ff 25 9a 44 00 00    	jmp    *0x449a(%rip)        # 5010 <strtol@GLIBC_2.2.5>
 b76:	68 02 00 00 00       	push   $0x2
 b7b:	e9 c0 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000b80 <puts@plt>:
 b80:	ff 25 92 44 00 00    	jmp    *0x4492(%rip)        # 5018 <puts@GLIBC_2.2.5>
 b86:	68 03 00 00 00       	push   $0x3
 b8b:	e9 b0 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000b90 <printf@plt>:
 b90:	ff 25 8a 44 00 00    	jmp    *0x448a(%rip)        # 5020 <printf@GLIBC_2.2.5>
 b96:	68 04 00 00 00       	push   $0x4
 b9b:	e9 a0 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000ba0 <fprintf@plt>:
 ba0:	ff 25 82 44 00 00    	jmp    *0x4482(%rip)        # 5028 <fprintf@GLIBC_2.2.5>
 ba6:	68 05 00 00 00       	push   $0x5
 bab:	e9 90 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000bb0 <strlen@plt>:
 bb0:	ff 25 7a 44 00 00    	jmp    *0x447a(%rip)        # 5030 <strlen@GLIBC_2.2.5>
 bb6:	68 06 00 00 00       	push   $0x6
 bbb:	e9 80 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000bc0 <fwrite@plt>:
 bc0:	ff 25 72 44 00 00    	jmp    *0x4472(%rip)        # 5038 <fwrite@GLIBC_2.2.5>
 bc6:	68 07 00 00 00       	push   $0x7
 bcb:	e9 70 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000bd0 <fputc@plt>:
 bd0:	ff 25 6a 44 00 00    	jmp    *0x446a(%rip)        # 5040 <fputc@GLIBC_2.2.5>
 bd6:	68 08 00 00 00       	push   $0x8
 bdb:	e9 60 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000be0 <srand@plt>:
 be0:	ff 25 62 44 00 00    	jmp    *0x4462(%rip)        # 5048 <srand@GLIBC_2.2.5>
 be6:	68 09 00 00 00       	push   $0x9
 beb:	e9 50 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000bf0 <sprintf@plt>:
 bf0:	ff 25 5a 44 00 00    	jmp    *0x445a(%rip)        # 5050 <sprintf@GLIBC_2.2.5>
 bf6:	68 0a 00 00 00       	push   $0xa
 bfb:	e9 40 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000c00 <strtok@plt>:
 c00:	ff 25 52 44 00 00    	jmp    *0x4452(%rip)        # 5058 <strtok@GLIBC_2.2.5>
 c06:	68 0b 00 00 00       	push   $0xb
 c0b:	e9 30 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000c10 <strchr@plt>:
 c10:	ff 25 4a 44 00 00    	jmp    *0x444a(%rip)        # 5060 <strchr@GLIBC_2.2.5>
 c16:	68 0c 00 00 00       	push   $0xc
 c1b:	e9 20 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000c20 <fopen@plt>:
 c20:	ff 25 42 44 00 00    	jmp    *0x4442(%rip)        # 5068 <fopen@GLIBC_2.2.5>
 c26:	68 0d 00 00 00       	push   $0xd
 c2b:	e9 10 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000c30 <__getdelim@plt>:
 c30:	ff 25 3a 44 00 00    	jmp    *0x443a(%rip)        # 5070 <__getdelim@GLIBC_2.2.5>
 c36:	68 0e 00 00 00       	push   $0xe
 c3b:	e9 00 ff ff ff       	jmp    b40 <_init+0x28>

0000000000000c40 <free@plt>:
 c40:	ff 25 32 44 00 00    	jmp    *0x4432(%rip)        # 5078 <free@GLIBC_2.2.5>
 c46:	68 0f 00 00 00       	push   $0xf
 c4b:	e9 f0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000c50 <calloc@plt>:
 c50:	ff 25 2a 44 00 00    	jmp    *0x442a(%rip)        # 5080 <calloc@GLIBC_2.2.5>
 c56:	68 10 00 00 00       	push   $0x10
 c5b:	e9 e0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000c60 <malloc@plt>:
 c60:	ff 25 22 44 00 00    	jmp    *0x4422(%rip)        # 5088 <malloc@GLIBC_2.2.5>
 c66:	68 11 00 00 00       	push   $0x11
 c6b:	e9 d0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000c70 <rand@plt>:
 c70:	ff 25 1a 44 00 00    	jmp    *0x441a(%rip)        # 5090 <rand@GLIBC_2.2.5>
 c76:	68 12 00 00 00       	push   $0x12
 c7b:	e9 c0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000c80 <clock_gettime@plt>:
 c80:	ff 25 12 44 00 00    	jmp    *0x4412(%rip)        # 5098 <clock_gettime@GLIBC_2.17>
 c86:	68 13 00 00 00       	push   $0x13
 c8b:	e9 b0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000c90 <perror@plt>:
 c90:	ff 25 0a 44 00 00    	jmp    *0x440a(%rip)        # 50a0 <perror@GLIBC_2.2.5>
 c96:	68 14 00 00 00       	push   $0x14
 c9b:	e9 a0 fe ff ff       	jmp    b40 <_init+0x28>

0000000000000ca0 <exit@plt>:
 ca0:	ff 25 02 44 00 00    	jmp    *0x4402(%rip)        # 50a8 <exit@GLIBC_2.2.5>
 ca6:	68 15 00 00 00       	push   $0x15
 cab:	e9 90 fe ff ff       	jmp    b40 <_init+0x28>

Disassembly of section .text:

0000000000000cb0 <_start>:
_start():
     cb0:	f3 0f 1e fa          	endbr64 
     cb4:	31 ed                	xor    %ebp,%ebp
     cb6:	49 89 d1             	mov    %rdx,%r9
     cb9:	5e                   	pop    %rsi
     cba:	48 89 e2             	mov    %rsp,%rdx
     cbd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     cc1:	50                   	push   %rax
     cc2:	54                   	push   %rsp
     cc3:	45 31 c0             	xor    %r8d,%r8d
     cc6:	31 c9                	xor    %ecx,%ecx
     cc8:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # da0 <main>
     ccf:	ff 15 cb 42 00 00    	call   *0x42cb(%rip)        # 4fa0 <__libc_start_main@GLIBC_2.34>
     cd5:	f4                   	hlt    
     cd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cdd:	00 00 00 

0000000000000ce0 <deregister_tm_clones>:
deregister_tm_clones():
     ce0:	48 8d 3d d9 43 00 00 	lea    0x43d9(%rip),%rdi        # 50c0 <completed.0>
     ce7:	48 8d 05 d2 43 00 00 	lea    0x43d2(%rip),%rax        # 50c0 <completed.0>
     cee:	48 39 f8             	cmp    %rdi,%rax
     cf1:	74 15                	je     d08 <deregister_tm_clones+0x28>
     cf3:	48 8b 05 b6 42 00 00 	mov    0x42b6(%rip),%rax        # 4fb0 <_ITM_deregisterTMCloneTable>
     cfa:	48 85 c0             	test   %rax,%rax
     cfd:	74 09                	je     d08 <deregister_tm_clones+0x28>
     cff:	ff e0                	jmp    *%rax
     d01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     d08:	c3                   	ret    
     d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000d10 <register_tm_clones>:
register_tm_clones():
     d10:	48 8d 3d a9 43 00 00 	lea    0x43a9(%rip),%rdi        # 50c0 <completed.0>
     d17:	48 8d 35 a2 43 00 00 	lea    0x43a2(%rip),%rsi        # 50c0 <completed.0>
     d1e:	48 29 fe             	sub    %rdi,%rsi
     d21:	48 89 f0             	mov    %rsi,%rax
     d24:	48 c1 ee 3f          	shr    $0x3f,%rsi
     d28:	48 c1 f8 03          	sar    $0x3,%rax
     d2c:	48 01 c6             	add    %rax,%rsi
     d2f:	48 d1 fe             	sar    %rsi
     d32:	74 14                	je     d48 <register_tm_clones+0x38>
     d34:	48 8b 05 7d 42 00 00 	mov    0x427d(%rip),%rax        # 4fb8 <_ITM_registerTMCloneTable>
     d3b:	48 85 c0             	test   %rax,%rax
     d3e:	74 08                	je     d48 <register_tm_clones+0x38>
     d40:	ff e0                	jmp    *%rax
     d42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d48:	c3                   	ret    
     d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000d50 <__do_global_dtors_aux>:
__do_global_dtors_aux():
     d50:	f3 0f 1e fa          	endbr64 
     d54:	80 3d 65 43 00 00 00 	cmpb   $0x0,0x4365(%rip)        # 50c0 <completed.0>
     d5b:	75 2b                	jne    d88 <__do_global_dtors_aux+0x38>
     d5d:	55                   	push   %rbp
     d5e:	48 83 3d 5a 42 00 00 	cmpq   $0x0,0x425a(%rip)        # 4fc0 <__cxa_finalize@GLIBC_2.2.5>
     d65:	00 
     d66:	48 89 e5             	mov    %rsp,%rbp
     d69:	74 0c                	je     d77 <__do_global_dtors_aux+0x27>
     d6b:	48 8b 3d 46 43 00 00 	mov    0x4346(%rip),%rdi        # 50b8 <__dso_handle>
     d72:	e8 d9 fd ff ff       	call   b50 <__cxa_finalize@plt>
     d77:	e8 64 ff ff ff       	call   ce0 <deregister_tm_clones>
     d7c:	c6 05 3d 43 00 00 01 	movb   $0x1,0x433d(%rip)        # 50c0 <completed.0>
     d83:	5d                   	pop    %rbp
     d84:	c3                   	ret    
     d85:	0f 1f 00             	nopl   (%rax)
     d88:	c3                   	ret    
     d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000d90 <frame_dummy>:
frame_dummy():
     d90:	f3 0f 1e fa          	endbr64 
     d94:	e9 77 ff ff ff       	jmp    d10 <register_tm_clones>
     d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000da0 <main>:
main():
     da0:	55                   	push   %rbp
     da1:	41 57                	push   %r15
     da3:	41 56                	push   %r14
     da5:	41 55                	push   %r13
     da7:	41 54                	push   %r12
     da9:	53                   	push   %rbx
     daa:	50                   	push   %rax
     dab:	48 89 f3             	mov    %rsi,%rbx
     dae:	89 fd                	mov    %edi,%ebp
     db0:	48 8b 05 11 42 00 00 	mov    0x4211(%rip),%rax        # 4fc8 <opterr@GLIBC_2.2.5>
     db7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     dbd:	48 8d 15 60 1d 00 00 	lea    0x1d60(%rip),%rdx        # 2b24 <_IO_stdin_used+0x64>
     dc4:	e8 97 fd ff ff       	call   b60 <__posix_getopt@plt>
     dc9:	c1 e0 18             	shl    $0x18,%eax
     dcc:	3d 00 00 00 ff       	cmp    $0xff000000,%eax
     dd1:	0f 84 df 00 00 00    	je     eb6 <main+0x116>
     dd7:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
     ddd:	4c 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%r14        # 2b24 <_IO_stdin_used+0x64>
     de4:	4c 8d 2d 15 1d 00 00 	lea    0x1d15(%rip),%r13        # 2b00 <_IO_stdin_used+0x40>
     deb:	4c 8b 25 de 41 00 00 	mov    0x41de(%rip),%r12        # 4fd0 <optarg@GLIBC_2.2.5>
     df2:	eb 27                	jmp    e1b <main+0x7b>
     df4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     dfb:	00 00 00 
     dfe:	66 90                	xchg   %ax,%ax
     e00:	89 ef                	mov    %ebp,%edi
     e02:	48 89 de             	mov    %rbx,%rsi
     e05:	4c 89 f2             	mov    %r14,%rdx
     e08:	e8 53 fd ff ff       	call   b60 <__posix_getopt@plt>
     e0d:	c1 e0 18             	shl    $0x18,%eax
     e10:	3d 00 00 00 ff       	cmp    $0xff000000,%eax
     e15:	0f 84 9b 00 00 00    	je     eb6 <main+0x116>
     e1b:	c1 f8 18             	sar    $0x18,%eax
     e1e:	83 c0 94             	add    $0xffffff94,%eax
     e21:	83 f8 08             	cmp    $0x8,%eax
     e24:	77 da                	ja     e00 <main+0x60>
     e26:	49 63 44 85 00       	movslq 0x0(%r13,%rax,4),%rax
     e2b:	4c 01 e8             	add    %r13,%rax
     e2e:	ff e0                	jmp    *%rax
     e30:	49 8b 3c 24          	mov    (%r12),%rdi
     e34:	31 f6                	xor    %esi,%esi
     e36:	ba 0a 00 00 00       	mov    $0xa,%edx
     e3b:	e8 30 fd ff ff       	call   b70 <strtol@plt>
     e40:	49 89 c7             	mov    %rax,%r15
     e43:	eb bb                	jmp    e00 <main+0x60>
     e45:	48 8d 3d 76 1e 00 00 	lea    0x1e76(%rip),%rdi        # 2cc2 <_IO_stdin_used+0x202>
     e4c:	e8 2f fd ff ff       	call   b80 <puts@plt>
     e51:	f2 0f 10 05 6f 1c 00 	movsd  0x1c6f(%rip),%xmm0        # 2ac8 <_IO_stdin_used+0x8>
     e58:	00 
     e59:	eb 2a                	jmp    e85 <main+0xe5>
     e5b:	48 8d 3d 60 1e 00 00 	lea    0x1e60(%rip),%rdi        # 2cc2 <_IO_stdin_used+0x202>
     e62:	e8 19 fd ff ff       	call   b80 <puts@plt>
     e67:	f2 0f 10 05 61 1c 00 	movsd  0x1c61(%rip),%xmm0        # 2ad0 <_IO_stdin_used+0x10>
     e6e:	00 
     e6f:	eb 14                	jmp    e85 <main+0xe5>
     e71:	48 8d 3d 4a 1e 00 00 	lea    0x1e4a(%rip),%rdi        # 2cc2 <_IO_stdin_used+0x202>
     e78:	e8 03 fd ff ff       	call   b80 <puts@plt>
     e7d:	f2 0f 10 05 53 1c 00 	movsd  0x1c53(%rip),%xmm0        # 2ad8 <_IO_stdin_used+0x18>
     e84:	00 
     e85:	e8 06 02 00 00       	call   1090 <timed_rotation>
     e8a:	48 8d 3d 9b 1c 00 00 	lea    0x1c9b(%rip),%rdi        # 2b2c <_IO_stdin_used+0x6c>
     e91:	89 c6                	mov    %eax,%esi
     e93:	31 c0                	xor    %eax,%eax
     e95:	e8 f6 fc ff ff       	call   b90 <printf@plt>
     e9a:	48 8d 3d 33 1e 00 00 	lea    0x1e33(%rip),%rdi        # 2cd4 <_IO_stdin_used+0x214>
     ea1:	e8 da fc ff ff       	call   b80 <puts@plt>
     ea6:	eb 29                	jmp    ed1 <main+0x131>
     ea8:	49 8b 3c 24          	mov    (%r12),%rdi
     eac:	44 89 fe             	mov    %r15d,%esi
     eaf:	e8 7c 04 00 00       	call   1330 <parse_and_run_tests>
     eb4:	eb 1b                	jmp    ed1 <main+0x131>
     eb6:	48 8b 13             	mov    (%rbx),%rdx
     eb9:	48 8b 05 18 41 00 00 	mov    0x4118(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
     ec0:	48 8b 38             	mov    (%rax),%rdi
     ec3:	48 8d 35 82 1c 00 00 	lea    0x1c82(%rip),%rsi        # 2b4c <_IO_stdin_used+0x8c>
     eca:	31 c0                	xor    %eax,%eax
     ecc:	e8 cf fc ff ff       	call   ba0 <fprintf@plt>
     ed1:	31 c0                	xor    %eax,%eax
     ed3:	48 83 c4 08          	add    $0x8,%rsp
     ed7:	5b                   	pop    %rbx
     ed8:	41 5c                	pop    %r12
     eda:	41 5d                	pop    %r13
     edc:	41 5e                	pop    %r14
     ede:	41 5f                	pop    %r15
     ee0:	5d                   	pop    %rbp
     ee1:	c3                   	ret    
     ee2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ee9:	00 00 00 
     eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ef0 <print_usage>:
print_usage():
     ef0:	48 89 fa             	mov    %rdi,%rdx
     ef3:	48 8b 05 de 40 00 00 	mov    0x40de(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
     efa:	48 8b 38             	mov    (%rax),%rdi
     efd:	48 8d 35 48 1c 00 00 	lea    0x1c48(%rip),%rsi        # 2b4c <_IO_stdin_used+0x8c>
     f04:	31 c0                	xor    %eax,%eax
     f06:	e9 95 fc ff ff       	jmp    ba0 <fprintf@plt>
     f0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000f10 <testutil_frmstr>:
testutil_frmstr():
     f10:	41 57                	push   %r15
     f12:	41 56                	push   %r14
     f14:	41 54                	push   %r12
     f16:	53                   	push   %rbx
     f17:	50                   	push   %rax
     f18:	49 89 fe             	mov    %rdi,%r14
     f1b:	e8 90 fc ff ff       	call   bb0 <strlen@plt>
     f20:	49 89 c7             	mov    %rax,%r15
     f23:	48 8b 3d 9e 41 00 00 	mov    0x419e(%rip),%rdi        # 50c8 <test_bitarray>
     f2a:	48 85 ff             	test   %rdi,%rdi
     f2d:	74 05                	je     f34 <testutil_frmstr+0x24>
     f2f:	e8 cc 0b 00 00       	call   1b00 <bitarray_free>
     f34:	4c 89 ff             	mov    %r15,%rdi
     f37:	e8 64 0b 00 00       	call   1aa0 <bitarray_new>
     f3c:	49 89 c4             	mov    %rax,%r12
     f3f:	48 89 05 82 41 00 00 	mov    %rax,0x4182(%rip)        # 50c8 <test_bitarray>
     f46:	4d 85 ff             	test   %r15,%r15
     f49:	74 2a                	je     f75 <testutil_frmstr+0x65>
     f4b:	31 db                	xor    %ebx,%ebx
     f4d:	0f 1f 00             	nopl   (%rax)
     f50:	31 d2                	xor    %edx,%edx
     f52:	41 80 3c 1e 31       	cmpb   $0x31,(%r14,%rbx,1)
     f57:	0f 94 c2             	sete   %dl
     f5a:	4c 89 e7             	mov    %r12,%rdi
     f5d:	48 89 de             	mov    %rbx,%rsi
     f60:	e8 eb 0b 00 00       	call   1b50 <bitarray_set>
     f65:	48 83 c3 01          	add    $0x1,%rbx
     f69:	4c 8b 25 58 41 00 00 	mov    0x4158(%rip),%r12        # 50c8 <test_bitarray>
     f70:	49 39 df             	cmp    %rbx,%r15
     f73:	75 db                	jne    f50 <testutil_frmstr+0x40>
     f75:	48 8b 05 64 40 00 00 	mov    0x4064(%rip),%rax        # 4fe0 <stdout@GLIBC_2.2.5>
     f7c:	4c 8b 30             	mov    (%rax),%r14
     f7f:	4c 89 e7             	mov    %r12,%rdi
     f82:	e8 99 0b 00 00       	call   1b20 <bitarray_get_bit_sz>
     f87:	48 85 c0             	test   %rax,%rax
     f8a:	74 40                	je     fcc <testutil_frmstr+0xbc>
     f8c:	4c 8d 3d a9 1e 00 00 	lea    0x1ea9(%rip),%r15        # 2e3c <_IO_stdin_used+0x37c>
     f93:	31 db                	xor    %ebx,%ebx
     f95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f9c:	00 00 00 
     f9f:	90                   	nop
     fa0:	4c 89 e7             	mov    %r12,%rdi
     fa3:	48 89 de             	mov    %rbx,%rsi
     fa6:	e8 85 0b 00 00       	call   1b30 <bitarray_get>
     fab:	0f b6 d0             	movzbl %al,%edx
     fae:	4c 89 f7             	mov    %r14,%rdi
     fb1:	4c 89 fe             	mov    %r15,%rsi
     fb4:	31 c0                	xor    %eax,%eax
     fb6:	e8 e5 fb ff ff       	call   ba0 <fprintf@plt>
     fbb:	48 83 c3 01          	add    $0x1,%rbx
     fbf:	4c 89 e7             	mov    %r12,%rdi
     fc2:	e8 59 0b 00 00       	call   1b20 <bitarray_get_bit_sz>
     fc7:	48 39 c3             	cmp    %rax,%rbx
     fca:	72 d4                	jb     fa0 <testutil_frmstr+0x90>
     fcc:	48 83 c4 08          	add    $0x8,%rsp
     fd0:	5b                   	pop    %rbx
     fd1:	41 5c                	pop    %r12
     fd3:	41 5e                	pop    %r14
     fd5:	41 5f                	pop    %r15
     fd7:	c3                   	ret    
     fd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     fdf:	00 

0000000000000fe0 <testutil_rotate>:
testutil_rotate():
     fe0:	48 89 d1             	mov    %rdx,%rcx
     fe3:	48 89 f2             	mov    %rsi,%rdx
     fe6:	48 89 fe             	mov    %rdi,%rsi
     fe9:	48 8b 3d d8 40 00 00 	mov    0x40d8(%rip),%rdi        # 50c8 <test_bitarray>
     ff0:	e9 8b 15 00 00       	jmp    2580 <bitarray_rotate>
     ff5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ffc:	00 00 00 
     fff:	90                   	nop

0000000000001000 <testutil_require_valid_input>:
testutil_require_valid_input():
    1000:	55                   	push   %rbp
    1001:	41 57                	push   %r15
    1003:	41 56                	push   %r14
    1005:	53                   	push   %rbx
    1006:	50                   	push   %rax
    1007:	45 89 c6             	mov    %r8d,%r14d
    100a:	49 89 cf             	mov    %rcx,%r15
    100d:	48 89 f5             	mov    %rsi,%rbp
    1010:	48 89 fb             	mov    %rdi,%rbx
    1013:	48 8b 3d ae 40 00 00 	mov    0x40ae(%rip),%rdi        # 50c8 <test_bitarray>
    101a:	e8 01 0b 00 00       	call   1b20 <bitarray_get_bit_sz>
    101f:	48 8d 0c 2b          	lea    (%rbx,%rbp,1),%rcx
    1023:	48 39 c1             	cmp    %rax,%rcx
    1026:	77 15                	ja     103d <testutil_require_valid_input+0x3d>
    1028:	48 39 d8             	cmp    %rbx,%rax
    102b:	76 10                	jbe    103d <testutil_require_valid_input+0x3d>
    102d:	48 39 e8             	cmp    %rbp,%rax
    1030:	72 0b                	jb     103d <testutil_require_valid_input+0x3d>
    1032:	48 83 c4 08          	add    $0x8,%rsp
    1036:	5b                   	pop    %rbx
    1037:	41 5e                	pop    %r14
    1039:	41 5f                	pop    %r15
    103b:	5d                   	pop    %rbp
    103c:	c3                   	ret    
    103d:	48 8b 1d 94 3f 00 00 	mov    0x3f94(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    1044:	48 8b 3b             	mov    (%rbx),%rdi
    1047:	48 8d 35 9c 1c 00 00 	lea    0x1c9c(%rip),%rsi        # 2cea <_IO_stdin_used+0x22a>
    104e:	4c 89 fa             	mov    %r15,%rdx
    1051:	44 89 f1             	mov    %r14d,%ecx
    1054:	31 c0                	xor    %eax,%eax
    1056:	e8 45 fb ff ff       	call   ba0 <fprintf@plt>
    105b:	48 8b 0b             	mov    (%rbx),%rcx
    105e:	48 8d 3d aa 1c 00 00 	lea    0x1caa(%rip),%rdi        # 2d0f <_IO_stdin_used+0x24f>
    1065:	be 3d 00 00 00       	mov    $0x3d,%esi
    106a:	ba 01 00 00 00       	mov    $0x1,%edx
    106f:	e8 4c fb ff ff       	call   bc0 <fwrite@plt>
    1074:	48 8b 33             	mov    (%rbx),%rsi
    1077:	bf 0a 00 00 00       	mov    $0xa,%edi
    107c:	48 83 c4 08          	add    $0x8,%rsp
    1080:	5b                   	pop    %rbx
    1081:	41 5e                	pop    %r14
    1083:	41 5f                	pop    %r15
    1085:	5d                   	pop    %rbp
    1086:	e9 45 fb ff ff       	jmp    bd0 <fputc@plt>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <timed_rotation>:
timed_rotation():
    1090:	55                   	push   %rbp
    1091:	41 57                	push   %r15
    1093:	41 56                	push   %r14
    1095:	41 55                	push   %r13
    1097:	41 54                	push   %r12
    1099:	53                   	push   %rbx
    109a:	48 83 ec 78          	sub    $0x78,%rsp
    109e:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    10a4:	f2 0f 10 05 1c 1a 00 	movsd  0x1a1c(%rip),%xmm0        # 2ac8 <_IO_stdin_used+0x8>
    10ab:	00 
    10ac:	f2 0f 10 0d 2c 1a 00 	movsd  0x1a2c(%rip),%xmm1        # 2ae0 <_IO_stdin_used+0x20>
    10b3:	00 
    10b4:	f2 0f 10 25 2c 1a 00 	movsd  0x1a2c(%rip),%xmm4        # 2ae8 <_IO_stdin_used+0x28>
    10bb:	00 
    10bc:	48 8d 5c 24 60       	lea    0x60(%rsp),%rbx
    10c1:	45 31 e4             	xor    %r12d,%r12d
    10c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cb:	00 00 00 
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    10d5:	f2 0f 10 15 13 1a 00 	movsd  0x1a13(%rip),%xmm2        # 2af0 <_IO_stdin_used+0x30>
    10dc:	00 
    10dd:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    10e1:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    10e6:	66 0f 28 d9          	movapd %xmm1,%xmm3
    10ea:	66 0f 28 cc          	movapd %xmm4,%xmm1
    10ee:	49 89 c6             	mov    %rax,%r14
    10f1:	49 c1 fe 3f          	sar    $0x3f,%r14
    10f5:	49 21 ce             	and    %rcx,%r14
    10f8:	49 09 c6             	or     %rax,%r14
    10fb:	66 0f 28 c3          	movapd %xmm3,%xmm0
    10ff:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    1103:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    1108:	66 0f 29 5c 24 30    	movapd %xmm3,0x30(%rsp)
    110e:	f2 48 0f 2c cb       	cvttsd2si %xmm3,%rcx
    1113:	49 89 cd             	mov    %rcx,%r13
    1116:	49 c1 fd 3f          	sar    $0x3f,%r13
    111a:	49 21 c5             	and    %rax,%r13
    111d:	49 09 cd             	or     %rcx,%r13
    1120:	66 0f 28 c4          	movapd %xmm4,%xmm0
    1124:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    1128:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    112d:	66 0f 29 64 24 40    	movapd %xmm4,0x40(%rsp)
    1133:	f2 48 0f 2c cc       	cvttsd2si %xmm4,%rcx
    1138:	48 89 cd             	mov    %rcx,%rbp
    113b:	48 c1 fd 3f          	sar    $0x3f,%rbp
    113f:	48 21 c5             	and    %rax,%rbp
    1142:	48 09 cd             	or     %rcx,%rbp
    1145:	48 8d 05 04 1e 00 00 	lea    0x1e04(%rip),%rax        # 2f50 <fibs>
    114c:	f2 42 0f 10 44 e0 18 	movsd  0x18(%rax,%r12,8),%xmm0
    1153:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    1158:	48 89 c1             	mov    %rax,%rcx
    115b:	48 c1 f9 3f          	sar    $0x3f,%rcx
    115f:	66 0f 29 44 24 20    	movapd %xmm0,0x20(%rsp)
    1165:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    1169:	f2 4c 0f 2c f8       	cvttsd2si %xmm0,%r15
    116e:	49 21 cf             	and    %rcx,%r15
    1171:	49 09 c7             	or     %rax,%r15
    1174:	48 8b 3d 4d 3f 00 00 	mov    0x3f4d(%rip),%rdi        # 50c8 <test_bitarray>
    117b:	48 85 ff             	test   %rdi,%rdi
    117e:	74 05                	je     1185 <timed_rotation+0xf5>
    1180:	e8 7b 09 00 00       	call   1b00 <bitarray_free>
    1185:	4c 89 ff             	mov    %r15,%rdi
    1188:	e8 13 09 00 00       	call   1aa0 <bitarray_new>
    118d:	48 89 05 34 3f 00 00 	mov    %rax,0x3f34(%rip)        # 50c8 <test_bitarray>
    1194:	bf 1c 18 00 00       	mov    $0x181c,%edi
    1199:	e8 42 fa ff ff       	call   be0 <srand@plt>
    119e:	48 8b 3d 23 3f 00 00 	mov    0x3f23(%rip),%rdi        # 50c8 <test_bitarray>
    11a5:	e8 d6 09 00 00       	call   1b80 <bitarray_randfill>
    11aa:	31 c0                	xor    %eax,%eax
    11ac:	e8 4f 18 00 00       	call   2a00 <ktiming_getmark>
    11b1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    11b6:	48 8b 3d 0b 3f 00 00 	mov    0x3f0b(%rip),%rdi        # 50c8 <test_bitarray>
    11bd:	4c 89 f6             	mov    %r14,%rsi
    11c0:	48 89 ea             	mov    %rbp,%rdx
    11c3:	4c 89 e9             	mov    %r13,%rcx
    11c6:	e8 b5 13 00 00       	call   2580 <bitarray_rotate>
    11cb:	31 c0                	xor    %eax,%eax
    11cd:	e8 2e 18 00 00       	call   2a00 <ktiming_getmark>
    11d2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    11d7:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    11dc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    11e1:	e8 7a 18 00 00       	call   2a60 <ktiming_diff_usec>
    11e6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    11eb:	66 0f 62 05 dd 1c 00 	punpckldq 0x1cdd(%rip),%xmm0        # 2ed0 <_IO_stdin_used+0x410>
    11f2:	00 
    11f3:	66 0f 5c 05 e5 1c 00 	subpd  0x1ce5(%rip),%xmm0        # 2ee0 <_IO_stdin_used+0x420>
    11fa:	00 
    11fb:	66 0f 28 c8          	movapd %xmm0,%xmm1
    11ff:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1203:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1207:	f2 0f 5e 0d e9 18 00 	divsd  0x18e9(%rip),%xmm1        # 2af8 <_IO_stdin_used+0x38>
    120e:	00 
    120f:	66 0f 29 4c 24 50    	movapd %xmm1,0x50(%rsp)
    1215:	b9 03 00 00 00       	mov    $0x3,%ecx
    121a:	48 8d 35 2c 1b 00 00 	lea    0x1b2c(%rip),%rsi        # 2d4d <_IO_stdin_used+0x28d>
    1221:	48 81 fd 00 20 00 00 	cmp    $0x2000,%rbp
    1228:	72 3c                	jb     1266 <timed_rotation+0x1d6>
    122a:	b9 0d 00 00 00       	mov    $0xd,%ecx
    122f:	48 8d 35 1c 1b 00 00 	lea    0x1b1c(%rip),%rsi        # 2d52 <_IO_stdin_used+0x292>
    1236:	48 81 fd 00 00 80 00 	cmp    $0x800000,%rbp
    123d:	72 27                	jb     1266 <timed_rotation+0x1d6>
    123f:	48 89 e8             	mov    %rbp,%rax
    1242:	48 c1 e8 21          	shr    $0x21,%rax
    1246:	b9 21 00 00 00       	mov    $0x21,%ecx
    124b:	b8 17 00 00 00       	mov    $0x17,%eax
    1250:	48 0f 44 c8          	cmove  %rax,%rcx
    1254:	48 8d 35 03 1b 00 00 	lea    0x1b03(%rip),%rsi        # 2d5e <_IO_stdin_used+0x29e>
    125b:	48 8d 05 f6 1a 00 00 	lea    0x1af6(%rip),%rax        # 2d58 <_IO_stdin_used+0x298>
    1262:	48 0f 44 f0          	cmove  %rax,%rsi
    1266:	48 d3 ed             	shr    %cl,%rbp
    1269:	48 89 df             	mov    %rbx,%rdi
    126c:	48 89 ea             	mov    %rbp,%rdx
    126f:	31 c0                	xor    %eax,%eax
    1271:	e8 7a f9 ff ff       	call   bf0 <sprintf@plt>
    1276:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    127c:	66 0f 28 4c 24 50    	movapd 0x50(%rsp),%xmm1
    1282:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1286:	76 44                	jbe    12cc <timed_rotation+0x23c>
    1288:	49 8d 6c 24 01       	lea    0x1(%r12),%rbp
    128d:	48 8d 3d d0 1a 00 00 	lea    0x1ad0(%rip),%rdi        # 2d64 <_IO_stdin_used+0x2a4>
    1294:	44 89 e6             	mov    %r12d,%esi
    1297:	48 89 da             	mov    %rbx,%rdx
    129a:	66 0f 28 c1          	movapd %xmm1,%xmm0
    129e:	b0 01                	mov    $0x1,%al
    12a0:	e8 eb f8 ff ff       	call   b90 <printf@plt>
    12a5:	49 89 ec             	mov    %rbp,%r12
    12a8:	48 83 fd 32          	cmp    $0x32,%rbp
    12ac:	66 0f 28 4c 24 40    	movapd 0x40(%rsp),%xmm1
    12b2:	66 0f 28 44 24 30    	movapd 0x30(%rsp),%xmm0
    12b8:	66 0f 28 64 24 20    	movapd 0x20(%rsp),%xmm4
    12be:	0f 85 0c fe ff ff    	jne    10d0 <timed_rotation+0x40>
    12c4:	41 bc 31 00 00 00    	mov    $0x31,%r12d
    12ca:	eb 20                	jmp    12ec <timed_rotation+0x25c>
    12cc:	48 8d 3d be 1a 00 00 	lea    0x1abe(%rip),%rdi        # 2d91 <_IO_stdin_used+0x2d1>
    12d3:	48 8d 54 24 60       	lea    0x60(%rsp),%rdx
    12d8:	44 89 e6             	mov    %r12d,%esi
    12db:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    12e1:	b0 02                	mov    $0x2,%al
    12e3:	e8 a8 f8 ff ff       	call   b90 <printf@plt>
    12e8:	41 83 c4 ff          	add    $0xffffffff,%r12d
    12ec:	44 89 e0             	mov    %r12d,%eax
    12ef:	48 83 c4 78          	add    $0x78,%rsp
    12f3:	5b                   	pop    %rbx
    12f4:	41 5c                	pop    %r12
    12f6:	41 5d                	pop    %r13
    12f8:	41 5e                	pop    %r14
    12fa:	41 5f                	pop    %r15
    12fc:	5d                   	pop    %rbp
    12fd:	c3                   	ret    
    12fe:	66 90                	xchg   %ax,%ax

0000000000001300 <next_arg_char>:
next_arg_char():
    1300:	53                   	push   %rbx
    1301:	48 8d 35 c9 1a 00 00 	lea    0x1ac9(%rip),%rsi        # 2dd1 <_IO_stdin_used+0x311>
    1308:	31 ff                	xor    %edi,%edi
    130a:	e8 f1 f8 ff ff       	call   c00 <strtok@plt>
    130f:	48 89 c3             	mov    %rax,%rbx
    1312:	48 89 c7             	mov    %rax,%rdi
    1315:	be 0a 00 00 00       	mov    $0xa,%esi
    131a:	e8 f1 f8 ff ff       	call   c10 <strchr@plt>
    131f:	48 85 c0             	test   %rax,%rax
    1322:	74 03                	je     1327 <next_arg_char+0x27>
    1324:	c6 00 00             	movb   $0x0,(%rax)
    1327:	48 89 d8             	mov    %rbx,%rax
    132a:	5b                   	pop    %rbx
    132b:	c3                   	ret    
    132c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001330 <parse_and_run_tests>:
parse_and_run_tests():
    1330:	55                   	push   %rbp
    1331:	41 57                	push   %r15
    1333:	41 56                	push   %r14
    1335:	41 55                	push   %r13
    1337:	41 54                	push   %r12
    1339:	53                   	push   %rbx
    133a:	48 83 ec 38          	sub    $0x38,%rsp
    133e:	41 89 f5             	mov    %esi,%r13d
    1341:	48 89 fb             	mov    %rdi,%rbx
    1344:	4c 8b 25 8d 3c 00 00 	mov    0x3c8d(%rip),%r12        # 4fd8 <stderr@GLIBC_2.2.5>
    134b:	49 8b 3c 24          	mov    (%r12),%rdi
    134f:	48 8d 35 7d 1a 00 00 	lea    0x1a7d(%rip),%rsi        # 2dd3 <_IO_stdin_used+0x313>
    1356:	48 89 da             	mov    %rbx,%rdx
    1359:	31 c0                	xor    %eax,%eax
    135b:	e8 40 f8 ff ff       	call   ba0 <fprintf@plt>
    1360:	48 8d 35 7e 1a 00 00 	lea    0x1a7e(%rip),%rsi        # 2de5 <_IO_stdin_used+0x325>
    1367:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    136c:	48 89 df             	mov    %rbx,%rdi
    136f:	e8 ac f8 ff ff       	call   c20 <fopen@plt>
    1374:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    137b:	00 00 
    137d:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    1384:	00 00 
    1386:	48 85 c0             	test   %rax,%rax
    1389:	75 28                	jne    13b3 <parse_and_run_tests+0x83>
    138b:	49 8b 0c 24          	mov    (%r12),%rcx
    138f:	48 8d 3d 51 1a 00 00 	lea    0x1a51(%rip),%rdi        # 2de7 <_IO_stdin_used+0x327>
    1396:	be 14 00 00 00       	mov    $0x14,%esi
    139b:	ba 01 00 00 00       	mov    $0x1,%edx
    13a0:	48 83 c4 38          	add    $0x38,%rsp
    13a4:	5b                   	pop    %rbx
    13a5:	41 5c                	pop    %r12
    13a7:	41 5d                	pop    %r13
    13a9:	41 5e                	pop    %r14
    13ab:	41 5f                	pop    %r15
    13ad:	5d                   	pop    %rbp
    13ae:	e9 0d f8 ff ff       	jmp    bc0 <fwrite@plt>
    13b3:	49 89 c6             	mov    %rax,%r14
    13b6:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    13bb:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    13c0:	ba 0a 00 00 00       	mov    $0xa,%edx
    13c5:	48 89 c1             	mov    %rax,%rcx
    13c8:	e8 63 f8 ff ff       	call   c30 <__getdelim@plt>
    13cd:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    13d1:	75 30                	jne    1403 <parse_and_run_tests+0xd3>
    13d3:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    13d8:	e8 63 f8 ff ff       	call   c40 <free@plt>
    13dd:	49 8b 3c 24          	mov    (%r12),%rdi
    13e1:	48 8d 35 3d 1a 00 00 	lea    0x1a3d(%rip),%rsi        # 2e25 <_IO_stdin_used+0x365>
    13e8:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    13ed:	31 c0                	xor    %eax,%eax
    13ef:	e8 ac f7 ff ff       	call   ba0 <fprintf@plt>
    13f4:	48 83 c4 38          	add    $0x38,%rsp
    13f8:	5b                   	pop    %rbx
    13f9:	41 5c                	pop    %r12
    13fb:	41 5d                	pop    %r13
    13fd:	41 5e                	pop    %r14
    13ff:	41 5f                	pop    %r15
    1401:	5d                   	pop    %rbp
    1402:	c3                   	ret    
    1403:	48 8d 2d c7 19 00 00 	lea    0x19c7(%rip),%rbp        # 2dd1 <_IO_stdin_used+0x311>
    140a:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
    140f:	48 8d 5c 24 18       	lea    0x18(%rsp),%rbx
    1414:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    141b:	00 
    141c:	31 c0                	xor    %eax,%eax
    141e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1423:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
    1428:	44 89 6c 24 2c       	mov    %r13d,0x2c(%rsp)
    142d:	eb 2e                	jmp    145d <parse_and_run_tests+0x12d>
    142f:	f6 44 24 10 01       	testb  $0x1,0x10(%rsp)
    1434:	0f 85 bd 01 00 00    	jne    15f7 <parse_and_run_tests+0x2c7>
    143a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1440:	4c 89 ff             	mov    %r15,%rdi
    1443:	48 89 de             	mov    %rbx,%rsi
    1446:	ba 0a 00 00 00       	mov    $0xa,%edx
    144b:	4c 89 f1             	mov    %r14,%rcx
    144e:	e8 dd f7 ff ff       	call   c30 <__getdelim@plt>
    1453:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    1457:	0f 84 76 ff ff ff    	je     13d3 <parse_and_run_tests+0xa3>
    145d:	83 44 24 04 01       	addl   $0x1,0x4(%rsp)
    1462:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1467:	48 89 ee             	mov    %rbp,%rsi
    146a:	e8 91 f7 ff ff       	call   c00 <strtok@plt>
    146f:	0f be 00             	movsbl (%rax),%eax
    1472:	8d 48 9b             	lea    -0x65(%rax),%ecx
    1475:	83 f9 0f             	cmp    $0xf,%ecx
    1478:	77 46                	ja     14c0 <parse_and_run_tests+0x190>
    147a:	48 8d 15 7f 1a 00 00 	lea    0x1a7f(%rip),%rdx        # 2f00 <_IO_stdin_used+0x440>
    1481:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
    1485:	48 01 d0             	add    %rdx,%rax
    1488:	ff e0                	jmp    *%rax
    148a:	f6 44 24 10 01       	testb  $0x1,0x10(%rsp)
    148f:	74 af                	je     1440 <parse_and_run_tests+0x110>
    1491:	31 ff                	xor    %edi,%edi
    1493:	48 89 ee             	mov    %rbp,%rsi
    1496:	e8 65 f7 ff ff       	call   c00 <strtok@plt>
    149b:	48 89 c3             	mov    %rax,%rbx
    149e:	48 89 c7             	mov    %rax,%rdi
    14a1:	be 0a 00 00 00       	mov    $0xa,%esi
    14a6:	e8 65 f7 ff ff       	call   c10 <strchr@plt>
    14ab:	48 85 c0             	test   %rax,%rax
    14ae:	74 03                	je     14b3 <parse_and_run_tests+0x183>
    14b0:	c6 00 00             	movb   $0x0,(%rax)
    14b3:	48 89 df             	mov    %rbx,%rdi
    14b6:	e8 55 fa ff ff       	call   f10 <testutil_frmstr>
    14bb:	e9 de 00 00 00       	jmp    159e <parse_and_run_tests+0x26e>
    14c0:	83 f8 0a             	cmp    $0xa,%eax
    14c3:	0f 84 77 ff ff ff    	je     1440 <parse_and_run_tests+0x110>
    14c9:	83 f8 23             	cmp    $0x23,%eax
    14cc:	0f 84 6e ff ff ff    	je     1440 <parse_and_run_tests+0x110>
    14d2:	49 8b 3c 24          	mov    (%r12),%rdi
    14d6:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    14db:	48 8d 35 30 19 00 00 	lea    0x1930(%rip),%rsi        # 2e12 <_IO_stdin_used+0x352>
    14e2:	31 c0                	xor    %eax,%eax
    14e4:	e8 b7 f6 ff ff       	call   ba0 <fprintf@plt>
    14e9:	e9 52 ff ff ff       	jmp    1440 <parse_and_run_tests+0x110>
    14ee:	f6 44 24 10 01       	testb  $0x1,0x10(%rsp)
    14f3:	0f 84 47 ff ff ff    	je     1440 <parse_and_run_tests+0x110>
    14f9:	31 ff                	xor    %edi,%edi
    14fb:	48 89 ee             	mov    %rbp,%rsi
    14fe:	e8 fd f6 ff ff       	call   c00 <strtok@plt>
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	31 f6                	xor    %esi,%esi
    1508:	ba 0a 00 00 00       	mov    $0xa,%edx
    150d:	e8 5e f6 ff ff       	call   b70 <strtol@plt>
    1512:	49 89 c7             	mov    %rax,%r15
    1515:	31 ff                	xor    %edi,%edi
    1517:	48 89 ee             	mov    %rbp,%rsi
    151a:	e8 e1 f6 ff ff       	call   c00 <strtok@plt>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	31 f6                	xor    %esi,%esi
    1524:	ba 0a 00 00 00       	mov    $0xa,%edx
    1529:	e8 42 f6 ff ff       	call   b70 <strtol@plt>
    152e:	48 89 c3             	mov    %rax,%rbx
    1531:	31 ff                	xor    %edi,%edi
    1533:	48 89 ee             	mov    %rbp,%rsi
    1536:	e8 c5 f6 ff ff       	call   c00 <strtok@plt>
    153b:	48 89 c7             	mov    %rax,%rdi
    153e:	31 f6                	xor    %esi,%esi
    1540:	ba 0a 00 00 00       	mov    $0xa,%edx
    1545:	e8 26 f6 ff ff       	call   b70 <strtol@plt>
    154a:	49 89 c6             	mov    %rax,%r14
    154d:	48 8b 3d 74 3b 00 00 	mov    0x3b74(%rip),%rdi        # 50c8 <test_bitarray>
    1554:	e8 c7 05 00 00       	call   1b20 <bitarray_get_bit_sz>
    1559:	4a 8d 0c 3b          	lea    (%rbx,%r15,1),%rcx
    155d:	48 39 c1             	cmp    %rax,%rcx
    1560:	0f 87 94 01 00 00    	ja     16fa <parse_and_run_tests+0x3ca>
    1566:	4c 39 f8             	cmp    %r15,%rax
    1569:	0f 86 8b 01 00 00    	jbe    16fa <parse_and_run_tests+0x3ca>
    156f:	48 39 d8             	cmp    %rbx,%rax
    1572:	0f 82 82 01 00 00    	jb     16fa <parse_and_run_tests+0x3ca>
    1578:	48 8b 3d 49 3b 00 00 	mov    0x3b49(%rip),%rdi        # 50c8 <test_bitarray>
    157f:	4c 89 fe             	mov    %r15,%rsi
    1582:	48 89 da             	mov    %rbx,%rdx
    1585:	4c 89 f1             	mov    %r14,%rcx
    1588:	e8 f3 0f 00 00       	call   2580 <bitarray_rotate>
    158d:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
    1592:	48 8d 2d 38 18 00 00 	lea    0x1838(%rip),%rbp        # 2dd1 <_IO_stdin_used+0x311>
    1599:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
    159e:	48 8d 5c 24 18       	lea    0x18(%rsp),%rbx
    15a3:	e9 98 fe ff ff       	jmp    1440 <parse_and_run_tests+0x110>
    15a8:	31 c0                	xor    %eax,%eax
    15aa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15af:	31 ff                	xor    %edi,%edi
    15b1:	48 89 ee             	mov    %rbp,%rsi
    15b4:	e8 47 f6 ff ff       	call   c00 <strtok@plt>
    15b9:	48 89 c7             	mov    %rax,%rdi
    15bc:	31 f6                	xor    %esi,%esi
    15be:	ba 0a 00 00 00       	mov    $0xa,%edx
    15c3:	e8 a8 f5 ff ff       	call   b70 <strtol@plt>
    15c8:	41 83 fd ff          	cmp    $0xffffffff,%r13d
    15cc:	74 09                	je     15d7 <parse_and_run_tests+0x2a7>
    15ce:	44 39 e8             	cmp    %r13d,%eax
    15d1:	0f 85 69 fe ff ff    	jne    1440 <parse_and_run_tests+0x110>
    15d7:	49 8b 3c 24          	mov    (%r12),%rdi
    15db:	48 8d 35 1a 18 00 00 	lea    0x181a(%rip),%rsi        # 2dfc <_IO_stdin_used+0x33c>
    15e2:	89 c2                	mov    %eax,%edx
    15e4:	31 c0                	xor    %eax,%eax
    15e6:	e8 b5 f5 ff ff       	call   ba0 <fprintf@plt>
    15eb:	b0 01                	mov    $0x1,%al
    15ed:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15f2:	e9 49 fe ff ff       	jmp    1440 <parse_and_run_tests+0x110>
    15f7:	31 ff                	xor    %edi,%edi
    15f9:	48 89 ee             	mov    %rbp,%rsi
    15fc:	e8 ff f5 ff ff       	call   c00 <strtok@plt>
    1601:	49 89 c4             	mov    %rax,%r12
    1604:	48 89 c7             	mov    %rax,%rdi
    1607:	be 0a 00 00 00       	mov    $0xa,%esi
    160c:	e8 ff f5 ff ff       	call   c10 <strchr@plt>
    1611:	48 85 c0             	test   %rax,%rax
    1614:	74 03                	je     1619 <parse_and_run_tests+0x2e9>
    1616:	c6 00 00             	movb   $0x0,(%rax)
    1619:	4c 89 e7             	mov    %r12,%rdi
    161c:	e8 8f f5 ff ff       	call   bb0 <strlen@plt>
    1621:	48 89 c3             	mov    %rax,%rbx
    1624:	48 8b 3d 9d 3a 00 00 	mov    0x3a9d(%rip),%rdi        # 50c8 <test_bitarray>
    162b:	e8 f0 04 00 00       	call   1b20 <bitarray_get_bit_sz>
    1630:	48 39 c3             	cmp    %rax,%rbx
    1633:	4c 8d 2d 05 18 00 00 	lea    0x1805(%rip),%r13        # 2e3f <_IO_stdin_used+0x37f>
    163a:	b8 00 00 00 00       	mov    $0x0,%eax
    163f:	4c 0f 44 e8          	cmove  %rax,%r13
    1643:	48 85 db             	test   %rbx,%rbx
    1646:	4c 8d 35 00 18 00 00 	lea    0x1800(%rip),%r14        # 2e4d <_IO_stdin_used+0x38d>
    164d:	74 37                	je     1686 <parse_and_run_tests+0x356>
    164f:	31 ed                	xor    %ebp,%ebp
    1651:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1658:	00 00 00 
    165b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1660:	48 8b 3d 61 3a 00 00 	mov    0x3a61(%rip),%rdi        # 50c8 <test_bitarray>
    1667:	48 89 ee             	mov    %rbp,%rsi
    166a:	e8 c1 04 00 00       	call   1b30 <bitarray_get>
    166f:	41 80 3c 2c 31       	cmpb   $0x31,(%r12,%rbp,1)
    1674:	0f 94 c1             	sete   %cl
    1677:	30 c1                	xor    %al,%cl
    1679:	4d 0f 45 ee          	cmovne %r14,%r13
    167d:	48 83 c5 01          	add    $0x1,%rbp
    1681:	48 39 eb             	cmp    %rbp,%rbx
    1684:	75 da                	jne    1660 <parse_and_run_tests+0x330>
    1686:	48 8b 3d 3b 3a 00 00 	mov    0x3a3b(%rip),%rdi        # 50c8 <test_bitarray>
    168d:	e8 8e 04 00 00       	call   1b20 <bitarray_get_bit_sz>
    1692:	48 89 c5             	mov    %rax,%rbp
    1695:	48 83 c3 01          	add    $0x1,%rbx
    1699:	bf 01 00 00 00       	mov    $0x1,%edi
    169e:	48 89 de             	mov    %rbx,%rsi
    16a1:	e8 aa f5 ff ff       	call   c50 <calloc@plt>
    16a6:	49 89 c6             	mov    %rax,%r14
    16a9:	48 85 ed             	test   %rbp,%rbp
    16ac:	74 20                	je     16ce <parse_and_run_tests+0x39e>
    16ae:	31 db                	xor    %ebx,%ebx
    16b0:	48 8b 3d 11 3a 00 00 	mov    0x3a11(%rip),%rdi        # 50c8 <test_bitarray>
    16b7:	48 89 de             	mov    %rbx,%rsi
    16ba:	e8 71 04 00 00       	call   1b30 <bitarray_get>
    16bf:	0c 30                	or     $0x30,%al
    16c1:	41 88 04 1e          	mov    %al,(%r14,%rbx,1)
    16c5:	48 83 c3 01          	add    $0x1,%rbx
    16c9:	48 39 dd             	cmp    %rbx,%rbp
    16cc:	75 e2                	jne    16b0 <parse_and_run_tests+0x380>
    16ce:	4d 85 ed             	test   %r13,%r13
    16d1:	75 6f                	jne    1742 <parse_and_run_tests+0x412>
    16d3:	4c 8b 25 fe 38 00 00 	mov    0x38fe(%rip),%r12        # 4fd8 <stderr@GLIBC_2.2.5>
    16da:	49 8b 3c 24          	mov    (%r12),%rdi
    16de:	48 8d 35 bc 17 00 00 	lea    0x17bc(%rip),%rsi        # 2ea1 <_IO_stdin_used+0x3e1>
    16e5:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    16ea:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    16ee:	31 c0                	xor    %eax,%eax
    16f0:	e8 ab f4 ff ff       	call   ba0 <fprintf@plt>
    16f5:	e9 11 01 00 00       	jmp    180b <parse_and_run_tests+0x4db>
    16fa:	49 8b 3c 24          	mov    (%r12),%rdi
    16fe:	48 8d 35 e5 15 00 00 	lea    0x15e5(%rip),%rsi        # 2cea <_IO_stdin_used+0x22a>
    1705:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    170a:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    170e:	31 c0                	xor    %eax,%eax
    1710:	e8 8b f4 ff ff       	call   ba0 <fprintf@plt>
    1715:	49 8b 0c 24          	mov    (%r12),%rcx
    1719:	be 3d 00 00 00       	mov    $0x3d,%esi
    171e:	ba 01 00 00 00       	mov    $0x1,%edx
    1723:	48 8d 3d e5 15 00 00 	lea    0x15e5(%rip),%rdi        # 2d0f <_IO_stdin_used+0x24f>
    172a:	e8 91 f4 ff ff       	call   bc0 <fwrite@plt>
    172f:	49 8b 34 24          	mov    (%r12),%rsi
    1733:	bf 0a 00 00 00       	mov    $0xa,%edi
    1738:	e8 93 f4 ff ff       	call   bd0 <fputc@plt>
    173d:	e9 36 fe ff ff       	jmp    1578 <parse_and_run_tests+0x248>
    1742:	48 8b 05 97 38 00 00 	mov    0x3897(%rip),%rax        # 4fe0 <stdout@GLIBC_2.2.5>
    1749:	48 8b 18             	mov    (%rax),%rbx
    174c:	48 8b 2d 75 39 00 00 	mov    0x3975(%rip),%rbp        # 50c8 <test_bitarray>
    1753:	48 89 ef             	mov    %rbp,%rdi
    1756:	e8 c5 03 00 00       	call   1b20 <bitarray_get_bit_sz>
    175b:	48 85 c0             	test   %rax,%rax
    175e:	74 40                	je     17a0 <parse_and_run_tests+0x470>
    1760:	45 31 ff             	xor    %r15d,%r15d
    1763:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    176a:	00 00 00 
    176d:	0f 1f 00             	nopl   (%rax)
    1770:	48 89 ef             	mov    %rbp,%rdi
    1773:	4c 89 fe             	mov    %r15,%rsi
    1776:	e8 b5 03 00 00       	call   1b30 <bitarray_get>
    177b:	0f b6 d0             	movzbl %al,%edx
    177e:	48 89 df             	mov    %rbx,%rdi
    1781:	48 8d 35 b4 16 00 00 	lea    0x16b4(%rip),%rsi        # 2e3c <_IO_stdin_used+0x37c>
    1788:	31 c0                	xor    %eax,%eax
    178a:	e8 11 f4 ff ff       	call   ba0 <fprintf@plt>
    178f:	49 83 c7 01          	add    $0x1,%r15
    1793:	48 89 ef             	mov    %rbp,%rdi
    1796:	e8 85 03 00 00       	call   1b20 <bitarray_get_bit_sz>
    179b:	49 39 c7             	cmp    %rax,%r15
    179e:	72 d0                	jb     1770 <parse_and_run_tests+0x440>
    17a0:	48 8b 05 39 38 00 00 	mov    0x3839(%rip),%rax        # 4fe0 <stdout@GLIBC_2.2.5>
    17a7:	48 8b 38             	mov    (%rax),%rdi
    17aa:	48 8d 35 ad 16 00 00 	lea    0x16ad(%rip),%rsi        # 2e5e <_IO_stdin_used+0x39e>
    17b1:	4c 89 e2             	mov    %r12,%rdx
    17b4:	31 c0                	xor    %eax,%eax
    17b6:	e8 e5 f3 ff ff       	call   ba0 <fprintf@plt>
    17bb:	48 8b 1d 16 38 00 00 	mov    0x3816(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    17c2:	48 8b 3b             	mov    (%rbx),%rdi
    17c5:	48 8d 35 1e 15 00 00 	lea    0x151e(%rip),%rsi        # 2cea <_IO_stdin_used+0x22a>
    17cc:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    17d1:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    17d5:	31 c0                	xor    %eax,%eax
    17d7:	e8 c4 f3 ff ff       	call   ba0 <fprintf@plt>
    17dc:	48 8b 3b             	mov    (%rbx),%rdi
    17df:	48 8d 35 8a 16 00 00 	lea    0x168a(%rip),%rsi        # 2e70 <_IO_stdin_used+0x3b0>
    17e6:	4c 89 ea             	mov    %r13,%rdx
    17e9:	4c 89 e1             	mov    %r12,%rcx
    17ec:	49 89 dc             	mov    %rbx,%r12
    17ef:	4d 89 f0             	mov    %r14,%r8
    17f2:	31 c0                	xor    %eax,%eax
    17f4:	e8 a7 f3 ff ff       	call   ba0 <fprintf@plt>
    17f9:	48 8b 33             	mov    (%rbx),%rsi
    17fc:	bf 0a 00 00 00       	mov    $0xa,%edi
    1801:	e8 ca f3 ff ff       	call   bd0 <fputc@plt>
    1806:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
    180b:	4c 89 f7             	mov    %r14,%rdi
    180e:	e8 2d f4 ff ff       	call   c40 <free@plt>
    1813:	44 8b 6c 24 2c       	mov    0x2c(%rsp),%r13d
    1818:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
    181d:	48 8d 2d ad 15 00 00 	lea    0x15ad(%rip),%rbp        # 2dd1 <_IO_stdin_used+0x311>
    1824:	e9 75 fd ff ff       	jmp    159e <parse_and_run_tests+0x26e>
    1829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001830 <print_byte_binary>:
print_byte_binary():
    1830:	41 56                	push   %r14
    1832:	53                   	push   %rbx
    1833:	50                   	push   %rax
    1834:	89 fb                	mov    %edi,%ebx
    1836:	89 fe                	mov    %edi,%esi
    1838:	83 e6 01             	and    $0x1,%esi
    183b:	4c 8d 35 fa 15 00 00 	lea    0x15fa(%rip),%r14        # 2e3c <_IO_stdin_used+0x37c>
    1842:	4c 89 f7             	mov    %r14,%rdi
    1845:	31 c0                	xor    %eax,%eax
    1847:	e8 44 f3 ff ff       	call   b90 <printf@plt>
    184c:	89 de                	mov    %ebx,%esi
    184e:	d1 ee                	shr    %esi
    1850:	83 e6 01             	and    $0x1,%esi
    1853:	4c 89 f7             	mov    %r14,%rdi
    1856:	31 c0                	xor    %eax,%eax
    1858:	e8 33 f3 ff ff       	call   b90 <printf@plt>
    185d:	89 de                	mov    %ebx,%esi
    185f:	c1 ee 02             	shr    $0x2,%esi
    1862:	83 e6 01             	and    $0x1,%esi
    1865:	4c 89 f7             	mov    %r14,%rdi
    1868:	31 c0                	xor    %eax,%eax
    186a:	e8 21 f3 ff ff       	call   b90 <printf@plt>
    186f:	89 de                	mov    %ebx,%esi
    1871:	c1 ee 03             	shr    $0x3,%esi
    1874:	83 e6 01             	and    $0x1,%esi
    1877:	4c 89 f7             	mov    %r14,%rdi
    187a:	31 c0                	xor    %eax,%eax
    187c:	e8 0f f3 ff ff       	call   b90 <printf@plt>
    1881:	89 de                	mov    %ebx,%esi
    1883:	c1 ee 04             	shr    $0x4,%esi
    1886:	83 e6 01             	and    $0x1,%esi
    1889:	4c 89 f7             	mov    %r14,%rdi
    188c:	31 c0                	xor    %eax,%eax
    188e:	e8 fd f2 ff ff       	call   b90 <printf@plt>
    1893:	89 de                	mov    %ebx,%esi
    1895:	c1 ee 05             	shr    $0x5,%esi
    1898:	83 e6 01             	and    $0x1,%esi
    189b:	4c 89 f7             	mov    %r14,%rdi
    189e:	31 c0                	xor    %eax,%eax
    18a0:	e8 eb f2 ff ff       	call   b90 <printf@plt>
    18a5:	89 de                	mov    %ebx,%esi
    18a7:	c1 ee 06             	shr    $0x6,%esi
    18aa:	83 e6 01             	and    $0x1,%esi
    18ad:	4c 89 f7             	mov    %r14,%rdi
    18b0:	31 c0                	xor    %eax,%eax
    18b2:	e8 d9 f2 ff ff       	call   b90 <printf@plt>
    18b7:	c1 eb 07             	shr    $0x7,%ebx
    18ba:	4c 89 f7             	mov    %r14,%rdi
    18bd:	89 de                	mov    %ebx,%esi
    18bf:	31 c0                	xor    %eax,%eax
    18c1:	48 83 c4 08          	add    $0x8,%rsp
    18c5:	5b                   	pop    %rbx
    18c6:	41 5e                	pop    %r14
    18c8:	e9 c3 f2 ff ff       	jmp    b90 <printf@plt>
    18cd:	0f 1f 00             	nopl   (%rax)

00000000000018d0 <print_short_binary>:
print_short_binary():
    18d0:	41 56                	push   %r14
    18d2:	53                   	push   %rbx
    18d3:	50                   	push   %rax
    18d4:	89 fb                	mov    %edi,%ebx
    18d6:	89 fe                	mov    %edi,%esi
    18d8:	83 e6 01             	and    $0x1,%esi
    18db:	4c 8d 35 5a 15 00 00 	lea    0x155a(%rip),%r14        # 2e3c <_IO_stdin_used+0x37c>
    18e2:	4c 89 f7             	mov    %r14,%rdi
    18e5:	31 c0                	xor    %eax,%eax
    18e7:	e8 a4 f2 ff ff       	call   b90 <printf@plt>
    18ec:	89 de                	mov    %ebx,%esi
    18ee:	d1 ee                	shr    %esi
    18f0:	83 e6 01             	and    $0x1,%esi
    18f3:	4c 89 f7             	mov    %r14,%rdi
    18f6:	31 c0                	xor    %eax,%eax
    18f8:	e8 93 f2 ff ff       	call   b90 <printf@plt>
    18fd:	89 de                	mov    %ebx,%esi
    18ff:	c1 ee 02             	shr    $0x2,%esi
    1902:	83 e6 01             	and    $0x1,%esi
    1905:	4c 89 f7             	mov    %r14,%rdi
    1908:	31 c0                	xor    %eax,%eax
    190a:	e8 81 f2 ff ff       	call   b90 <printf@plt>
    190f:	89 de                	mov    %ebx,%esi
    1911:	c1 ee 03             	shr    $0x3,%esi
    1914:	83 e6 01             	and    $0x1,%esi
    1917:	4c 89 f7             	mov    %r14,%rdi
    191a:	31 c0                	xor    %eax,%eax
    191c:	e8 6f f2 ff ff       	call   b90 <printf@plt>
    1921:	89 de                	mov    %ebx,%esi
    1923:	c1 ee 04             	shr    $0x4,%esi
    1926:	83 e6 01             	and    $0x1,%esi
    1929:	4c 89 f7             	mov    %r14,%rdi
    192c:	31 c0                	xor    %eax,%eax
    192e:	e8 5d f2 ff ff       	call   b90 <printf@plt>
    1933:	89 de                	mov    %ebx,%esi
    1935:	c1 ee 05             	shr    $0x5,%esi
    1938:	83 e6 01             	and    $0x1,%esi
    193b:	4c 89 f7             	mov    %r14,%rdi
    193e:	31 c0                	xor    %eax,%eax
    1940:	e8 4b f2 ff ff       	call   b90 <printf@plt>
    1945:	89 de                	mov    %ebx,%esi
    1947:	c1 ee 06             	shr    $0x6,%esi
    194a:	83 e6 01             	and    $0x1,%esi
    194d:	4c 89 f7             	mov    %r14,%rdi
    1950:	31 c0                	xor    %eax,%eax
    1952:	e8 39 f2 ff ff       	call   b90 <printf@plt>
    1957:	89 de                	mov    %ebx,%esi
    1959:	c1 ee 07             	shr    $0x7,%esi
    195c:	83 e6 01             	and    $0x1,%esi
    195f:	4c 89 f7             	mov    %r14,%rdi
    1962:	31 c0                	xor    %eax,%eax
    1964:	e8 27 f2 ff ff       	call   b90 <printf@plt>
    1969:	89 de                	mov    %ebx,%esi
    196b:	c1 ee 08             	shr    $0x8,%esi
    196e:	83 e6 01             	and    $0x1,%esi
    1971:	4c 89 f7             	mov    %r14,%rdi
    1974:	31 c0                	xor    %eax,%eax
    1976:	e8 15 f2 ff ff       	call   b90 <printf@plt>
    197b:	89 de                	mov    %ebx,%esi
    197d:	c1 ee 09             	shr    $0x9,%esi
    1980:	83 e6 01             	and    $0x1,%esi
    1983:	4c 89 f7             	mov    %r14,%rdi
    1986:	31 c0                	xor    %eax,%eax
    1988:	e8 03 f2 ff ff       	call   b90 <printf@plt>
    198d:	89 de                	mov    %ebx,%esi
    198f:	c1 ee 0a             	shr    $0xa,%esi
    1992:	83 e6 01             	and    $0x1,%esi
    1995:	4c 89 f7             	mov    %r14,%rdi
    1998:	31 c0                	xor    %eax,%eax
    199a:	e8 f1 f1 ff ff       	call   b90 <printf@plt>
    199f:	89 de                	mov    %ebx,%esi
    19a1:	c1 ee 0b             	shr    $0xb,%esi
    19a4:	83 e6 01             	and    $0x1,%esi
    19a7:	4c 89 f7             	mov    %r14,%rdi
    19aa:	31 c0                	xor    %eax,%eax
    19ac:	e8 df f1 ff ff       	call   b90 <printf@plt>
    19b1:	89 de                	mov    %ebx,%esi
    19b3:	c1 ee 0c             	shr    $0xc,%esi
    19b6:	83 e6 01             	and    $0x1,%esi
    19b9:	4c 89 f7             	mov    %r14,%rdi
    19bc:	31 c0                	xor    %eax,%eax
    19be:	e8 cd f1 ff ff       	call   b90 <printf@plt>
    19c3:	89 de                	mov    %ebx,%esi
    19c5:	c1 ee 0d             	shr    $0xd,%esi
    19c8:	83 e6 01             	and    $0x1,%esi
    19cb:	4c 89 f7             	mov    %r14,%rdi
    19ce:	31 c0                	xor    %eax,%eax
    19d0:	e8 bb f1 ff ff       	call   b90 <printf@plt>
    19d5:	89 de                	mov    %ebx,%esi
    19d7:	c1 ee 0e             	shr    $0xe,%esi
    19da:	83 e6 01             	and    $0x1,%esi
    19dd:	4c 89 f7             	mov    %r14,%rdi
    19e0:	31 c0                	xor    %eax,%eax
    19e2:	e8 a9 f1 ff ff       	call   b90 <printf@plt>
    19e7:	c1 eb 0f             	shr    $0xf,%ebx
    19ea:	4c 89 f7             	mov    %r14,%rdi
    19ed:	89 de                	mov    %ebx,%esi
    19ef:	31 c0                	xor    %eax,%eax
    19f1:	48 83 c4 08          	add    $0x8,%rsp
    19f5:	5b                   	pop    %rbx
    19f6:	41 5e                	pop    %r14
    19f8:	e9 93 f1 ff ff       	jmp    b90 <printf@plt>
    19fd:	0f 1f 00             	nopl   (%rax)

0000000000001a00 <left_mask>:
left_mask():
    1a00:	49 89 d0             	mov    %rdx,%r8
    1a03:	49 c1 e8 03          	shr    $0x3,%r8
    1a07:	48 8b 0e             	mov    (%rsi),%rcx
    1a0a:	48 c1 e9 03          	shr    $0x3,%rcx
    1a0e:	48 8d 41 01          	lea    0x1(%rcx),%rax
    1a12:	49 39 c0             	cmp    %rax,%r8
    1a15:	75 0d                	jne    1a24 <left_mask+0x24>
    1a17:	c6 07 00             	movb   $0x0,(%rdi)
    1a1a:	31 c0                	xor    %eax,%eax
    1a1c:	88 47 01             	mov    %al,0x1(%rdi)
    1a1f:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    1a23:	c3                   	ret    
    1a24:	80 e2 07             	and    $0x7,%dl
    1a27:	b0 ff                	mov    $0xff,%al
    1a29:	89 d1                	mov    %edx,%ecx
    1a2b:	d2 e0                	shl    %cl,%al
    1a2d:	f6 d0                	not    %al
    1a2f:	88 07                	mov    %al,(%rdi)
    1a31:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    1a35:	42 22 04 01          	and    (%rcx,%r8,1),%al
    1a39:	4c 89 c1             	mov    %r8,%rcx
    1a3c:	88 47 01             	mov    %al,0x1(%rdi)
    1a3f:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    1a43:	c3                   	ret    
    1a44:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a4b:	00 00 00 
    1a4e:	66 90                	xchg   %ax,%ax

0000000000001a50 <right_mask>:
right_mask():
    1a50:	48 89 d1             	mov    %rdx,%rcx
    1a53:	48 83 e1 07          	and    $0x7,%rcx
    1a57:	74 1e                	je     1a77 <right_mask+0x27>
    1a59:	48 c1 ea 03          	shr    $0x3,%rdx
    1a5d:	4c 8b 06             	mov    (%rsi),%r8
    1a60:	49 c1 e8 03          	shr    $0x3,%r8
    1a64:	49 8d 40 01          	lea    0x1(%r8),%rax
    1a68:	48 39 c2             	cmp    %rax,%rdx
    1a6b:	75 1c                	jne    1a89 <right_mask+0x39>
    1a6d:	66 c7 07 00 00       	movw   $0x0,(%rdi)
    1a72:	4c 89 47 08          	mov    %r8,0x8(%rdi)
    1a76:	c3                   	ret    
    1a77:	66 c7 07 00 00       	movw   $0x0,(%rdi)
    1a7c:	48 c1 ea 03          	shr    $0x3,%rdx
    1a80:	48 83 c2 ff          	add    $0xffffffffffffffff,%rdx
    1a84:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    1a88:	c3                   	ret    
    1a89:	b0 ff                	mov    $0xff,%al
    1a8b:	d2 e0                	shl    %cl,%al
    1a8d:	88 07                	mov    %al,(%rdi)
    1a8f:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    1a93:	22 04 11             	and    (%rcx,%rdx,1),%al
    1a96:	88 47 01             	mov    %al,0x1(%rdi)
    1a99:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    1a9d:	c3                   	ret    
    1a9e:	66 90                	xchg   %ax,%ax

0000000000001aa0 <bitarray_new>:
bitarray_new():
    1aa0:	41 56                	push   %r14
    1aa2:	53                   	push   %rbx
    1aa3:	50                   	push   %rax
    1aa4:	49 89 fe             	mov    %rdi,%r14
    1aa7:	48 8d 77 07          	lea    0x7(%rdi),%rsi
    1aab:	48 c1 ee 03          	shr    $0x3,%rsi
    1aaf:	bf 01 00 00 00       	mov    $0x1,%edi
    1ab4:	e8 97 f1 ff ff       	call   c50 <calloc@plt>
    1ab9:	48 85 c0             	test   %rax,%rax
    1abc:	74 29                	je     1ae7 <bitarray_new+0x47>
    1abe:	48 89 c3             	mov    %rax,%rbx
    1ac1:	bf 10 00 00 00       	mov    $0x10,%edi
    1ac6:	e8 95 f1 ff ff       	call   c60 <malloc@plt>
    1acb:	48 85 c0             	test   %rax,%rax
    1ace:	74 0f                	je     1adf <bitarray_new+0x3f>
    1ad0:	48 89 58 08          	mov    %rbx,0x8(%rax)
    1ad4:	4c 89 30             	mov    %r14,(%rax)
    1ad7:	48 83 c4 08          	add    $0x8,%rsp
    1adb:	5b                   	pop    %rbx
    1adc:	41 5e                	pop    %r14
    1ade:	c3                   	ret    
    1adf:	48 89 df             	mov    %rbx,%rdi
    1ae2:	e8 59 f1 ff ff       	call   c40 <free@plt>
    1ae7:	31 c0                	xor    %eax,%eax
    1ae9:	48 83 c4 08          	add    $0x8,%rsp
    1aed:	5b                   	pop    %rbx
    1aee:	41 5e                	pop    %r14
    1af0:	c3                   	ret    
    1af1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1af8:	00 00 00 
    1afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001b00 <bitarray_free>:
bitarray_free():
    1b00:	48 85 ff             	test   %rdi,%rdi
    1b03:	74 16                	je     1b1b <bitarray_free+0x1b>
    1b05:	53                   	push   %rbx
    1b06:	48 89 fb             	mov    %rdi,%rbx
    1b09:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1b0d:	e8 2e f1 ff ff       	call   c40 <free@plt>
    1b12:	48 89 df             	mov    %rbx,%rdi
    1b15:	5b                   	pop    %rbx
    1b16:	e9 25 f1 ff ff       	jmp    c40 <free@plt>
    1b1b:	c3                   	ret    
    1b1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001b20 <bitarray_get_bit_sz>:
bitarray_get_bit_sz():
    1b20:	48 8b 07             	mov    (%rdi),%rax
    1b23:	c3                   	ret    
    1b24:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b2b:	00 00 00 
    1b2e:	66 90                	xchg   %ax,%ax

0000000000001b30 <bitarray_get>:
bitarray_get():
    1b30:	48 8b 47 08          	mov    0x8(%rdi),%rax
    1b34:	48 89 f1             	mov    %rsi,%rcx
    1b37:	48 c1 e9 03          	shr    $0x3,%rcx
    1b3b:	40 80 e6 07          	and    $0x7,%sil
    1b3f:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
    1b43:	40 0f b6 ce          	movzbl %sil,%ecx
    1b47:	0f a3 c8             	bt     %ecx,%eax
    1b4a:	0f 92 c0             	setb   %al
    1b4d:	c3                   	ret    
    1b4e:	66 90                	xchg   %ax,%ax

0000000000001b50 <bitarray_set>:
bitarray_set():
    1b50:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    1b54:	89 f1                	mov    %esi,%ecx
    1b56:	48 89 f7             	mov    %rsi,%rdi
    1b59:	48 c1 ef 03          	shr    $0x3,%rdi
    1b5d:	80 e1 07             	and    $0x7,%cl
    1b60:	b0 01                	mov    $0x1,%al
    1b62:	d2 e0                	shl    %cl,%al
    1b64:	0f b6 c0             	movzbl %al,%eax
    1b67:	85 d2                	test   %edx,%edx
    1b69:	0f 44 c2             	cmove  %edx,%eax
    1b6c:	b2 fe                	mov    $0xfe,%dl
    1b6e:	89 f1                	mov    %esi,%ecx
    1b70:	d2 c2                	rol    %cl,%dl
    1b72:	41 22 14 38          	and    (%r8,%rdi,1),%dl
    1b76:	08 c2                	or     %al,%dl
    1b78:	41 88 14 38          	mov    %dl,(%r8,%rdi,1)
    1b7c:	c3                   	ret    
    1b7d:	0f 1f 00             	nopl   (%rax)

0000000000001b80 <bitarray_randfill>:
bitarray_randfill():
    1b80:	41 57                	push   %r15
    1b82:	41 56                	push   %r14
    1b84:	53                   	push   %rbx
    1b85:	48 8b 07             	mov    (%rdi),%rax
    1b88:	48 83 c0 1f          	add    $0x1f,%rax
    1b8c:	48 83 f8 20          	cmp    $0x20,%rax
    1b90:	72 2b                	jb     1bbd <bitarray_randfill+0x3d>
    1b92:	49 89 fe             	mov    %rdi,%r14
    1b95:	4c 8b 7f 08          	mov    0x8(%rdi),%r15
    1b99:	31 db                	xor    %ebx,%ebx
    1b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1ba0:	e8 cb f0 ff ff       	call   c70 <rand@plt>
    1ba5:	41 89 04 9f          	mov    %eax,(%r15,%rbx,4)
    1ba9:	48 83 c3 01          	add    $0x1,%rbx
    1bad:	49 8b 06             	mov    (%r14),%rax
    1bb0:	48 83 c0 1f          	add    $0x1f,%rax
    1bb4:	48 c1 e8 05          	shr    $0x5,%rax
    1bb8:	48 39 c3             	cmp    %rax,%rbx
    1bbb:	72 e3                	jb     1ba0 <bitarray_randfill+0x20>
    1bbd:	5b                   	pop    %rbx
    1bbe:	41 5e                	pop    %r14
    1bc0:	41 5f                	pop    %r15
    1bc2:	c3                   	ret    
    1bc3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bca:	00 00 00 
    1bcd:	0f 1f 00             	nopl   (%rax)

0000000000001bd0 <reverse_byte>:
reverse_byte():
    1bd0:	8a 07                	mov    (%rdi),%al
    1bd2:	c0 c0 04             	rol    $0x4,%al
    1bd5:	89 c1                	mov    %eax,%ecx
    1bd7:	80 e1 33             	and    $0x33,%cl
    1bda:	c0 e1 02             	shl    $0x2,%cl
    1bdd:	c0 e8 02             	shr    $0x2,%al
    1be0:	24 33                	and    $0x33,%al
    1be2:	08 c8                	or     %cl,%al
    1be4:	89 c1                	mov    %eax,%ecx
    1be6:	80 e1 55             	and    $0x55,%cl
    1be9:	00 c9                	add    %cl,%cl
    1beb:	d0 e8                	shr    %al
    1bed:	24 55                	and    $0x55,%al
    1bef:	08 c8                	or     %cl,%al
    1bf1:	88 07                	mov    %al,(%rdi)
    1bf3:	c3                   	ret    
    1bf4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bfb:	00 00 00 
    1bfe:	66 90                	xchg   %ax,%ax

0000000000001c00 <reverse_array>:
reverse_array():
    1c00:	48 8d 04 32          	lea    (%rdx,%rsi,1),%rax
    1c04:	48 d1 e8             	shr    %rax
    1c07:	48 39 f0             	cmp    %rsi,%rax
    1c0a:	76 71                	jbe    1c7d <reverse_array+0x7d>
    1c0c:	89 c1                	mov    %eax,%ecx
    1c0e:	29 f1                	sub    %esi,%ecx
    1c10:	4c 8d 46 01          	lea    0x1(%rsi),%r8
    1c14:	f6 c1 01             	test   $0x1,%cl
    1c17:	74 17                	je     1c30 <reverse_array+0x30>
    1c19:	44 8a 0c 37          	mov    (%rdi,%rsi,1),%r9b
    1c1d:	8a 4c 17 ff          	mov    -0x1(%rdi,%rdx,1),%cl
    1c21:	88 0c 37             	mov    %cl,(%rdi,%rsi,1)
    1c24:	44 88 4c 17 ff       	mov    %r9b,-0x1(%rdi,%rdx,1)
    1c29:	48 83 c2 ff          	add    $0xffffffffffffffff,%rdx
    1c2d:	4c 89 c6             	mov    %r8,%rsi
    1c30:	4c 39 c0             	cmp    %r8,%rax
    1c33:	74 48                	je     1c7d <reverse_array+0x7d>
    1c35:	48 8d 0c 3e          	lea    (%rsi,%rdi,1),%rcx
    1c39:	48 83 c1 01          	add    $0x1,%rcx
    1c3d:	48 29 c6             	sub    %rax,%rsi
    1c40:	48 01 d7             	add    %rdx,%rdi
    1c43:	48 83 c7 ff          	add    $0xffffffffffffffff,%rdi
    1c47:	31 d2                	xor    %edx,%edx
    1c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c50:	44 0f b6 41 ff       	movzbl -0x1(%rcx),%r8d
    1c55:	0f b6 04 17          	movzbl (%rdi,%rdx,1),%eax
    1c59:	88 41 ff             	mov    %al,-0x1(%rcx)
    1c5c:	44 88 04 17          	mov    %r8b,(%rdi,%rdx,1)
    1c60:	44 0f b6 01          	movzbl (%rcx),%r8d
    1c64:	0f b6 44 17 ff       	movzbl -0x1(%rdi,%rdx,1),%eax
    1c69:	88 01                	mov    %al,(%rcx)
    1c6b:	44 88 44 17 ff       	mov    %r8b,-0x1(%rdi,%rdx,1)
    1c70:	48 83 c2 fe          	add    $0xfffffffffffffffe,%rdx
    1c74:	48 83 c1 02          	add    $0x2,%rcx
    1c78:	48 39 d6             	cmp    %rdx,%rsi
    1c7b:	75 d3                	jne    1c50 <reverse_array+0x50>
    1c7d:	c3                   	ret    
    1c7e:	66 90                	xchg   %ax,%ax

0000000000001c80 <calc_shift>:
calc_shift():
    1c80:	48 89 f0             	mov    %rsi,%rax
    1c83:	83 e7 07             	and    $0x7,%edi
    1c86:	f7 d8                	neg    %eax
    1c88:	83 e0 07             	and    $0x7,%eax
    1c8b:	48 29 f8             	sub    %rdi,%rax
    1c8e:	c3                   	ret    
    1c8f:	90                   	nop

0000000000001c90 <left_shift>:
left_shift():
    1c90:	41 56                	push   %r14
    1c92:	53                   	push   %rbx
    1c93:	4c 8d 42 ff          	lea    -0x1(%rdx),%r8
    1c97:	49 39 f0             	cmp    %rsi,%r8
    1c9a:	0f 86 73 01 00 00    	jbe    1e13 <left_shift+0x183>
    1ca0:	44 8a 1c 37          	mov    (%rdi,%rsi,1),%r11b
    1ca4:	49 89 f1             	mov    %rsi,%r9
    1ca7:	49 f7 d1             	not    %r9
    1caa:	49 01 d1             	add    %rdx,%r9
    1cad:	49 83 f9 10          	cmp    $0x10,%r9
    1cb1:	73 08                	jae    1cbb <left_shift+0x2b>
    1cb3:	49 89 f6             	mov    %rsi,%r14
    1cb6:	e9 30 01 00 00       	jmp    1deb <left_shift+0x15b>
    1cbb:	4d 89 ca             	mov    %r9,%r10
    1cbe:	49 83 e2 f0          	and    $0xfffffffffffffff0,%r10
    1cc2:	4d 8d 34 32          	lea    (%r10,%rsi,1),%r14
    1cc6:	41 0f b6 c3          	movzbl %r11b,%eax
    1cca:	66 0f 6e d0          	movd   %eax,%xmm2
    1cce:	66 0f 73 fa 0f       	pslldq $0xf,%xmm2
    1cd3:	66 0f 6e d9          	movd   %ecx,%xmm3
    1cd7:	4c 8d 1c 3e          	lea    (%rsi,%rdi,1),%r11
    1cdb:	49 83 c3 01          	add    $0x1,%r11
    1cdf:	31 f6                	xor    %esi,%esi
    1ce1:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    1ce6:	45 0f 57 c9          	xorps  %xmm9,%xmm9
    1cea:	f3 44 0f 10 cb       	movss  %xmm3,%xmm9
    1cef:	66 44 0f 6f 05 f8 11 	movdqa 0x11f8(%rip),%xmm8        # 2ef0 <_IO_stdin_used+0x430>
    1cf6:	00 00 
    1cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1cff:	00 
    1d00:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    1d04:	f3 41 0f 6f 14 33    	movdqu (%r11,%rsi,1),%xmm2
    1d0a:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    1d0e:	66 0f 73 fd 01       	pslldq $0x1,%xmm5
    1d13:	66 0f 73 dc 0f       	psrldq $0xf,%xmm4
    1d18:	66 0f eb e5          	por    %xmm5,%xmm4
    1d1c:	66 0f 6f fa          	movdqa %xmm2,%xmm7
    1d20:	66 41 0f 68 fa       	punpckhbw %xmm10,%xmm7
    1d25:	66 0f 6f df          	movdqa %xmm7,%xmm3
    1d29:	66 41 0f 69 da       	punpckhwd %xmm10,%xmm3
    1d2e:	66 41 0f 61 fa       	punpcklwd %xmm10,%xmm7
    1d33:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    1d37:	66 41 0f 60 c2       	punpcklbw %xmm10,%xmm0
    1d3c:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    1d40:	66 41 0f 69 ca       	punpckhwd %xmm10,%xmm1
    1d45:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    1d4a:	66 0f 72 f0 08       	pslld  $0x8,%xmm0
    1d4f:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
    1d54:	66 0f 72 f7 08       	pslld  $0x8,%xmm7
    1d59:	66 0f 72 f3 08       	pslld  $0x8,%xmm3
    1d5e:	66 41 0f 60 e2       	punpcklbw %xmm10,%xmm4
    1d63:	66 0f 6f f4          	movdqa %xmm4,%xmm6
    1d67:	66 41 0f 61 f2       	punpcklwd %xmm10,%xmm6
    1d6c:	66 0f eb f0          	por    %xmm0,%xmm6
    1d70:	66 41 0f 69 e2       	punpckhwd %xmm10,%xmm4
    1d75:	66 0f eb e1          	por    %xmm1,%xmm4
    1d79:	66 41 0f 68 ea       	punpckhbw %xmm10,%xmm5
    1d7e:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    1d82:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    1d87:	66 0f eb c7          	por    %xmm7,%xmm0
    1d8b:	66 41 0f 69 ea       	punpckhwd %xmm10,%xmm5
    1d90:	66 0f eb eb          	por    %xmm3,%xmm5
    1d94:	66 41 0f d2 f1       	psrld  %xmm9,%xmm6
    1d99:	66 41 0f d2 e1       	psrld  %xmm9,%xmm4
    1d9e:	66 41 0f d2 c1       	psrld  %xmm9,%xmm0
    1da3:	66 41 0f d2 e9       	psrld  %xmm9,%xmm5
    1da8:	66 41 0f db e8       	pand   %xmm8,%xmm5
    1dad:	66 41 0f db c0       	pand   %xmm8,%xmm0
    1db2:	66 0f 67 c5          	packuswb %xmm5,%xmm0
    1db6:	66 41 0f db e0       	pand   %xmm8,%xmm4
    1dbb:	66 41 0f db f0       	pand   %xmm8,%xmm6
    1dc0:	66 0f 67 f4          	packuswb %xmm4,%xmm6
    1dc4:	66 0f 67 f0          	packuswb %xmm0,%xmm6
    1dc8:	f3 41 0f 7f 74 33 ff 	movdqu %xmm6,-0x1(%r11,%rsi,1)
    1dcf:	48 83 c6 10          	add    $0x10,%rsi
    1dd3:	49 39 f2             	cmp    %rsi,%r10
    1dd6:	0f 85 24 ff ff ff    	jne    1d00 <left_shift+0x70>
    1ddc:	4d 39 d1             	cmp    %r10,%r9
    1ddf:	74 32                	je     1e13 <left_shift+0x183>
    1de1:	66 44 0f c5 da 07    	pextrw $0x7,%xmm2,%r11d
    1de7:	41 c1 eb 08          	shr    $0x8,%r11d
    1deb:	49 83 c6 01          	add    $0x1,%r14
    1def:	90                   	nop
    1df0:	42 0f b6 04 37       	movzbl (%rdi,%r14,1),%eax
    1df5:	89 c6                	mov    %eax,%esi
    1df7:	c1 e6 08             	shl    $0x8,%esi
    1dfa:	41 0f b6 db          	movzbl %r11b,%ebx
    1dfe:	09 f3                	or     %esi,%ebx
    1e00:	d3 eb                	shr    %cl,%ebx
    1e02:	41 89 c3             	mov    %eax,%r11d
    1e05:	42 88 5c 37 ff       	mov    %bl,-0x1(%rdi,%r14,1)
    1e0a:	49 83 c6 01          	add    $0x1,%r14
    1e0e:	4c 39 f2             	cmp    %r14,%rdx
    1e11:	75 dd                	jne    1df0 <left_shift+0x160>
    1e13:	42 0f b6 04 07       	movzbl (%rdi,%r8,1),%eax
    1e18:	d3 e8                	shr    %cl,%eax
    1e1a:	42 88 04 07          	mov    %al,(%rdi,%r8,1)
    1e1e:	5b                   	pop    %rbx
    1e1f:	41 5e                	pop    %r14
    1e21:	c3                   	ret    
    1e22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1e29:	00 00 00 
    1e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001e30 <right_shift>:
right_shift():
    1e30:	53                   	push   %rbx
    1e31:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    1e35:	48 39 f0             	cmp    %rsi,%rax
    1e38:	76 61                	jbe    1e9b <right_shift+0x6b>
    1e3a:	89 f3                	mov    %esi,%ebx
    1e3c:	f7 d3                	not    %ebx
    1e3e:	01 d3                	add    %edx,%ebx
    1e40:	4c 8d 42 fe          	lea    -0x2(%rdx),%r8
    1e44:	f6 c3 01             	test   $0x1,%bl
    1e47:	75 0d                	jne    1e56 <right_shift+0x26>
    1e49:	48 89 c3             	mov    %rax,%rbx
    1e4c:	48 89 d0             	mov    %rdx,%rax
    1e4f:	49 39 f0             	cmp    %rsi,%r8
    1e52:	75 1c                	jne    1e70 <right_shift+0x40>
    1e54:	eb 45                	jmp    1e9b <right_shift+0x6b>
    1e56:	0f b7 5c 17 fe       	movzwl -0x2(%rdi,%rdx,1),%ebx
    1e5b:	d3 e3                	shl    %cl,%ebx
    1e5d:	88 7c 17 ff          	mov    %bh,-0x1(%rdi,%rdx,1)
    1e61:	4c 89 c3             	mov    %r8,%rbx
    1e64:	49 39 f0             	cmp    %rsi,%r8
    1e67:	74 32                	je     1e9b <right_shift+0x6b>
    1e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e70:	0f b6 14 1f          	movzbl (%rdi,%rbx,1),%edx
    1e74:	c1 e2 08             	shl    $0x8,%edx
    1e77:	0f b6 44 38 fe       	movzbl -0x2(%rax,%rdi,1),%eax
    1e7c:	09 d0                	or     %edx,%eax
    1e7e:	d3 e0                	shl    %cl,%eax
    1e80:	88 24 1f             	mov    %ah,(%rdi,%rbx,1)
    1e83:	0f b7 54 1f fe       	movzwl -0x2(%rdi,%rbx,1),%edx
    1e88:	d3 e2                	shl    %cl,%edx
    1e8a:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
    1e8e:	88 74 1f ff          	mov    %dh,-0x1(%rdi,%rbx,1)
    1e92:	48 83 c3 fe          	add    $0xfffffffffffffffe,%rbx
    1e96:	48 39 f3             	cmp    %rsi,%rbx
    1e99:	77 d5                	ja     1e70 <right_shift+0x40>
    1e9b:	0f b6 04 37          	movzbl (%rdi,%rsi,1),%eax
    1e9f:	d3 e0                	shl    %cl,%eax
    1ea1:	88 04 37             	mov    %al,(%rdi,%rsi,1)
    1ea4:	5b                   	pop    %rbx
    1ea5:	c3                   	ret    
    1ea6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ead:	00 00 00 

0000000000001eb0 <shift_bytes>:
shift_bytes():
    1eb0:	48 85 c9             	test   %rcx,%rcx
    1eb3:	0f 84 22 02 00 00    	je     20db <shift_bytes+0x22b>
    1eb9:	41 56                	push   %r14
    1ebb:	53                   	push   %rbx
    1ebc:	48 89 c8             	mov    %rcx,%rax
    1ebf:	48 f7 d9             	neg    %rcx
    1ec2:	48 0f 48 c8          	cmovs  %rax,%rcx
    1ec6:	4c 8d 42 ff          	lea    -0x1(%rdx),%r8
    1eca:	48 85 c0             	test   %rax,%rax
    1ecd:	7e 24                	jle    1ef3 <shift_bytes+0x43>
    1ecf:	49 39 f0             	cmp    %rsi,%r8
    1ed2:	0f 86 9b 01 00 00    	jbe    2073 <shift_bytes+0x1c3>
    1ed8:	44 8a 1c 37          	mov    (%rdi,%rsi,1),%r11b
    1edc:	49 89 f1             	mov    %rsi,%r9
    1edf:	49 f7 d1             	not    %r9
    1ee2:	49 01 d1             	add    %rdx,%r9
    1ee5:	49 83 f9 10          	cmp    $0x10,%r9
    1ee9:	73 37                	jae    1f22 <shift_bytes+0x72>
    1eeb:	49 89 f6             	mov    %rsi,%r14
    1eee:	e9 58 01 00 00       	jmp    204b <shift_bytes+0x19b>
    1ef3:	49 39 f0             	cmp    %rsi,%r8
    1ef6:	0f 86 d0 01 00 00    	jbe    20cc <shift_bytes+0x21c>
    1efc:	89 f0                	mov    %esi,%eax
    1efe:	f7 d0                	not    %eax
    1f00:	01 d0                	add    %edx,%eax
    1f02:	48 8d 5a fe          	lea    -0x2(%rdx),%rbx
    1f06:	a8 01                	test   $0x1,%al
    1f08:	0f 85 72 01 00 00    	jne    2080 <shift_bytes+0x1d0>
    1f0e:	4c 89 c0             	mov    %r8,%rax
    1f11:	49 89 d0             	mov    %rdx,%r8
    1f14:	48 39 f3             	cmp    %rsi,%rbx
    1f17:	0f 85 83 01 00 00    	jne    20a0 <shift_bytes+0x1f0>
    1f1d:	e9 aa 01 00 00       	jmp    20cc <shift_bytes+0x21c>
    1f22:	4d 89 ca             	mov    %r9,%r10
    1f25:	49 83 e2 f0          	and    $0xfffffffffffffff0,%r10
    1f29:	4d 8d 34 32          	lea    (%r10,%rsi,1),%r14
    1f2d:	41 0f b6 c3          	movzbl %r11b,%eax
    1f31:	66 0f 6e d0          	movd   %eax,%xmm2
    1f35:	66 0f 73 fa 0f       	pslldq $0xf,%xmm2
    1f3a:	66 0f 6e d9          	movd   %ecx,%xmm3
    1f3e:	4c 8d 1c 3e          	lea    (%rsi,%rdi,1),%r11
    1f42:	49 83 c3 01          	add    $0x1,%r11
    1f46:	31 f6                	xor    %esi,%esi
    1f48:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    1f4d:	45 0f 57 c9          	xorps  %xmm9,%xmm9
    1f51:	f3 44 0f 10 cb       	movss  %xmm3,%xmm9
    1f56:	66 44 0f 6f 05 91 0f 	movdqa 0xf91(%rip),%xmm8        # 2ef0 <_IO_stdin_used+0x430>
    1f5d:	00 00 
    1f5f:	90                   	nop
    1f60:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    1f64:	f3 41 0f 6f 14 33    	movdqu (%r11,%rsi,1),%xmm2
    1f6a:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    1f6e:	66 0f 73 fd 01       	pslldq $0x1,%xmm5
    1f73:	66 0f 73 dc 0f       	psrldq $0xf,%xmm4
    1f78:	66 0f eb e5          	por    %xmm5,%xmm4
    1f7c:	66 0f 6f fa          	movdqa %xmm2,%xmm7
    1f80:	66 41 0f 68 fa       	punpckhbw %xmm10,%xmm7
    1f85:	66 0f 6f df          	movdqa %xmm7,%xmm3
    1f89:	66 41 0f 69 da       	punpckhwd %xmm10,%xmm3
    1f8e:	66 41 0f 61 fa       	punpcklwd %xmm10,%xmm7
    1f93:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    1f97:	66 41 0f 60 c2       	punpcklbw %xmm10,%xmm0
    1f9c:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    1fa0:	66 41 0f 69 ca       	punpckhwd %xmm10,%xmm1
    1fa5:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    1faa:	66 0f 72 f0 08       	pslld  $0x8,%xmm0
    1faf:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
    1fb4:	66 0f 72 f7 08       	pslld  $0x8,%xmm7
    1fb9:	66 0f 72 f3 08       	pslld  $0x8,%xmm3
    1fbe:	66 41 0f 60 e2       	punpcklbw %xmm10,%xmm4
    1fc3:	66 0f 6f f4          	movdqa %xmm4,%xmm6
    1fc7:	66 41 0f 61 f2       	punpcklwd %xmm10,%xmm6
    1fcc:	66 0f eb f0          	por    %xmm0,%xmm6
    1fd0:	66 41 0f 69 e2       	punpckhwd %xmm10,%xmm4
    1fd5:	66 0f eb e1          	por    %xmm1,%xmm4
    1fd9:	66 41 0f 68 ea       	punpckhbw %xmm10,%xmm5
    1fde:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    1fe2:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    1fe7:	66 0f eb c7          	por    %xmm7,%xmm0
    1feb:	66 41 0f 69 ea       	punpckhwd %xmm10,%xmm5
    1ff0:	66 0f eb eb          	por    %xmm3,%xmm5
    1ff4:	66 41 0f d2 f1       	psrld  %xmm9,%xmm6
    1ff9:	66 41 0f d2 e1       	psrld  %xmm9,%xmm4
    1ffe:	66 41 0f d2 c1       	psrld  %xmm9,%xmm0
    2003:	66 41 0f d2 e9       	psrld  %xmm9,%xmm5
    2008:	66 41 0f db e8       	pand   %xmm8,%xmm5
    200d:	66 41 0f db c0       	pand   %xmm8,%xmm0
    2012:	66 0f 67 c5          	packuswb %xmm5,%xmm0
    2016:	66 41 0f db e0       	pand   %xmm8,%xmm4
    201b:	66 41 0f db f0       	pand   %xmm8,%xmm6
    2020:	66 0f 67 f4          	packuswb %xmm4,%xmm6
    2024:	66 0f 67 f0          	packuswb %xmm0,%xmm6
    2028:	f3 41 0f 7f 74 33 ff 	movdqu %xmm6,-0x1(%r11,%rsi,1)
    202f:	48 83 c6 10          	add    $0x10,%rsi
    2033:	49 39 f2             	cmp    %rsi,%r10
    2036:	0f 85 24 ff ff ff    	jne    1f60 <shift_bytes+0xb0>
    203c:	4d 39 d1             	cmp    %r10,%r9
    203f:	74 32                	je     2073 <shift_bytes+0x1c3>
    2041:	66 44 0f c5 da 07    	pextrw $0x7,%xmm2,%r11d
    2047:	41 c1 eb 08          	shr    $0x8,%r11d
    204b:	49 83 c6 01          	add    $0x1,%r14
    204f:	90                   	nop
    2050:	42 0f b6 04 37       	movzbl (%rdi,%r14,1),%eax
    2055:	89 c6                	mov    %eax,%esi
    2057:	c1 e6 08             	shl    $0x8,%esi
    205a:	41 0f b6 db          	movzbl %r11b,%ebx
    205e:	09 f3                	or     %esi,%ebx
    2060:	d3 eb                	shr    %cl,%ebx
    2062:	41 89 c3             	mov    %eax,%r11d
    2065:	42 88 5c 37 ff       	mov    %bl,-0x1(%rdi,%r14,1)
    206a:	49 83 c6 01          	add    $0x1,%r14
    206e:	4c 39 f2             	cmp    %r14,%rdx
    2071:	75 dd                	jne    2050 <shift_bytes+0x1a0>
    2073:	4a 8d 04 07          	lea    (%rdi,%r8,1),%rax
    2077:	42 0f b6 14 07       	movzbl (%rdi,%r8,1),%edx
    207c:	d3 ea                	shr    %cl,%edx
    207e:	eb 56                	jmp    20d6 <shift_bytes+0x226>
    2080:	0f b7 44 17 fe       	movzwl -0x2(%rdi,%rdx,1),%eax
    2085:	d3 e0                	shl    %cl,%eax
    2087:	88 64 17 ff          	mov    %ah,-0x1(%rdi,%rdx,1)
    208b:	48 89 d8             	mov    %rbx,%rax
    208e:	48 39 f3             	cmp    %rsi,%rbx
    2091:	74 39                	je     20cc <shift_bytes+0x21c>
    2093:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    209a:	00 00 00 
    209d:	0f 1f 00             	nopl   (%rax)
    20a0:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
    20a4:	c1 e2 08             	shl    $0x8,%edx
    20a7:	41 0f b6 5c 38 fe    	movzbl -0x2(%r8,%rdi,1),%ebx
    20ad:	09 d3                	or     %edx,%ebx
    20af:	d3 e3                	shl    %cl,%ebx
    20b1:	88 3c 07             	mov    %bh,(%rdi,%rax,1)
    20b4:	0f b7 54 07 fe       	movzwl -0x2(%rdi,%rax,1),%edx
    20b9:	d3 e2                	shl    %cl,%edx
    20bb:	4c 8d 40 ff          	lea    -0x1(%rax),%r8
    20bf:	88 74 07 ff          	mov    %dh,-0x1(%rdi,%rax,1)
    20c3:	48 83 c0 fe          	add    $0xfffffffffffffffe,%rax
    20c7:	48 39 f0             	cmp    %rsi,%rax
    20ca:	77 d4                	ja     20a0 <shift_bytes+0x1f0>
    20cc:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    20d0:	0f b6 14 37          	movzbl (%rdi,%rsi,1),%edx
    20d4:	d3 e2                	shl    %cl,%edx
    20d6:	88 10                	mov    %dl,(%rax)
    20d8:	5b                   	pop    %rbx
    20d9:	41 5e                	pop    %r14
    20db:	c3                   	ret    
    20dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020e0 <set_ends>:
set_ends():
    20e0:	48 8b 46 08          	mov    0x8(%rsi),%rax
    20e4:	8a 0e                	mov    (%rsi),%cl
    20e6:	f6 d1                	not    %cl
    20e8:	22 0c 07             	and    (%rdi,%rax,1),%cl
    20eb:	0a 4e 01             	or     0x1(%rsi),%cl
    20ee:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
    20f1:	48 8b 42 08          	mov    0x8(%rdx),%rax
    20f5:	8a 0a                	mov    (%rdx),%cl
    20f7:	f6 d1                	not    %cl
    20f9:	22 0c 07             	and    (%rdi,%rax,1),%cl
    20fc:	0a 4a 01             	or     0x1(%rdx),%cl
    20ff:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
    2102:	c3                   	ret    
    2103:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    210a:	00 00 00 
    210d:	0f 1f 00             	nopl   (%rax)

0000000000002110 <reverse>:
reverse():
    2110:	48 8d 46 01          	lea    0x1(%rsi),%rax
    2114:	48 39 d0             	cmp    %rdx,%rax
    2117:	0f 83 03 04 00 00    	jae    2520 <reverse+0x410>
    211d:	55                   	push   %rbp
    211e:	41 57                	push   %r15
    2120:	41 56                	push   %r14
    2122:	41 55                	push   %r13
    2124:	41 54                	push   %r12
    2126:	53                   	push   %rbx
    2127:	49 89 fc             	mov    %rdi,%r12
    212a:	49 89 f1             	mov    %rsi,%r9
    212d:	49 c1 e9 03          	shr    $0x3,%r9
    2131:	48 8b 2f             	mov    (%rdi),%rbp
    2134:	48 c1 ed 03          	shr    $0x3,%rbp
    2138:	48 8d 45 01          	lea    0x1(%rbp),%rax
    213c:	49 39 c1             	cmp    %rax,%r9
    213f:	75 0b                	jne    214c <reverse+0x3c>
    2141:	41 b0 ff             	mov    $0xff,%r8b
    2144:	45 31 db             	xor    %r11d,%r11d
    2147:	49 89 e9             	mov    %rbp,%r9
    214a:	eb 1a                	jmp    2166 <reverse+0x56>
    214c:	89 f1                	mov    %esi,%ecx
    214e:	80 e1 07             	and    $0x7,%cl
    2151:	41 b0 ff             	mov    $0xff,%r8b
    2154:	41 d2 e0             	shl    %cl,%r8b
    2157:	45 89 c3             	mov    %r8d,%r11d
    215a:	41 f6 d3             	not    %r11b
    215d:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
    2162:	46 22 1c 09          	and    (%rcx,%r9,1),%r11b
    2166:	48 89 d3             	mov    %rdx,%rbx
    2169:	48 c1 eb 03          	shr    $0x3,%rbx
    216d:	48 89 d1             	mov    %rdx,%rcx
    2170:	48 83 e1 07          	and    $0x7,%rcx
    2174:	74 12                	je     2188 <reverse+0x78>
    2176:	41 b2 ff             	mov    $0xff,%r10b
    2179:	48 39 c3             	cmp    %rax,%rbx
    217c:	75 1e                	jne    219c <reverse+0x8c>
    217e:	45 31 f6             	xor    %r14d,%r14d
    2181:	4c 39 cd             	cmp    %r9,%rbp
    2184:	73 30                	jae    21b6 <reverse+0xa6>
    2186:	eb 6e                	jmp    21f6 <reverse+0xe6>
    2188:	48 83 c3 ff          	add    $0xffffffffffffffff,%rbx
    218c:	41 b2 ff             	mov    $0xff,%r10b
    218f:	45 31 f6             	xor    %r14d,%r14d
    2192:	48 89 dd             	mov    %rbx,%rbp
    2195:	4c 39 cd             	cmp    %r9,%rbp
    2198:	73 1c                	jae    21b6 <reverse+0xa6>
    219a:	eb 5a                	jmp    21f6 <reverse+0xe6>
    219c:	41 d2 e2             	shl    %cl,%r10b
    219f:	49 8b 44 24 08       	mov    0x8(%r12),%rax
    21a4:	44 8a 34 18          	mov    (%rax,%rbx,1),%r14b
    21a8:	45 20 d6             	and    %r10b,%r14b
    21ab:	41 f6 d2             	not    %r10b
    21ae:	48 89 dd             	mov    %rbx,%rbp
    21b1:	4c 39 cd             	cmp    %r9,%rbp
    21b4:	72 40                	jb     21f6 <reverse+0xe6>
    21b6:	4c 89 c8             	mov    %r9,%rax
    21b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21c0:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    21c5:	0f b6 1c 07          	movzbl (%rdi,%rax,1),%ebx
    21c9:	c0 c3 04             	rol    $0x4,%bl
    21cc:	89 d9                	mov    %ebx,%ecx
    21ce:	80 e1 33             	and    $0x33,%cl
    21d1:	c0 e1 02             	shl    $0x2,%cl
    21d4:	c0 eb 02             	shr    $0x2,%bl
    21d7:	80 e3 33             	and    $0x33,%bl
    21da:	08 cb                	or     %cl,%bl
    21dc:	89 d9                	mov    %ebx,%ecx
    21de:	80 e1 55             	and    $0x55,%cl
    21e1:	00 c9                	add    %cl,%cl
    21e3:	d0 eb                	shr    %bl
    21e5:	80 e3 55             	and    $0x55,%bl
    21e8:	08 cb                	or     %cl,%bl
    21ea:	88 1c 07             	mov    %bl,(%rdi,%rax,1)
    21ed:	48 83 c0 01          	add    $0x1,%rax
    21f1:	48 39 e8             	cmp    %rbp,%rax
    21f4:	76 ca                	jbe    21c0 <reverse+0xb0>
    21f6:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    21fb:	4c 8d 7d 01          	lea    0x1(%rbp),%r15
    21ff:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
    2204:	49 8d 04 29          	lea    (%r9,%rbp,1),%rax
    2208:	48 83 c0 01          	add    $0x1,%rax
    220c:	48 d1 e8             	shr    %rax
    220f:	4c 39 c8             	cmp    %r9,%rax
    2212:	0f 86 94 00 00 00    	jbe    22ac <reverse+0x19c>
    2218:	44 89 74 24 fc       	mov    %r14d,-0x4(%rsp)
    221d:	44 89 5c 24 f8       	mov    %r11d,-0x8(%rsp)
    2222:	41 89 c3             	mov    %eax,%r11d
    2225:	45 29 cb             	sub    %r9d,%r11d
    2228:	49 8d 59 01          	lea    0x1(%r9),%rbx
    222c:	4d 89 ce             	mov    %r9,%r14
    222f:	4d 89 fd             	mov    %r15,%r13
    2232:	41 f6 c3 01          	test   $0x1,%r11b
    2236:	74 1b                	je     2253 <reverse+0x143>
    2238:	48 89 fd             	mov    %rdi,%rbp
    223b:	46 8a 1c 0f          	mov    (%rdi,%r9,1),%r11b
    223f:	4c 8b 6c 24 f0       	mov    -0x10(%rsp),%r13
    2244:	42 8a 0c 2f          	mov    (%rdi,%r13,1),%cl
    2248:	42 88 0c 0f          	mov    %cl,(%rdi,%r9,1)
    224c:	46 88 1c 2f          	mov    %r11b,(%rdi,%r13,1)
    2250:	49 89 de             	mov    %rbx,%r14
    2253:	48 39 d8             	cmp    %rbx,%rax
    2256:	74 45                	je     229d <reverse+0x18d>
    2258:	49 8d 1c 3e          	lea    (%r14,%rdi,1),%rbx
    225c:	48 83 c3 01          	add    $0x1,%rbx
    2260:	49 29 c6             	sub    %rax,%r14
    2263:	4a 8d 04 2f          	lea    (%rdi,%r13,1),%rax
    2267:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    226b:	31 ed                	xor    %ebp,%ebp
    226d:	0f 1f 00             	nopl   (%rax)
    2270:	44 0f b6 5b ff       	movzbl -0x1(%rbx),%r11d
    2275:	0f b6 0c 28          	movzbl (%rax,%rbp,1),%ecx
    2279:	88 4b ff             	mov    %cl,-0x1(%rbx)
    227c:	44 88 1c 28          	mov    %r11b,(%rax,%rbp,1)
    2280:	44 0f b6 1b          	movzbl (%rbx),%r11d
    2284:	0f b6 4c 28 ff       	movzbl -0x1(%rax,%rbp,1),%ecx
    2289:	88 0b                	mov    %cl,(%rbx)
    228b:	44 88 5c 28 ff       	mov    %r11b,-0x1(%rax,%rbp,1)
    2290:	48 83 c5 fe          	add    $0xfffffffffffffffe,%rbp
    2294:	48 83 c3 02          	add    $0x2,%rbx
    2298:	49 39 ee             	cmp    %rbp,%r14
    229b:	75 d3                	jne    2270 <reverse+0x160>
    229d:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    22a2:	44 8b 5c 24 f8       	mov    -0x8(%rsp),%r11d
    22a7:	44 8b 74 24 fc       	mov    -0x4(%rsp),%r14d
    22ac:	83 e6 07             	and    $0x7,%esi
    22af:	f7 da                	neg    %edx
    22b1:	83 e2 07             	and    $0x7,%edx
    22b4:	48 29 f2             	sub    %rsi,%rdx
    22b7:	0f 84 3e 02 00 00    	je     24fb <reverse+0x3eb>
    22bd:	48 89 d1             	mov    %rdx,%rcx
    22c0:	48 f7 d9             	neg    %rcx
    22c3:	48 0f 48 ca          	cmovs  %rdx,%rcx
    22c7:	48 85 d2             	test   %rdx,%rdx
    22ca:	7e 27                	jle    22f3 <reverse+0x1e3>
    22cc:	4c 8b 7c 24 f0       	mov    -0x10(%rsp),%r15
    22d1:	4c 89 fd             	mov    %r15,%rbp
    22d4:	4c 29 cd             	sub    %r9,%rbp
    22d7:	0f 86 0d 02 00 00    	jbe    24ea <reverse+0x3da>
    22dd:	42 8a 1c 0f          	mov    (%rdi,%r9,1),%bl
    22e1:	48 83 fd 10          	cmp    $0x10,%rbp
    22e5:	0f 83 90 00 00 00    	jae    237b <reverse+0x26b>
    22eb:	4c 89 c8             	mov    %r9,%rax
    22ee:	e9 b9 01 00 00       	jmp    24ac <reverse+0x39c>
    22f3:	4c 39 4c 24 f0       	cmp    %r9,-0x10(%rsp)
    22f8:	76 72                	jbe    236c <reverse+0x25c>
    22fa:	48 89 fd             	mov    %rdi,%rbp
    22fd:	48 8b 7c 24 f0       	mov    -0x10(%rsp),%rdi
    2302:	89 fe                	mov    %edi,%esi
    2304:	44 29 ce             	sub    %r9d,%esi
    2307:	49 8d 41 01          	lea    0x1(%r9),%rax
    230b:	48 89 fa             	mov    %rdi,%rdx
    230e:	40 f6 c6 01          	test   $0x1,%sil
    2312:	74 15                	je     2329 <reverse+0x219>
    2314:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
    2318:	48 89 ee             	mov    %rbp,%rsi
    231b:	0f b7 5c 3d ff       	movzwl -0x1(%rbp,%rdi,1),%ebx
    2320:	d3 e3                	shl    %cl,%ebx
    2322:	88 7c 3d 00          	mov    %bh,0x0(%rbp,%rdi,1)
    2326:	49 89 ff             	mov    %rdi,%r15
    2329:	48 39 c7             	cmp    %rax,%rdi
    232c:	48 89 ef             	mov    %rbp,%rdi
    232f:	74 3b                	je     236c <reverse+0x25c>
    2331:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2338:	00 00 00 
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2340:	0f b6 04 17          	movzbl (%rdi,%rdx,1),%eax
    2344:	c1 e0 08             	shl    $0x8,%eax
    2347:	41 0f b6 5c 3f fe    	movzbl -0x2(%r15,%rdi,1),%ebx
    234d:	09 c3                	or     %eax,%ebx
    234f:	d3 e3                	shl    %cl,%ebx
    2351:	88 3c 17             	mov    %bh,(%rdi,%rdx,1)
    2354:	0f b7 44 17 fe       	movzwl -0x2(%rdi,%rdx,1),%eax
    2359:	d3 e0                	shl    %cl,%eax
    235b:	4c 8d 7a ff          	lea    -0x1(%rdx),%r15
    235f:	88 64 17 ff          	mov    %ah,-0x1(%rdi,%rdx,1)
    2363:	48 83 c2 fe          	add    $0xfffffffffffffffe,%rdx
    2367:	4c 39 ca             	cmp    %r9,%rdx
    236a:	77 d4                	ja     2340 <reverse+0x230>
    236c:	42 0f b6 04 0f       	movzbl (%rdi,%r9,1),%eax
    2371:	4c 01 cf             	add    %r9,%rdi
    2374:	d3 e0                	shl    %cl,%eax
    2376:	e9 79 01 00 00       	jmp    24f4 <reverse+0x3e4>
    237b:	48 89 ee             	mov    %rbp,%rsi
    237e:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    2382:	49 8d 04 31          	lea    (%r9,%rsi,1),%rax
    2386:	0f b6 d3             	movzbl %bl,%edx
    2389:	48 89 f3             	mov    %rsi,%rbx
    238c:	66 0f 6e d2          	movd   %edx,%xmm2
    2390:	66 0f 73 fa 0f       	pslldq $0xf,%xmm2
    2395:	66 0f 6e d9          	movd   %ecx,%xmm3
    2399:	49 8d 14 39          	lea    (%r9,%rdi,1),%rdx
    239d:	48 83 c2 01          	add    $0x1,%rdx
    23a1:	31 f6                	xor    %esi,%esi
    23a3:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    23a8:	45 0f 57 c9          	xorps  %xmm9,%xmm9
    23ac:	f3 44 0f 10 cb       	movss  %xmm3,%xmm9
    23b1:	66 44 0f 6f 05 36 0b 	movdqa 0xb36(%rip),%xmm8        # 2ef0 <_IO_stdin_used+0x430>
    23b8:	00 00 
    23ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    23c0:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    23c4:	f3 0f 6f 14 32       	movdqu (%rdx,%rsi,1),%xmm2
    23c9:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    23cd:	66 0f 73 fd 01       	pslldq $0x1,%xmm5
    23d2:	66 0f 73 dc 0f       	psrldq $0xf,%xmm4
    23d7:	66 0f eb e5          	por    %xmm5,%xmm4
    23db:	66 0f 6f fa          	movdqa %xmm2,%xmm7
    23df:	66 41 0f 68 fa       	punpckhbw %xmm10,%xmm7
    23e4:	66 0f 6f df          	movdqa %xmm7,%xmm3
    23e8:	66 41 0f 69 da       	punpckhwd %xmm10,%xmm3
    23ed:	66 41 0f 61 fa       	punpcklwd %xmm10,%xmm7
    23f2:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    23f6:	66 41 0f 60 c2       	punpcklbw %xmm10,%xmm0
    23fb:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    23ff:	66 41 0f 69 ca       	punpckhwd %xmm10,%xmm1
    2404:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    2409:	66 0f 72 f0 08       	pslld  $0x8,%xmm0
    240e:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
    2413:	66 0f 72 f7 08       	pslld  $0x8,%xmm7
    2418:	66 0f 72 f3 08       	pslld  $0x8,%xmm3
    241d:	66 41 0f 60 e2       	punpcklbw %xmm10,%xmm4
    2422:	66 0f 6f f4          	movdqa %xmm4,%xmm6
    2426:	66 41 0f 61 f2       	punpcklwd %xmm10,%xmm6
    242b:	66 0f eb f0          	por    %xmm0,%xmm6
    242f:	66 41 0f 69 e2       	punpckhwd %xmm10,%xmm4
    2434:	66 0f eb e1          	por    %xmm1,%xmm4
    2438:	66 41 0f 68 ea       	punpckhbw %xmm10,%xmm5
    243d:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    2441:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
    2446:	66 0f eb c7          	por    %xmm7,%xmm0
    244a:	66 41 0f 69 ea       	punpckhwd %xmm10,%xmm5
    244f:	66 0f eb eb          	por    %xmm3,%xmm5
    2453:	66 41 0f d2 f1       	psrld  %xmm9,%xmm6
    2458:	66 41 0f d2 e1       	psrld  %xmm9,%xmm4
    245d:	66 41 0f d2 c1       	psrld  %xmm9,%xmm0
    2462:	66 41 0f d2 e9       	psrld  %xmm9,%xmm5
    2467:	66 41 0f db e8       	pand   %xmm8,%xmm5
    246c:	66 41 0f db c0       	pand   %xmm8,%xmm0
    2471:	66 0f 67 c5          	packuswb %xmm5,%xmm0
    2475:	66 41 0f db e0       	pand   %xmm8,%xmm4
    247a:	66 41 0f db f0       	pand   %xmm8,%xmm6
    247f:	66 0f 67 f4          	packuswb %xmm4,%xmm6
    2483:	66 0f 67 f0          	packuswb %xmm0,%xmm6
    2487:	f3 0f 7f 74 32 ff    	movdqu %xmm6,-0x1(%rdx,%rsi,1)
    248d:	48 83 c6 10          	add    $0x10,%rsi
    2491:	48 39 f3             	cmp    %rsi,%rbx
    2494:	0f 85 26 ff ff ff    	jne    23c0 <reverse+0x2b0>
    249a:	48 39 dd             	cmp    %rbx,%rbp
    249d:	4c 8b 7c 24 f0       	mov    -0x10(%rsp),%r15
    24a2:	74 46                	je     24ea <reverse+0x3da>
    24a4:	66 0f c5 da 07       	pextrw $0x7,%xmm2,%ebx
    24a9:	c1 eb 08             	shr    $0x8,%ebx
    24ac:	4c 8b 7c 24 f0       	mov    -0x10(%rsp),%r15
    24b1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    24b8:	00 00 00 
    24bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    24c0:	0f b6 54 07 01       	movzbl 0x1(%rdi,%rax,1),%edx
    24c5:	89 d6                	mov    %edx,%esi
    24c7:	c1 e6 08             	shl    $0x8,%esi
    24ca:	48 89 fd             	mov    %rdi,%rbp
    24cd:	0f b6 fb             	movzbl %bl,%edi
    24d0:	09 f7                	or     %esi,%edi
    24d2:	d3 ef                	shr    %cl,%edi
    24d4:	89 d3                	mov    %edx,%ebx
    24d6:	40 88 7c 05 00       	mov    %dil,0x0(%rbp,%rax,1)
    24db:	48 89 ef             	mov    %rbp,%rdi
    24de:	48 8d 50 01          	lea    0x1(%rax),%rdx
    24e2:	48 89 d0             	mov    %rdx,%rax
    24e5:	49 39 d7             	cmp    %rdx,%r15
    24e8:	75 d6                	jne    24c0 <reverse+0x3b0>
    24ea:	42 0f b6 04 3f       	movzbl (%rdi,%r15,1),%eax
    24ef:	4c 01 ff             	add    %r15,%rdi
    24f2:	d3 e8                	shr    %cl,%eax
    24f4:	88 07                	mov    %al,(%rdi)
    24f6:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    24fb:	46 22 04 0f          	and    (%rdi,%r9,1),%r8b
    24ff:	45 08 d8             	or     %r11b,%r8b
    2502:	46 88 04 0f          	mov    %r8b,(%rdi,%r9,1)
    2506:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    250b:	44 22 14 07          	and    (%rdi,%rax,1),%r10b
    250f:	45 08 f2             	or     %r14b,%r10b
    2512:	44 88 14 07          	mov    %r10b,(%rdi,%rax,1)
    2516:	5b                   	pop    %rbx
    2517:	41 5c                	pop    %r12
    2519:	41 5d                	pop    %r13
    251b:	41 5e                	pop    %r14
    251d:	41 5f                	pop    %r15
    251f:	5d                   	pop    %rbp
    2520:	c3                   	ret    
    2521:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2528:	00 00 00 
    252b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002530 <rotate>:
rotate():
    2530:	41 57                	push   %r15
    2532:	41 56                	push   %r14
    2534:	41 54                	push   %r12
    2536:	53                   	push   %rbx
    2537:	50                   	push   %rax
    2538:	49 89 d6             	mov    %rdx,%r14
    253b:	49 89 f7             	mov    %rsi,%r15
    253e:	48 89 fb             	mov    %rdi,%rbx
    2541:	4c 8d 24 31          	lea    (%rcx,%rsi,1),%r12
    2545:	4c 89 e2             	mov    %r12,%rdx
    2548:	e8 c3 fb ff ff       	call   2110 <reverse>
    254d:	48 89 df             	mov    %rbx,%rdi
    2550:	4c 89 e6             	mov    %r12,%rsi
    2553:	4c 89 f2             	mov    %r14,%rdx
    2556:	e8 b5 fb ff ff       	call   2110 <reverse>
    255b:	48 89 df             	mov    %rbx,%rdi
    255e:	4c 89 fe             	mov    %r15,%rsi
    2561:	4c 89 f2             	mov    %r14,%rdx
    2564:	48 83 c4 08          	add    $0x8,%rsp
    2568:	5b                   	pop    %rbx
    2569:	41 5c                	pop    %r12
    256b:	41 5e                	pop    %r14
    256d:	41 5f                	pop    %r15
    256f:	e9 9c fb ff ff       	jmp    2110 <reverse>
    2574:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    257b:	00 00 00 
    257e:	66 90                	xchg   %ax,%ax

0000000000002580 <bitarray_rotate>:
bitarray_rotate():
    2580:	55                   	push   %rbp
    2581:	41 57                	push   %r15
    2583:	41 56                	push   %r14
    2585:	41 55                	push   %r13
    2587:	41 54                	push   %r12
    2589:	53                   	push   %rbx
    258a:	48 83 ec 38          	sub    $0x38,%rsp
    258e:	48 89 d3             	mov    %rdx,%rbx
    2591:	49 89 f6             	mov    %rsi,%r14
    2594:	49 89 fd             	mov    %rdi,%r13
    2597:	48 83 fa 08          	cmp    $0x8,%rdx
    259b:	77 1f                	ja     25bc <bitarray_rotate+0x3c>
    259d:	48 85 db             	test   %rbx,%rbx
    25a0:	0f 84 50 02 00 00    	je     27f6 <bitarray_rotate+0x276>
    25a6:	48 89 c8             	mov    %rcx,%rax
    25a9:	48 09 d8             	or     %rbx,%rax
    25ac:	48 c1 e8 20          	shr    $0x20,%rax
    25b0:	74 33                	je     25e5 <bitarray_rotate+0x65>
    25b2:	48 89 c8             	mov    %rcx,%rax
    25b5:	48 99                	cqto   
    25b7:	48 f7 fb             	idiv   %rbx
    25ba:	eb 2f                	jmp    25eb <bitarray_rotate+0x6b>
    25bc:	48 85 c9             	test   %rcx,%rcx
    25bf:	0f 84 31 02 00 00    	je     27f6 <bitarray_rotate+0x276>
    25c5:	48 89 c8             	mov    %rcx,%rax
    25c8:	48 09 d8             	or     %rbx,%rax
    25cb:	48 c1 e8 20          	shr    $0x20,%rax
    25cf:	0f 84 3f 01 00 00    	je     2714 <bitarray_rotate+0x194>
    25d5:	48 89 c8             	mov    %rcx,%rax
    25d8:	48 99                	cqto   
    25da:	48 f7 fb             	idiv   %rbx
    25dd:	48 89 d0             	mov    %rdx,%rax
    25e0:	e9 37 01 00 00       	jmp    271c <bitarray_rotate+0x19c>
    25e5:	89 c8                	mov    %ecx,%eax
    25e7:	31 d2                	xor    %edx,%edx
    25e9:	f7 f3                	div    %ebx
    25eb:	89 d8                	mov    %ebx,%eax
    25ed:	29 d0                	sub    %edx,%eax
    25ef:	66 98                	cbtw   
    25f1:	f6 fb                	idiv   %bl
    25f3:	0f be c4             	movsbl %ah,%eax
    25f6:	84 c0                	test   %al,%al
    25f8:	0f 84 f8 01 00 00    	je     27f6 <bitarray_rotate+0x276>
    25fe:	48 98                	cltq   
    2600:	4c 89 f5             	mov    %r14,%rbp
    2603:	48 c1 ed 03          	shr    $0x3,%rbp
    2607:	4a 8d 3c 33          	lea    (%rbx,%r14,1),%rdi
    260b:	49 8d 76 01          	lea    0x1(%r14),%rsi
    260f:	44 89 f1             	mov    %r14d,%ecx
    2612:	80 e1 07             	and    $0x7,%cl
    2615:	b2 01                	mov    $0x1,%dl
    2617:	d2 e2                	shl    %cl,%dl
    2619:	48 39 fe             	cmp    %rdi,%rsi
    261c:	0f 83 62 01 00 00    	jae    2784 <bitarray_rotate+0x204>
    2622:	48 83 c3 ff          	add    $0xffffffffffffffff,%rbx
    2626:	45 31 db             	xor    %r11d,%r11d
    2629:	31 c9                	xor    %ecx,%ecx
    262b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    2630:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
    2635:	48 89 6c 24 18       	mov    %rbp,0x18(%rsp)
    263a:	88 54 24 0e          	mov    %dl,0xe(%rsp)
    263e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    2643:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    264a:	00 00 00 
    264d:	0f 1f 00             	nopl   (%rax)
    2650:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    2655:	4d 8b 65 08          	mov    0x8(%r13),%r12
    2659:	41 8a 04 2c          	mov    (%r12,%rbp,1),%al
    265d:	88 44 24 0f          	mov    %al,0xf(%rsp)
    2661:	4c 89 f0             	mov    %r14,%rax
    2664:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    266b:	00 00 00 
    266e:	66 90                	xchg   %ax,%ax
    2670:	48 8d 68 01          	lea    0x1(%rax),%rbp
    2674:	89 e9                	mov    %ebp,%ecx
    2676:	48 89 ee             	mov    %rbp,%rsi
    2679:	48 c1 ee 03          	shr    $0x3,%rsi
    267d:	80 e1 07             	and    $0x7,%cl
    2680:	41 b0 01             	mov    $0x1,%r8b
    2683:	41 d2 e0             	shl    %cl,%r8b
    2686:	45 0f b6 3c 34       	movzbl (%r12,%rsi,1),%r15d
    268b:	44 0f b6 f1          	movzbl %cl,%r14d
    268f:	49 89 c1             	mov    %rax,%r9
    2692:	49 c1 e9 03          	shr    $0x3,%r9
    2696:	89 c1                	mov    %eax,%ecx
    2698:	80 e1 07             	and    $0x7,%cl
    269b:	41 b2 01             	mov    $0x1,%r10b
    269e:	41 d2 e2             	shl    %cl,%r10b
    26a1:	45 0f a3 f7          	bt     %r14d,%r15d
    26a5:	41 0f b6 fa          	movzbl %r10b,%edi
    26a9:	41 0f 43 fb          	cmovae %r11d,%edi
    26ad:	b2 fe                	mov    $0xfe,%dl
    26af:	89 c1                	mov    %eax,%ecx
    26b1:	d2 c2                	rol    %cl,%dl
    26b3:	48 89 e8             	mov    %rbp,%rax
    26b6:	43 22 14 0c          	and    (%r12,%r9,1),%dl
    26ba:	40 08 fa             	or     %dil,%dl
    26bd:	43 88 14 0c          	mov    %dl,(%r12,%r9,1)
    26c1:	4d 8b 65 08          	mov    0x8(%r13),%r12
    26c5:	48 83 c3 ff          	add    $0xffffffffffffffff,%rbx
    26c9:	75 a5                	jne    2670 <bitarray_rotate+0xf0>
    26cb:	8a 54 24 0e          	mov    0xe(%rsp),%dl
    26cf:	84 54 24 0f          	test   %dl,0xf(%rsp)
    26d3:	41 0f b6 c0          	movzbl %r8b,%eax
    26d7:	89 c1                	mov    %eax,%ecx
    26d9:	41 0f 44 cb          	cmove  %r11d,%ecx
    26dd:	f6 d0                	not    %al
    26df:	41 22 04 34          	and    (%r12,%rsi,1),%al
    26e3:	08 c8                	or     %cl,%al
    26e5:	41 88 04 34          	mov    %al,(%r12,%rsi,1)
    26e9:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    26ee:	48 83 c1 01          	add    $0x1,%rcx
    26f2:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    26f7:	48 39 c1             	cmp    %rax,%rcx
    26fa:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    26ff:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2704:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    2709:	0f 85 41 ff ff ff    	jne    2650 <bitarray_rotate+0xd0>
    270f:	e9 e2 00 00 00       	jmp    27f6 <bitarray_rotate+0x276>
    2714:	89 c8                	mov    %ecx,%eax
    2716:	31 d2                	xor    %edx,%edx
    2718:	f7 f3                	div    %ebx
    271a:	89 d0                	mov    %edx,%eax
    271c:	48 01 d8             	add    %rbx,%rax
    271f:	48 89 c1             	mov    %rax,%rcx
    2722:	48 09 d9             	or     %rbx,%rcx
    2725:	48 c1 e9 20          	shr    $0x20,%rcx
    2729:	74 07                	je     2732 <bitarray_rotate+0x1b2>
    272b:	48 99                	cqto   
    272d:	48 f7 fb             	idiv   %rbx
    2730:	eb 04                	jmp    2736 <bitarray_rotate+0x1b6>
    2732:	31 d2                	xor    %edx,%edx
    2734:	f7 f3                	div    %ebx
    2736:	48 89 d8             	mov    %rbx,%rax
    2739:	48 29 d0             	sub    %rdx,%rax
    273c:	49 89 c4             	mov    %rax,%r12
    273f:	49 f7 dc             	neg    %r12
    2742:	4c 0f 48 e0          	cmovs  %rax,%r12
    2746:	4c 01 f3             	add    %r14,%rbx
    2749:	4d 01 f4             	add    %r14,%r12
    274c:	4c 89 ef             	mov    %r13,%rdi
    274f:	4c 89 f6             	mov    %r14,%rsi
    2752:	4c 89 e2             	mov    %r12,%rdx
    2755:	e8 b6 f9 ff ff       	call   2110 <reverse>
    275a:	4c 89 ef             	mov    %r13,%rdi
    275d:	4c 89 e6             	mov    %r12,%rsi
    2760:	48 89 da             	mov    %rbx,%rdx
    2763:	e8 a8 f9 ff ff       	call   2110 <reverse>
    2768:	4c 89 ef             	mov    %r13,%rdi
    276b:	4c 89 f6             	mov    %r14,%rsi
    276e:	48 89 da             	mov    %rbx,%rdx
    2771:	48 83 c4 38          	add    $0x38,%rsp
    2775:	5b                   	pop    %rbx
    2776:	41 5c                	pop    %r12
    2778:	41 5d                	pop    %r13
    277a:	41 5e                	pop    %r14
    277c:	41 5f                	pop    %r15
    277e:	5d                   	pop    %rbp
    277f:	e9 8c f9 ff ff       	jmp    2110 <reverse>
    2784:	44 0f b6 ca          	movzbl %dl,%r9d
    2788:	f6 d2                	not    %dl
    278a:	3c 01                	cmp    $0x1,%al
    278c:	74 4c                	je     27da <bitarray_rotate+0x25a>
    278e:	48 89 c1             	mov    %rax,%rcx
    2791:	48 83 e1 fe          	and    $0xfffffffffffffffe,%rcx
    2795:	45 31 c0             	xor    %r8d,%r8d
    2798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    279f:	00 
    27a0:	49 8b 75 08          	mov    0x8(%r13),%rsi
    27a4:	0f b6 1c 2e          	movzbl (%rsi,%rbp,1),%ebx
    27a8:	44 84 cb             	test   %r9b,%bl
    27ab:	44 89 cf             	mov    %r9d,%edi
    27ae:	41 0f 44 f8          	cmove  %r8d,%edi
    27b2:	20 d3                	and    %dl,%bl
    27b4:	40 08 fb             	or     %dil,%bl
    27b7:	88 1c 2e             	mov    %bl,(%rsi,%rbp,1)
    27ba:	49 8b 75 08          	mov    0x8(%r13),%rsi
    27be:	0f b6 1c 2e          	movzbl (%rsi,%rbp,1),%ebx
    27c2:	44 84 cb             	test   %r9b,%bl
    27c5:	44 89 cf             	mov    %r9d,%edi
    27c8:	41 0f 44 f8          	cmove  %r8d,%edi
    27cc:	20 d3                	and    %dl,%bl
    27ce:	40 08 fb             	or     %dil,%bl
    27d1:	88 1c 2e             	mov    %bl,(%rsi,%rbp,1)
    27d4:	48 83 c1 fe          	add    $0xfffffffffffffffe,%rcx
    27d8:	75 c6                	jne    27a0 <bitarray_rotate+0x220>
    27da:	a8 01                	test   $0x1,%al
    27dc:	74 18                	je     27f6 <bitarray_rotate+0x276>
    27de:	49 8b 4d 08          	mov    0x8(%r13),%rcx
    27e2:	8a 1c 29             	mov    (%rcx,%rbp,1),%bl
    27e5:	31 f6                	xor    %esi,%esi
    27e7:	44 84 cb             	test   %r9b,%bl
    27ea:	41 0f 45 f1          	cmovne %r9d,%esi
    27ee:	20 da                	and    %bl,%dl
    27f0:	40 08 f2             	or     %sil,%dl
    27f3:	88 14 29             	mov    %dl,(%rcx,%rbp,1)
    27f6:	48 83 c4 38          	add    $0x38,%rsp
    27fa:	5b                   	pop    %rbx
    27fb:	41 5c                	pop    %r12
    27fd:	41 5d                	pop    %r13
    27ff:	41 5e                	pop    %r14
    2801:	41 5f                	pop    %r15
    2803:	5d                   	pop    %rbp
    2804:	c3                   	ret    
    2805:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    280c:	00 00 00 
    280f:	90                   	nop

0000000000002810 <bitarray_rotate_ref>:
bitarray_rotate_ref():
    2810:	55                   	push   %rbp
    2811:	41 57                	push   %r15
    2813:	41 56                	push   %r14
    2815:	41 55                	push   %r13
    2817:	41 54                	push   %r12
    2819:	53                   	push   %rbx
    281a:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
    281f:	48 85 d2             	test   %rdx,%rdx
    2822:	0f 84 c2 01 00 00    	je     29ea <bitarray_rotate_ref+0x1da>
    2828:	49 89 d7             	mov    %rdx,%r15
    282b:	48 89 c8             	mov    %rcx,%rax
    282e:	48 09 d0             	or     %rdx,%rax
    2831:	48 c1 e8 20          	shr    $0x20,%rax
    2835:	74 0a                	je     2841 <bitarray_rotate_ref+0x31>
    2837:	48 89 c8             	mov    %rcx,%rax
    283a:	48 99                	cqto   
    283c:	49 f7 ff             	idiv   %r15
    283f:	eb 07                	jmp    2848 <bitarray_rotate_ref+0x38>
    2841:	89 c8                	mov    %ecx,%eax
    2843:	31 d2                	xor    %edx,%edx
    2845:	41 f7 f7             	div    %r15d
    2848:	4c 89 f8             	mov    %r15,%rax
    284b:	48 29 d0             	sub    %rdx,%rax
    284e:	48 89 c1             	mov    %rax,%rcx
    2851:	4c 09 f9             	or     %r15,%rcx
    2854:	48 c1 e9 20          	shr    $0x20,%rcx
    2858:	74 0f                	je     2869 <bitarray_rotate_ref+0x59>
    285a:	48 99                	cqto   
    285c:	49 f7 ff             	idiv   %r15
    285f:	48 85 d2             	test   %rdx,%rdx
    2862:	75 13                	jne    2877 <bitarray_rotate_ref+0x67>
    2864:	e9 81 01 00 00       	jmp    29ea <bitarray_rotate_ref+0x1da>
    2869:	31 d2                	xor    %edx,%edx
    286b:	41 f7 f7             	div    %r15d
    286e:	48 85 d2             	test   %rdx,%rdx
    2871:	0f 84 73 01 00 00    	je     29ea <bitarray_rotate_ref+0x1da>
    2877:	48 8b 4c 24 e0       	mov    -0x20(%rsp),%rcx
    287c:	48 89 cd             	mov    %rcx,%rbp
    287f:	48 c1 ed 03          	shr    $0x3,%rbp
    2883:	49 8d 04 0f          	lea    (%r15,%rcx,1),%rax
    2887:	48 8d 71 01          	lea    0x1(%rcx),%rsi
    288b:	80 e1 07             	and    $0x7,%cl
    288e:	41 b2 01             	mov    $0x1,%r10b
    2891:	41 d2 e2             	shl    %cl,%r10b
    2894:	48 39 c6             	cmp    %rax,%rsi
    2897:	0f 83 db 00 00 00    	jae    2978 <bitarray_rotate_ref+0x168>
    289d:	49 83 c7 ff          	add    $0xffffffffffffffff,%r15
    28a1:	45 31 db             	xor    %r11d,%r11d
    28a4:	45 31 f6             	xor    %r14d,%r14d
    28a7:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
    28ac:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
    28b1:	48 89 54 24 e8       	mov    %rdx,-0x18(%rsp)
    28b6:	44 88 54 24 de       	mov    %r10b,-0x22(%rsp)
    28bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    28c0:	4c 8b 67 08          	mov    0x8(%rdi),%r12
    28c4:	41 8a 04 2c          	mov    (%r12,%rbp,1),%al
    28c8:	88 44 24 df          	mov    %al,-0x21(%rsp)
    28cc:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
    28d1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    28d8:	00 00 00 
    28db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    28e0:	4c 8d 68 01          	lea    0x1(%rax),%r13
    28e4:	44 89 e9             	mov    %r13d,%ecx
    28e7:	4c 89 ed             	mov    %r13,%rbp
    28ea:	48 c1 ed 03          	shr    $0x3,%rbp
    28ee:	80 e1 07             	and    $0x7,%cl
    28f1:	41 b0 01             	mov    $0x1,%r8b
    28f4:	41 d2 e0             	shl    %cl,%r8b
    28f7:	45 0f b6 14 2c       	movzbl (%r12,%rbp,1),%r10d
    28fc:	0f b6 d1             	movzbl %cl,%edx
    28ff:	48 89 c6             	mov    %rax,%rsi
    2902:	48 c1 ee 03          	shr    $0x3,%rsi
    2906:	89 c1                	mov    %eax,%ecx
    2908:	80 e1 07             	and    $0x7,%cl
    290b:	41 b1 01             	mov    $0x1,%r9b
    290e:	41 d2 e1             	shl    %cl,%r9b
    2911:	41 0f a3 d2          	bt     %edx,%r10d
    2915:	41 0f b6 d1          	movzbl %r9b,%edx
    2919:	41 0f 43 d3          	cmovae %r11d,%edx
    291d:	b3 fe                	mov    $0xfe,%bl
    291f:	89 c1                	mov    %eax,%ecx
    2921:	d2 c3                	rol    %cl,%bl
    2923:	4c 89 e8             	mov    %r13,%rax
    2926:	41 22 1c 34          	and    (%r12,%rsi,1),%bl
    292a:	08 d3                	or     %dl,%bl
    292c:	41 88 1c 34          	mov    %bl,(%r12,%rsi,1)
    2930:	4c 8b 67 08          	mov    0x8(%rdi),%r12
    2934:	49 83 c7 ff          	add    $0xffffffffffffffff,%r15
    2938:	75 a6                	jne    28e0 <bitarray_rotate_ref+0xd0>
    293a:	44 8a 54 24 de       	mov    -0x22(%rsp),%r10b
    293f:	44 84 54 24 df       	test   %r10b,-0x21(%rsp)
    2944:	41 0f b6 c0          	movzbl %r8b,%eax
    2948:	89 c1                	mov    %eax,%ecx
    294a:	41 0f 44 cb          	cmove  %r11d,%ecx
    294e:	f6 d0                	not    %al
    2950:	41 22 04 2c          	and    (%r12,%rbp,1),%al
    2954:	08 c8                	or     %cl,%al
    2956:	41 88 04 2c          	mov    %al,(%r12,%rbp,1)
    295a:	49 83 c6 01          	add    $0x1,%r14
    295e:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
    2963:	49 39 d6             	cmp    %rdx,%r14
    2966:	4c 8b 7c 24 f8       	mov    -0x8(%rsp),%r15
    296b:	48 8b 6c 24 f0       	mov    -0x10(%rsp),%rbp
    2970:	0f 85 4a ff ff ff    	jne    28c0 <bitarray_rotate_ref+0xb0>
    2976:	eb 72                	jmp    29ea <bitarray_rotate_ref+0x1da>
    2978:	45 0f b6 ca          	movzbl %r10b,%r9d
    297c:	41 f6 d2             	not    %r10b
    297f:	48 83 fa 01          	cmp    $0x1,%rdx
    2983:	74 46                	je     29cb <bitarray_rotate_ref+0x1bb>
    2985:	48 89 d1             	mov    %rdx,%rcx
    2988:	48 83 e1 fe          	and    $0xfffffffffffffffe,%rcx
    298c:	45 31 c0             	xor    %r8d,%r8d
    298f:	90                   	nop
    2990:	48 8b 77 08          	mov    0x8(%rdi),%rsi
    2994:	0f b6 1c 2e          	movzbl (%rsi,%rbp,1),%ebx
    2998:	44 84 cb             	test   %r9b,%bl
    299b:	44 89 c8             	mov    %r9d,%eax
    299e:	41 0f 44 c0          	cmove  %r8d,%eax
    29a2:	44 20 d3             	and    %r10b,%bl
    29a5:	08 c3                	or     %al,%bl
    29a7:	88 1c 2e             	mov    %bl,(%rsi,%rbp,1)
    29aa:	48 8b 47 08          	mov    0x8(%rdi),%rax
    29ae:	0f b6 1c 28          	movzbl (%rax,%rbp,1),%ebx
    29b2:	44 84 cb             	test   %r9b,%bl
    29b5:	44 89 ce             	mov    %r9d,%esi
    29b8:	41 0f 44 f0          	cmove  %r8d,%esi
    29bc:	44 20 d3             	and    %r10b,%bl
    29bf:	40 08 f3             	or     %sil,%bl
    29c2:	88 1c 28             	mov    %bl,(%rax,%rbp,1)
    29c5:	48 83 c1 fe          	add    $0xfffffffffffffffe,%rcx
    29c9:	75 c5                	jne    2990 <bitarray_rotate_ref+0x180>
    29cb:	f6 c2 01             	test   $0x1,%dl
    29ce:	74 1a                	je     29ea <bitarray_rotate_ref+0x1da>
    29d0:	48 8b 47 08          	mov    0x8(%rdi),%rax
    29d4:	8a 0c 28             	mov    (%rax,%rbp,1),%cl
    29d7:	31 f6                	xor    %esi,%esi
    29d9:	44 84 c9             	test   %r9b,%cl
    29dc:	41 0f 45 f1          	cmovne %r9d,%esi
    29e0:	41 20 ca             	and    %cl,%r10b
    29e3:	41 08 f2             	or     %sil,%r10b
    29e6:	44 88 14 28          	mov    %r10b,(%rax,%rbp,1)
    29ea:	5b                   	pop    %rbx
    29eb:	41 5c                	pop    %r12
    29ed:	41 5d                	pop    %r13
    29ef:	41 5e                	pop    %r14
    29f1:	41 5f                	pop    %r15
    29f3:	5d                   	pop    %rbp
    29f4:	c3                   	ret    
    29f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    29fc:	00 00 00 00 

0000000000002a00 <ktiming_getmark>:
ktiming_getmark():
    2a00:	48 83 ec 18          	sub    $0x18,%rsp
    2a04:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    2a09:	bf 02 00 00 00       	mov    $0x2,%edi
    2a0e:	e8 6d e2 ff ff       	call   c80 <clock_gettime@plt>
    2a13:	85 c0                	test   %eax,%eax
    2a15:	74 13                	je     2a2a <ktiming_getmark+0x2a>
    2a17:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    2a1c:	bf 01 00 00 00       	mov    $0x1,%edi
    2a21:	e8 5a e2 ff ff       	call   c80 <clock_gettime@plt>
    2a26:	85 c0                	test   %eax,%eax
    2a28:	75 13                	jne    2a3d <ktiming_getmark+0x3d>
    2a2a:	48 69 44 24 08 00 ca 	imul   $0x3b9aca00,0x8(%rsp),%rax
    2a31:	9a 3b 
    2a33:	48 03 44 24 10       	add    0x10(%rsp),%rax
    2a38:	48 83 c4 18          	add    $0x18,%rsp
    2a3c:	c3                   	ret    
    2a3d:	48 8d 3d 77 04 00 00 	lea    0x477(%rip),%rdi        # 2ebb <_IO_stdin_used+0x3fb>
    2a44:	e8 47 e2 ff ff       	call   c90 <perror@plt>
    2a49:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    2a4e:	e8 4d e2 ff ff       	call   ca0 <exit@plt>
    2a53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a5a:	00 00 00 
    2a5d:	0f 1f 00             	nopl   (%rax)

0000000000002a60 <ktiming_diff_usec>:
ktiming_diff_usec():
    2a60:	48 8b 06             	mov    (%rsi),%rax
    2a63:	48 2b 07             	sub    (%rdi),%rax
    2a66:	c3                   	ret    
    2a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2a6e:	00 00 

0000000000002a70 <ktiming_diff_sec>:
ktiming_diff_sec():
    2a70:	48 8b 06             	mov    (%rsi),%rax
    2a73:	48 2b 07             	sub    (%rdi),%rax
    2a76:	78 0e                	js     2a86 <ktiming_diff_sec+0x16>
    2a78:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    2a7d:	f3 0f 5e 05 3f 00 00 	divss  0x3f(%rip),%xmm0        # 2ac4 <_IO_stdin_used+0x4>
    2a84:	00 
    2a85:	c3                   	ret    
    2a86:	48 89 c1             	mov    %rax,%rcx
    2a89:	48 d1 e9             	shr    %rcx
    2a8c:	83 e0 01             	and    $0x1,%eax
    2a8f:	48 09 c8             	or     %rcx,%rax
    2a92:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    2a97:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    2a9b:	f3 0f 5e 05 21 00 00 	divss  0x21(%rip),%xmm0        # 2ac4 <_IO_stdin_used+0x4>
    2aa2:	00 
    2aa3:	c3                   	ret    

Disassembly of section .fini:

0000000000002aa4 <_fini>:
_fini():
    2aa4:	f3 0f 1e fa          	endbr64 
    2aa8:	48 83 ec 08          	sub    $0x8,%rsp
    2aac:	48 83 c4 08          	add    $0x8,%rsp
    2ab0:	c3                   	ret    
