	.file	"my_test.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hum?"
.LC1:
	.string	"Magic!!!"
.LC2:
	.string	"Sorry!!"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.section	.text.startup
	.globl	main
	.type	main, @function
main:
.LFB49:
	.file 1 "my_test.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.LBB10:
.LBB11:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 2 44 0
	xorl	%edi, %edi
.LVL1:
	movl	$4, %edx
	leaq	4(%rsp), %rsi
.LVL2:
.LBE11:
.LBE10:
	.loc 1 9 0
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LVL3:
.LBB13:
.LBB12:
	.loc 2 44 0
	call	read
.LVL4:
.LBE12:
.LBE13:
	.loc 1 13 0
	testq	%rax, %rax
	jle	.L8
.LVL5:
	.loc 1 20 0
	cmpb	$49, 4(%rsp)
	je	.L9
.L3:
.LVL6:
.LBB14:
.LBB15:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	movl	$.LC2, %esi
.LVL7:
.L6:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL8:
.LBE15:
.LBE14:
	.loc 1 36 0
	xorl	%edi, %edi
	call	exit
.LVL9:
.L9:
	.loc 1 22 0
	cmpb	$50, 5(%rsp)
	jne	.L3
	.loc 1 24 0
	cmpb	$51, 6(%rsp)
	jne	.L3
	.loc 1 26 0
	cmpb	$52, 7(%rsp)
.LBB16:
.LBB17:
	.loc 3 104 0
	movl	$.LC1, %esi
.LBE17:
.LBE16:
	.loc 1 26 0
	jne	.L3
	jmp	.L6
.LVL10:
.L8:
.LBB18:
.LBB19:
	.loc 3 104 0
	movl	$.LC0, %edi
	call	puts
.LVL11:
.LBE19:
.LBE18:
	.loc 1 15 0
	movl	$1, %edi
	call	exit
.LVL12:
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4e7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF66
	.byte	0xc
	.long	.LASF67
	.long	.LASF68
	.long	.Ldebug_ranges0+0x30
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd8
	.long	0x34
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
	.byte	0x5
	.byte	0x83
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x84
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0xac
	.long	0x65
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf1
	.long	0x220
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.byte	0xf2
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xf7
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xf8
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xf9
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xfa
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xfb
	.long	0x96
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xfc
	.long	0x96
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.byte	0xfd
	.long	0x96
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.byte	0xfe
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x100
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x101
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x102
	.long	0x96
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x104
	.long	0x258
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x106
	.long	0x25e
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x108
	.long	0x5e
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x10c
	.long	0x5e
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x10e
	.long	0x6c
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x112
	.long	0x42
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x113
	.long	0x50
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x114
	.long	0x264
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x118
	.long	0x274
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x121
	.long	0x77
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x129
	.long	0x89
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x12a
	.long	0x89
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x12b
	.long	0x89
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x12c
	.long	0x89
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x12e
	.long	0x29
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x12f
	.long	0x5e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x131
	.long	0x27a
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.byte	0x96
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0x9c
	.long	0x258
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x9d
	.long	0x258
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x9e
	.long	0x25e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa2
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x227
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	0x9c
	.long	0x274
	.uleb128 0xc
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x220
	.uleb128 0xb
	.long	0x9c
	.long	0x28a
	.uleb128 0xc
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x290
	.uleb128 0xd
	.long	0x9c
	.uleb128 0x2
	.long	.LASF47
	.byte	0x7
	.byte	0x66
	.long	0x8b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x2
	.long	.LASF49
	.byte	0x8
	.byte	0xc8
	.long	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xe
	.long	.LASF54
	.byte	0x2
	.byte	0x22
	.long	0x295
	.byte	0x3
	.long	0x2eb
	.uleb128 0xf
	.long	.LASF51
	.byte	0x2
	.byte	0x22
	.long	0x5e
	.uleb128 0xf
	.long	.LASF52
	.byte	0x2
	.byte	0x22
	.long	0x89
	.uleb128 0xf
	.long	.LASF53
	.byte	0x2
	.byte	0x22
	.long	0x29
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x3
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x308
	.uleb128 0xf
	.long	.LASF56
	.byte	0x3
	.byte	0x66
	.long	0x308
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	0x28a
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0x9
	.long	0x5e
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x489
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x9
	.long	0x5e
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x9
	.long	0x489
	.long	.LLST1
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0xb
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x13
	.long	0x48f
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.byte	0x22
	.quad	.L3
	.uleb128 0x17
	.long	0x2b9
	.quad	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd
	.long	0x3c5
	.uleb128 0x18
	.long	0x2df
	.long	.LLST3
	.uleb128 0x18
	.long	0x2d4
	.long	.LLST4
	.uleb128 0x18
	.long	0x2c9
	.long	.LLST5
	.uleb128 0x19
	.quad	.LVL4
	.long	0x4ab
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x2eb
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x23
	.long	0x3fd
	.uleb128 0x18
	.long	0x2fb
	.long	.LLST6
	.uleb128 0x19
	.quad	.LVL8
	.long	0x4ba
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x2eb
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x1e
	.long	0x41e
	.uleb128 0x1c
	.long	0x2fb
	.byte	0
	.uleb128 0x1b
	.long	0x2eb
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0xe
	.long	0x45e
	.uleb128 0x18
	.long	0x2fb
	.long	.LLST7
	.uleb128 0x19
	.quad	.LVL11
	.long	0x4cf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL9
	.long	0x4de
	.long	0x475
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.quad	.LVL12
	.long	0x4de
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0x6
	.byte	0x8
	.long	0x2a7
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x7
	.byte	0xa8
	.long	0x25e
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x7
	.byte	0xa9
	.long	0x25e
	.uleb128 0x1f
	.long	.LASF54
	.long	.LASF62
	.byte	0x2
	.byte	0x19
	.long	.LASF54
	.uleb128 0x20
	.long	.LASF64
	.long	.LASF64
	.byte	0x3
	.byte	0x57
	.uleb128 0x21
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x6
	.byte	0x48
	.byte	0x75
	.byte	0x6d
	.byte	0x3f
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.long	.LASF61
	.long	.LASF63
	.byte	0x9
	.byte	0
	.long	.LASF61
	.uleb128 0x22
	.long	.LASF65
	.long	.LASF65
	.byte	0xa
	.value	0x21f
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x87
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
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LFE49
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LFE49
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5
	.quad	.LVL10
	.value	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL3
	.quad	.LVL4-1
	.value	0x1
	.byte	0x54
	.quad	.LVL4-1
	.quad	.LVL4
	.value	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL6
	.quad	.LVL7
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1221
	.sleb128 0
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10
	.quad	.LBE10
	.quad	.LBB13
	.quad	.LBE13
	.quad	0
	.quad	0
	.quad	.LFB49
	.quad	.LFE49
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"__builtin_puts"
.LASF42:
	.string	"_IO_FILE"
.LASF67:
	.string	"my_test.c"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF51:
	.string	"__fd"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF49:
	.string	"u_int8_t"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"ssize_t"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF52:
	.string	"__buf"
.LASF54:
	.string	"read"
.LASF48:
	.string	"long long int"
.LASF66:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fstack-protector-strong"
.LASF11:
	.string	"__ssize_t"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"printf"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF58:
	.string	"argv"
.LASF65:
	.string	"exit"
.LASF45:
	.string	"_sbuf"
.LASF64:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF50:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF61:
	.string	"puts"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF12:
	.string	"char"
.LASF70:
	.string	"main"
.LASF44:
	.string	"_next"
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
.LASF2:
	.string	"short unsigned int"
.LASF56:
	.string	"__fmt"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF53:
	.string	"__nbytes"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF68:
	.string	"/home/guy/afl/afl"
.LASF23:
	.string	"_IO_backup_base"
.LASF59:
	.string	"stdin"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF62:
	.string	"__read_alias"
.LASF71:
	.string	"Sorry"
.LASF60:
	.string	"stdout"
.LASF69:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
