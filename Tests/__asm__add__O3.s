	.file	"__asm__add.cpp"
	.text
	.p2align 4
	.def	_ZL10__asm__addPyS_y;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10__asm__addPyS_y
_ZL10__asm__addPyS_y:
.LFB2242:
	.seh_endprologue
/APP
 # 17 "../Include/__asm__add.hpp" 1
	mov  $1, %al ## initialize carry
.LOOP0:
	cmpb $1, %al ## restore carry
	movq (%rdx), %r10
	adcq %r10, (%rcx) ## add with carry
	setae  %al ## set carry
	leaq 8(%rcx), %rcx
	leaq 8(%rdx), %rdx
	dec  %r8
	jnz  .LOOP0

 # 0 "" 2
/NO_APP
	ret
	.seh_endproc
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB2774:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rsi
	movq	%rcx, %rbx
	testq	%rsi, %rsi
	je	.L7
	cmpb	$0, 56(%rsi)
	je	.L5
	movsbl	67(%rsi), %edx
.L6:
	movq	%rbx, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZNSo5flushEv
.L5:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	movl	$10, %edx
	movq	%rsi, %rcx
	call	*48(%rax)
	movsbl	%al, %edx
	jmp	.L6
.L7:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC6:
	.ascii " \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2243:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$184, %rsp
	.seh_stackalloc	184

	movups	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	.seh_endprologue
	leaq	.LC6(%rip), %rdi
	call	__main

	leaq	32(%rsp), %r12
	leaq	96(%rsp), %r13
	movdqu	.LC0(%rip), %xmm0 

	movl	$7, %r8d   ## 
	movq	%r13, %rdx ## 
	movq	%r12, %rcx ##
	movq	%r12, %rbx ## 

	movups	%xmm0, 32(%rsp)
	movdqu	.LC1(%rip), %xmm0
	
	leaq	88(%rsp), %rbp
	movq	$0, 80(%rsp)

	movups	%xmm0, 48(%rsp)
	movdqu	.LC2(%rip), %xmm0
	movq	$0, 144(%rsp)

	movups	%xmm0, 64(%rsp)
	movdqu	.LC3(%rip), %xmm0

	movups	%xmm0, 96(%rsp)
	movdqu	.LC4(%rip), %xmm0

	movups	%xmm0, 112(%rsp)
	movdqu	.LC5(%rip), %xmm0
	movups	%xmm0, 128(%rsp)
	call	_ZL10__asm__addPyS_y ###############################################################

	movq	.refptr._ZSt4cout(%rip), %rsi
	.p2align 4,,10
	.p2align 3
.L9:
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
	addq	$8, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%rbx, %rbp
	jne	.L9
	movq	%rsi, %rcx
	movq	%r12, %rbx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movdqu	.LC8(%rip), %xmm0
	movq	%r13, %rdx
	movq	%r12, %rcx
	movdqu	.LC7(%rip), %xmm6
	movl	$7, %r8d
	movq	$0, 80(%rsp)
	movups	%xmm0, 48(%rsp)
	movdqu	.LC9(%rip), %xmm0
	movq	$0, 144(%rsp)
	movups	%xmm0, 64(%rsp)
	movdqu	.LC10(%rip), %xmm0
	movups	%xmm6, 32(%rsp)
	movups	%xmm0, 96(%rsp)
	movdqu	.LC11(%rip), %xmm0
	movups	%xmm0, 112(%rsp)
	movdqu	.LC12(%rip), %xmm0
	movups	%xmm0, 128(%rsp)
	call	_ZL10__asm__addPyS_y ###############################################################

	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
	addq	$8, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	cmpq	%rbx, %rbp
	jne	.L10
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r13, %rdx
	movq	%r12, %rcx
	movups	%xmm6, 32(%rsp)
	movdqu	.LC13(%rip), %xmm0
	movl	$2, %r8d
	movups	%xmm0, 96(%rsp)
	call	_ZL10__asm__addPyS_y ###############################################################


	movq	%rsi, %rcx
	movl	$3, %edx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	nop
	movups	160(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16


##################### a[] = { 1, 243, 3, 4, 5, 6, 0 }
.LC0:
	.quad	1
	.quad	243
	.align 16
.LC1:
	.quad	3
	.quad	4
	.align 16
.LC2:
	.quad	5
	.quad	6
	.align 16
##################### b[] = { 7, 8, 9, 10, 11, 12, 0 }
.LC3:
	.quad	7
	.quad	8
	.align 16
.LC4:
	.quad	9
	.quad	10
	.align 16
.LC5:
	.quad	11
	.quad	12
	.align 16
##################### a[] = { 3, 0, 0, 1, 3, 1, 0 }
.LC7:
	.quad	3
	.quad	0
	.align 16
.LC8:
	.quad	0
	.quad	1
	.align 16
.LC9:
	.quad	3
	.quad	1
	.align 16
##################### b[] = { 2, 0, 0, ULONG_LONG_MAX, ULONG_LONG_MAX, 12, 0 }
.LC10:
	.quad	2
	.quad	0
	.align 16
.LC11:
	.quad	0
	.quad	-1
	.align 16
.LC12:
	.quad	-1
	.quad	12
	.align 16
##################### b[] = { ULONG_LONG_MAX, 0 }
.LC13:
	.quad	-1
	.quad	0
#####################

	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
