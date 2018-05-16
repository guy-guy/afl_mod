	.file	"my_test3.c"
	.section	.rodata
.LC0:
	.string	"1234!"
.LC1:
	.string	"%s%d"
.LC2:
	.string	"Hum?"
.LC3:
	.string	"Magic!!"
.LC4:
	.string	"hello!"
.LC5:
	.string	"Sorry!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -40(%rbp)
	movl	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	testl	%eax, %eax
	jg	.L2
	movl	$.LC2, %edi
	call	puts
	movl	$1, %edi
	call	exit
.L2:
	movl	$0, -44(%rbp)
	jmp	.L3
.L4:
	addl	$1, -44(%rbp)
.L3:
	movl	-48(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L4
	cmpl	$100, -44(%rbp)
	jne	.L5
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movabsq	$3000000000000, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
.L5:
	leaq	-32(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movabsq	$3000000000000, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	jmp	.L7
.L6:
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L7:
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
