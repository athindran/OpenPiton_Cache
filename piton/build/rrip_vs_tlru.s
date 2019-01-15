	.file	"rrip_vs_tlru.c"
	.section	".rodata"
	.align 8
.LC0:
	.asciz	"Hello\n"
	.align 8
.LC1:
	.asciz	"This\n"
	.align 8
.LC2:
	.asciz	"is"
	.align 8
.LC3:
	.asciz	"test"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	.register	%g2, #scratch
	.register	%g3, #scratch
	sethi	%hi(131072), %g1
	xor	%g1, -192, %g1
	save	%sp, %g1, %sp
	mov	2047, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L2
	 nop
.L3:
	sethi	%hi(131072), %g1
	xor	%g1, -16, %g1
	ld	[%fp+2043], %g2
	sra	%g2, 0, %g2
	sllx	%g2, 6, %g2
	add	%fp, 2047, %g3
	add	%g3, %g2, %g2
	add	%g2, %g1, %g1
	ld	[%fp+2043], %g2
	st	%g2, [%g1+16]
	ld	[%fp+2043], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+2043]
.L2:
	ld	[%fp+2043], %g1
	cmp	%g1, 0
	bge	%icc, .L3
	 nop
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L4
	 nop
.L5:
	sethi	%hi(131072), %g1
	xor	%g1, -16, %g1
	ld	[%fp+2043], %g2
	sra	%g2, 0, %g2
	sllx	%g2, 6, %g2
	add	%fp, 2047, %g3
	add	%g3, %g2, %g2
	add	%g2, %g1, %g1
	ld	[%g1+16], %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L4:
	ld	[%fp+2043], %g1
	cmp	%g1, 255
	ble	%icc, .L5
	 nop
	mov	1024, %g1
	st	%g1, [%fp+2043]
	ba,pt	%xcc, .L6
	 nop
.L7:
	sethi	%hi(131072), %g1
	xor	%g1, -16, %g1
	ld	[%fp+2043], %g2
	sra	%g2, 0, %g2
	sllx	%g2, 6, %g2
	add	%fp, 2047, %g3
	add	%g3, %g2, %g2
	add	%g2, %g1, %g1
	ld	[%g1+16], %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L6:
	ld	[%fp+2043], %g1
	cmp	%g1, 2047
	ble	%icc, .L7
	 nop
	st	%g0, [%fp+2043]
	ba,pt	%xcc, .L8
	 nop
.L9:
	sethi	%hi(131072), %g1
	xor	%g1, -16, %g1
	ld	[%fp+2043], %g2
	sra	%g2, 0, %g2
	sllx	%g2, 6, %g2
	add	%fp, 2047, %g3
	add	%g3, %g2, %g2
	add	%g2, %g1, %g1
	ld	[%g1+16], %g1
	sra	%g1, 0, %g1
	stx	%g1, [%fp+2031]
	ld	[%fp+2043], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+2043]
.L8:
	ld	[%fp+2043], %g1
	cmp	%g1, 255
	ble	%icc, .L9
	 nop
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %o0
	call	puts, 0
	 nop
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %o0
	call	puts, 0
	 nop
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %o0
	call	puts, 0
	 nop
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %o0
	call	puts, 0
	 nop
	call	pass, 0
	 nop
	mov	0, %g1
	sra	%g1, 0, %g1
	mov	%g1, %i0
	return	%i7+8
	 nop
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
