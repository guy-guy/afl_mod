	.file	"toy.c"
	.text
.Ltext0:
	.local	lava_val
	.comm	lava_val,4000000,32
	.globl	lava_set
	.type	lava_set, @function
lava_set:
.LFB0:
	.file 1 "toy.c"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 5 0
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%edx, lava_val(,%rax,4)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	lava_set, .-lava_set
	.globl	lava_get
	.type	lava_get, @function
lava_get:
.LFB1:
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 7 0
	movl	-4(%rbp), %eax
	movl	lava_val(,%rax,4), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	lava_get, .-lava_get
	.globl	parse_header
	.type	parse_header, @function
parse_header:
.LFB4:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 38 0
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	$1, %rax
	je	.L5
	.loc 1 39 0
	movl	$1, %edi
	call	exit
.L5:
	.loc 1 40 0
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1279350337, %eax
	je	.L7
	.loc 1 41 0
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 42 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	parse_header, .-parse_header
	.globl	parse_record
	.type	parse_record, @function
parse_record:
.LFB5:
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 45 0
	movl	$24, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 46 0
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	fread
	cmpq	$1, %rax
	je	.L9
	.loc 1 47 0
	movl	$1, %edi
	call	exit
.L9:
	.loc 1 48 0
	movq	-8(%rbp), %rax
	.loc 1 49 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	parse_record, .-parse_record
	.section	.rodata
.LC0:
	.string	"Entry: bar = %s, "
.LC1:
	.string	"fdata = %f\n"
.LC2:
	.string	"intdata = %u\n"
.LC3:
	.string	"Unknown type %x\n"
	.text
	.globl	consume_record
	.type	consume_record, @function
consume_record:
.LFB6:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 1 52 0
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 53 0
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L12
.LBB2:
	.loc 1 54 0
	cmpq	$0, -40(%rbp)
	je	.L13
	.loc 1 54 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L13
.LBB3:
	.loc 1 54 0 discriminator 2
	movl	$0, -24(%rbp)
	.loc 1 55 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$131, %edi
	call	lava_set
.L13:
.LBE3:
	.loc 1 56 0
	movq	-40(%rbp), %rax
	movss	20(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	$131, %edi
	call	lava_get
	movl	%eax, %ebx
	movl	$131, %edi
	call	lava_get
	cmpl	$1818326494, %eax
	je	.L14
	.loc 1 56 0 is_stmt 0 discriminator 2
	movl	$131, %edi
	call	lava_get
	cmpl	$-562732692, %eax
	jne	.L15
.L14:
	.loc 1 56 0 discriminator 3
	movl	$1, %eax
	jmp	.L16
.L15:
	.loc 1 56 0 discriminator 4
	movl	$0, %eax
.L16:
	.loc 1 56 0 discriminator 6
	imull	%ebx, %eax
	movl	%eax, %eax
	addq	$.LC1, %rax
	movsd	-48(%rbp), %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf
	movl	%eax, -20(%rbp)
.LBE2:
	jmp	.L17
.L12:
	.loc 1 58 0 is_stmt 1
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L18
	.loc 1 59 0
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L17
.L18:
	.loc 1 62 0
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 63 0
	movl	$1, %edi
	call	exit
.L17:
	.loc 1 65 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 66 0
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	consume_record, .-consume_record
	.section	.rodata
.LC4:
	.string	"rb"
.LC5:
	.string	"File timestamp: %u\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 1 68 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 69 0
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -48(%rbp)
	.loc 1 72 0
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_header
	.loc 1 73 0
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 76 0
	movl	$0, -52(%rbp)
	jmp	.L20
.L21:
.LBB4:
	.loc 1 77 0 discriminator 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	parse_record
	movq	%rax, -40(%rbp)
	.loc 1 78 0 discriminator 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	consume_record
.LBE4:
	.loc 1 76 0 discriminator 3
	addl	$1, -52(%rbp)
.L20:
	.loc 1 76 0 is_stmt 0 discriminator 1
	movzwl	-24(%rbp), %eax
	movzwl	%ax, %eax
	cmpl	-52(%rbp), %eax
	ja	.L21
	.loc 1 80 0 is_stmt 1
	movl	$0, %eax
	.loc 1 81 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x597
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF78
	.byte	0xc
	.long	.LASF79
	.long	.LASF80
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x224
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf2
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xf7
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf8
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf9
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfa
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfb
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x104
	.long	0x25c
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x106
	.long	0x262
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x108
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10c
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x112
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x114
	.long	0x268
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x278
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x129
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12a
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12b
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x12c
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x12f
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x131
	.long	0x27e
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x25c
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0x9d
	.long	0x25c
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0x9e
	.long	0x262
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x278
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xb
	.long	0x95
	.long	0x28e
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x31
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x33
	.long	0x4d
	.uleb128 0xd
	.byte	0x4
	.long	0x4d
	.byte	0x1
	.byte	0xf
	.long	0x2cb
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.uleb128 0xe
	.long	.LASF52
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.long	0x310
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1
	.byte	0x15
	.long	0x2a7
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x1
	.byte	0x16
	.long	0x2a7
	.byte	0x4
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.byte	0x17
	.long	0x29c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1
	.byte	0x18
	.long	0x29c
	.byte	0xa
	.uleb128 0x8
	.long	.LASF57
	.byte	0x1
	.byte	0x19
	.long	0x2a7
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x1
	.byte	0x1a
	.long	0x2cb
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.long	0x33a
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x20
	.long	0x33a
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x21
	.long	0x2a7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0xf
	.byte	0x18
	.byte	0x1
	.byte	0x1c
	.long	0x36e
	.uleb128 0x12
	.string	"bar"
	.byte	0x1
	.byte	0x1d
	.long	0x36e
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x1
	.byte	0x1e
	.long	0x2a7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF63
	.byte	0x1
	.byte	0x22
	.long	0x31b
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x37e
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x1
	.byte	0x23
	.long	0x341
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x5
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c3
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x5
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.byte	0x5
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.byte	0x7
	.long	0x4d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f3
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x7
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x25
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x42b
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x25
	.long	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"hdr"
	.byte	0x1
	.byte	0x25
	.long	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x310
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x2c
	.long	0x473
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x473
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x2c
	.long	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x2d
	.long	0x473
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37e
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.byte	0x33
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e5
	.uleb128 0x15
	.string	"ent"
	.byte	0x1
	.byte	0x33
	.long	0x473
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.byte	0x38
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0x36
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.byte	0x44
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x56c
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x44
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.long	.LASF75
	.byte	0x1
	.byte	0x44
	.long	0x56c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0x45
	.long	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.byte	0x46
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x19
	.string	"ent"
	.byte	0x1
	.byte	0x4d
	.long	0x473
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xb
	.long	0x4d
	.long	0x585
	.uleb128 0x1c
	.long	0x86
	.long	0xf423f
	.byte	0
	.uleb128 0x1b
	.long	.LASF77
	.byte	0x1
	.byte	0x3
	.long	0x572
	.uleb128 0x9
	.byte	0x3
	.quad	lava_val
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF62:
	.string	"type"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF57:
	.string	"timestamp"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF78:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -funroll-loops -fstack-protector-strong"
.LASF27:
	.string	"_fileno"
.LASF64:
	.string	"file_entry"
.LASF15:
	.string	"_IO_read_end"
.LASF51:
	.string	"TYPEA"
.LASF52:
	.string	"TYPEB"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF49:
	.string	"uint16_t"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF54:
	.string	"reserved"
.LASF69:
	.string	"parse_record"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF63:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF71:
	.string	"kbcieiubweuhc1714636915"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF59:
	.string	"fdata"
.LASF60:
	.string	"intdata"
.LASF77:
	.string	"lava_val"
.LASF10:
	.string	"sizetype"
.LASF65:
	.string	"bug_num"
.LASF19:
	.string	"_IO_write_end"
.LASF80:
	.string	"/home/guy/Projects/afl_mod"
.LASF81:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF66:
	.string	"lava_set"
.LASF61:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"magic"
.LASF31:
	.string	"_vtable_offset"
.LASF67:
	.string	"parse_header"
.LASF12:
	.string	"FILE"
.LASF76:
	.string	"head"
.LASF50:
	.string	"uint32_t"
.LASF68:
	.string	"lava_get"
.LASF11:
	.string	"char"
.LASF55:
	.string	"num_recs"
.LASF72:
	.string	"lava_131"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF79:
	.string	"toy.c"
.LASF16:
	.string	"_IO_read_base"
.LASF70:
	.string	"consume_record"
.LASF24:
	.string	"_IO_save_end"
.LASF58:
	.string	"file_header"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF75:
	.string	"argv"
.LASF23:
	.string	"_IO_backup_base"
.LASF56:
	.string	"flags"
.LASF74:
	.string	"argc"
.LASF73:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
