















!define stack size
!--------------------------------------------------

!Include this before boot.s to use spill/fill traps 
!--------------------------------------------------













































































































































 
 
 
 
 
 
 
 




















































































































!! WARNING:
!! For bit set/reset masks, use "X * 2**Y" instead of "X * 2^Y".
!! "^" means "exponentiation" under SunOS:/bin/m4, but
!!     means "bitwise xor" under Solaris:/usr/ccs/bin/m4.
!! "**" is acceptable notation for exponentiation with either.


! Please add spill/fill if you need them 




!! WARNING:
!! For bit set/reset masks, use "X * 2**Y" instead of "X * 2^Y".
!! "^" means "exponentiation" under SunOS:/bin/m4, but
!!     means "bitwise xor" under Solaris:/usr/ccs/bin/m4.
!! "**" is acceptable notation for exponentiation with either.

!		         PSTATE
!	.--+--+---+---.-----+---+---.--+----+--+--+
!	|IG|MG|CLE|TLE|  MM |RED|PEF|AM|PRIV|IE|AG|
!	+--+--+---+---+-----+---+---+--+----+--+--+
!	 11 10  9   8  7   6  5   4   3   2   1  0








!! WARNING:
!! For bit set/reset masks, use "X * 2**Y" instead of "X * 2^Y".
!! "^" means "exponentiation" under SunOS:/bin/m4, but
!!     means "bitwise xor" under Solaris:/usr/ccs/bin/m4.
!! "**" is acceptable notation for exponentiation with either.













!----------------------------------------------------------------------
! These macros read out a block of registers by using store inst





!----------------------------------------------------------------------
! This macro loads a register file block from memory

!----------------------------------------------------------------------
! This macro loads up all of the visible registers including globals
! from the address supplied in the "reg".  %g1 is assumed to be
! this register.  This will not map in a block.  



!----------------------------------------------------------------------
! This macro does the read out of the specified register by
! doing stores 


!-------------------------------------------------------------------
! These macros read all of the registers out in a block
! Because of the way Read_em_out works, %g1 must be the first one
! that is read out using these macros (otherwise it will get clobbered)





!----------------------------------------------------------------------
! This macro reads out the entire register file (except for any
! blocks that are mapped out).  read the globals out first


!----------------------------------------------------------------------
! These macros load up registers with the cumulative sum of the two
! specified registers.





! same as above 4 macros but also forces a read immediately
! after the write






!----------------------------------------------------------------------
! This macro loads up all the visible registers (including globals)
! using a accumulating sum.  


! Same as above, but uses the macros that cause a read to
! the just written register






! Address space
!------------------------------------------
! SECTION	VA		RA/PA
!===========================================

































		
		
		


















































































































































!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!! Service trap fron different trap-level and priv
!!                   tl==0                tl > 0              hyper    
!! 0x02     T0_0x102             T1_0x102            HT_0x102 
!! 0x03  T0_0x103             T1_0x103            HT_0x103 
!! 0x04   T0_0x104             *T1_0x104           HT_0x104
!! 0x05   T0_0x105             *T1_0x105           HT_0x105
!! 0x08         T0_0x108             T1_0x108            HT_0x108 (emulate)
!! 0x0a        T0_0x10a             T1_0x10a            HT_0x10a (emulate)
!! 0x0c T0_0x10c             T1_0x10c            HT_0x10c (emulate)
!! T_SYSCALL         T0_0x118             N/A                 N/A
!! T_SYSRET          T0_0x11a             N/A                 N/A
!! 
!! T_CHANGE_HPRIV    T0_0x120 (HT_0x180)  T1_0x120 (HT_0x180) HT_0x120
!! T_CHANGE_NONHPRIV T0_0x122 (HT_0x182)  T1_0x122 (HT_0x182) HT_0x122
!! T_HTRAP_EN        T0_0x124 (HT_0x184)  T1_0x124 (HT_0x184) HT_0x124
!! T_HTRAP_DIS       T0_0x126 (HT_0x186)  T1_0x126 (HT_0x186) HT_0x126
!! T_HTRAP_EN_N_TIMEST0_0x128 (HT_0x188)  T1_0x128 (HT_0x188) HT_0x128
!! T_CHANGE_CTX      T0_0x12a (HT_0x18a)  T1_0x12a (HT_0x18a) HT_0x12a
!! T_RD_THID         T0_0x12e (HT_0x18e)  T1_0x12c (HT_0x18e) HT_0x12e
!!
!! T_TRAP_INST0      T0_0x130		  N/A                 N/A
!! T_TRAP_INST1      T0_0x131 		  N/A                 N/A
!!
!! T_HTRAP_INST0     T0_0x132 (HT_0x190)  T1_0x132 (HT_0x190) N/A
!! T_HTRAP_INST1     T0_0x133 (HT_0x191)  T1_0x133 (HT_0x191) N/A
!!
!! * function not available (not required)
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































	









! M4 Mask values
! thread_mask_minus_lsb    0x0
! thread_mask    0x00000000000000000000000000000001
! user_text_mask 0x00000000000000000000000000000001
! user_data_mask 0x00000000000000000000000000000001





















! trin extra syncs































	
	
	
	
	
	










 














 


 



 


	



	










































           

           

           

           

           

           

          

           

           
 

                  

           

           
           

           
           

           

          




      
          

           

          



 

    

          



















! Copyright (c) 2017 Princeton University
! All rights reserved.
! 
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are met:
!     * Redistributions of source code must retain the above copyright
!       notice, this list of conditions and the following disclaimer.
!     * Redistributions in binary form must reproduce the above copyright
!       notice, this list of conditions and the following disclaimer in the
!       documentation and/or other materials provided with the distribution.
!     * Neither the name of Princeton University nor the
!       names of its contributors may be used to endorse or promote products
!       derived from this software without specific prior written permission.
! 
! THIS SOFTWARE IS PROVIDED BY PRINCETON UNIVERSITY "AS IS" AND
! ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
! WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
! DISCLAIMED. IN NO EVENT SHALL PRINCETON UNIVERSITY BE LIABLE FOR ANY
! DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
! (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
! LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
! ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
! (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

! Copyright (c) 2017 Princeton University
! All rights reserved.
! 
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are met:
!     * Redistributions of source code must retain the above copyright
!       notice, this list of conditions and the following disclaimer.
!     * Redistributions in binary form must reproduce the above copyright
!       notice, this list of conditions and the following disclaimer in the
!       documentation and/or other materials provided with the distribution.
!     * Neither the name of Princeton University nor the
!       names of its contributors may be used to endorse or promote products
!       derived from this software without specific prior written permission.
! 
! THIS SOFTWARE IS PROVIDED BY PRINCETON UNIVERSITY "AS IS" AND
! ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
! WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
! DISCLAIMED. IN NO EVENT SHALL PRINCETON UNIVERSITY BE LIABLE FOR ANY
! DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
! (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
! LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
! ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
! (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.










! User Level defines









!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Description:
!   Sends msg to thread th at core at x,y
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


! Chip Parameters






! Register Addresses

! Other



! Performance Counter Defines


	
.global Power_On_Reset

.text

RESERVED_0: !Should not come here
        nop
        nop
        nop
        nop
	nop
        nop
        nop
        nop

Power_On_Reset:
	setx hboot_pton_init, %g1, %g2
	jmp %g2
	nop
!#ifdef NO_SLAM_INIT_DRAMCTL
!! Note: dramctl_init initializes the dram controller
!!	if it is POR or if self-refresh
!!	is disabled during warm reset.
!        setx dramctl_init, %g1, %g2
!        jmp %g2
!        nop
!#else
!        setx HRedmode_Reset_Handler, %g1, %g2
!        jmp %g2
!        nop
!#endif
!#endif

.align 32
	
Watchdog_Reset:
        setx Watchdog_Reset_Handler, %g1, %g2
        jmp %g2
        nop 
	

.align 32
	
External_Reset:
        setx External_Reset_Handler, %g1, %g2
        jmp %g2
        nop 

.align 32
	
Software_Initiated_Reset:
        setx Software_Reset_Handler, %g1, %g2
        jmp %g2
	nop

.align 32
	
RED_Mode_Other_Reset:
        nop 
	nop 
	nop

.align 32


hboot_clock_init:
	! Determine if we came from cold reset
	setx	0x9800000810, %g1, %g2
	ldx	[%g2], %g1
	and	%g1, 4, %g1
	brz	%g1, skip_freq_change

        setx    0x9600000000, %g1, %g2

	! Update CLK_JSYNC creg
	setx	(1 << 38) | (2 << 32) | (1 << 30) | (2 << 24) | (1 << 22) | (2 << 16) | (4 << 8) | 5, %g1, %g3
	stx	%g3, [%g2 + 0x28]

	! Update CLK_DSYNC creg
	setx	(1 << 38) | (1 << 32) | (1 << 30) | (1 << 24) | (1 << 22) | (1 << 16) | (5 << 8) | 6, %g1, %g3
	stx	%g3, [%g2 + 0x30]

	! Update CLK_DIV
	setx	(24 << 52) | (28 << 42) | (168 << 28) | (1 << 26) | (14 << 16) | (12 << 8) | 2, %g1, %g3
	stx	%g3, [%g2]
	ldx	[%g2], %g1 ! make sure store is completed before yanking reset
	cmp	%g1, %g3
	be	%xcc, trig_warm_reset
	nop
	ta	0x01

	! Trigger warm reset
trig_warm_reset:
	nop		! $EV trig_pc_d (1,@VA(.RED_SEC.trig_warm_reset)) -> warmrst()

skip_freq_change:

	setx hboot_pton_init, %g1, %g2
	jmp %g2
	nop


.global hboot_bisi
hboot_bisi:
	rd		%asr26, %g7
	set     0x1f00, %g1
	and		%g7, %g1, %g7
	srlx	%g7, 8, %g7

    setx     0xba00000000, %g3, %g2
    ld     [%g2], %g2            ! has coreid

    srlx    %g2, 8, %g3
    mulx    %g3, 1, %g3
    and     %g2, 0xff, %g2
    add     %g2, %g3, %g2    

    !srlx    %g2, 5, %g3
    !add     %g3, %g2, %g2        ! translate from x,y coordinates to coreid
    !set     0x3f, %g3           ! get the lowest 6 bits
    !and     %g2, %g3, %g2

    sllx    %g2, 1, %g2
    add     %g7, %g2, %g7


	and		%g7, 0x1f, %g7	!%g7 = Global thread id (0..31)
	and		%g7, 0x1, %g6	!%g6 = Local thread id (0..1)
	srlx	%g7, 1, %g7
	and		%g7, 0xf, %g5	!%g5 = Core id (0..15)
	mov		%g5, %g7		!Save own core id in %g7
	brnz	%g6, skip_bisi	!not(Thread0)
	setx	0x9800000830, %g1, %g2
	ldx		[%g2], %g4		!%g4 = Core AVAIL
	mov		-1, %g3			!%g3 = First avilable core
find_fisrt_avail_core:
	inc		%g3
	and		%g4, 1, %g1
	brz		%g1, find_fisrt_avail_core
	srlx	%g4, 4, %g4
	cmp		%g3, %g5
	bne		%xcc, skip_bisi	!NOT (First available core)
	mov		%g3, %g6		!Save first available core in %g6
start_l2_bisi:
	setx	0xa800000000, %g1, %g3 !L2_TAG_BIST_REG
	mov		0x41, %g2 ! BISI_MODE = BIS(1), BISI_START = TRUE
	! L2 bank0
	stx		%g2, [%g3]
	! L2 bank1
	add		%g3, 64, %g3
	stx		%g2, [%g3]
	! L2 bank2
	add		%g3, 64, %g3
	stx		%g2, [%g3]
	! L2 bank3
	add		%g3, 64, %g3
	stx		%g2, [%g3]
check_l2_bisi:
	cmp		%g6, %g7
	bne		%xcc, skip_bisi	!NOT (First available core)
	!Check L2 BISI completion
	setx	0xa800000000, %g1, %g3
	mov		0, %g1
l2_bisi_dly:
	brnz	%g1, l2_bisi_dly
	dec		%g1
	mov		4, %g2
wait_on_l2_bisi:
	stx		%g0, [%g3]
	dec		%g2
	brnz	%g2, wait_on_l2_bisi
	add		%g3, 64, %g3

skip_bisi:
	setx hboot_pton_init, %g1, %g2
	jmp %g2
	nop


! This file contains init that is required to
! clear out xs and valid bits in various structures
! to make silicon work.

.global dramctl_init
dramctl_init:




















        mov      0,%g1
        brnz     %g1, continue_dram_init
	nop

        setx    0x9600000000, %g1, %g2
        setx    0x2000000000000000, %g1, %g3

        ! Set DRAM self-refresh bit
        ldx     [%g2 + 0x08], %g1
        and     %g1, %g3, %g4

        brnz    %g4, skip_dramctl_init
	nop


        or      %g1, %g3, %g3
        stx     %g3, [%g2 + 0x08]

continue_dram_init:

        ! Determine if this is the bootstrap thread
        ! if not, skip dram init
        setx    0x9800000830, %g1, %g2
        ldx     [%g2], %g3                  ! %g3 has coreavail
        rd      %asr26, %l1
        set     0x1f00, %g1
        and     %l1, %g1, %l1
        srlx    %l1, 8, %l1                 ! %l1 has thread ID
        mov     63, %g1
        sub     %g1, %l1, %g1
        sllx    %g3, %g1, %g3
        sllx    %g3, 1, %g3                 ! Total  of (64-thread ID) bits
        brnz    %g3, skip_dramctl_init
        nop


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! DRAM init 
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! STACK RANK 
        setx    0x9700000000, %l7, %l6
        sethi   %hi(0x00001000), %g1
        sethi   %hi(0x00002000), %g2
        sethi   %hi(0x00003000), %g3

        add     %l6, 0x130, %l0
        mov     0x1, %l3        
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]

        add     %l6, 0x108, %l0
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]

        add     %l6, 0x218, %l0
        mov     0xf, %l3
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]












        add     %l6, 0x1a0, %l0
        setx    0x4, %l7, %l3
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]


        setx    0x6, %l7, %l3
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]

        setx    0x7, %l7, %l3
        stx     %l3, [%l0+%g0]
        stx     %l3, [%l0+%g1]
        stx     %l3, [%l0+%g2]
        stx     %l3, [%l0+%g3]



skip_dramctl_init:
	! Jump back to the rest of the reset code
	setx hboot_pton_init, %g1, %g2
        jmp %g2
        nop



























hboot_pton_init:
! Enable code for different PITON portions


























hboot_csm_init:


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! set csm config reg
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    setx    0x8000000000000000, %g1, %l2
    mov     0x10, %g1
    stxa    %l2, [%g1] 0x1a
    nop
    nop
    mov     0x18, %g1
    stxa    %l2, [%g1] 0x1a



























hboot_execd_init:

! Only do stuff when ED is enabled
! #ifdef ED_ENABLE




























hboot_dmbr_init:


	! Change L2 Home allocation  bits
	setx    0xba00000600, %l1, %l0
	mov     1, %l1
	stx 	%l1, [%l0]

    ! Jump back to the rest of the reset code
    setx HRedmode_Reset_Handler, %g1, %g2
    jmp %g2
    nop

.align 32
! Copyright (c) 2017 Princeton University
! All rights reserved.
! 
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are met:
!     * Redistributions of source code must retain the above copyright
!       notice, this list of conditions and the following disclaimer.
!     * Redistributions in binary form must reproduce the above copyright
!       notice, this list of conditions and the following disclaimer in the
!       documentation and/or other materials provided with the distribution.
!     * Neither the name of Princeton University nor the
!       names of its contributors may be used to endorse or promote products
!       derived from this software without specific prior written permission.
! 
! THIS SOFTWARE IS PROVIDED BY PRINCETON UNIVERSITY "AS IS" AND
! ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
! WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
! DISCLAIMED. IN NO EVENT SHALL PRINCETON UNIVERSITY BE LIABLE FOR ANY
! DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
! (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
! LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
! ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
! (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Description:
!   UART16550 Basic output functions
! Author:
!   Alexey Lavrov
! Date of Creation:
!   November 2nd, 2016
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

.text
    
    .global     uart16550_init
    .global     uart16550_puts
    .global     uart16550_putreg
    .global     uart16550_printreg

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Initializes Xilinx UART16550
! 8 data bit, no Break, no Parity, 1 stop bit
! div latch value is passed through 0xb define
! Input:
!   None
! Output:
!   None
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
uart16550_init:
    save    %sp, -96, %sp
    setx    0xfff0c2c000, %l0, %l1
    ! Disable Interrupts
    clrb    [%l1 + 1]
    ! Disable Xilinx UART16550 FIFO
    clrb    [%l1 + 2]                      
    mov     6, %l0
    stb     %l0, [%l1 + 2]
    mov     1, %l0
    stb     %l0, [%l1 + 2]
    ! Access DLAB, no Break, no Parity, 1 stop bit, 8 data bits
    mov     0x83, %l0
    stb     %l0, [%l1 + 3]
    ! set divisor
    mov     0xb, %l0
    stb     %l0, [%l1 + 0]  ! Div Latch: LSB
    clrb    [%l1 + 1]       ! Div Latch: MSB
    ! turn off DLAB access bit
    mov     3, %l0
    stb     %l0, [%l1 + 3]
    ret
    restore


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Puts NULL terminated string to UART
! Input:
!   %i0 - string address
! Output:
!   None
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
uart16550_puts:
    save    %sp, -96, %sp
    setx    0xfff0c2c000, %l0, %l1            ! Store UART address in %l1
uart16550_puts_loop:
    ldub    [%i0], %l0                          ! l0 has current byte of a string
    cmp     %l0, %g0                            ! check for NULL termination
    be      uart16550_puts_end
    add     %i0, 1, %i0                         ! increment address in delay slot
    ldub    [%l1 + 5], %l2
uart16550_puts_wait:
    and     0x40, %l2, %l2
    cmp     %l2, %g0
    beq     uart16550_puts_wait
    ldub    [%l1 + 5], %l2   ! load another time in a delay slot
    ba      uart16550_puts_loop
    stb     %l0, [%l1]                          ! put a char to UART in a delay slot
uart16550_puts_end:
    ret
    restore


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Put Reg to UART
! Input:
!   %i0 - register to put to UART
! Output:
!   None
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
uart16550_putreg:
    save    %sp, -96, %sp
    setx    0xfff0c2c000, %l0, %l1
    ldub    [%l1 + 5], %l2
uart16550_putreg_wait:
    and     0x40, %l2, %l2
    cmp     %l2, %g0
    beq     uart16550_putreg_wait
    ldub    [%l1 + 5], %l2   ! load LSR in a delay slot
    stb     %i0, [%l1]                          ! put a register to UART in a delay slot
    ret
    restore


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Prints 64-bit Register value to UART in hex
! Input:
!   %i0 - register to print to UART
! Output:
!   None
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
uart16550_printreg:
    save    %sp, -96, %sp
    setx    0xfff0c2c000, %l0, %l1
    mov     60, %l2
uart16550_printreg_loop:
    srlx    %i0, %l2, %l3
    and     %l3, 0xf, %l3
    cmp     %l3, 0xa
    bl      uart16550_printreg_dig
    add     %l3, 0x30, %l3
    add     %l3, 0x27, %l3      ! 0x61 offset for 'a'
uart16550_printreg_dig:
    ldub    [%l1 + 5], %l0
uart16550_printreg_wait:
    and     %l0, 0x40, %l0
    cmp     %l0, %g0
    beq     uart16550_printreg_wait
    ldub    [%l1 + 5], %l0
    cmp     %l2, 0
    sub     %l2, 4, %l2
    bne     uart16550_printreg_loop
    stb     %l3, [%l1]
    ret
    restore

.data
.global check_bisi_flag
check_bisi_flag:
	.xword	0x1111111111111111
.global done_bisi_flag
done_bisi_flag:
	.xword	0x0000000000000000
.global hboot_thread_stat_string
hboot_thread_stat_string:
	.asciz 	"Thread Status Register: 0x"
.global hboot_nl
hboot_nl:
	.asciz 	"\t\n"
.global hboot_trap_type_string
hboot_trap_type_string:
	.asciz 	"TT  : 0x"
.global hboot_trap_pc
hboot_trap_pc:
	.asciz 	"TPC : 0x"
	.align 4


