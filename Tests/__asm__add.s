	.file	"__asm__add.cpp"
	.text
	.p2align 4
	.def	_ZL10__asm__addPVyPVKyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10__asm__addPVyPVKyy
_ZL10__asm__addPVyPVKyy:
.LFB2242:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 24(%rsp)
/APP
 # 42 ".\../Include/__asm__add.hpp" 1
	movq 8(%rsp), %r8
	movq 16(%rsp), %r9
	mov  24(%rsp), %rcx
	mov  $1, %al
.LOOP0:
	cmpb $1, %al
	movq (%r9), %rdx
	adcq %rdx, (%r8)
	setae  %al
	addq $8, %r8
	addq $8, %r9
	dec  %rcx
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
	pushq	%rdi
	.seh_pushreg	%rdi

	pushq	%rsi
	.seh_pushreg	%rsi

	pushq	%rbx
	.seh_pushreg	%rbx

	subq	$736, %rsp
	.seh_stackalloc	736
	.seh_endprologue
	call	__main
	movl	$1, %eax
	movdqu	.LC0(%rip), %xmm0
	movl	$243, %edx
	movq	%rax, 224(%rsp)
	movl	$3, %eax
	leaq	224(%rsp), %rcx
	movups	%xmm0, 480(%rsp)
	movdqu	.LC1(%rip), %xmm0
	movq	%rdx, 232(%rsp)
	movl	$4, %edx
	movups	%xmm0, 496(%rsp)
	movdqu	.LC2(%rip), %xmm0
	movq	%rax, 240(%rsp)
	movl	$5, %eax
	movq	%rdx, 248(%rsp)
	movl	$6, %edx
	movups	%xmm0, 512(%rsp)
	movdqu	.LC3(%rip), %xmm0
	movq	%rax, 256(%rsp)
	movl	$7, %eax
	movq	%rdx, 264(%rsp)
	movl	$8, %edx
	movq	$0, 272(%rsp)
	movups	%xmm0, 544(%rsp)
	movdqu	.LC4(%rip), %xmm0
	movq	%rax, 288(%rsp)
	movl	$9, %eax
	movq	%rdx, 296(%rsp)
	movl	$10, %edx
	movq	%rax, 304(%rsp)
	movl	$11, %eax
	movq	%rdx, 312(%rsp)
	movl	$12, %edx
	movq	%rax, 320(%rsp)
	movups	%xmm0, 560(%rsp)
	movdqu	.LC5(%rip), %xmm0
	movq	%rdx, 328(%rsp)
	leaq	288(%rsp), %rdx
	movq	$0, 336(%rsp)
	movq	$7, 32(%rsp)
	movq	32(%rsp), %r8
	movq	$0, 528(%rsp)
	movq	$0, 592(%rsp)
	movups	%xmm0, 576(%rsp)
	call	_ZL10__asm__addPVyPVKyy
	movq	32(%rsp), %rax
	movq	.refptr._ZSt4cout(%rip), %rsi
	testq	%rax, %rax
	je	.L9
	movq	.refptr._ZSt4cout(%rip), %rsi
	xorl	%ebx, %ebx
	leaq	.LC6(%rip), %rdi
	.p2align 4,,10
	.p2align 3
.L10:
	movq	224(%rsp,%rbx,8), %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	32(%rsp), %rax
	cmpq	%rax, %rbx
	jb	.L10
.L9:
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movdqu	.LC7(%rip), %xmm0
	xorl	%eax, %eax
	movl	$1, %edx
	movq	$3, 352(%rsp)
	leaq	352(%rsp), %rcx
	movups	%xmm0, 608(%rsp)

	movdqu	.LC8(%rip), %xmm0
	movq	$0, 360(%rsp)
	movups	%xmm0, 624(%rsp)
	movdqu	.LC9(%rip), %xmm0
	movq	%rax, 368(%rsp)
	movl	$3, %eax

	movups	%xmm0, 640(%rsp)
	movdqu	.LC10(%rip), %xmm0

	movq	%rdx, 376(%rsp)
	movl	$1, %edx
	movq	%rax, 384(%rsp)
	xorl	%eax, %eax
	movq	%rdx, 392(%rsp)
	movq	$-1, %rdx
	movups	%xmm0, 672(%rsp)
	movdqu	.LC11(%rip), %xmm0
	movq	$0, 400(%rsp)
	movq	$2, 416(%rsp)
	movq	$0, 424(%rsp)
	movq	%rax, 432(%rsp)
	movq	$-1, %rax
	movq	%rdx, 440(%rsp)
	movl	$12, %edx
	movq	%rax, 448(%rsp)
	movups	%xmm0, 688(%rsp)
	movdqu	.LC12(%rip), %xmm0
	movq	%rdx, 456(%rsp)
	leaq	416(%rsp), %rdx
	movq	$0, 464(%rsp)
	movq	$7, 40(%rsp)
	movq	40(%rsp), %r8
	movq	$0, 656(%rsp)
	movq	$0, 720(%rsp)
	movups	%xmm0, 704(%rsp)
	call	_ZL10__asm__addPVyPVKyy
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.L11
	xorl	%ebx, %ebx
	leaq	.LC6(%rip), %rdi
	.p2align 4,,10
	.p2align 3
.L12:
	movq	352(%rsp,%rbx,8), %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	40(%rsp), %rax
	cmpq	%rax, %rbx
	jb	.L12
.L11:
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	$-1, %rax
	xorl	%edx, %edx
	movq	$3, 64(%rsp)
	movq	$0, 72(%rsp)
	leaq	64(%rsp), %rcx
	movq	%rax, 80(%rsp)
	movq	%rdx, 88(%rsp)
	leaq	80(%rsp), %rdx
	movq	$2, 48(%rsp)
	movq	48(%rsp), %r8
	call	_ZL10__asm__addPVyPVKyy
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L13
	xorl	%ebx, %ebx
	leaq	.LC6(%rip), %rdi
.L14:
	movq	64(%rsp,%rbx,8), %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rax
	cmpq	%rax, %rbx
	jb	.L14
.L13:
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$1, %edx
	leaq	96(%rsp), %rcx
	movdqu	.LC13(%rip), %xmm0
	movabsq	$6512548990859393274, %rax
	movq	$0, 176(%rsp)
	movq	%rax, 96(%rsp)
	movabsq	$216110626640441270, %rax
	movq	%rdx, 104(%rsp)
	xorl	%edx, %edx
	movq	$0, 112(%rsp)
	movups	%xmm0, 160(%rsp)
	movdqu	.LC14(%rip), %xmm0
	movq	%rax, 128(%rsp)
	movq	%rdx, 136(%rsp)
	leaq	128(%rsp), %rdx
	movq	$0, 144(%rsp)
	movq	$3, 56(%rsp)
	movq	56(%rsp), %r8
	movq	$0, 208(%rsp)
	movups	%xmm0, 192(%rsp)
	call	_ZL10__asm__addPVyPVKyy
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	.L15
	xorl	%ebx, %ebx
	leaq	.LC6(%rip), %rdi
.L16:
	movq	96(%rsp,%rbx,8), %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	56(%rsp), %rax
	cmpq	%rax, %rbx
	jb	.L16
.L15:
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	xorl	%eax, %eax
	addq	$736, %rsp

	popq	%rbx
	popq	%rsi
	popq	%rdi
	
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16

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
.LC13:
	.quad	6512548990859393274
	.quad	1
	.align 16
.LC14:
	.quad	216110626640441270
	.quad	0
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
