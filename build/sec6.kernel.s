.text

kernel:	
	! set trap base addr
	setx	0x120000, %l0, %l7
	wrpr	%l7, %g0, %tba

	! setup %g7 to point to per thread user data scratchpad
	
	ta      0x2e
		! get thread ID in %o1
	mov	%o1, %o5	! save in %o5 to be used later
	sllx	%o1, 7, %o1
	setx	user_globals, %g1, %g7
	add	%g7, %o1, %g7

	! setup user heap pointer
	setx    heapptr, %g1, %g2
	setx	user_heap_start, %g1, %g3
	stx     %g3, [%g2]
		
	! init context regs
	setx	0x44, %l0, %o1
	setx	0x55, %l0, %o2
	mov	0x0, %o3	! go to non-priv code
	mov	0x0, %o4	! set hpriv to zero
        setx    start_label_list, %g1, %g2
        sllx    %o5, 3, %o5             ! offset - start_label_list
        ldx     [%g2 + %o5], %o5        ! %o5 contains start_label
	ta	0x2a
	nop



.global kernel_syscall
kernel_syscall:
	! save globals
	stx	%g1, [%g7+8]
	stx	%g2, [%g7+16]
	stx	%g3, [%g7+24]
	stx	%g4, [%g7+32]
	stx	%g5, [%g7+40]
	stx	%g6, [%g7+48]

	setx	syscall_jmptab, %g1, %g2
	sllx	%o1, 3, %g1
	add	%g2, %g1, %g2	! %g2 = ptr into jump table based on call #
	ldx	[%g2], %g1
	jmp	%g1

kernel_sysret:
	! restore globals
	ldx	[%g7+8], %g1
	ldx	[%g7+16], %g2
	ldx	[%g7+24], %g3
	ldx	[%g7+32], %g4
	ldx	[%g7+40], %g5
	ldx	[%g7+48], %g6

	ta	0x1a
	nop

! %o2 = size in bytes
! %o3 = alignment in bytes (has to be power of 2)
! %o4 = returned pointer
kernel_memalign:
	setx	heapptr, %g1, %g2
	ldx	[%g2], %g1	! %g1 = heapptr
	mov	%o3, %g3
	sub	%g3, 1, %g3	! alignment mask
	and	%g3, %g1, %g4
	brz	%g4, align_done
	not	%g3
	and	%g3, %g1, %g1
	add	%g1, %o3, %g1
align_done:
	mov	%g1, %o4
	add	%g1, %o2, %g1
	ba	kernel_sysret
	stx	%g1, [%g2]
	
kernel_printhex:
	ba	kernel_sysret	! $EV trig_pc_d(1,expr(@VA(.KERNEL.kernel_printhex), 16, 16)) -> printhex("diagprinthex", %o2)
	nop
	
kernel_printdec:
	ba	kernel_sysret	! $EV trig_pc_d(1,expr(@VA(.KERNEL.kernel_printdec), 16, 16)) -> printdec("diagprintdec", %o2)
	nop

.data
syscall_jmptab:
	.xword	0x0000000000000000
	.xword	kernel_memalign
	.xword	kernel_printhex
	.xword	kernel_printdec

heapptr:
	.xword	0x0000000000000000

start_label_list:
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start
	.xword	c_start, c_start, c_start, c_start

.align 512
user_globals:


