	.file	"factorial.c"
	.section	".text"
	.align 4
	.global factorial_recursive
	.type	factorial_recursive, #function
	.proc	04
factorial_recursive:
	.register	%g2, #scratch
	cmp	%o0, 1
	bleu,pn	%icc, .L2
	 mov	1, %g2
.L3:
	add	%o0, -1, %g1
	mulx	%o0, %g2, %g2
	cmp	%g1, 1
	bne,pt	%icc, .L3
	 sra	%g1, 0, %o0
.L2:
	jmp	%o7+8
	 sra	%g2, 0, %o0
	.size	factorial_recursive, .-factorial_recursive
	.align 4
	.global factorial_loop
	.type	factorial_loop, #function
	.proc	04
factorial_loop:
	cmp	%o0, 0
	ble,pn	%icc, .L8
	 mov	1, %g1
	mulx	%o0, %g1, %g1
.L12:
	add	%o0, -1, %o0
	sra	%o0, 0, %o0
	brnz,a,pt %o0, .L12
	 mulx	%o0, %g1, %g1
.L8:
	jmp	%o7+8
	 sra	%g1, 0, %o0
	.size	factorial_loop, .-factorial_loop
	.section	.rodata.str1.8,"aMS",@progbits,1
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
	.align 8
.LC4:
	.asciz	"Test passed :)"
	.align 8
.LC5:
	.asciz	"Test failed :("
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -176, %sp
	mov	1, %i4
	mov	10, %g1
	mulx	%i4, %g1, %i4
.L22:
	add	%g1, -1, %g1
	cmp	%g1, 1
	bne,a,pt %icc, .L22
	 mulx	%i4, %g1, %i4
	mov	10, %g1
	mov	1, %i5
	mulx	%i5, %g1, %i5
.L23:
	addcc	%g1, -1, %g1
	bne,a,pt %icc, .L23
	 mulx	%i5, %g1, %i5
	sethi	%hi(.LC0), %o0
	call	puts, 0
	 or	%o0, %lo(.LC0), %o0
	sethi	%hi(.LC1), %o0
	call	puts, 0
	 or	%o0, %lo(.LC1), %o0
	sethi	%hi(.LC2), %o0
	call	puts, 0
	 or	%o0, %lo(.LC2), %o0
	sethi	%hi(.LC3), %o0
	call	puts, 0
	 or	%o0, %lo(.LC3), %o0
	cmp	%i5, %i4
	be,a,pn	%icc, .L20
	 sethi	%hi(.LC4), %o0
	sethi	%hi(.LC5), %o0
	call	puts, 0
	 or	%o0, %lo(.LC5), %o0
	call	fail, 0
	 mov	0, %i0
.L24:
	return	%i7+8
	 nop
.L20:
	call	puts, 0
	 or	%o0, %lo(.LC4), %o0
	call	pass, 0
	 mov	0, %i0
	ba,pt	%xcc, .L24
	 nop
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
