	.arch armv8.4-a+fp16+sb+ssbs
	.build_version macos,  14, 0
	.text
	.align	2
	.globl _entry
_entry:
LFB1:
	mov	x0, 16384
	movk	x0, 0x5294, lsl 16
	movk	x0, 0x3a3, lsl 32
	ret
LFE1:
	.cstring
	.align	3
lC0:
	.ascii "%lli\0"
	.text
	.align	2
	.globl _main
_main:
LFB2:
	sub	sp, sp, #48
LCFI0:
	stp	x29, x30, [sp, 16]
LCFI1:
	add	x29, sp, 16
LCFI2:
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	bl	_entry
	str	x0, [sp]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	bl	_printf
	mov	w0, 0
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 48
LCFI3:
	ret
LFE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB2-.
	.set L$set$4,LFE2-LFB2
	.quad L$set$4
	.uleb128 0
	.byte	0x4
	.set L$set$5,LCFI0-LFB2
	.long L$set$5
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.set L$set$6,LCFI1-LCFI0
	.long L$set$6
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$7,LCFI2-LCFI1
	.long L$set$7
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x20
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE3:
	.ident	"GCC: (Homebrew GCC 14.1.0) 14.1.0"
	.subsections_via_symbols
