	.file	"test-instr.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hum?"
.LC1:
	.string	"Looks like a zero to me!"
.LC2:
	.string	"A non-zero value? How quaint!"
.LC3:
	.string	"%s"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.section	.text.startup
	.globl	main
	.type	main, @function
main:
.LFB49:
	.file 1 "test-instr.c"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 2 44 0
	xorl	%edi, %edi
.LVL1:
	movl	$8, %edx
	movq	%rsp, %rsi
.LVL2:
.LBE13:
.LBE12:
	.loc 1 21 0
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LVL3:
.LBB15:
.LBB14:
	.loc 2 44 0
	call	read
.LVL4:
.LBE14:
.LBE15:
	.loc 1 25 0
	testq	%rax, %rax
	jle	.L8
.L2:
	.loc 1 30 0
	cmpb	$48, (%rsp)
	je	.L9
.LVL5:
.LBB16:
.LBB17:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	movl	$.LC2, %edi
	call	puts
.LVL6:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	movq	%rsp, %rdx
	movl	$.LC3, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL7:
.L4:
.LBE19:
.LBE18:
	.loc 1 37 0
	xorl	%edi, %edi
	call	exit
.LVL8:
.L9:
.LBB20:
.LBB21:
	.loc 3 104 0
	movl	$.LC1, %edi
	call	puts
.LVL9:
	jmp	.L4
.LVL10:
.L8:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movl	$.LC0, %edi
	call	puts
.LVL11:
	jmp	.L2
.LBE23:
.LBE22:
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.file 9 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x56b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0xc
	.long	.LASF66
	.long	.LASF67
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
	.long	.LASF68
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0xb
	.long	0x9c
	.long	0x2be
	.uleb128 0xc
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x2
	.byte	0x22
	.long	0x295
	.byte	0x3
	.long	0x2f0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x2
	.byte	0x22
	.long	0x5e
	.uleb128 0xf
	.long	.LASF51
	.byte	0x2
	.byte	0x22
	.long	0x89
	.uleb128 0xf
	.long	.LASF52
	.byte	0x2
	.byte	0x22
	.long	0x29
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x3
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x30d
	.uleb128 0xf
	.long	.LASF55
	.byte	0x3
	.byte	0x66
	.long	0x30d
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	0x28a
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.byte	0x15
	.long	0x5e
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d2
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x5e
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x15
	.long	0x4d2
	.long	.LLST1
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x17
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	0x2be
	.quad	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x19
	.long	0x3b0
	.uleb128 0x16
	.long	0x2e4
	.long	.LLST2
	.uleb128 0x16
	.long	0x2d9
	.long	.LLST3
	.uleb128 0x16
	.long	0x2ce
	.long	.LLST4
	.uleb128 0x17
	.quad	.LVL4
	.long	0x4ee
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f0
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x22
	.long	0x3f0
	.uleb128 0x16
	.long	0x300
	.long	.LLST5
	.uleb128 0x17
	.quad	.LVL6
	.long	0x520
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f0
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x23
	.long	0x43b
	.uleb128 0x16
	.long	0x300
	.long	.LLST6
	.uleb128 0x17
	.quad	.LVL7
	.long	0x52f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f0
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x1f
	.long	0x47b
	.uleb128 0x16
	.long	0x300
	.long	.LLST7
	.uleb128 0x17
	.quad	.LVL9
	.long	0x520
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f0
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x1a
	.long	0x4be
	.uleb128 0x1a
	.long	0x300
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+1368
	.sleb128 0
	.uleb128 0x17
	.quad	.LVL11
	.long	0x520
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL8
	.long	0x562
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x7
	.byte	0xa8
	.long	0x25e
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x7
	.byte	0xa9
	.long	0x25e
	.uleb128 0x1c
	.long	.LASF53
	.long	.LASF61
	.byte	0x2
	.byte	0x19
	.long	.LASF53
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x41
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x6e
	.byte	0x2d
	.byte	0x7a
	.byte	0x65
	.byte	0x72
	.byte	0x6f
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x3f
	.byte	0x20
	.byte	0x48
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x71
	.byte	0x75
	.byte	0x61
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x1c
	.long	.LASF60
	.long	.LASF62
	.byte	0x8
	.byte	0
	.long	.LASF60
	.uleb128 0x1e
	.long	.LASF63
	.long	.LASF63
	.byte	0x3
	.byte	0x57
	.uleb128 0x1d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1a
	.byte	0x4c
	.byte	0x6f
	.byte	0x6f
	.byte	0x6b
	.byte	0x73
	.byte	0x20
	.byte	0x6c
	.byte	0x69
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x61
	.byte	0x20
	.byte	0x7a
	.byte	0x65
	.byte	0x72
	.byte	0x6f
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x6d
	.byte	0x65
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x1d
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
	.long	.LASF64
	.long	.LASF64
	.byte	0x9
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL3
	.quad	.LVL4-1
	.value	0x1
	.byte	0x54
	.quad	.LVL4-1
	.quad	.LVL4
	.value	0x1
	.byte	0x57
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1277
	.sleb128 0
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL6
	.quad	.LVL7
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL8
	.quad	.LVL10
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1338
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
	.quad	.LBB12
	.quad	.LBE12
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.LFB49
	.quad	.LFE49
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"__builtin_puts"
.LASF63:
	.string	"__printf_chk"
.LASF42:
	.string	"_IO_FILE"
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
.LASF50:
	.string	"__fd"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"ssize_t"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF51:
	.string	"__buf"
.LASF53:
	.string	"read"
.LASF48:
	.string	"long long int"
.LASF65:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O3 -funroll-loops -fstack-protector-strong"
.LASF11:
	.string	"__ssize_t"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"printf"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF57:
	.string	"argv"
.LASF64:
	.string	"exit"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF49:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF60:
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
.LASF69:
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
.LASF55:
	.string	"__fmt"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF52:
	.string	"__nbytes"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF67:
	.string	"/home/guy/afl/afl"
.LASF23:
	.string	"_IO_backup_base"
.LASF58:
	.string	"stdin"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF66:
	.string	"test-instr.c"
.LASF22:
	.string	"_IO_save_base"
.LASF61:
	.string	"__read_alias"
.LASF59:
	.string	"stdout"
.LASF68:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
