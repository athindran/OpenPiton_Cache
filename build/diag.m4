















!define stack size
!--------------------------------------------------

!Include this before boot.s to use spill/fill traps 
!--------------------------------------------------













































































































































 
 
 
 
 
 
 
 




















































































































MIDAS_TSB_LINK part_0_tsb_link 0x41000000
MIDAS_TSB part_0_i_ctx_zero_ps0_tsb    0x1000001  link=part_0_tsb_link force_ctx_zero way=0
MIDAS_TSB part_0_i_ctx_nonzero_ps0_tsb 0x2000001 link=part_0_tsb_link way=0
MIDAS_TSB part_0_i_ctx_zero_ps1_tsb    0x3000001  link=part_0_tsb_link force_ctx_zero way=1
MIDAS_TSB part_0_i_ctx_nonzero_ps1_tsb 0x4000001 link=part_0_tsb_link way=1
MIDAS_TSB part_0_d_ctx_zero_ps0_tsb    0x5000001  link=part_0_tsb_link force_ctx_zero way=0
MIDAS_TSB part_0_d_ctx_nonzero_ps0_tsb 0x6000001 link=part_0_tsb_link way=0
MIDAS_TSB part_0_d_ctx_zero_ps1_tsb    0x7000001  link=part_0_tsb_link force_ctx_zero way=1
MIDAS_TSB part_0_d_ctx_nonzero_ps1_tsb 0x8000001 link=part_0_tsb_link way=1









	
















































































































































		



















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

SECTION .RED_SEC TEXT_VA = 0xfffffffff0000000, DATA_VA = 0xfffffffff0010000

attr_text {
	Name=.RED_SEC,
	hypervisor
}

attr_data {
	Name=.RED_SEC,
	hypervisor
}

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


SECTION .RED_EXT_SEC TEXT_VA = 0x40000, DATA_VA = 0x4c000

attr_text {
	Name=.RED_EXT_SEC,
	hypervisor
}

attr_data {
	Name=.RED_EXT_SEC,
	hypervisor
}

.text

! align Power_On_Reset to 0x40020 so that
! we can have an option to boot straight from DRAM
! instead of 0xfff0000020
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

.global HRedmode_Reset_Handler
HRedmode_Reset_Handler:
	
	wr      %g0, 0x5, %asr26
	! set SPEC_EN, Active bit


! slam init now works for MT diags





	
skip_start_th:



	! set lsu diagnostic reg. use all ways for dcache, icache
	setx	0, %g1, %l1
	mov	0x10, %g1
	stxa	%l1, [%g1] 0x42

	! set lsu control reg. enable dcache, icache
 	setx	(1 | (1 << 1)), %g1, %l1
	stxa	%l1, [%g0] 0x45


	! set hpstate.red = 0 and hpstate.enb = 1
	rdhpr	%hpstate, %l1 
	wrhpr	%l1, 0x820, %hpstate



	! initialize queue registers
	wr %g0, 0x25, %asi
	stxa %g0, [0x3c0] %asi
	stxa %g0, [0x3c8] %asi
	stxa %g0, [0x3d0] %asi
	stxa %g0, [0x3d8] %asi
	stxa %g0, [0x3e0] %asi
	stxa %g0, [0x3e8] %asi
	stxa %g0, [0x3f0] %asi
	stxa %g0, [0x3f8] %asi
	wrpr	0, %tl
	wrpr	0, %g0, %gl
!	wrhpr	5, %hpstate
	wr	%g0, 0, %fprs
	wr	%g0, 0, %ccr
	wr	%g0, 0, %asi
	setx	0, %g1, %g2
	! FIXME set other ticks also
	wrpr	%g2, %tick
	setx	0, %g1, %g2
	wr	%g2, %g0, %sys_tick
	mov     0x1, %g2
	sllx    %g2, 63, %g2
	wr	%g2, %g0, %tick_cmpr
	wr	%g2, %g0, %sys_tick_cmpr
	wrhpr	%g2, %g0, %hsys_tick_cmpr
	mov	%g0, %y
	wrpr	0xf, %pil
	wrpr	0, %cwp
	wrpr	6, %cansave
	wrpr	0, %canrestore
	wrpr	0, %otherwin
	wrpr	7, %cleanwin
	wrpr	7, %wstate
	! Clear I and D SFSR
	mov 	0x18, %g1
	stxa	%g0, [%g0 + %g1] 0x50
	stxa	%g0, [%g0 + %g1] 0x58
	! enable sparc error trap
	setx	3, %g1, %l1
	stxa	%l1, [%g0] 0x4b

    !Yaosheng: l2 config regs have been modified
	! enable l2 error trap
	!setx	3, %g1, %l1 
	!mov	0xaa, %g1
	!sllx	%g1, 32, %g1
	!stx	%l1, [%g1 + 0x00]
	!stx	%l1, [%g1 + 0x40]
	!stx	%l1, [%g1 + 0x80]
	!stx	%l1, [%g1 + 0xc0]

	! load partition id

    setx     0xba00000000, %l1, %g1
    ldx     [%g1], %g1            ! has coreid


    srlx    %g1, 8, %l1
    mulx    %l1, 1, %l1
    and     %g1, 0xff, %g1
    add     %g1, %l1, %g1    

    !srlx    %g1, 5, %l1
    !add     %l1, %g1, %g1        ! translate from x,y coordinates to coreid
    !set     0x3f, %l1           ! get the lowest 6 bits
    !and     %g1, %l1, %g1
    
    sllx    %g1, 1, %g1

	rd	%asr26, %l1
    srlx    %l1, 8, %l1
    add     %l1, %g1, %l1
        set     0x007f, %g1
    and     %l1, %g1, %l1     ! %l1 has thread ID

	setx	part_id_list, %g1, %g2
        sllx    %l1, 3, %l1             ! offset - partition list
        ldx     [%g2 + %l1], %g2	! %g2 contains partition ID
	mov	0x80, %g1
	stxa	%g2, [%g1] 0x58

	! set hyper trap base addr
	setx 0x80000, %l0, %l7
	wrhpr %l7, %g0, %htba

	! load tsb config/base from memory
	! and write to corresponding ASIs
	! set tsb-reg (4 at present) for one partition
	! 2 i-config, 2-dconfig
	setx	tsb_config_base_list, %l0, %g1
	sllx	%g2, 7, %g2		! %g2 contains offset to tsb_config_base_list
	add	%g1, %g2, %g1		! %g1 contains pointer to tsb_config_base_list

	! IMMU_CXT_Z_CONFIG   (0x37, VA=0x00)
	ldx	[%g1], %l1
	stxa	%l1, [%g0] 0x37

	! IMMU_CXT_NZ_CONFIG  (0x3f, VA=0x00)
	ldx	[%g1+8], %l1
	stxa	%l1, [%g0] 0x3f

	! old:	 IMMU_CXT_Z_PS0_TSB  (0x50, VA=0x60)
	! IMMU_CXT_Z_PS0_TSB  (0x35, VA=0x0)
	! IMMU_CXT_Z_PS1_TSB  (0x36, VA=0x0)
	ldx	[%g1+16], %l1
	stxa	%l1, [%g0] 0x35
	ldx	[%g1+32], %l1
	stxa	%l1, [%g0] 0x36

	! old:	 IMMU_CXT_NZ_PS0_TSB (0x50, VA=0x70)
	! IMMU_CXT_NZ_PS0_TSB (0x3d, VA=0x00)
	! IMMU_CXT_NZ_PS1_TSB (0x3e, VA=0x00)
	ldx	[%g1+24], %l1
	stxa	%l1, [%g0] 0x3d
	ldx	[%g1+40], %l1
	stxa	%l1, [%g0] 0x3e
		
	! DMMU_CXT_Z_CONFIG   (0x33, VA=0x00)
	ldx	[%g1+64], %l1
	stxa	%l1, [%g0] 0x33

	! DMMU_CXT_NZ_CONFIG  (0x3b, VA=0x00)
	ldx	[%g1+72], %l1
	stxa	%l1, [%g0] 0x3b

	! old:	DMMU_CXT_Z_PS0_TSB  (0x58, VA=0x60)
	! DMMU_CXT_Z_PS0_TSB  (0x31, VA=0x00)
	! DMMU_CXT_Z_PS1_TSB  (0x32, VA=0x00)
	ldx	[%g1+80], %l1
	stxa	%l1, [%g0] 0x31
	ldx	[%g1+96], %l1
	stxa	%l1, [%g0] 0x32
	
	! old:	DMMU_CXT_NZ_PS0_TSB (0x58, VA=0x70)
	! DMMU_CXT_NZ_PS0_TSB (0x39, VA=0x00)
	! DMMU_CXT_NZ_PS0_TSB (0x3a, VA=0x00)
	ldx	[%g1+88], %l1
	stxa	%l1, [%g0] 0x39
	ldx	[%g1+104], %l1
	stxa	%l1, [%g0] 0x3a

	! demap all itlb and dtlb
	mov	0x80, %o2
	stxa	%g0, [ %o2 ] 0x57
	stxa	%g0, [ %o2 ] 0x5f

	! zero out all itlb and dtlb tag/data
	! entries if needed by diag
	! init primary context reg 
	mov 0x8, %l1
	stxa %g0, [%l1] 0x21
	! init sec context reg						
	mov 0x10, %l1
	stxa %g0, [%l1] 0x21	

	
	! init dtsb entry for i context zero ps0, ps1
	! set lsu control reg. enable dcache, icache, immu, dmmu
	setx	15, %g1, %l1
	stxa	%l1, [%g0] 0x45

        setx	HPriv_Reset_Handler, %g1, %g2
	rdhpr	%hpstate, %g3
!	mov	0x804, %g4
!	mov	0x5, %g4
	wrpr	1, %tl
	setx	0, %g1, %g4
	wrhpr	%g4, %g0, %htstate
	wrpr	0, %tl
	mov     0x0, %o0	
        jmp	%g2
	wrhpr	%g0, 0x800, %hpstate
        nop
        nop


.global Watchdog_Reset_Handler
Watchdog_Reset_Handler:



	! Enable I/D Cache and TLBs
	mov	0xf, %g1
	stxa	%g1, [%g0] 0x45
	stxa	%g0, [%g0] 0x43
	rdhpr	%hpstate, %g1
	or	%g1, 0x800, %g1
	wrhpr	%g1, %hpstate
	! Read (H)PSTATE/PC/nPC from Trap Stack @maxtl
	rdhpr	%htstate, %g1
	rdpr	%tstate, %g2
	rdpr	%tpc, %g3
	rdpr	%tnpc, %g4
	! Lower the Trap Level
	wrpr	%g0, 1, %tl
	! Write (H)PSTATE/PC/nPC to Trap Stack @new TL
	wrhpr	%g1, %htstate
	wrpr	%g2, %tstate
	wrpr	%g3, %tpc
	wrpr	%g4, %tnpc
	retry

.global External_Reset_Handler
External_Reset_Handler:



	mov	0xf, %g1
	stxa	%g1, [%g0] 0x45
	stxa	%g0, [%g0] 0x43
	rdhpr	%hpstate, %g1
	or	%g1, 0x800, %g1
	wrhpr	%g1, %hpstate
	retry

.global Software_Reset_Handler
Software_Reset_Handler:



	mov	0xf, %g1
	stxa	%g1, [%g0] 0x45
	stxa	%g0, [%g0] 0x43
	rdhpr	%hpstate, %g1
	or	%g1, 0x800, %g1
	wrhpr	%g1, %hpstate
	done


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
	nop             ! $EV trig_pc_d (1,@VA(.RED_EXT_SEC.trig_warm_reset)) -> warmrst()

skip_freq_change:

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

.data
part_id_list:
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0
	.xword  0, 0, 0, 0

.global partition_base_list
partition_base_list:
	.xword	0x1000000000, 0x1200000000, 0x1400000000, 0x1600000000
	.xword	0x1800000000, 0x1a00000000, 0x1c00000000, 0x1e00000000

tsb_config_base_list:
	.xword	0x0, 0x0
	.xword	0x1000001, 0x2000001
	.xword	0x3000001, 0x4000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x5000001, 0x6000001
	.xword	0x7000001, 0x8000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x9000001, 0xa000001
	.xword	0xb000001, 0xc000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0xd000001, 0xe000001
	.xword	0xf000001, 0x10000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x11000001, 0x12000001
	.xword	0x13000001, 0x14000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x15000001, 0x16000001
	.xword	0x17000001, 0x18000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x19000001, 0x1a000001
	.xword	0x1b000001, 0x1c000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x1d000001, 0x1e000001
	.xword	0x1f000001, 0x20000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x21000001, 0x22000001
	.xword	0x23000001, 0x24000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x25000001, 0x26000001
	.xword	0x27000001, 0x28000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x29000001, 0x2a000001
	.xword	0x2b000001, 0x2c000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x2d000001, 0x2e000001
	.xword	0x2f000001, 0x30000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x31000001, 0x32000001
	.xword	0x33000001, 0x34000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x35000001, 0x36000001
	.xword	0x37000001, 0x38000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x39000001, 0x3a000001
	.xword	0x3b000001, 0x3c000001
	.xword	0x0, 0x0
	.xword	0x0, 0x0
	.xword	0x3d000001, 0x3e000001
	.xword	0x3f000001, 0x40000001
	.xword	0x0, 0x0
.global sync_thr_counter
sync_thr_counter:
	.xword	0x0
.align 8
sync_thr_counter_2:
	.xword	0x0
.global fpu_init_data
fpu_init_data:
        .xword  0x0,0x0,0x0,0x0



SECTION .HPRIV_RESET        TEXT_VA=0x100144000


attr_text {
	Name = .HPRIV_RESET,
	RA = 0x100144000,
	PA = 0x1100144000,
	part_0_i_ctx_nonzero_ps0_tsb,
	part_0_i_ctx_zero_ps0_tsb,
	TTE_G=1,       TTE_Context=0, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
	TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=1,  TTE_CV=0, 
	TTE_E=0,      TTE_P=1,        TTE_W=1
	}








.global HPriv_Reset_Handler
	
HPriv_Reset_Handler:



	! caches are enable, mmus on.
	wrpr  1, %tl
	
	! create trap stack and go to user code by done
	! set tpc and ntpc
	setx 0x1834000, %g1, %g2
	wrpr %g2, %g0, %tpc
	wrpr %g2, %g0, %tnpc
	setx 5632, %g1, %g2
	wrpr %g2, %g0, %tstate
	done



SECTION .HTRAPS            TEXT_VA=0x80000, DATA_VA=0x8c000
attr_text {
	Name = .HTRAPS,
	hypervisor,
	}
attr_data {
	Name = .HTRAPS,
	hypervisor,
	}









				
.text

HT0_Reserved_0x00:		
	mov 0x00, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x01:		
	mov 0x01, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x02:		
	mov 0x02, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x03:		
	mov 0x03, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x04:		
	mov 0x04, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x05:		
	mov 0x05, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x06:		
	mov 0x06, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x07:		
	mov 0x07, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Instruction_Access_Exception_0x08:
		mov 0x08, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x09:		
	mov 0x09, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Instruction_Access_Error_0x0a:		
	mov 0x0a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x0b:		
	mov 0x0b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x0c:		
	mov 0x0c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x0d:		
	mov 0x0d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x0e:		
	mov 0x0e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x0f:		
	mov 0x0f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Illegal_Instruction_0x10:
	mov 0x10, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Privileged_Opcode_0x11:
	mov 0x11, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Unimplemented_LDD_0x12:
	mov 0x12, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Unimplemented_STD_0x13:
	mov 0x13, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Reserved_0x14:		
	mov 0x14, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x15:		
	mov 0x15, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x16:		
	mov 0x16, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x17:		
	mov 0x17, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x18:		
	mov 0x18, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x19:		
	mov 0x19, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1a:		
	mov 0x1a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1b:		
	mov 0x1b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1c:		
	mov 0x1c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1d:		
	mov 0x1d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1e:		
	mov 0x1e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x1f:		
	mov 0x1f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Fp_Disabled_0x20:
	mov 0x20, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Fp_Exception_Ieee_754_0x21:		
	mov 0x21, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Fp_Exception_Other_0x22:		
	mov 0x22, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Tag_Overflow_0x23:		
	mov 0x23, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
.align	32

HT0_Clean_Window_0x24:
	restore; mov 0x24, %g7; b TrapCheck;  nop;nop;nop;nop;nop;
.align	128

HT0_Division_By_Zero_0x28:		
	mov 0x28, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 	
.align 32	                

HT0_Internal_Processor_Error_0x29:		
	mov 0x29, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2a:		
	mov 0x2a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2b:		
	mov 0x2b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2c:		
	mov 0x2c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2d:		
	mov 0x2d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2e:		
	mov 0x2e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x2f:		
	mov 0x2f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Data_Access_Exception_0x30:		
		mov 0x30, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x31:		
	mov 0x31, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 


HT0_Data_Access_Error_0x32:		
	mov 0x32, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x33:		
	mov 0x33, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

HT0_Mem_Address_Not_Aligned_0x34:		
		mov 0x34, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Lddf_Mem_Address_Not_Aligned_0x35:
	mov 0x35, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Stdf_Mem_Address_Not_Aligned_0x36:
	mov 0x36, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Privileged_Action_0x37:		
	mov 0x37, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x38:		
	mov 0x38, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x39:		
	mov 0x39, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x3a:		
	mov 0x3a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x3b:		
	mov 0x3b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x3c:		
	mov 0x3c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x3d:		
	mov 0x3d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Instr_Real_Tran_Miss_0x3e:		
	mov	0x30, %g7
	ba	immu_real_miss_handler_ext
	ldxa	[%g7] 0x50, %g2		! get ra from tag-access
	nop
	nop
	nop
	nop
	nop

HT0_Data_Real_Tran_Miss_0x3f:		
	mov	0x30, %g7
	ba	dmmu_real_miss_handler_ext
	ldxa	[%g7] 0x58, %g2		! get ra from tag-access
	nop
	nop
	nop
	nop
	nop

HT0_Reserved_0x40:		
	mov 0x40, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_1_0x41:		
	mov 0x41, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_2_0x42:		
	mov 0x42, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_3_0x43:		
	mov 0x43, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_4_0x44:		
	mov 0x44, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_5_0x45:		
	mov 0x45, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_6_0x46:		
	mov 0x46, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_7_0x47:		
	mov 0x47, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_8_0x48:		
	mov 0x48, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_9_0x49:		
	mov 0x49, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_10_0x4a:		
	mov 0x4a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_11_0x4b:		
	mov 0x4b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_12_0x4c:		
	mov 0x4c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_13_0x4d:		
	mov 0x4d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_14_0x4e:		
	mov 0x4e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Interrupt_Level_15_0x4f:		
	mov 0x4f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x50:		
	mov 0x50, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x51:		
	mov 0x51, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x52:		
	mov 0x52, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x53:		
	mov 0x53, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x54:		
	mov 0x54, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x55:		
	mov 0x55, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x56:		
	mov 0x56, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x57:		
	mov 0x57, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x58:		
	mov 0x58, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x59:		
	mov 0x59, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x5a:		
	mov 0x5a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x5b:		
	mov 0x5b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x5c:		
	mov 0x5c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x5d:		
	mov 0x5d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x5e:		
	!  disable  HSTICK_COMPARE
	wrhpr	%g0, -1, %hsys_tick_cmpr
	wrhpr	%g0, 0, %hintp
	mov     0x5e, %g7
	b       TrapCheckWithRetry
	nop
	nop
	nop
	nop

HT0_Reserved_0x5f:		
	rdhpr	%htstate, %g1
	mov	0x1, %g2	
	wrhpr	%g1, %g2, %htstate
	mov     0x5f, %g7
	b       TrapCheckWithRetry
	nop
	nop
	nop

HT0_Interrupt_0x60:	
	    mov 0x60, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
.align 64

!!HT0_Reserved_0x61:		
!!#ifdef H_HT0_Reserved_0x61
!!#ifdef SUN_H_HT0_Reserved_0x61
!!	 SUN_H_HT0_Reserved_0x61 
!!#else
!!        setx H_HT0_Reserved_0x61, %g1, %g2; jmp %g2; nop
!!#endif
!!.align 32
!!#else
!!	mov 0x61, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
!!#endif

HT0_Reserved_0x62:		
	mov 0x62, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Corrected_ECC_error_0x63:		
	retry; nop;nop;nop;nop;nop;nop;nop;; 

HT0_Fast_Instr_Access_MMU_Miss_0x64:


	mov	0x30, %g7
	ldxa	[%g7] 0x50, %g2		! get va/context from tag-access
	ldxa	[%g0] 0x51, %g1		! immu ps0 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps0 tsb
	cmp	%g2, %g4
	bne	%xcc, immu_miss_handler_ext
    nop

	ba	immu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id


.align 128
HT0_Fast_Data_Access_MMU_Miss_0x68:


	mov	0x30, %g7
	ldxa	[%g7] 0x58, %g2		! get va/context from tag-access
	ldxa	[%g0] 0x59, %g1         ! dmmu ps0 ptr
	ldda	[%g1] 0x24, %g4         ! load tte from ps0 tsb
	cmp	%g2, %g4
	bne	%xcc, dmmu_miss_handler_ext
    nop

	ba	dmmu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id


.align 128	
HT0_Fast_Data_Access_Protection_0x6c:		
		mov 0x6c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 128	
HT0_Reserved_0x70:		
	mov 0x70, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x71:		
	mov 0x71, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x72:		
	mov 0x72, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x73:		
	mov 0x73, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x74:		
	mov 0x74, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x75:		
	mov 0x75, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x76:		
	mov 0x76, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x77:		
	mov 0x77, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x78:		
	mov 0x78, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x79:		
	mov 0x79, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7a:		
	mov 0x7a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7b:		
	mov 0x7b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7c:		
	mov 0x7c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7d:		
	mov 0x7d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7e:		
	mov 0x7e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

HT0_Reserved_0x7f:		
	mov 0x7f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

HT0_Window_Spill_0_Normal_0x80:		
	saved; mov 0x80, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_1_Normal_0x84:		
	saved; mov 0x84, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_2_Normal_0x88:		
	saved; mov 0x88, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_3_Normal_0x8c:		
	saved; mov 0x8c, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_4_Normal_0x90:
	saved; mov 0x90, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_5_Normal_0x94:
	saved; mov 0x94, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_6_Normal_0x98:
	saved; mov 0x98, %g7; b TrapCheck;  nop;

.align 128	
HT0_Window_Spill_7_Normal_0x9c:
	saved; mov 0x9c, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_0_Other_0xa0:		
	saved; mov 0xa0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_1_Other_0xa4:		
	saved; mov 0xa4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_2_Other_0xa8:		
	saved; mov 0xa8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_3_Other_0xac:
	saved; mov 0xac, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_4_Other_0xb0:
	saved; mov 0xb0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_5_Other_0xb4:
	saved; mov 0xb4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_6_Other_0xb8:
	saved; mov 0xb8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Spill_7_Other_0xbc:
	saved; mov 0xbc, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_0_Normal_0xc0:
	restored; mov 0xc0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_1_Normal_0xc4:
	restored; mov 0xc4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_2_Normal_0xc8:
	restored; mov 0xc8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_3_Normal_0xcc:
	restored; mov 0xcc, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_4_Normal_0xd0:
	restored; mov 0xd0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_5_Normal_0xd4:
	restored; mov 0xd4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_6_Normal_0xd8:
	restored; mov 0xd8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_7_Normal_0xdc:
	restored; mov 0xdc, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_0_Other_0xe0:
	restored; mov 0xe0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_1_Other_0xe4:
	restored; mov 0xe4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_2_Other_0xe8:
	restored; mov 0xe8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_3_Other_0xec:
	restored; mov 0xec, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_4_Other_0xf0:
	restored; mov 0xf0, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_5_Other_0xf4:
	restored; mov 0xf4, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_6_Other_0xf8:
	restored; mov 0xf8, %g7; b TrapCheck;  nop;

.align 128
HT0_Window_Fill_7_Other_0xfc:
	restored; mov 0xfc, %g7; b TrapCheck;  nop;

.align 128
HT0_GoodTrap_0x100:
good_trap:		
	rd %asr26, %g1; wr %g1, 0x1, %asr26; nop; b good_trap;nop;nop;nop;nop

HT0_BadTrap_0x101:
bad_trap:
	b bad_trap; nop;nop;nop;nop;nop;nop;nop
	
HT0_ChangePriv_0x102:
	rdpr	%tstate, %g1
	mov	0x400, %g2
	and	%g1, %g2, %g3
	brz,a	%g3, .+8
	wrpr	%g1, %g2, %tstate
	done
	nop
	nop
	
HT0_ChangeNonPriv_0x103:
	rdpr	%tstate, %g1
	mov	0x400, %g2
	and	%g1, %g2, %g3
	brnz,a	%g3, .+8
	wrpr	%g1, %g2, %tstate
	done
	nop
	nop

HT0_ChangeToTL1_0x104:
	wrpr %g0, 1, %gl
        rdpr    %tnpc, %g1
	wrpr %g0, 1, %tl
	jmp	%g1
	nop
	nop
	nop
	nop
	
HT0_ChangeToTL0_0x105:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	wrpr %g0, 1, %tl
	wrpr %g1, 0, %tstate
	wrpr %g2, 0, %tpc
	wrpr %g3, 0, %tnpc
	done
	
HT0_ChangeToTL0_0x106:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	rdpr %tt, %g4
	done
	
HT0_ChangeToTL0_0x107:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	rdpr %tt, %g4
	done
	
.align 128
HT0_TrapEn_0x108:
! FIXME emulate priv trap	
	setx	htrap_enable_data, %g2, %g1
	mov     0x800, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 64
HT0_TrapDis_0x10a:	
! FIXME emulate priv trap	
	setx	htrap_enable_data, %g2, %g1
	mov     0, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 64
HT0_TrapEn_Ntimes_0x10c:	
	setx	htrap_enable_data, %g2, %g1
        mov     %o1, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 128
HT0_PThreadMutexLock_0x110:
	rdpr	%tl, %g2
	cmp	%g2, 2
	bne,a	.+8
	or	%i0, %g0, %g1
	setx	hpthread_mutex_data, %g2, %g3
pt_retry:	
	ldstub	[%g3+%g1], %g2
	brz	%g2, pt_done
	nop
pt_loop:
	ldub	[%g3+%g1], %g2
	brnz	%g2, pt_loop
	nop
	ba,a	pt_retry
pt_done:
	membar	#LoadLoad | #LoadStore
	done

HT0_ChangeToTL0_0x111:
	done
	nop

.align 128
HT0_PThreadMutexUnLock_0x114:	
	setx	hpthread_mutex_data, %g2, %g5
	stub	%g0, [%g5+%g1]
	done
	
.align 64
HT0_Trap_Sync_0x116:
	
	setx	hpthread_counter_data, %g1, %g4
	rdpr	%tpc, %g2
	rdpr	%tnpc,%g3
	mov     %g3, %g1
	add	%g2, 60, %g2
	add	%g3, 60, %g3
	wrpr	%g2, 0, %tpc  ! set %tcp/%tnpc
	wrpr	%g3, 0, %tnpc
	jmp	%g1           ! %g1 is original %tnpc
	nop

	
.align 64
HT0_Trap_Function_0x118:
! call kernel dervice routine	
	mov	0x0,	%o0
	done
	.word 0x118
	nop
	nop
	nop
	nop
	nop

.align 512
HT0_Trap_Function_0x120:
! call kernel dervice routine	
	rdhpr	%htstate, %g1
	mov	0x400, %g2
	and	%g1, %g2, %g3
	brz,a	%g3, .+8
	wrhpr	%g1, %g2, %htstate
	done
	.word 0x120
	nop
	
.align 64
HT0_Trap_Function_0x122:
	rdhpr	%htstate, %g1
	mov	0x4, %g2
	and	%g1, %g2, %g3
	brnz,a	%g3, .+8
	wrhpr	%g1, %g2, %htstate
	done
	.word 0x122
	nop
	nop
	
.align 64
HT0_Trap_Function_0x124:
	setx	htrap_enable_data, %g2, %g1
	mov     0x800, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 64	
HT0_Trap_Function_0x126:
	setx	htrap_enable_data, %g2, %g1
	mov     0, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 64
HT0_Trap_Function_0x128:	
	setx	htrap_enable_data, %g2, %g1
        mov     %o1, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done

.align 64
! Function to set 0x44, 0x55,
! pstate.priv, hpstate.hpriv and
! jump to target address.
! Caller should pass argument as:
! %o1    = 0x44
! %o2    = 0x55
! %o3[0] = desired pstate.priv value
! %o4[0] = desired hpstate.hpriv value
! %o5    = target VA
HT0_Trap_Function_0x12a:	
	mov	0x08, %g1
	stxa	%o1, [%g1] 0x21	! set 0x44
	mov	0x10, %g1
	stxa	%o2, [%g1] 0x21	! set 0x55
	xor	%o3, 0x1, %o3	! invert bit so that later can
	xor	%o4, 0x1, %o4	!    be xored using wrpr 
	sllx	%o3, 10, %o3	! align priv bit
	sllx	%o4, 2, %o4	! align hpriv bit
	rdpr 	%tstate, %g1
	or	%g1, 0x400, %g1
	wrpr	%g1, %o3, %tstate
	rdhpr 	%htstate, %g1
	or	%g1, 0x4, %g1
	wrhpr	%g1, %o4, %htstate
	wrpr	%o5, %g0, %tnpc
	done
	nop
	nop

.align 64
! Function to read thread ID from the
! Thread Status register.
! Value is returned in %o1.
HT0_RdThId_0x12e:

    setx     0xba00000000, %o1, %g1
    ldxa     [%g1] 0x15, %g1            ! has coreid

    srlx    %g1, 8, %o1
    mulx    %o1, 1, %o1
    and     %g1, 0xff, %g1
    add     %g1, %o1, %g1    

    !srlx    %g1, 5, %o1
    !add     %o1, %g1, %g1        ! translate from x,y coordinates to coreid
    !set     0x3f, %o1           ! get the lowest 6 bits
    !and     %g1, %o1, %g1
    
    sllx    %g1, 1, %g1

	rd	%asr26, %o1
    srlx    %o1, 8, %o1
    add     %o1, %g1, %o1
        set     0x007f, %g1
    and     %o1, %g1, %o1

	done
	nop

.align 512
HT0_Trap_Instruction_0x130:
	mov 0x130, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x131:
	mov 0x131, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x132:
	mov 0x132, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x133:
	mov 0x133, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x134:
	mov 0x134, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x135:
	mov 0x135, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;


	
.align 128	
	
HT0_Trap_0x138:
	mov 0x138, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	

HT0_Trap_0x13c:
	mov 0x13c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x140:
	mov 0x140, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x144:
	mov 0x144, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x148:
	mov 0x148, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x14c:
	mov 0x14c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x150:
	mov 0x150, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x154:
	mov 0x154, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x158:
	mov 0x158, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x15c:
	mov 0x15c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x160:
	mov 0x160, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x164:
	mov 0x164, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x168:
	mov 0x168, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x16c:
	mov 0x16c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x170:
	mov 0x170, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x174:
	mov 0x174, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x178:
	mov 0x178, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
	
HT0_Trap_0x17c:
	mov 0x17c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;
.align 128	
HT0_ChangePriv_0x180:
	rdpr	%tl, %g1
	sub	%g1, 1, %g1
	wrpr	%g1, %tl
	rdhpr	%htstate, %g1
	mov	0x4, %g2
	and	%g1, %g2, %g3
	brz,a	%g3, .+8
	wrhpr	%g1, %g2, %htstate
	done
	.word 0x180
	nop
	
.align 64
HT0_ChangeNonPriv_0x182:
	rdpr	%tl, %g1
	sub	%g1, 1, %g1
	wrpr	%g1, %tl
	rdhpr	%htstate, %g1
	mov	0x4, %g2
	and	%g1, %g2, %g3
	brnz,a	%g3, .+8
	wrhpr	%g1, %g2, %htstate
	done
	.word 0x182
	nop
	nop
	
.align 64
HT0_TrapEn_0x184:
	setx	htrap_enable_data, %g2, %g1
	mov     0x800, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done
	.word 0x184

.align 64
HT0_TrapDis_0x186:	
	setx	htrap_enable_data, %g2, %g1
	mov     0, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done
	.word 0x186

.align 64
HT0_TrapEn_Ntimes_0x188:
	setx	htrap_enable_data, %g2, %g1
        mov     %o1, %g2
	add	%o0, %o0, %o0
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %o0, %g3, %o0
	sth	%g2, [%g1+%o0]
	done
	.word 0x188

.align 64
! Function to set 0x44, 0x55,
! pstate.priv, hpstate.hpriv and
! jump to target address.
! Caller should pass argument as:
! %o1    = 0x44
! %o2    = 0x55
! %o3[0] = desired pstate.priv value
! %o4[0] = desired hpstate.hpriv value
! %o5    = target VA
HT0_ChangeCtx_0x18a:	
	rdpr	%tl, %g1
	sub	%g1, 1, %g1
	wrpr	%g1, %tl
	mov	0x08, %g1
	stxa	%o1, [%g1] 0x21	! set 0x44
	mov	0x10, %g1
	stxa	%o2, [%g1] 0x21	! set 0x55
	xor	%o3, 0x1, %o3	! invert bit so that later can
	xor	%o4, 0x1, %o4	!    be xored using wrpr 
	sllx	%o3, 10, %o3	! align priv bit
	sllx	%o4, 2, %o4	! align hpriv bit
	rdpr 	%tstate, %g1
	or	%g1, 0x400, %g1
	wrpr	%g1, %o3, %tstate
	rdhpr 	%htstate, %g1
	or	%g1, 0x4, %g1
	wrhpr	%g1, %o4, %htstate
	wrpr	%o5, %g0, %tnpc
	done
	nop
	nop
	nop

.align 64
! Function to read thread ID from the
! Thread Status register.
! Value is returned in %o1.
HT0_RdThId_0x18e:

    setx     0xba00000000, %o1, %g1
    ldxa     [%g1] 0x15, %g1            ! has coreid


    srlx    %g1, 8, %o1
    mulx    %o1, 1, %o1
    and     %g1, 0xff, %g1
    add     %g1, %o1, %g1    

    !srlx    %g1, 5, %o1
    !add     %o1, %g1, %g1        ! translate from x,y coordinates to coreid
    !set     0x3f, %o1           ! get the lowest 6 bits
    !and     %g1, %o1, %g1
    
    sllx    %g1, 1, %g1

	rd	%asr26, %o1
    srlx    %o1, 8, %o1
    add     %o1, %g1, %o1
        set     0x007f, %g1
    and     %o1, %g1, %o1


	done
	nop

.align 64
HT0_Trap_Instruction_0x190:
	mov 0x190, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x191:
	mov 0x191, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x192:
	mov 0x192, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x193:
	mov 0x193, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x194:
	mov 0x194, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
HT0_Trap_Instruction_0x195:
	mov 0x195, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
! Function to read thread ID from the
! Thread Status register.
! Value is returned in %g1.
HT0_RdThId_0x196:
	rdpr	%gl, %g4
	sub	%g4, 1, %g4
	wrpr	%g4, %g0, %gl


    setx     0xba00000000, %g1, %g4
    ldxa     [%g4] 0x15, %g4            ! has coreid

    srlx    %g4, 8, %g1
    mulx    %g1, 1, %g1
    and     %g4, 0xff, %g4
    add     %g4, %g1, %g4    

    !srlx    %g4, 5, %g1
    !add     %g1, %g4, %g4        ! translate from x,y coordinates to coreid
    !set     0x3f, %g1           ! get the lowest 6 bits
    !and     %g4, %g1, %g4
    
    sllx    %g4, 1, %g4

	rd	%asr26, %g1
    srlx    %g1, 8, %g1
    add     %g1, %g4, %g1
        set     0x007f, %g4
    and     %g1, %g4, %g1

	rdpr    %gl, %g4
        add     %g4, 1, %g4
        wrpr    %g4, %g0, %gl
	done
	nop


.align 0x4000

! If counter > 0,  trap is enabled for n times, decrement counter
! If counter = 0,  trap is disabled, go to BadTrap
! If counter = -1, trap has taken n times, go to GoodTrap directly
! If counter <-1,  trap is enabled for n times, increment counter
TrapCheck:	
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3
		! %g3 contains thread id
	set	htrap_enable_data, %g1
	add	%g7, %g7, %g4
        sllx    %g3, 10, %g3
        add     %g4, %g3, %g4
	ldsh	[%g1+%g4], %g2
	cmp	%g2, 0
	bl	%xcc, CheckGoodTrap
	mov	0,	%o0
	be	%xcc, HT0_BadTrap_0x101
	sub	%g2, 1, %g2
	ba	TrapCheck_end
CheckGoodTrap:
	cmp	%g2, -1
	be	%xcc, HT0_GoodTrap_0x100
	add	%g2, 1, %g2
TrapCheck_end:		
	sth	%g2, [%g1+%g4]
	done

	
TrapCheckWithRetry:	
	set	htrap_enable_data, %g1
	add	%g7, %g7, %g4
        
	rd      %asr26, %g3
        sllx    %g3, 51, %g3
        srlx    %g3, 59, %g3

        sllx    %g3, 10, %g3
        add     %g4, %g3, %g4
	ldsh	[%g1+%g4], %g2
	cmp	%g2, 0
	bl	%xcc, CheckGoodTrap_1
	mov	0,	%o0
	be	%xcc, HT0_BadTrap_0x101
	sub	%g2, 1, %g2
	ba	TrapCheck_end_1
CheckGoodTrap_1:
	cmp	%g2, -1
	be	%xcc, HT0_GoodTrap_0x100
	add	%g2, 1, %g2
TrapCheck_end_1:
	sth	%g2, [%g1+%g4]
	retry




immu_miss_handler_ext:
immu_ps0:
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, immu_ptr_chase
	mov	0, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, check ps1
	brz	%g3, immu_ps1

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
	sethi	%hi(0x00001fff), %g1
	or	%g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, immu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id

immu_ps1:
	ldxa	[%g0] 0x52, %g1		! immu ps1 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps1 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, immu_ptr_chase
	mov	1, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, bad_trap
	cmp	%g3, %g0
	te	%xcc, 0x01

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
	sethi	%hi(0x00001fff), %g1
	or	%g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, immu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id
	
 	ta	0x01
	nop
	
immu_ptr_chase:
 	or 	%g5, %g0, %g6           ! %g6 is link-reg
immu_ptr_chase_loop:
	ldda	[%g6] 0x24, %g4		! load tte from tsb

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
	sethi	%hi(0x00001fff), %g1
	or	%g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, immu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id
	
	ldx	[%g6+16], %g6
	cmp	%g6, -1
	bne	%xcc, immu_ptr_chase_loop ! keep chasing pointer
	nop
	brz	%g7, immu_ps1		! finished ps0 pointer chasing, go to ps1
	nop
	ta	0x01		! finished ps1 pointer chasing, go to bad_trap
	nop

immu_trap_done:
	! check to see if RA[39] is set.
	! RA[39] = 0 means accessing memory space
	! RA[39] = 1 means accessing I/O space
	mov	%g5, %g2
	sllx	%g2, 24, %g2
	srlx	%g2, 63, %g2
	brnz	%g2, immu_skip_part_base
	nop

	! add partition base to data-in
	setx	partition_base_list, %g3, %g2	! for partition base
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1
	add	%g5, %g1, %g5

immu_skip_part_base:
    ! store csm info must be earlier than data to avoid overwrite

	mov	0x400, %g6
	stxa	%g5, [ %g6 ] 0x54	! data-in


	retry 

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!	
immu_real_miss_handler_ext:
	! check to see if RA[39] is set.
	! RA[39] = 0 means accessing memory space
	! RA[39] = 1 means accessing I/O space
	mov	%g2, %g4
	sllx	%g2, 24, %g2
	srlx	%g2, 63, %g2
	brnz	%g2, immu_real_skip_part_base
	mov	%g0, %g1                ! %g1 will contain partition base

	! if we get here, access is to memory space
	mov	%g4, %g2
	srlx	%g2, 33, %g2		! check to see if ra exceeds 8GB limit
	cmp	%g2, %g0
	tne	%xcc, 0x01

	! add partition base to data-in
	setx	partition_base_list, %g1, %g2	! for partition base
	mov	0x80, %g1		! offset (VA) for patrition id
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1

immu_real_skip_part_base:
	setx	0x8000000000000400, %g2, %g5 ! CP
	srlx	%g4, 13, %g4		! get rid of garbage in context field
	sllx	%g4, 13, %g4
	or	%g4, %g5, %g5
	add	%g5, %g1, %g5		! add partition base %g1 is zero
					! if we choose to skip the add
	mov	0x30, %g7
	stxa	%g4, [ %g7 ] 0x50	! {tag-access, data-in}


	mov	0x600, %g6

	stxa	%g5, [ %g6 ] 0x54
	retry 


dmmu_miss_handler_ext:
dmmu_ps0:
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dmmu_ptr_chase

	mov	0, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, check ps1
	brz	%g3, dmmu_ps1

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, dmmu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id
		
dmmu_ps1:
	ldxa	[%g0] 0x5a, %g1		! dmmu ps1 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps1 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dmmu_ptr_chase

	mov	1, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, bad_trap
	cmp	%g3, %g0
	te	%xcc, 0x01


	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, dmmu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id

 	ta	0x01
	nop
	
dmmu_ptr_chase:
 	or 	%g5, %g0, %g6           ! %g6 is link-reg
dmmu_ptr_chase_loop:
	ldda	[%g6] 0x24, %g4		! load tte from tsb

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be,a	%xcc, dmmu_trap_done
	mov	0x80, %g1		! offset (VA) for patrition id
	
	ldx	[%g6+16], %g6
	cmp	%g6, -1
	bne	%xcc, dmmu_ptr_chase_loop ! keep chasing pointer
	nop
	brz	%g7, dmmu_ps1		! finished ps0 pointer chasing, go to ps1
	nop
	ta	0x01		! finished ps1 pointer chasing, go to bad_trap
	nop

dmmu_trap_done:
	! check to see if RA[39] is set.
	! RA[39] = 0 means accessing memory space
	! RA[39] = 1 means accessing I/O space
	mov	%g5, %g3
	sllx	%g3, 24, %g3
	srlx	%g3, 63, %g3
	brnz	%g3, dmmu_skip_part_base
	! add partition base to data-in
	setx	partition_base_list, %g3, %g2	! for partition base
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1
	add	%g5, %g1, %g5


dmmu_skip_part_base:



	mov	0x400, %g6
	stxa	%g5, [ %g6 ] 0x5c	! data-in


	retry 

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!	
dmmu_real_miss_handler_ext:
	! check to see if RA[39] is set.
	! RA[39] = 0 means accessing memory space
	! RA[39] = 1 means accessing I/O space
	mov	%g2, %g4
	sllx	%g2, 24, %g2
	srlx	%g2, 63, %g2
	brnz	%g2, dmmu_real_skip_part_base
	mov	%g0, %g1		! %g1 will contain partition base

	! if we get here, access is to memory space
	mov	%g4, %g2
	srlx	%g2, 33, %g2		! check to see if ra exceeds 8GB limit
	cmp	%g2, %g0
	tne	%xcc, 0x01

	! add partition base to data-in
	setx	partition_base_list, %g1, %g2	! for partition base
	mov	0x80, %g1		! offset (VA) for patrition id
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1

dmmu_real_skip_part_base:
	setx	0x8000000000000440, %g2, %g5 ! CP W
	srlx	%g4, 13, %g4		! get rid of garbage in context field
	sllx	%g4, 13, %g4
	or	%g4, %g5, %g5
	add	%g5, %g1, %g5		! add partition base %g1 is zero
					! if we choose to skip the add
	mov	0x30, %g7
	stxa	%g4, [ %g7 ] 0x58	! {tag-access, data-in}



	mov	0x600, %g6
	stxa	%g5, [ %g6 ] 0x5c
	retry 



iaccess_except_handler:
	
iacc_ex_ps0:
	ldxa	[%g0] 0x51, %g1		! immu ps0 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps0 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, iacc_ex_ptr_chase
	mov	0, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, check ps1
	brz	%g3, iacc_ex_ps1

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, iacc_ex_trap_done
	nop

iacc_ex_ps1:
	ldxa	[%g0] 0x52, %g1		! immu ps1 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps1 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, iacc_ex_ptr_chase
	mov	1, %g7			! remember ptr chase from ps1
	srlx	%g5, 63, %g3		! if not valid, bad_trap
	brz	%g3, bad_trap

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, iacc_ex_trap_done
	nop
	
 	ba	bad_trap
	nop
	
iacc_ex_ptr_chase:
 	or 	%g5, %g0, %g6           ! %g6 is link-reg
iacc_ex_ptr_chase_loop:
	ldda	[%g6] 0x24, %g4		! load tte from tsb

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1		! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, iacc_ex_trap_done
	
	ldx	[%g6+16], %g6
	cmp	%g6, -1
	bne	%xcc, iacc_ex_ptr_chase_loop ! keep chasing pointer
	nop
	brz	%g7, iacc_ex_ps1	! finished ps0 pointer chasing, go to ps1
	nop
	ba	bad_trap		! finished ps1 pointer chasing, go to bad_trap
	nop

iacc_ex_trap_done:
	! add partition base to data-in
	setx	partition_base_list, %g1, %g2	! for partition base
	mov	0x80, %g1		! offset (VA) for patrition id
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1
	add	%g5, %g1, %g5
	mov	0x4, %g1		! clear P-bit
	not	%g1
	and	%g1, %g5, %g5
	mov	0x30, %g7
	mov	0x400, %g6
	stxa	%g4, [ %g7 ] 0x50	! {tag-access, data-in}
	stxa	%g5, [ %g6 ] 0x54
	retry 


	



daccess_except_handler:
 
dacc_ex_ps0:
	ldxa	[%g0] 0x59, %g1		! dmmu ps0 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps0 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dacc_ex_ptr_chase
	mov	0, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, check ps1
	brz	%g3, dacc_ex_ps1

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_ex_trap_done
	nop
	
dacc_ex_ps1:
	ldxa	[%g0] 0x5a, %g1		! dmmu ps1 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps1 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dacc_ex_ptr_chase
	mov	1, %g7			! remember ptr chase from ps1
	srlx	%g5, 63, %g3		! if not valid, bad_trap
	brz	%g3, bad_trap

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_ex_trap_done
	nop

 	ba	bad_trap
	nop
	
dacc_ex_ptr_chase:
 	or 	%g5, %g0, %g6           ! %g6 is link-reg
dacc_ex_ptr_chase_loop:
	ldda	[%g6] 0x24, %g4		! load tte from tsb

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_ex_trap_done
	
	ldx	[%g6+16], %g6
	cmp	%g6, -1
	bne	%xcc, dacc_ex_ptr_chase_loop ! keep chasing pointer
	nop
	brz	%g7, dacc_ex_ps1		! finished ps0 pointer chasing, go to ps1
	nop
	ba	bad_trap		! finished ps1 pointer chasing, go to bad_trap
	nop

dacc_ex_trap_done:
	! add partition base to data-in
	setx	partition_base_list, %g1, %g2	! for partition base
	mov	0x80, %g1		! offset (VA) for patrition id
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1
	add	%g5, %g1, %g5
	mov	0x4, %g1		! clear P-bit
	not	%g1
	and	%g1, %g5, %g5
	mov	0x30, %g7
	mov	0x400, %g6
	stxa	%g4, [ %g7 ] 0x58	! {tag-access, data-in}
	stxa	%g5, [ %g6 ] 0x5c
	retry 



daccess_prot_handler:
 
dacc_pro_ps0:
	ldxa	[%g0] 0x59, %g1		! dmmu ps0 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps0 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dacc_pro_ptr_chase
	mov	0, %g7			! remember ptr chase from ps0
	srlx	%g5, 63, %g3		! if not valid, check ps1
	brz	%g3, dacc_pro_ps1

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_pro_trap_done
	nop
	
dacc_pro_ps1:
	ldxa	[%g0] 0x5a, %g1		! dmmu ps1 ptr
	ldda	[%g1] 0x24, %g4		! load tte from ps1 tsb
	cmp	%g4, -1			! if all 1s, follow link
	be,a	%xcc, dacc_pro_ptr_chase
	mov	1, %g7			! remember ptr chase from ps1
	srlx	%g5, 63, %g3		! if not valid, bad_trap
	brz	%g3, bad_trap

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_pro_trap_done
	nop

 	ba	bad_trap
	nop
	
dacc_pro_ptr_chase:
 	or 	%g5, %g0, %g6           ! %g6 is link-reg
dacc_pro_ptr_chase_loop:
	ldda	[%g6] 0x24, %g4		! load tte from tsb

	sllx	%g5, 61, %g1
	srlx	%g1, 61, %g1            ! %g1 = size[2:0]
	mulx	%g1, 3, %g1
	sub	%g0, 1, %g3
	sllx	%g3, 13, %g3
	sllx	%g3, %g1, %g3
        sethi   %hi(0x00001fff), %g1
        or      %g1, 0xfff, %g1
	or	%g3, %g1, %g3		! %g3 = va/ctxt mask based on size[2:0]

	and	%g2, %g3, %g3		! apply mask
	cmp	%g3, %g4		! check if va/ctxt match
	be	%xcc, dacc_pro_trap_done
	
	ldx	[%g6+16], %g6
	cmp	%g6, -1
	bne	%xcc, dacc_pro_ptr_chase_loop ! keep chasing pointer
	nop
	brz	%g7, dacc_pro_ps1	! finished ps0 pointer chasing, go to ps1
	nop
	ba	bad_trap		! finished ps1 pointer chasing, go to bad_trap
	nop

dacc_pro_trap_done:
	! add partition base to data-in
	setx	partition_base_list, %g1, %g2	! for partition base
	mov	0x80, %g1		! offset (VA) for patrition id
	ldxa	[%g1] 0x58, %g3		! partition id
	sllx	%g3, 3, %g3		! offset - partition list
	ldx	[%g2 + %g3], %g1
	or	%g5, %g1, %g5
	mov	0x2, %g1		! set W-bit
	add	%g1, %g5, %g5
	mov	0x30, %g7
	mov	0x400, %g6
	stxa	%g4, [ %g7 ] 0x58	! {tag-access, data-in}
	stxa	%g5, [ %g6 ] 0x5c
	retry 



proc_mem_align:
        done



.data

htrap_enable_data:	

hdt0_0_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_0_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_64_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt0_128_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt0_192_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_0_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_64_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
hdt1_128_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hdt1_192_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

hpthread_mutex_data:

	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	
hpthread_counter_data:

	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0






SECTION .UART_MAPPING 	DATA_VA=0xfff0c2c000
attr_data {
	NAME = .UART_MAPPING,
	PA = 0xfff0c2c000,
	VA = 0xfff0c2c000,
	RA = 0xfff0c2c000,
	part_0_d_ctx_zero_ps0_tsb,
	TTE_G=1,       TTE_Context=0x44, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
	TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=0,  TTE_CV=0, 
	TTE_E=1,       TTE_P=1,        TTE_W=1
}
.data
.word 0



			
SECTION .TRAPS         TEXT_VA=0x120000, DATA_VA=0x12c000

	
attr_text {
	Name = .TRAPS,
	RA = 0x120000,
	PA = 0x1000120000,
	part_0_i_ctx_zero_ps0_tsb,
	TTE_G=1,       TTE_Context=0, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
	TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=1,  TTE_CV=0, 
	TTE_E=0,      TTE_P=1,        TTE_W=1

	}
attr_data {
	Name = .TRAPS,	
	RA = 0x12c000,
	PA = 0x100012c000,
	part_0_d_ctx_zero_ps0_tsb,
	TTE_G=1,       TTE_Context=0, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
	TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=1,  TTE_CV=0, 
	TTE_E=0,      TTE_P=1,        TTE_W=1

	}







				






				
.text

T0_Reserved_0x00:		
	mov 0x00, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x01:		
	mov 0x01, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x02:		
	mov 0x02, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x03:		
	mov 0x03, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x04:		
	mov 0x04, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x05:		
	mov 0x05, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x06:		
	mov 0x06, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x07:		
	mov 0x07, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Instruction_Access_Exception_0x08:
	mov 0x08, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x09:		
	mov 0x09, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Instruction_Access_Error_0x0a:		
	mov 0x0a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x0b:		
	mov 0x0b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x0c:		
	mov 0x0c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x0d:		
	mov 0x0d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x0e:		
	mov 0x0e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x0f:		
	mov 0x0f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Illegal_Instruction_0x10:
	mov 0x10, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T0_Privileged_Opcode_0x11:
	mov 0x11, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T0_Unimplemented_LDD_0x12:
	mov 0x12, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T0_Unimplemented_STD_0x13:
	mov 0x13, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T0_Reserved_0x14:		
	mov 0x14, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x15:		
	mov 0x15, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x16:		
	mov 0x16, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x17:		
	mov 0x17, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x18:		
	mov 0x18, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x19:		
	mov 0x19, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1a:		
	mov 0x1a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1b:		
	mov 0x1b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1c:		
	mov 0x1c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1d:		
	mov 0x1d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1e:		
	mov 0x1e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x1f:		
	mov 0x1f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Fp_Disabled_0x20:
	mov 0x20, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T0_Fp_Exception_Ieee_754_0x21:		
	mov 0x21, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Fp_Exception_Other_0x22:		
	mov 0x22, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Tag_Overflow_0x23:		
	mov 0x23, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
.align	32

T0_Clean_Window_0x24:
	restore; mov 0x24, %g7; b TrapCheck;  nop;nop;nop;nop;nop;
.align	128

T0_Division_By_Zero_0x28:		
	mov 0x28, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 	
.align 32	                

T0_Reserved_0x29:		
	mov 0x29, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2a:		
	mov 0x2a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2b:		
	mov 0x2b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2c:		
	mov 0x2c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2d:		
	mov 0x2d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2e:		
	mov 0x2e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x2f:		
	mov 0x2f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Data_Access_Exception_0x30:		
	mov 0x30, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x31:		
	mov 0x31, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 


T0_Data_Access_Error_0x32:		
	mov 0x32, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x33:		
	mov 0x33, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Mem_Address_Not_Aligned_0x34:		
		mov 0x34, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Lddf_Mem_Address_Not_Aligned_0x35:
	mov 0x35, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Stdf_Mem_Address_Not_Aligned_0x36:
	mov 0x36, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Privileged_Action_0x37:		
	mov 0x37, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x38:		
	mov 0x38, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x39:		
	mov 0x39, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3a:		
	mov 0x3a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3b:		
	mov 0x3b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3c:		
	mov 0x3c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3d:		
	mov 0x3d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3e:		
	mov 0x3e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x3f:		
	mov 0x3f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x40:		
	mov 0x40, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_1_0x41:		
	mov 0x41, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_2_0x42:		
	mov 0x42, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_3_0x43:		
	mov 0x43, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_4_0x44:		
	mov 0x44, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_5_0x45:		
	mov 0x45, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_6_0x46:		
	mov 0x46, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_7_0x47:		
	mov 0x47, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_8_0x48:		
	mov 0x48, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_9_0x49:		
	mov 0x49, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_10_0x4a:		
	mov 0x4a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_11_0x4b:		
	mov 0x4b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_12_0x4c:		
	mov 0x4c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_13_0x4d:		
	mov 0x4d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_14_0x4e:		
	mov 0x4e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_Level_15_0x4f:		
	mov 0x4f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x50:		
	mov 0x50, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x51:		
	mov 0x51, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x52:		
	mov 0x52, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x53:		
	mov 0x53, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x54:		
	mov 0x54, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x55:		
	mov 0x55, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x56:		
	mov 0x56, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x57:		
	mov 0x57, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x58:		
	mov 0x58, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x59:		
	mov 0x59, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5a:		
	mov 0x5a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5b:		
	mov 0x5b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5c:		
	mov 0x5c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5d:		
	mov 0x5d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5e:		
	mov 0x5e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x5f:		
	mov 0x5f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Interrupt_0x60:		
	mov 0x60, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x61:		
	mov 0x61, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x62:		
	mov 0x62, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Corrected_ECC_error_0x63:		
	retry; nop;nop;nop;nop;nop;nop;nop;;

T0_Fast_Instr_Access_MMU_Miss_0x64:
nop	! immu trap is now handled in hypervisor

.align 128	
T0_Fast_Data_Access_MMU_Miss_0x68:
nop	! dmmu trap is now handled in hypervisor

.align 128	
T0_Fast_Data_Access_Protection_0x6c:		
		mov 0x6c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 128	
T0_Reserved_0x70:		
	mov 0x70, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x71:		
	mov 0x71, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x72:		
	mov 0x72, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x73:		
	mov 0x73, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x74:		
	mov 0x74, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x75:		
	mov 0x75, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x76:		
	mov 0x76, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x77:		
	mov 0x77, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x78:		
	mov 0x78, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x79:		
	mov 0x79, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x7a:		
	mov 0x7a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Reserved_0x7b:		
	mov 0x7b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Cpu_Mondo_Trap_0x7c:
	mov 0x7c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Dev_Mondo_Trap_0x7d:
	mov 0x7d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Resumable_Error_0x7e:
	mov 0x7e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T0_Non_Resumable_Error_0x7f:
	mov 0x7f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Window_Spill_0_Normal_0x80:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_1_Normal_0x84:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_2_Normal_0x88:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_3_Normal_0x8c:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_4_Normal_0x90:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_5_Normal_0x94:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_6_Normal_0x98:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128	
T0_Window_Spill_7_Normal_0x9c:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_0_Other_0xa0:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_1_Other_0xa4:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_2_Other_0xa8:		
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_3_Other_0xac:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_4_Other_0xb0:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_5_Other_0xb4:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_6_Other_0xb8:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Spill_7_Other_0xbc:
		setx spill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_0_Normal_0xc0:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_1_Normal_0xc4:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_2_Normal_0xc8:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_3_Normal_0xcc:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_4_Normal_0xd0:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_5_Normal_0xd4:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_6_Normal_0xd8:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_7_Normal_0xdc:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_0_Other_0xe0:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_1_Other_0xe4:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_2_Other_0xe8:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_3_Other_0xec:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_4_Other_0xf0:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_5_Other_0xf4:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_6_Other_0xf8:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_Window_Fill_7_Other_0xfc:
		setx fill_trap, %g1, %g2; jmp %g2; nop

.align 128
T0_GoodTrap_0x100:
.global good_trap
good_trap:     
	rd %asr26, %g1; wr %g1, 0x1, %asr26; nop; b good_trap;nop;nop;nop;nop

T0_BadTrap_0x101:
.global bad_trap
bad_trap:
        b bad_trap; nop;nop;nop;nop;nop;nop;nop
	
T0_ChangePriv_0x102:
        rdpr    %tstate, %g1
	mov	0x400, %g2
	and	%g1, %g2, %g3
	brz,a	%g3, .+8
	wrpr	%g1, %g2, %tstate
	done
	nop
	nop
	
T0_ChangeNonPriv_0x103:
        rdpr    %tstate, %g1
	mov	0x400, %g2
	and	%g1, %g2, %g3
	brnz,a	%g3, .+8
	wrpr	%g1, %g2, %tstate
	done
	nop
	nop

T0_ChangeToTL1_0x104:
	wrpr %g0, 1, %gl
        rdpr    %tnpc, %g1
	wrpr %g0, 1, %tl
	jmp	%g1
	nop
	nop
	nop
	nop
	
T0_ChangeToTL0_0x105:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	wrpr %g0, 1, %tl
	wrpr %g1, 0, %tstate
	wrpr %g2, 0, %tpc
	wrpr %g3, 0, %tnpc
	done
	
T0_ChangeToTL0_0x106:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	wrpr %g0, 1, %tl
	wrpr %g1, 0, %tstate
	wrpr %g2, 0, %tpc
	wrpr %g3, 0, %tnpc
	done
	
T0_ChangeToTL0_0x107:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	wrpr %g0, 1, %tl
	wrpr %g1, 0, %tstate
	wrpr %g2, 0, %tpc
	wrpr %g3, 0, %tnpc
	done

.align 128
T0_TrapEn_0x108:
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
	mov     0x800, %g2
	add	%o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
	sth	%g2, [%g3+%o0]
	done

.align 64
T0_TrapDis_0x10a:	
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
	mov     0, %g2
	add	%o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
	sth	%g2, [%g3+%o0]
	done

.align 64
T0_TrapEn_Ntimes_0x10c:	
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
	mov	%o1, %g2
	add	%o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
	sth	%g2, [%g3+%o0]
	done

.align 128
T0_PThreadMutexLock_0x110:
        wrpr    1, %gl    ! set it back to 1
!!        setx    pthread_mutex_data, %g2, %g3
        sethi   %hi(pthread_mutex_data), %g3
pt_retry:
        ldstub  [%g3+%g7], %g2
        brz     %g2, pt_done
        nop
pt_loop:
        ldub    [%g3+%g7], %g2
        brnz    %g2, pt_loop
        nop
        ba,a    pt_retry
pt_done:
        membar  #LoadLoad | #LoadStore
        ldsb    [%g4+%g6], %g3
        add     1, %g3, %g3
        stub    %g3, [%g4+%g6]
        done
        nop

.align 128
T0_PThreadMutexUnLock_0x114:	
        wrpr    1, %gl    ! set it back to 1
!!        setx    pthread_mutex_data, %g2, %g3
        sethi   %hi(pthread_mutex_data), %g3
        stub    %g0, [%g3+%g7]
        ldsb    [%g4+%g6], %g3
        subcc   %g5, 1, %g5     ! %g5 timeout count
        te      0x01
        cmp     %g3, 1
        bl,a    .-12
        ldsb    [%g4+%g6], %g3
        done
        nop
	
.align 64
T0_Trap_Sync_0x116:
        setx    pthread_counter_data, %g1, %g4
!!      we will change the GL not others
        wrpr    1, %gl
        rdpr    %tstate, %g3    ! get TSTATE
        mov     1,%g1
        sllx    %g1, 40, %g1    ! mov GL to low bit
        xor      %g1, %g3, %g3   ! change the prev GL value
        wrpr    %g3, %tstate
        done
        nop


	
.align 64
! call kernel device routine
T0_Trap_SysCall_0x118:
	! calculate ptr to syscall data according to thread ID
	mov	%o1, %g1	! save %o1
	
	ta      0x2e
		! get thread ID
	sllx	%o1, 6, %o1
	setx	pthread_syscall_data, %g2, %g4
	add	%g4, %o1, %g4	! %g4 = ptr to threads data
	ba	syscall_handler
	mov	%g1, %o1	! restore %o1
	
.align 64
T0_Trap_SysRet_0x11a:
	! calculate ptr to syscall data according to thread ID
	mov	%o1, %g1	! save %o1
	
	ta      0x2e
		! get thread ID
	sllx	%o1, 6, %o1
	setx	pthread_syscall_data, %g2, %g4
	add	%g4, %o1, %g4	! %g4 = ptr to threads data
	ba	sysret_handler
	mov	%g1, %o1	! restore %o1

.align 512
T0_HTrap_ChangePriv_0x120:
        ta      %icc, 0x80
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64
T0_HTrap_ChangeNonPriv_0x122:
        ta      %icc, 0x82
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T0_HTrapEn_0x124:
        ta      %icc, 0x84
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T0_HTrapDis_0x126:
        ta      %icc, 0x86
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T0_HTrapEn_Ntimes_0x128:
        ta      %icc, 0x88
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T0_ChangeCtx_0x12a:
        ta      %icc, 0x8a
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64
T0_Dummy_0x12c:
	nop
	nop

.align 64	
T0_RdThId_0x12e:
        ta      %icc, 0x8e
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 512
T0_Trap_Instruction_0x130:
	mov 0x130, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T0_Trap_Instruction_0x131:
	mov 0x131, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T0_Trap_Instruction_0x132:
	ta	0x90;
        done;
        nop;
	nop;
	nop;
	nop;
	nop;
	nop;

.align 32
T0_Trap_Instruction_0x133:
	ta	0x91;
        done;
        nop;
	nop;
	nop;
	nop;
	nop;
	nop;

.align 32
T0_Trap_Instruction_0x134:
	mov 0x134, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T0_Trap_Instruction_0x135:
	mov 0x135, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x136:
        mov 0x136, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x137:
        mov 0x137, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x138:
        mov 0x138, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x139:
        mov 0x139, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13a:
        mov 0x13a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13b:
        mov 0x13b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13c:
        mov 0x13c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13d:
        mov 0x13d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13e:
        mov 0x13e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x13f:
        mov 0x13f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x140:
        mov 0x140, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x141:
        mov 0x141, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x142:
        mov 0x142, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x143:
        mov 0x143, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x144:
        mov 0x144, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x145:
        mov 0x145, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x146:
        mov 0x146, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x147:
        mov 0x147, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x148:
        mov 0x148, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x149:
        mov 0x149, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14a:
        mov 0x14a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14b:
        mov 0x14b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14c:
        mov 0x14c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14d:
        mov 0x14d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14e:
        mov 0x14e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x14f:
        mov 0x14f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x150:
        mov 0x150, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x151:
        mov 0x151, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x152:
        mov 0x152, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x153:
        mov 0x153, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x154:
        mov 0x154, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x155:
        mov 0x155, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x156:
        mov 0x156, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x157:
        mov 0x157, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x158:
        mov 0x158, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x159:
        mov 0x159, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15a:
        mov 0x15a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15b:
        mov 0x15b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15c:
        mov 0x15c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15d:
        mov 0x15d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15e:
        mov 0x15e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x15f:
        mov 0x15f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x160:
        mov 0x160, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x161:
        mov 0x161, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x162:
        mov 0x162, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x163:
        mov 0x163, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x164:
        mov 0x164, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x165:
        mov 0x165, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x166:
        mov 0x166, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x167:
        mov 0x167, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x168:
        mov 0x168, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x169:
        mov 0x169, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16a:
        mov 0x16a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16b:
        mov 0x16b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16c:
        mov 0x16c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16d:
        mov 0x16d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16e:
        mov 0x16e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x16f:
        mov 0x16f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x170:
    setx hv_putchar, %g1, %g2; jmp %g2; nop

T0_Trap_Instruction_0x171:
        mov 0x171, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x172:
        mov 0x172, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x173:
        mov 0x173, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x174:
        mov 0x174, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x175:
        mov 0x175, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x176:
        mov 0x176, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x177:
        mov 0x177, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x178:
        mov 0x178, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x179:
        mov 0x179, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17a:
        mov 0x17a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17b:
        mov 0x17b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17c:
        mov 0x17c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17d:
        mov 0x17d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17e:
        mov 0x17e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T0_Trap_Instruction_0x17f:
        mov 0x17f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 0x1000	

T0_Trap_Instruction_0x180:
        mov 0x180, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 512	
T0_Trap_Instruction_0x190:
        mov 0x190, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 256	
T0_Trap_Instruction_0x198:
        mov 0x198, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32

T0_Trap_Instruction_0x199:
        mov 0x199, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

	
.align 0x4000


T1_Reserved_0x00:	
	mov 0x00, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x01:		
	mov 0x01, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x02:		
	mov 0x02, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x03:		
	mov 0x03, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x04:		
	mov 0x04, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x05:		
	mov 0x05, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x06:		
	mov 0x06, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x07:		
	mov 0x07, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x08:		
	mov 0x08, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x09:		
	mov 0x09, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0a:		
	mov 0x0a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0b:		
	mov 0x0b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0c:		
	mov 0x0c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0d:		
	mov 0x0d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0e:		
	mov 0x0e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x0f:		
	mov 0x0f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Illegal_Instruction_0x10:
	mov 0x10, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop

T1_Reserved_0x11:		
	mov 0x11, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x12:		
	mov 0x12, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x13:		
	mov 0x13, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x14:		
	mov 0x14, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x15:		
	mov 0x15, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x16:		
	mov 0x16, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x17:		
	mov 0x17, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x18:		
	mov 0x18, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x19:		
	mov 0x19, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1a:		
	mov 0x1a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1b:		
	mov 0x1b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1c:		
	mov 0x1c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1d:		
	mov 0x1d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1e:		
	mov 0x1e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x1f:		
	mov 0x1f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x20:		
	mov 0x20, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x21:		
	mov 0x21, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x22:		
	mov 0x22, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x23:		
	mov 0x23, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

.align 32
T1_Clean_Window_0x24:
	restore; mov 0x24, %g7; b TrapCheck;  nop;nop;nop;nop;nop;

T1_Reserved_0x25:		
	mov 0x01, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x26:		
	mov 0x26, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x27:		
	mov 0x27, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x28:		
	mov 0x28, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x29:		
	mov 0x29, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2a:		
	mov 0x2a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2b:		
	mov 0x2b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2c:		
	mov 0x2c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2d:		
	mov 0x2d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2e:		
	mov 0x2e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x2f:		
	mov 0x2f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x30:		
	mov 0x30, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x31:		
	mov 0x31, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x32:		
	mov 0x32, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x33:		
	mov 0x33, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Mem_Address_Not_Aligned_0x34:		
	mov 0x34, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x35:		
	mov 0x35, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x36:		
	mov 0x36, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x37:		
	mov 0x37, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x38:		
	mov 0x38, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x39:		
	mov 0x39, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3a:		
	mov 0x3a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3b:		
	mov 0x3b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3c:		
	mov 0x3c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3d:		
	mov 0x3d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3e:		
	mov 0x3e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x3f:		
	mov 0x3f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x40:		
	mov 0x40, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x41:		
	mov 0x41, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x42:		
	mov 0x42, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x43:		
	mov 0x43, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x44:		
	mov 0x44, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x45:		
	mov 0x45, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x46:		
	mov 0x46, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x47:		
	mov 0x47, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x48:		
	mov 0x48, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x49:		
	mov 0x49, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4a:		
	mov 0x4a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4b:		
	mov 0x4b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4c:		
	mov 0x4c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4d:		
	mov 0x4d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4e:		
	mov 0x4e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x4f:		
	mov 0x4f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x50:		
	mov 0x50, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x51:		
	mov 0x51, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x52:		
	mov 0x52, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x53:		
	mov 0x53, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x54:		
	mov 0x54, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x55:		
	mov 0x55, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x56:		
	mov 0x56, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x57:		
	mov 0x57, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x58:		
	mov 0x58, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x59:		
	mov 0x59, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5a:		
	mov 0x5a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5b:		
	mov 0x5b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5c:		
	mov 0x5c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5d:		
	mov 0x5d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5e:		
	mov 0x5e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x5f:		
	mov 0x5f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x60:		
	mov 0x60, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x61:		
	mov 0x61, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x62:		
	mov 0x62, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x63:		
	retry; nop;nop;nop;nop;nop;nop;nop;;

T1_Fast_Instr_Access_MMU_Miss_0x64:
nop     ! immu trap is now handled in hypervisor

.align 128	
T1_Fast_Data_Access_MMU_Miss_0x68:
nop     ! dmmu trap is now handled in hypervisor

.align 128	

T1_Fast_Data_Access_Protection_0x6c:		
	mov 0x6c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x6d:		
	mov 0x6d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x6e:		
	mov 0x6e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x6f:		
	mov 0x6f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x70:		
	mov 0x70, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x71:		
	mov 0x71, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x72:		
	mov 0x72, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x73:		
	mov 0x73, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x74:		
	mov 0x74, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x75:		
	mov 0x75, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x76:		
	mov 0x76, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x77:		
	mov 0x77, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x78:		
	mov 0x78, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x79:		
	mov 0x79, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7a:		
	mov 0x7a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7b:		
	mov 0x7b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7c:		
	mov 0x7c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7d:		
	mov 0x7d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7e:		
	mov 0x7e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x7f:		
	mov 0x7f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x80:		
		mov 0x80, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

.align 128	
T1_Reserved_0x84:		
		mov 0x84, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

.align 128	
T1_Reserved_0x88:		
		mov 0x88, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

.align 128	
T1_Reserved_0x8c:		
		mov 0x8c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
.align 128

T1_Reserved_0x90:		
	mov 0x90, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x91:		
	mov 0x91, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x92:		
	mov 0x92, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x93:		
	mov 0x93, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x94:		
	mov 0x94, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x95:		
	mov 0x95, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x96:		
	mov 0x96, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x97:		
	mov 0x97, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x98:		
	mov 0x98, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x99:		
	mov 0x99, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9a:		
	mov 0x9a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9b:		
	mov 0x9b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9c:		
	mov 0x9c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9d:		
	mov 0x9d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9e:		
	mov 0x9e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0x9f:		
	mov 0x9f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa0:		
	mov 0xa0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa1:		
	mov 0xa1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa2:		
	mov 0xa2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa3:		
	mov 0xa3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa4:		
	mov 0xa4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa5:		
	mov 0xa5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa6:		
	mov 0xa6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa7:		
	mov 0xa7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa8:		
	mov 0xa8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xa9:		
	mov 0xa9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xaa:		
	mov 0xaa, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xab:		
	mov 0xab, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xac:		
	mov 0xac, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xad:		
	mov 0xad, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xae:		
	mov 0xae, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xaf:		
	mov 0xaf, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb0:		
	mov 0xb0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb1:		
	mov 0xb1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb2:		
	mov 0xb2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb3:		
	mov 0xb3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb4:		
	mov 0xb4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb5:		
	mov 0xb5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb6:		
	mov 0xb6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb7:		
	mov 0xb7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb8:		
	mov 0xb8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xb9:		
	mov 0xb9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xba:		
	mov 0xba, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xbb:		
	mov 0xbb, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xbc:		
	mov 0xbc, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xbd:		
	mov 0xbd, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xbe:		
	mov 0xbe, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xbf:		
	mov 0xbf, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc0:		
	mov 0xc0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc1:		
	mov 0xc1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc2:		
	mov 0xc2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc3:		
	mov 0xc3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc4:		
	mov 0xc4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc5:		
	mov 0xc5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc6:		
	mov 0xc6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc7:		
	mov 0xc7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc8:		
	mov 0xc8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xc9:		
	mov 0xc9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xca:		
	mov 0xca, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xcb:		
	mov 0xcb, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xcc:		
	mov 0xcc, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xcd:		
	mov 0xcd, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xce:		
	mov 0xce, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xcf:		
	mov 0xcf, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd0:		
	mov 0xd0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd1:		
	mov 0xd1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd2:		
	mov 0xd2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd3:		
	mov 0xd3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd4:		
	mov 0xd4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd5:		
	mov 0xd5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd6:		
	mov 0xd6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd7:		
	mov 0xd7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd8:		
	mov 0xd8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xd9:		
	mov 0xd9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xda:		
	mov 0xda, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xdb:		
	mov 0xdb, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xdc:		
	mov 0xdc, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 
.align 128

T1_Reserved_0xe0:		
	mov 0xe0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe1:		
	mov 0xe1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe2:		
	mov 0xe2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe3:		
	mov 0xe3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe4:		
	mov 0xe4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe5:		
	mov 0xe5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe6:		
	mov 0xe6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe7:		
	mov 0xe7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe8:		
	mov 0xe8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xe9:		
	mov 0xe9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xea:		
	mov 0xea, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xeb:		
	mov 0xeb, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xec:		
	mov 0xec, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xed:		
	mov 0xed, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xee:		
	mov 0xee, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xef:		
	mov 0xef, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf0:		
	mov 0xf0, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf1:		
	mov 0xf1, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf2:		
	mov 0xf2, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf3:		
	mov 0xf3, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf4:		
	mov 0xf4, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf5:		
	mov 0xf5, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf6:		
	mov 0xf6, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf7:		
	mov 0xf7, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf8:		
	mov 0xf8, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xf9:		
	mov 0xf9, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xfa:		
	mov 0xfa, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xfb:		
	mov 0xfb, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xfc:		
	mov 0xfc, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xfd:		
	mov 0xfd, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xfe:		
	mov 0xfe, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

T1_Reserved_0xff:		
	mov 0xff, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop; 

.align 128
T1_GoodTrap_0x100:
        b good_trap;nop;nop;nop;nop;nop;nop;nop

T1_BadTrap_0x101:
        b bad_trap; nop;nop;nop;nop;nop;nop;nop

.align 32
T1_ChangePriv_0x102:
        rdpr    %tstate, %g1
        mov     0x400, %g2
        and     %g1, %g2, %g3
        brz,a   %g3, .+8
        wrpr    %g1, %g2, %tstate
        done
        nop
        nop

.align 32
T1_ChangeNonPriv_0x103:
        rdpr    %tstate, %g1
        mov     0x400, %g2
        and     %g1, %g2, %g3
        brnz,a  %g3, .+8
        wrpr    %g1, %g2, %tstate
        done
        nop
        nop

T1_ChangeToTL1_0x104:
	wrpr %g0, 1, %gl
        rdpr    %tnpc, %g1
	wrpr %g0, 1, %tl
	jmp	%g1
	nop
	nop
	nop
	nop
		
T1_ChangeToTL0_0x105:
	rdpr %tstate, %g1
	rdpr %tpc, %g2
	rdpr %tnpc, %g3
	wrpr %g0, 1, %tl
	wrpr %g1, 0, %tstate
	wrpr %g2, 0, %tpc
	wrpr %g3, 0, %tnpc
	done

.align 128
T1_TrapEn_0x108:
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
        mov     0x800, %g2
        add     %o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
        sth     %g2, [%g3+%o0]
        done

.align 64
T1_TrapDis_0x10a:
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
        mov     0, %g2
        add     %o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
        sth     %g2, [%g3+%o0]
        done

.align 64
T1_TrapEn_Ntimes_0x10c:
	! use set instead of setx to save a few instructions
	! may not work if address of trap_enable_data changes
        set     trap_enable_data, %g3
	mov	%o1, %g2
        add     %o0, %o0, %o0
	ta	0x96
	sllx	%g1, 10, %g1
	add	%o0, %g1, %o0
        sth     %g2, [%g3+%o0]
        done

.align 128
T1_PThreadMutexLock_0x110:
        rdpr    %tl, %g2
        cmp     %g2, 2
        bne,a   +8
        or      %i0, %g0, %o1
        setx    pthread_mutex_data, %g2, %g3
pt_retry_1:	
	ldstub	[%g3+%o1], %g2
	brz	%g2, pt_done_1
	nop
pt_loop_1:
	ldub	[%g3+%o1], %g2
	brnz	%g2, pt_loop_1
	nop
	ba,a	pt_retry_1
pt_done_1:
	membar	#LoadLoad | #LoadStore
	done

.align 128
T1_PThreadMutexUnLock_0x114:	
        setx    pthread_mutex_data, %g2, %g5
	stub	%g0, [%g5+%o1]
	done
	
.align 64
T1_Trap_Sync_0x116:

	setx	pthread_counter_data, %g1, %g4
	rdpr	%tpc, %g2
	rdpr	%tnpc,%g3
	mov     %g3, %g1
	add	%g2, 60, %g2
	add	%g3, 60, %g3
	wrpr	%g2, 0, %tpc  ! set %tcp/%tnpc
	wrpr	%g3, 0, %tnpc
	jmp	%g1           ! %g1 is original %tnpc
	nop

	
.align 64
T1_Trap_Function_0x118:
! call kernel dervice routine
	mov	0x0,	%o0
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 512
T1_HTrap_Enable_0x120:
! call kernel dervice routine
	ta	%icc, 0x80
	done
	mov	123, %g1
	mov	123, %g1
	mov	123, %g1
	nop
	nop
	nop
	
.align 64
T1_HTrap_Disable_0x122:
        ta      %icc, 0x82
	done
	nop
	nop
	nop
	nop
	nop
	nop
	
.align 64
T1_Trap_Function_0x124:
        ta      %icc, 0x84
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64
T1_Trap_Function_0x126:
        ta      %icc, 0x86
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T1_HTrapEn_Ntimes_0x128:
        ta      %icc, 0x88
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64	
T1_ChangeCtx_0x12a:
        ta      %icc, 0x8a
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 64
T1_Dummy_0x12c:
	nop
	nop

.align 64	
T1_RdThId_0x12e:
        ta      %icc, 0x8e
	done
	nop
	nop
	nop
	nop
	nop
	nop

.align 512
T1_Trap_Instruction_0x130:
	mov 0x130, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T1_Trap_Instruction_0x131:
	mov 0x131, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T1_Trap_Instruction_0x132:
	ta	0x90;
        done;
        nop;
	nop;
	nop;
	nop;
	nop;
	nop;

.align 32
T1_Trap_Instruction_0x133:
	ta	0x91;
        done;
        nop;
	nop;
	nop;
	nop;
	nop;
	nop;

.align 32
T1_Trap_Instruction_0x134:
	mov 0x134, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 32
T1_Trap_Instruction_0x135:
	mov 0x135, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x136:
        mov 0x136, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x137:
        mov 0x137, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x138:
        mov 0x138, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x139:
        mov 0x139, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13a:
        mov 0x13a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13b:
        mov 0x13b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13c:
        mov 0x13c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13d:
        mov 0x13d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13e:
        mov 0x13e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x13f:
        mov 0x13f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x140:
        mov 0x140, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x141:
        mov 0x141, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x142:
        mov 0x142, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x143:
        mov 0x143, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x144:
        mov 0x144, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x145:
        mov 0x145, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x146:
        mov 0x146, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x147:
        mov 0x147, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x148:
        mov 0x148, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x149:
        mov 0x149, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14a:
        mov 0x14a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14b:
        mov 0x14b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14c:
        mov 0x14c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14d:
        mov 0x14d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14e:
        mov 0x14e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x14f:
        mov 0x14f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x150:
        mov 0x150, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x151:
        mov 0x151, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x152:
        mov 0x152, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x153:
        mov 0x153, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x154:
        mov 0x154, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x155:
        mov 0x155, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x156:
        mov 0x156, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x157:
        mov 0x157, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x158:
        mov 0x158, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x159:
        mov 0x159, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15a:
        mov 0x15a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15b:
        mov 0x15b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15c:
        mov 0x15c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15d:
        mov 0x15d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15e:
        mov 0x15e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x15f:
        mov 0x15f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x160:
        mov 0x160, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x161:
        mov 0x161, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x162:
        mov 0x162, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x163:
        mov 0x163, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x164:
        mov 0x164, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x165:
        mov 0x165, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x166:
        mov 0x166, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x167:
        mov 0x167, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x168:
        mov 0x168, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x169:
        mov 0x169, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16a:
        mov 0x16a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16b:
        mov 0x16b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16c:
        mov 0x16c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16d:
        mov 0x16d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16e:
        mov 0x16e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x16f:
        mov 0x16f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x170:
        mov 0x170, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x171:
        mov 0x171, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x172:
        mov 0x172, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x173:
        mov 0x173, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x174:
        mov 0x174, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x175:
        mov 0x175, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x176:
        mov 0x176, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x177:
        mov 0x177, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x178:
        mov 0x178, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x179:
        mov 0x179, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17a:
        mov 0x17a, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17b:
        mov 0x17b, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17c:
        mov 0x17c, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17d:
        mov 0x17d, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17e:
        mov 0x17e, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

T1_Trap_Instruction_0x17f:
        mov 0x17f, %g7; b TrapCheck;  nop;nop;nop;nop;nop;nop;

.align 0x1000	

T1_HTrap_ChangePriv_0x180:
        rdpr    %tl, %g1
        sub     %g1, 1, %g1
        wrpr    %g1, %tl
        rdhpr   %htstate, %g1
        mov     0x4, %g2
        and     %g1, %g2, %g3
        brz,a   %g3, .+8
        wrhpr   %g1, %g2, %htstate
        done
        .word 0x180
        nop
        
.align 64
T1_HTrap_ChangeNonPriv_0x182:
        rdpr    %tl, %g1
        sub     %g1, 1, %g1
        wrpr    %g1, %tl
        rdhpr   %htstate, %g1
        mov     0x4, %g2
        and     %g1, %g2, %g3
        brnz,a  %g3, .+8
        wrhpr   %g1, %g2, %htstate
        done
        .word 0x182
        nop

! If counter > 0,  trap is enabled for n times, decrement counter
! If counter = 0,  trap is disabled, go to BadTrap
! If counter = -1, trap has taken n times, go to GoodTrap directly
! If counter <-1,  trap is enabled for n times, increment counter 
.align 0x4000
TrapCheck:	
	ta	0x96
	set	trap_enable_data, %g3
	add	%g7, %g7, %g4
        sllx    %g1, 10, %g1
        add     %g4, %g1, %g4
	ldsh	[%g3+%g4], %g2
	cmp	%g2, 0
	bl	%xcc, CheckGoodTrap
	mov     0,      %o0
	be	%xcc, T0_BadTrap_0x101
	sub	%g2, 1, %g2
	ba	TrapCheck_end
CheckGoodTrap:
	cmp	%g2, -1
	be	%xcc, T0_GoodTrap_0x100
	add	%g2, 1, %g2
TrapCheck_end:		
	sth	%g2, [%g3+%g4]
	done




syscall_handler:
	! get tpc/tnpc/tstate and save them
	rdpr	%tpc, %g1
	rdpr	%tnpc, %g2
	rdpr	%tstate, %g3
	stx	%g1, [%g4]	! save tpc
	stx	%g2, [%g4+8]	! save tnpc
	stx	%g3, [%g4+16]	! save tstate
	setx	kernel_syscall, %g1, %g2
	wrpr	%g2, %g0, %tnpc
	sllx	%g3, 59, %g3	! extract cwp from tstate
	srlx	%g3, 59, %g3
	setx	5632, %g1, %g2
	srlx	%g2, 5, %g2	! remove cwp from 5632
	sllx	%g2, 5, %g2
	or	%g3, %g2, %g3
	wrpr	%g3, %g0, %tstate
	
	! get primary/secondary context and save them
	mov	0x8, %g1
	ldxa	[%g1] 0x21, %g2
	stx	%g2, [%g4+24]	! save p context
	stxa	%g0, [%g1] 0x21	! set p context to zero
	
	mov	0x10, %g1
	ldxa	[%g1] 0x21, %g3
	stx	%g3, [%g4+32]	! save s context
	stxa	%g0, [%g1] 0x21 ! set s context to zero

	! go to kernel
	done
	nop	

	
sysret_handler:
	! restore tpc/tnpc/tstate
	ldx	[%g4], %g1	! get tpc
	ldx	[%g4+8], %g2	! get tnpc
	ldx	[%g4+16], %g3	! get tstate
	wrpr	%g1, %g0, %tpc
	wrpr	%g2, %g0, %tnpc
	wrpr	%g3, %g0, %tstate

	! restore primary/secondary context
	mov	0x8, %g1
	ldx	[%g4+24], %g2	! get p context
	stxa	%g2, [%g1] 0x21

	mov	0x10, %g1
	ldx	[%g4+32], %g3	! get s context
	stxa	%g3, [%g1] 0x21

	! return to user
	done
	nop
	



! Copyright (c) 2018 Princeton University
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

.align 32
	.global hv_putchar
hv_putchar:
    setx    0xfff0c2c000, %l0, %l1
    ! check that there is available space in UART
    ldub    [%l1 + 5], %l2
hv_putchar_wait:
    and     0x40, %l2, %l2
    cmp     %l2, %g0
    beq     hv_putchar_wait
    ldub    [%l1 + 5], %l2   ! load another time in a delay slot
	stb 	%i0, [%l1]
    done

.data

trap_enable_data:	

dt0_0_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t0:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t0:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t1:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t1:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t2:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t2:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t3:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t3:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t4:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t4:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t5:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t5:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t6:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t6:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t7:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t7:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t8:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t8:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t9:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t9:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t10:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t10:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t11:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t11:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t12:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t12:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t13:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t13:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t14:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t14:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t15:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t15:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t16:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t16:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t17:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t17:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t18:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t18:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t19:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t19:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t20:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t20:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t21:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t21:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t22:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t22:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t23:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t23:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t24:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t24:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t25:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t25:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t26:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t26:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t27:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t27:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t28:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t28:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t29:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t29:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t30:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t30:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t31:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t31:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t32:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t32:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t33:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t33:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t34:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t34:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t35:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t35:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t36:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t36:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t37:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t37:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t38:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t38:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t39:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t39:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t40:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t40:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t41:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t41:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t42:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t42:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t43:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t43:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t44:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t44:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t45:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t45:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t46:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t46:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t47:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t47:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t48:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t48:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t49:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t49:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t50:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t50:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t51:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t51:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t52:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t52:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t53:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t53:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t54:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t54:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t55:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t55:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t56:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t56:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t57:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t57:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t58:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t58:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t59:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t59:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t60:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t60:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t61:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t61:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t62:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t62:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t63:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t63:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t64:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t64:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t65:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t65:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t66:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t66:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t67:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t67:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t68:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t68:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t69:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t69:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t70:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t70:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t71:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t71:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t72:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t72:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t73:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t73:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t74:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t74:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t75:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t75:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t76:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t76:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t77:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t77:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t78:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t78:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t79:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t79:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t80:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t80:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t81:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t81:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t82:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t82:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t83:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t83:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t84:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t84:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t85:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t85:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t86:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t86:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t87:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t87:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t88:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t88:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t89:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t89:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t90:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t90:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t91:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t91:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t92:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t92:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t93:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t93:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t94:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t94:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t95:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t95:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t96:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t96:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t97:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t97:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t98:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t98:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t99:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t99:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t100:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t100:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t101:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t101:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t102:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t102:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t103:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t103:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t104:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t104:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t105:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t105:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t106:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t106:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t107:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t107:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t108:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t108:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t109:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t109:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t110:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t110:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t111:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t111:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t112:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t112:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t113:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t113:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t114:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t114:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t115:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t115:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t116:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t116:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t117:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t117:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t118:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t118:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t119:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t119:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t120:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t120:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t121:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t121:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t122:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t122:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t123:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t123:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t124:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t124:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t125:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t125:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t126:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t126:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_0_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_64_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt0_128_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt0_192_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_0_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_64_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0
	
dt1_128_t127:
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

dt1_192_t127:	
	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

	.half 	0,0,0,0,0,0,0,0
	.half 	0,0,0,0,0,0,0,0

pthread_mutex_data:

	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.byte	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	
pthread_counter_data:

	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
	.half	0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0

.align 512
pthread_syscall_data:

	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	.xword	0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
	

	
SECTION .KERNEL      TEXT_VA =	0x1834000, DATA_VA=0x1c34000

	
attr_text {
	Name = .KERNEL,
	RA = 0x101834000,
	PA = 0x1101834000,
	part_0_i_ctx_nonzero_ps0_tsb,
	part_0_i_ctx_zero_ps0_tsb,
	TTE_G=1,       TTE_Context=0, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
	TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=1,  TTE_CV=0, 
	TTE_E=0,      TTE_P=1,        TTE_W=1

	}
	
attr_data {
	Name = .KERNEL,
	RA=0x101c34000,
	PA=0x1101c34000,
	part_0_d_ctx_nonzero_ps0_tsb,
	part_0_d_ctx_zero_ps0_tsb,

	TTE_G=1, TTE_Context=0, TTE_V=1, TTE_Size=0, TTE_NFO=0,
	TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
	TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=1, TTE_W=1

	}









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


SECTION .USER_HEAP        DATA_VA=0x68020000
	

attr_data {
        Name = .USER_HEAP,
        RA = 0x0178020000,
        PA = 0x1178020000,
        part_0_d_ctx_nonzero_ps0_tsb,
        TTE_G=1,       TTE_Context=0x44, TTE_V=1,    TTE_Size=0, TTE_NFO=0, TTE_IE=0, 
        TTE_Soft2=0,   TTE_Diag=0,    TTE_Soft=0, TTE_L=0,    TTE_CP=1,  TTE_CV=0, 
        TTE_E=0,      TTE_P=1,        TTE_W=1
        }

.data
.global user_heap_start
user_heap_start:
	
	
	
	
	
	
	
	
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	

SECTION .MAIN  TEXT_VA=0x20000000, DATA_VA=0x60000000, BSS_VA=0x68030000
attr_text {
	Name = .MAIN,
	VA= 0x20000000,
	RA= 0x130000000,
        PA= 0x1130000000,
	part_0_i_ctx_nonzero_ps0_tsb,
	part_0_d_ctx_nonzero_ps0_tsb,
	TTE_G=1, TTE_Context=0x44, TTE_V=1, TTE_Size=0, TTE_NFO=0,
	TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
	TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
	}

attr_data {
	Name = .MAIN,
        VA= 0x60000000,
	RA= 0x170000000,
	PA= 0x1170000000,
	part_0_d_ctx_nonzero_ps0_tsb,
        TTE_G=1, TTE_Context=0x44, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
        }

attr_bss {
	Name = .MAIN,
        VA= 0x68030000,
	RA= 0x178030000,
	PA= 0x1178030000,
	part_0_d_ctx_nonzero_ps0_tsb,

        TTE_G=0, TTE_Context=0x44, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
        }



SECTION .STACK0 BSS_VA= 0x68038000

attr_bss {
        NAME=.STACK0,
        VA=0x68038000,
        RA=0x178038000,
        PA=0x1178038000,
	    part_0_d_ctx_nonzero_ps0_tsb,
        TTE_G=1, TTE_Context=0x44,
        TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
        }
.section .bss
.global stack0
stack0:
        .skip 4096






	

	
	
	







SECTION .CUSTOM_TRAPS 	TEXT_VA=0x500000, 	DATA_VA=0x510000


	
attr_text {
        NAME=.CUSTOM_TRAPS,
	VA=0x500000,
	RA=0x10500000,
	PA=0x1010500000,
	part_0_i_ctx_zero_ps0_tsb,
        TTE_G=1, TTE_Context=0, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=0
	}










	
attr_data {
        NAME=.CUSTOM_TRAPS,
        VA=0x510000,
	RA=0x10510000,
	PA=0x1010510000,
	part_0_d_ctx_zero_ps0_tsb,
        TTE_G=1, TTE_Context=0, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
        }










.text

	
.align 4
.global spill_trap
spill_trap:
	wr	%g0, 0x10, %asi
        stxa    %l0, [%sp + 2047 + 0x00] %asi
        stxa    %l1, [%sp + 2047 + 0x08] %asi
        stxa    %l2, [%sp + 2047 + 0x10] %asi
        stxa    %l3, [%sp + 2047 + 0x18] %asi
        stxa    %l4, [%sp + 2047 + 0x20] %asi
        stxa    %l5, [%sp + 2047 + 0x28] %asi
        stxa    %l6, [%sp + 2047 + 0x30] %asi
        stxa    %l7, [%sp + 2047 + 0x38] %asi
        stxa    %i0, [%sp + 2047 + 0x40] %asi
        stxa    %i1, [%sp + 2047 + 0x48] %asi
        stxa    %i2, [%sp + 2047 + 0x50] %asi
        stxa    %i3, [%sp + 2047 + 0x58] %asi
        stxa    %i4, [%sp + 2047 + 0x60] %asi
        stxa    %i5, [%sp + 2047 + 0x68] %asi
        stxa    %i6, [%sp + 2047 + 0x70] %asi
        stxa    %i7, [%sp + 2047 + 0x78] %asi
        saved
	retry
	nop

.align 4
.global fill_trap

fill_trap:
	wr	%g0, 0x10, %asi	
        ldxa    [%sp + 2047 + 0x00] %asi, %l0
        ldxa    [%sp + 2047 + 0x08] %asi, %l1
        ldxa    [%sp + 2047 + 0x10] %asi, %l2
        ldxa    [%sp + 2047 + 0x18] %asi, %l3
        ldxa    [%sp + 2047 + 0x20] %asi, %l4
        ldxa    [%sp + 2047 + 0x28] %asi, %l5
        ldxa    [%sp + 2047 + 0x30] %asi, %l6
        ldxa    [%sp + 2047 + 0x38] %asi, %l7
        ldxa    [%sp + 2047 + 0x40] %asi, %i0
        ldxa    [%sp + 2047 + 0x48] %asi, %i1
        ldxa    [%sp + 2047 + 0x50] %asi, %i2
        ldxa    [%sp + 2047 + 0x58] %asi, %i3
        ldxa    [%sp + 2047 + 0x60] %asi, %i4
        ldxa    [%sp + 2047 + 0x68] %asi, %i5
        ldxa    [%sp + 2047 + 0x70] %asi, %i6
        ldxa    [%sp + 2047 + 0x78] %asi, %i7
        restored
	retry
	nop

.data
	.word 0        


	
SECTION .C 	TEXT_VA=0x520000, 	DATA_VA=0x530000


	
attr_text {
        NAME=.C
	VA=0x520000,
	RA=0x10520000,
	PA=0x1010520000,
	part_0_i_ctx_nonzero_ps0_tsb,
        TTE_G=0, TTE_Context=0x44, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=0
}	











	
attr_data {
        NAME=.C,
	VA=0x530000,
	RA=0x10530000,
	PA=0x1010530000,
	part_0_d_ctx_nonzero_ps0_tsb,	
        TTE_G=0, TTE_Context=0x44, TTE_V=1,
	TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=0, TTE_E=0, TTE_P=0, TTE_W=1
}	










!---------------------------------------------------
! stack initialization for MT diags.
! Can be used for ST diags also.
!---------------------------------------------------





!---------------------------------------------------
! Number of arguments passed to the diag
! We have a CONVENTION:
!       argv[1] is THREAD ID 
!       argv[2] is number of threads
!       argv[3] is USER DEFINED
!       argv[4] is USER DEFINED
! currently we support up to argv[4]
!---------------------------------------------------



!---------------------------------------------------
! stack pointer offset per Sparc V9 rules
!---------------------------------------------------


!---------------------------------------------------
! some macros
!---------------------------------------------------

!---------------------------------------------------

!---------------------------------------------------
.section .text

!---------------------------------------------------
! the start of the C program
!---------------------------------------------------
.align 4
.global c_start
c_start:

!---------------------------------------------------
! register init - avoid mismatches in spill/fill traps
!---------------------------------------------------
	ta              0x02
	wrpr            %g0, 0, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 1, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 2, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 3, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 4, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 5, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 6, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 7, %cwp
	set 0x0, %l0;                           	set 0x0, %l1;                           	set 0x0, %l2;                           	set 0x0, %l3;                           	set 0x0, %l4;                           	set 0x0, %l5;                           	set 0x0, %l6;                           	set 0x0, %l7;                           	set 0x0, %i0;                           	set 0x0, %i1;                           	set 0x0, %i2;                           	set 0x0, %i3;                           	set 0x0, %i4;                           	set 0x0, %i5;                           	set 0x0, %i6;                           	set 0x0, %i7;
	wrpr            %g0, 0, %cwp
	ta              0x03

!---------------------------------------------------
! set up stack per thread for all threads
!---------------------------------------------------
	
    
	ta      0x2e

    
	cmp	 %o1, 0
	be	prepare_thread_0
	nop


    nop
    ta 0x01
;


prepare_thread_0:
	setx    hs0, %l0, %o2     ! pointer to help string per thread

	setx    arg1t0, %l0, %o0  ! a pointer to arg1tN
	set     0, %o1              ! arg1 is the thread ID
	call    itos, 0
	nop
	setx    arg2t0, %l0, %o0  ! a pointer to arg2tN
	set     1, %o1                       ! arg2 is the thread count
	call    itos, 0
	nop
	setx    arg3t0, %l0, %o0
	set     0, %o1                             ! USER defined
	call    itos, 0
	nop
	setx    arg4t0, %l0, %o0
	set     0, %o1                             ! user defined
	call    itos, 0
	nop

	setx    stack0, %l5, %sp
	setx    (4096-4095), %l0, %l1
	add     %sp, %l1, %sp                           ! set and adjust the stack pointer

	set     5, %o0           ! argc          ! %o0 is argc
	setx    argvp0, %l0, %o1  ! %o1 is a ponter of array of arrays
	ba      call_main                               ! now go to call_main...
	nop


!---------------------------------------
call_main:                                              ! call the C program
	setx    main, %l0, %l1
	jmpl    %l1,%o7
	nop

	brnz    %o0, c_fail
	nop
c_pass: 
	ta      0x00
	nop

c_fail:
	ta      0x01
	nop
!--------------------------------------------------------------------------
!--------------------------------------------------------------------------
!--------------------------------------------------------------------------

!--------------------------------------------------------------------------
! the itos - integer to string function below - is implemented in assembly
! based on the C implementation in the comments
!--------------------------------------------------------------------------
!void itos (char *s, int a){
!   if(a ==0){
!     s[0] = '0';
!     s[1] = 0;
!     return;
!   }
!   count  = 0;
!   result = a;
!   while(result >0){
!     hs[count++] = result % 10 + '0';
!     result = result /10;
!   }
!   if(a<0) hs[count] = '-';
!   else    count--;
!   for(iter= count; iter>=0; iter--) s[count-iter] = hs[iter];
!   s[count+1] = 0;
!}
!--------------------------------------------------------------------------
itos:
	mov     %g0, %l7                ! count
	brnz    %o1, itos_proceed       ! o1 is the number
	nop
	mov     48, %l0        ! number is 0 
	stb     %l0, [%o0]              ! return '0', 0
	retl
	stb     %g0, [%o0 +1]

itos_proceed:                           ! check for sign
	brgz    %o1, itos_positive
	nop
	ba      itos_while_entry
	mulx    %o1, -1, %i4
itos_positive:
	mov     %o1, %i4                ! result
itos_while_entry:
	brgz    %i4, itos_while_body
	nop
	ba      itos_while_exit
	nop
itos_while_body:
       sdivx   %i4, 10, %i3             ! divide by 10
       sllx    %i3, 2, %i5              ! multiply result by 4
       add     %i5, %i3, %i5            ! add it once -> multipy by 5 by now.
	add     %i5, %i5, %i5           ! multiply by 10 overall
       sub     %i4, %i5, %l4            ! l4 is the remainder now.
       add     %l4, 48, %l4
       stb     %l4, [%o2 + %l7]
       mov     %i3, %i4
       inc     %l7
       ba      itos_while_entry
       nop
itos_while_exit:
       brgz    %o1, itos_positive2
       nop
       set     45, %i2                  ! 45 is the value of the '-' character
       stb     %i2, [%o2 + %l7]
       mov     %g0, %l0
       ba      itos_for_entry
       nop
itos_positive2:
       dec     %l7
       mov     %g0, %l0
itos_for_entry:
       brgez   %l7, itos_for_body
       nop
       ba      itos_for_exit
       nop
itos_for_body:
       ldub    [%o2 + %l7], %l4
       stb     %l4, [%o0 +%l0]
       inc     %l0
       dec     %l7
       ba      itos_for_entry
       nop
itos_for_exit:
       retl
       stb     %g0, [%o0 +%l0]
!--------------------------------------------------------------------------------------------


!--------------------------------------------------------------------------------------------
!--------------------------------------------------------------------------------------------
.section .data

.global shared_memory
shared_memory:
	.skip 0x1000

.global shared_memory_buffers
shared_memory_buffers:
              
	 		
	 	
	 		
	 		
	 		
	 		
	 		
	 .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         .xword 0x0101010101010101                    
         
       .skip 0x10000

.global barp
barp:
	.skip 0x100

.global barrier_lock
barrier_lock:
	.skip 0x100

.global argvp0
argvp0:
	.xword arg0
	.xword arg1t0
	.xword arg2t0
	.xword arg3t0
	.xword arg4t0
	.xword arg5t0
	.xword arg6t0
	.xword arg7t0
	.xword 0

.global arg1t0
arg1t0:
	.skip 128

.global arg2t0
arg2t0:
	.skip 128

.global arg3t0
arg3t0:
	.skip 128

.global arg4t0
arg4t0:
	.skip 128

.global arg5t0
arg5t0:
	.skip 128

.global arg6t0
arg6t0:
	.skip 128

.global arg7t0
arg7t0:
	.skip 128

.global hs0
hs0:
	.skip 128
.global argvp1
argvp1:
	.xword arg0
	.xword arg1t1
	.xword arg2t1
	.xword arg3t1
	.xword arg4t1
	.xword arg5t1
	.xword arg6t1
	.xword arg7t1
	.xword 0

.global arg1t1
arg1t1:
	.skip 128

.global arg2t1
arg2t1:
	.skip 128

.global arg3t1
arg3t1:
	.skip 128

.global arg4t1
arg4t1:
	.skip 128

.global arg5t1
arg5t1:
	.skip 128

.global arg6t1
arg6t1:
	.skip 128

.global arg7t1
arg7t1:
	.skip 128

.global hs1
hs1:
	.skip 128
.global argvp2
argvp2:
	.xword arg0
	.xword arg1t2
	.xword arg2t2
	.xword arg3t2
	.xword arg4t2
	.xword arg5t2
	.xword arg6t2
	.xword arg7t2
	.xword 0

.global arg1t2
arg1t2:
	.skip 128

.global arg2t2
arg2t2:
	.skip 128

.global arg3t2
arg3t2:
	.skip 128

.global arg4t2
arg4t2:
	.skip 128

.global arg5t2
arg5t2:
	.skip 128

.global arg6t2
arg6t2:
	.skip 128

.global arg7t2
arg7t2:
	.skip 128

.global hs2
hs2:
	.skip 128
.global argvp3
argvp3:
	.xword arg0
	.xword arg1t3
	.xword arg2t3
	.xword arg3t3
	.xword arg4t3
	.xword arg5t3
	.xword arg6t3
	.xword arg7t3
	.xword 0

.global arg1t3
arg1t3:
	.skip 128

.global arg2t3
arg2t3:
	.skip 128

.global arg3t3
arg3t3:
	.skip 128

.global arg4t3
arg4t3:
	.skip 128

.global arg5t3
arg5t3:
	.skip 128

.global arg6t3
arg6t3:
	.skip 128

.global arg7t3
arg7t3:
	.skip 128

.global hs3
hs3:
	.skip 128
.global argvp4
argvp4:
	.xword arg0
	.xword arg1t4
	.xword arg2t4
	.xword arg3t4
	.xword arg4t4
	.xword arg5t4
	.xword arg6t4
	.xword arg7t4
	.xword 0

.global arg1t4
arg1t4:
	.skip 128

.global arg2t4
arg2t4:
	.skip 128

.global arg3t4
arg3t4:
	.skip 128

.global arg4t4
arg4t4:
	.skip 128

.global arg5t4
arg5t4:
	.skip 128

.global arg6t4
arg6t4:
	.skip 128

.global arg7t4
arg7t4:
	.skip 128

.global hs4
hs4:
	.skip 128
.global argvp5
argvp5:
	.xword arg0
	.xword arg1t5
	.xword arg2t5
	.xword arg3t5
	.xword arg4t5
	.xword arg5t5
	.xword arg6t5
	.xword arg7t5
	.xword 0

.global arg1t5
arg1t5:
	.skip 128

.global arg2t5
arg2t5:
	.skip 128

.global arg3t5
arg3t5:
	.skip 128

.global arg4t5
arg4t5:
	.skip 128

.global arg5t5
arg5t5:
	.skip 128

.global arg6t5
arg6t5:
	.skip 128

.global arg7t5
arg7t5:
	.skip 128

.global hs5
hs5:
	.skip 128
.global argvp6
argvp6:
	.xword arg0
	.xword arg1t6
	.xword arg2t6
	.xword arg3t6
	.xword arg4t6
	.xword arg5t6
	.xword arg6t6
	.xword arg7t6
	.xword 0

.global arg1t6
arg1t6:
	.skip 128

.global arg2t6
arg2t6:
	.skip 128

.global arg3t6
arg3t6:
	.skip 128

.global arg4t6
arg4t6:
	.skip 128

.global arg5t6
arg5t6:
	.skip 128

.global arg6t6
arg6t6:
	.skip 128

.global arg7t6
arg7t6:
	.skip 128

.global hs6
hs6:
	.skip 128
.global argvp7
argvp7:
	.xword arg0
	.xword arg1t7
	.xword arg2t7
	.xword arg3t7
	.xword arg4t7
	.xword arg5t7
	.xword arg6t7
	.xword arg7t7
	.xword 0

.global arg1t7
arg1t7:
	.skip 128

.global arg2t7
arg2t7:
	.skip 128

.global arg3t7
arg3t7:
	.skip 128

.global arg4t7
arg4t7:
	.skip 128

.global arg5t7
arg5t7:
	.skip 128

.global arg6t7
arg6t7:
	.skip 128

.global arg7t7
arg7t7:
	.skip 128

.global hs7
hs7:
	.skip 128

.global argvp8
argvp8:
	.xword arg0
	.xword arg1t8
	.xword arg2t8
	.xword arg3t8
	.xword arg4t8
	.xword arg5t8
	.xword arg6t8
	.xword arg7t8
	.xword 0

.global arg1t8
arg1t8:
	.skip 128

.global arg2t8
arg2t8:
	.skip 128

.global arg3t8
arg3t8:
	.skip 128

.global arg4t8
arg4t8:
	.skip 128

.global arg5t8
arg5t8:
	.skip 128

.global arg6t8
arg6t8:
	.skip 128

.global arg7t8
arg7t8:
	.skip 128

.global hs8
hs8:
	.skip 128



.global argvp9
argvp9:
	.xword arg0
	.xword arg1t9
	.xword arg2t9
	.xword arg3t9
	.xword arg4t9
	.xword arg5t9
	.xword arg6t9
	.xword arg7t9
	.xword 0

.global arg1t9
arg1t9:
	.skip 128

.global arg2t9
arg2t9:
	.skip 128

.global arg3t9
arg3t9:
	.skip 128

.global arg4t9
arg4t9:
	.skip 128

.global arg5t9
arg5t9:
	.skip 128

.global arg6t9
arg6t9:
	.skip 128

.global arg7t9
arg7t9:
	.skip 128

.global hs9
hs9:
	.skip 128



.global argvp10
argvp10:
	.xword arg0
	.xword arg1t10
	.xword arg2t10
	.xword arg3t10
	.xword arg4t10
	.xword arg5t10
	.xword arg6t10
	.xword arg7t10
	.xword 0

.global arg1t10
arg1t10:
	.skip 128

.global arg2t10
arg2t10:
	.skip 128

.global arg3t10
arg3t10:
	.skip 128

.global arg4t10
arg4t10:
	.skip 128

.global arg5t10
arg5t10:
	.skip 128

.global arg6t10
arg6t10:
	.skip 128

.global arg7t10
arg7t10:
	.skip 128

.global hs10
hs10:
	.skip 128


.global argvp11
argvp11:
	.xword arg0
	.xword arg1t11
	.xword arg2t11
	.xword arg3t11
	.xword arg4t11
	.xword arg5t11
	.xword arg6t11
	.xword arg7t11
	.xword 0

.global arg1t11
arg1t11:
	.skip 128

.global arg2t11
arg2t11:
	.skip 128

.global arg3t11
arg3t11:
	.skip 128

.global arg4t11
arg4t11:
	.skip 128

.global arg5t11
arg5t11:
	.skip 128

.global arg6t11
arg6t11:
	.skip 128

.global arg7t11
arg7t11:
	.skip 128

.global hs11
hs11:
	.skip 128


.global argvp12
argvp12:
	.xword arg0
	.xword arg1t12
	.xword arg2t12
	.xword arg3t12
	.xword arg4t12
	.xword arg5t12
	.xword arg6t12
	.xword arg7t12
	.xword 0

.global arg1t12
arg1t12:
	.skip 128

.global arg2t12
arg2t12:
	.skip 128

.global arg3t12
arg3t12:
	.skip 128

.global arg4t12
arg4t12:
	.skip 128

.global arg5t12
arg5t12:
	.skip 128

.global arg6t12
arg6t12:
	.skip 128

.global arg7t12
arg7t12:
	.skip 128

.global hs12
hs12:
	.skip 128


.global argvp13
argvp13:
	.xword arg0
	.xword arg1t13
	.xword arg2t13
	.xword arg3t13
	.xword arg4t13
	.xword arg5t13
	.xword arg6t13
	.xword arg7t13
	.xword 0

.global arg1t13
arg1t13:
	.skip 128

.global arg2t13
arg2t13:
	.skip 128

.global arg3t13
arg3t13:
	.skip 128

.global arg4t13
arg4t13:
	.skip 128

.global arg5t13
arg5t13:
	.skip 128

.global arg6t13
arg6t13:
	.skip 128

.global arg7t13
arg7t13:
	.skip 128

.global hs13
hs13:
	.skip 128


.global argvp14
argvp14:
	.xword arg0
	.xword arg1t14
	.xword arg2t14
	.xword arg3t14
	.xword arg4t14
	.xword arg5t14
	.xword arg6t14
	.xword arg7t14
	.xword 0

.global arg1t14
arg1t14:
	.skip 128

.global arg2t14
arg2t14:
	.skip 128

.global arg3t14
arg3t14:
	.skip 128

.global arg4t14
arg4t14:
	.skip 128

.global arg5t14
arg5t14:
	.skip 128

.global arg6t14
arg6t14:
	.skip 128

.global arg7t14
arg7t14:
	.skip 128

.global hs14
hs14:
	.skip 128


.global argvp15
argvp15:
	.xword arg0
	.xword arg1t15
	.xword arg2t15
	.xword arg3t15
	.xword arg4t15
	.xword arg5t15
	.xword arg6t15
	.xword arg7t15
	.xword 0

.global arg1t15
arg1t15:
	.skip 128

.global arg2t15
arg2t15:
	.skip 128

.global arg3t15
arg3t15:
	.skip 128

.global arg4t15
arg4t15:
	.skip 128

.global arg5t15
arg5t15:
	.skip 128

.global arg6t15
arg6t15:
	.skip 128

.global arg7t15
arg7t15:
	.skip 128

.global hs15
hs15:
	.skip 128


.global argvp16
argvp16:
	.xword arg0
	.xword arg1t16
	.xword arg2t16
	.xword arg3t16
	.xword arg4t16
	.xword arg5t16
	.xword arg6t16
	.xword arg7t16
	.xword 0

.global arg1t16
arg1t16:
	.skip 128

.global arg2t16
arg2t16:
	.skip 128

.global arg3t16
arg3t16:
	.skip 128

.global arg4t16
arg4t16:
	.skip 128

.global arg5t16
arg5t16:
	.skip 128

.global arg6t16
arg6t16:
	.skip 128

.global arg7t16
arg7t16:
	.skip 128

.global hs16
hs16:
	.skip 128


.global argvp17
argvp17:
	.xword arg0
	.xword arg1t17
	.xword arg2t17
	.xword arg3t17
	.xword arg4t17
	.xword arg5t17
	.xword arg6t17
	.xword arg7t17
	.xword 0

.global arg1t17
arg1t17:
	.skip 128

.global arg2t17
arg2t17:
	.skip 128

.global arg3t17
arg3t17:
	.skip 128

.global arg4t17
arg4t17:
	.skip 128

.global arg5t17
arg5t17:
	.skip 128

.global arg6t17
arg6t17:
	.skip 128

.global arg7t17
arg7t17:
	.skip 128

.global hs17
hs17:
	.skip 128


.global argvp18
argvp18:
	.xword arg0
	.xword arg1t18
	.xword arg2t18
	.xword arg3t18
	.xword arg4t18
	.xword arg5t18
	.xword arg6t18
	.xword arg7t18
	.xword 0

.global arg1t18
arg1t18:
	.skip 128

.global arg2t18
arg2t18:
	.skip 128

.global arg3t18
arg3t18:
	.skip 128

.global arg4t18
arg4t18:
	.skip 128

.global arg5t18
arg5t18:
	.skip 128

.global arg6t18
arg6t18:
	.skip 128

.global arg7t18
arg7t18:
	.skip 128

.global hs18
hs18:
	.skip 128


.global argvp19
argvp19:
	.xword arg0
	.xword arg1t19
	.xword arg2t19
	.xword arg3t19
	.xword arg4t19
	.xword arg5t19
	.xword arg6t19
	.xword arg7t19
	.xword 0

.global arg1t19
arg1t19:
	.skip 128

.global arg2t19
arg2t19:
	.skip 128

.global arg3t19
arg3t19:
	.skip 128

.global arg4t19
arg4t19:
	.skip 128

.global arg5t19
arg5t19:
	.skip 128

.global arg6t19
arg6t19:
	.skip 128

.global arg7t19
arg7t19:
	.skip 128

.global hs19
hs19:
	.skip 128


.global argvp20
argvp20:
	.xword arg0
	.xword arg1t20
	.xword arg2t20
	.xword arg3t20
	.xword arg4t20
	.xword arg5t20
	.xword arg6t20
	.xword arg7t20
	.xword 0

.global arg1t20
arg1t20:
	.skip 128

.global arg2t20
arg2t20:
	.skip 128

.global arg3t20
arg3t20:
	.skip 128

.global arg4t20
arg4t20:
	.skip 128

.global arg5t20
arg5t20:
	.skip 128

.global arg6t20
arg6t20:
	.skip 128

.global arg7t20
arg7t20:
	.skip 128

.global hs20
hs20:
	.skip 128


.global argvp21
argvp21:
	.xword arg0
	.xword arg1t21
	.xword arg2t21
	.xword arg3t21
	.xword arg4t21
	.xword arg5t21
	.xword arg6t21
	.xword arg7t21
	.xword 0

.global arg1t21
arg1t21:
	.skip 128

.global arg2t21
arg2t21:
	.skip 128

.global arg3t21
arg3t21:
	.skip 128

.global arg4t21
arg4t21:
	.skip 128

.global arg5t21
arg5t21:
	.skip 128

.global arg6t21
arg6t21:
	.skip 128

.global arg7t21
arg7t21:
	.skip 128

.global hs21
hs21:
	.skip 128


.global argvp22
argvp22:
	.xword arg0
	.xword arg1t22
	.xword arg2t22
	.xword arg3t22
	.xword arg4t22
	.xword arg5t22
	.xword arg6t22
	.xword arg7t22
	.xword 0

.global arg1t22
arg1t22:
	.skip 128

.global arg2t22
arg2t22:
	.skip 128

.global arg3t22
arg3t22:
	.skip 128

.global arg4t22
arg4t22:
	.skip 128

.global arg5t22
arg5t22:
	.skip 128

.global arg6t22
arg6t22:
	.skip 128

.global arg7t22
arg7t22:
	.skip 128

.global hs22
hs22:
	.skip 128


.global argvp23
argvp23:
	.xword arg0
	.xword arg1t23
	.xword arg2t23
	.xword arg3t23
	.xword arg4t23
	.xword arg5t23
	.xword arg6t23
	.xword arg7t23
	.xword 0

.global arg1t23
arg1t23:
	.skip 128

.global arg2t23
arg2t23:
	.skip 128

.global arg3t23
arg3t23:
	.skip 128

.global arg4t23
arg4t23:
	.skip 128

.global arg5t23
arg5t23:
	.skip 128

.global arg6t23
arg6t23:
	.skip 128

.global arg7t23
arg7t23:
	.skip 128

.global hs23
hs23:
	.skip 128


.global argvp24
argvp24:
	.xword arg0
	.xword arg1t24
	.xword arg2t24
	.xword arg3t24
	.xword arg4t24
	.xword arg5t24
	.xword arg6t24
	.xword arg7t24
	.xword 0

.global arg1t24
arg1t24:
	.skip 128

.global arg2t24
arg2t24:
	.skip 128

.global arg3t24
arg3t24:
	.skip 128

.global arg4t24
arg4t24:
	.skip 128

.global arg5t24
arg5t24:
	.skip 128

.global arg6t24
arg6t24:
	.skip 128

.global arg7t24
arg7t24:
	.skip 128

.global hs24
hs24:
	.skip 128


.global argvp25
argvp25:
	.xword arg0
	.xword arg1t25
	.xword arg2t25
	.xword arg3t25
	.xword arg4t25
	.xword arg5t25
	.xword arg6t25
	.xword arg7t25
	.xword 0

.global arg1t25
arg1t25:
	.skip 128

.global arg2t25
arg2t25:
	.skip 128

.global arg3t25
arg3t25:
	.skip 128

.global arg4t25
arg4t25:
	.skip 128

.global arg5t25
arg5t25:
	.skip 128

.global arg6t25
arg6t25:
	.skip 128

.global arg7t25
arg7t25:
	.skip 128

.global hs25
hs25:
	.skip 128


.global argvp26
argvp26:
	.xword arg0
	.xword arg1t26
	.xword arg2t26
	.xword arg3t26
	.xword arg4t26
	.xword arg5t26
	.xword arg6t26
	.xword arg7t26
	.xword 0

.global arg1t26
arg1t26:
	.skip 128

.global arg2t26
arg2t26:
	.skip 128

.global arg3t26
arg3t26:
	.skip 128

.global arg4t26
arg4t26:
	.skip 128

.global arg5t26
arg5t26:
	.skip 128

.global arg6t26
arg6t26:
	.skip 128

.global arg7t26
arg7t26:
	.skip 128

.global hs26
hs26:
	.skip 128


.global argvp27
argvp27:
	.xword arg0
	.xword arg1t27
	.xword arg2t27
	.xword arg3t27
	.xword arg4t27
	.xword arg5t27
	.xword arg6t27
	.xword arg7t27
	.xword 0

.global arg1t27
arg1t27:
	.skip 128

.global arg2t27
arg2t27:
	.skip 128

.global arg3t27
arg3t27:
	.skip 128

.global arg4t27
arg4t27:
	.skip 128

.global arg5t27
arg5t27:
	.skip 128

.global arg6t27
arg6t27:
	.skip 128

.global arg7t27
arg7t27:
	.skip 128

.global hs27
hs27:
	.skip 128


.global argvp28
argvp28:
	.xword arg0
	.xword arg1t28
	.xword arg2t28
	.xword arg3t28
	.xword arg4t28
	.xword arg5t28
	.xword arg6t28
	.xword arg7t28
	.xword 0

.global arg1t28
arg1t28:
	.skip 128

.global arg2t28
arg2t28:
	.skip 128

.global arg3t28
arg3t28:
	.skip 128

.global arg4t28
arg4t28:
	.skip 128

.global arg5t28
arg5t28:
	.skip 128

.global arg6t28
arg6t28:
	.skip 128

.global arg7t28
arg7t28:
	.skip 128

.global hs28
hs28:
	.skip 128


.global argvp29
argvp29:
	.xword arg0
	.xword arg1t29
	.xword arg2t29
	.xword arg3t29
	.xword arg4t29
	.xword arg5t29
	.xword arg6t29
	.xword arg7t29
	.xword 0

.global arg1t29
arg1t29:
	.skip 128

.global arg2t29
arg2t29:
	.skip 128

.global arg3t29
arg3t29:
	.skip 128

.global arg4t29
arg4t29:
	.skip 128

.global arg5t29
arg5t29:
	.skip 128

.global arg6t29
arg6t29:
	.skip 128

.global arg7t29
arg7t29:
	.skip 128

.global hs29
hs29:
	.skip 128


.global argvp30
argvp30:
	.xword arg0
	.xword arg1t30
	.xword arg2t30
	.xword arg3t30
	.xword arg4t30
	.xword arg5t30
	.xword arg6t30
	.xword arg7t30
	.xword 0

.global arg1t30
arg1t30:
	.skip 128

.global arg2t30
arg2t30:
	.skip 128

.global arg3t30
arg3t30:
	.skip 128

.global arg4t30
arg4t30:
	.skip 128

.global arg5t30
arg5t30:
	.skip 128

.global arg6t30
arg6t30:
	.skip 128

.global arg7t30
arg7t30:
	.skip 128

.global hs30
hs30:
	.skip 128


.global argvp31
argvp31:
	.xword arg0
	.xword arg1t31
	.xword arg2t31
	.xword arg3t31
	.xword arg4t31
	.xword arg5t31
	.xword arg6t31
	.xword arg7t31
	.xword 0

.global arg1t31
arg1t31:
	.skip 128

.global arg2t31
arg2t31:
	.skip 128

.global arg3t31
arg3t31:
	.skip 128

.global arg4t31
arg4t31:
	.skip 128

.global arg5t31
arg5t31:
	.skip 128

.global arg6t31
arg6t31:
	.skip 128

.global arg7t31
arg7t31:
	.skip 128

.global hs31
hs31:
	.skip 128


.global arg0
arg0:
	.ascii "mycmain"
	.byte 0
.global shm_sync
shm_sync:
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
!----------------------------------------------------------------------------------------------





!--------------------------------------------------------------------------
! tso diags related definitions
!--------------------------------------------------------------------------


!--------------------------------------------------------------------------

.section .text
	
       .align 4
       .global pass
pass:
        ta  0x00
        nop

       .align 4
       .global fail
fail:
        ta 0x01
        nop

	.align 4
	.global memalign
memalign:
	save    %sp, -192, %sp

	mov	1,   %o1
	mov	%i0, %o3
	mov	%i1, %o2
	ta	0x18
	nop
	mov	%o4, %o0

        ret
        restore %g0, %o0, %o0

	.align 4
	.global printf
    .global puts
puts:
printf:
    save    %sp, -192, %sp
	mov %i0, %o0
    call piton_puts
    nop
	ret
	restore
    nop

.align 32; .global piton_putchar; piton_putchar:
    save    %sp, -192, %sp
    ta 0x70
    ret
    restore
    nop

	
        .align 4
        .global exit
exit:
        cmp     %o0, 0
        bne     exitfail
        nop
        call    pass, 0
        nop
exitfail:
        call    fail, 0
        nop

!--------------------------------------------------------------------------
! tso diags related library functions
!--------------------------------------------------------------------------
!--------------------------------------------------------------------------
!       Acquire a lock using ldstub - spins using ldub until lock is free
!       status = mplock(addr, owner, timeout, timecount)
!	Note: timecount is not used any more.
!	Note: simplfied for pre-silicon env purposes.
!--------------------------------------------------------------------------
.align 32; .global mplock; mplock:
        save    %sp, -0xc0, %sp
1:
        ldstub  [%i0], %l1              ! try to acquire lock
        tst     %l1                     ! did we get it?
        bne     2f                      ! no, branch
        nop
        stb     %i1, [%i0+1]            ! got lock, set owner field
        ret                             ! return success
        restore %g0, 0, %o0
2:                                      ! didn't get lock
        mov     %i2, %l2           	! set timeout limit
3:               
        ldub    [%i0], %l1              ! read lock value
        tst     %l1                     ! is it free?
        beq     1b                      ! yes, branch

        subcc   %l2, 1, %l2             ! timecount expired? 
        bne     3b                      ! no, branch
	nop

        ret                             ! timeout occurred
        restore %g0, 1, %o0  		! return failure

!--------------------------------------------------------------------------
!       Acquire a lock using ldstub - spins using ldub until lock is free
!       status = mplockcasx(addr, owner, timeout, timecount)
!       Note: timecount is not used any more.
!       Note: simplfied for pre-silicon env purposes.
!--------------------------------------------------------------------------
.align 32; .global mplockcasx; mplockcasx:
        save    %sp, -0xc0, %sp
4:
	add	%i1, 0x100, %l1
	casx    [%i0], %g0, %l1		! try to get lock

        tst     %l1                     ! did we get it?
        bne     5f                      ! no, branch
        nop
        stx     %i1, [%i0+8]            ! got lock, set owner field
        ret                             ! return success
        restore %g0, 0, %o0
5:                                      ! didn't get lock
        mov     %i2, %l2                ! set timeout limit
6:
        ldx    [%i0], %l1 		! read lock value
        tst     %l1                     ! is it free?
        beq     4b                      ! yes, branch

        subcc   %l2, 1, %l2             ! timecount expired?
        bne     6b                      ! no, branch
        nop

        ret                             ! timeout occurred
        restore %g0, 1, %o0             ! return failure


!--------------------------------------------------------------------------
!       Load a dowbleword
!       data1 = loadd(&data2, addr)
!--------------------------------------------------------------------------
.align 32; .global loadd; loadd:
        mov     %o0, %o2
        ldd     [%o1], %o0
        retl
        st      %o1, [%o2]

!--------------------------------------------------------------------------
!       Load an extended word
!       data = loadx(addr)
!--------------------------------------------------------------------------
.align 32; .global loadx; loadx:
        retl
        ldx     [%o0], %o0

!--------------------------------------------------------------------------
!       Load a halfword (short), one byte a time
!       data = loadh_by_bytes(addr)
!--------------------------------------------------------------------------
.align 32; .global loadh_by_bytes; loadh_by_bytes:
        ldub    [%o0], %o1
        sll     %o1, 8, %o1
        ldub    [%o0+1], %o0
        retl
        or      %o1, %o0, %o0

!--------------------------------------------------------------------------
!       Load a word, 1 byte at a time
!       data = loadw_by_bytes(addr)
!--------------------------------------------------------------------------
.align 32; .global loadw_by_bytes; loadw_by_bytes:
        ldub    [%o0+3], %o4
        ldub    [%o0+2], %o3
        sll     %o3, 8, %o3
        or      %o3, %o4, %o4
        ldub    [%o0+1], %o2
        sll     %o2, 16, %o2
        or      %o2, %o4, %o4
        ldub    [%o0], %o1
        sll     %o1, 24, %o1
        retl
        or      %o1, %o4, %o0

!--------------------------------------------------------------------------
!       Load a dowbleword, 1 byte at a time
!       data1 = loadd_by_bytes(&data2, addr)
!--------------------------------------------------------------------------
.align 32; .global loadd_by_bytes; loadd_by_bytes:
        save    %sp, -0xc0, %sp
        ldub    [%i1+3], %o0
        ldub    [%i1+2], %o3
        sll     %o3, 8, %o3
        or      %o3, %o0, %o0
        ldub    [%i1+1], %o2
        sll     %o2, 16, %o2
        or      %o2, %o0, %o0
        ldub    [%i1], %o1
        sll     %o1, 24, %o1
        or      %o1, %o0, %o0
        ldub    [%i1+7], %l3
        ldub    [%i1+6], %l2
        sll     %l2, 8, %l2
        or      %l2, %l3, %l3
        ldub    [%i1+5], %l1
        sll     %l1, 16, %l1
        or      %l1, %l3, %l3
        ldub    [%i1+4], %l0
        sll     %l0, 24, %l0
        or      %l0, %l3, %l3
        st      %l3, [%i0]
        ret 
        restore %o0, %g0, %o0 



!--------------------------------------------------------------------------
!       Load a pointer, 1 byte at a time
!       addr = loadp_by_bytes(addr)
!--------------------------------------------------------------------------
.align 32; .global loadp_by_bytes; loadp_by_bytes:
        save    %sp, -0xc0, %sp
        ldub    [%i0+7], %o0
        ldub    [%i0+6], %l3
        sllx    %l3, 8, %l3
        or      %l3, %o0, %o0
        ldub    [%i0+5], %l2
        sllx    %l2, 16, %l2
        or      %l2, %o0, %o0
        ldub    [%i0+4], %l1
        sllx    %l1, 24, %l1
        or      %l1, %o0, %o0
        ldub    [%i0+3], %l0
        sllx    %l0, 32, %l0
        or      %l0, %o0, %o0
        ldub    [%i0+2], %o3
        sllx    %o3, 40, %o3
        or      %o3, %o0, %o0
        ldub    [%i0+1], %o2
        sllx    %o2, 48, %o2
        or      %o2, %o0, %o0
        ldub    [%i0], %o1
        sllx    %o1, 56, %o1
        or      %o1, %o0, %o0
        ret 
        restore %o0, %g0, %o0 

!--------------------------------------------------------------------------
!       Store a block (64-bytes)
!       storeblock(addr)
!--------------------------------------------------------------------------
.align 32; .global storeblock; storeblock:
        retl
        stda    %f0, [%o0] 0xf0

!--------------------------------------------------------------------------
!       load a block
!       loadblock(addr)
!--------------------------------------------------------------------------
.align 32; .global loadblock; loadblock:
        retl
        ldda    [%o0] 0xf0, %f0

!--------------------------------------------------------------------------
!       loadb_func(addr)
!--------------------------------------------------------------------------
.align 32; .global loadb_func; loadb_func:
        retl
        ldub    [%o0], %o0

!--------------------------------------------------------------------------
! These below were inline( functions in MSPLAIN tests...
! I made the assembly routines.
!--------------------------------------------------------------------------

!--------------------------------------------------------------------------
!       Init a lock
!       initmplock(addr)
!--------------------------------------------------------------------------
.align 32; .global initmplock; initmplock:
	retl
        sth     %g0, [%o0]

!--------------------------------------------------------------------------
!       unlock
!       mpunlock(addr)
!--------------------------------------------------------------------------
.align 32; .global mpunlock; mpunlock:
	retl
        sth     %g0, [%o0]

!--------------------------------------------------------------------------
!       unlock
!       mpunlockx(addr)
!--------------------------------------------------------------------------
.align 32; .global mpunlockx; mpunlockx:
	retl
        stx     %g0, [%o0]

!--------------------------------------------------------------------------
!       Load a word
!       data = loadw(addr)
!--------------------------------------------------------------------------
.align 32; .global loadw; loadw:
        retl
        ld      [%o0], %o0

!--------------------------------------------------------------------------
!       Load a halv word
!       data = loadh(addr)
!--------------------------------------------------------------------------
.align 32; .global loadh; loadh:
        retl
        lduh      [%o0], %o0

!--------------------------------------------------------------------------
!       Store a byte
!       storeb(data, addr)
!--------------------------------------------------------------------------
.align 32; .global storeb; storeb:
	retl
        stb     %o0, [%o1]

!--------------------------------------------------------------------------
!       Store a word (integer)
!       storew(data, addr)
!--------------------------------------------------------------------------
.align 32; .global storew; storew:
	retl
        st      %o0, [%o1]

!--------------------------------------------------------------------------
!       Store a word (integer)
!       storex(data, addr)
!--------------------------------------------------------------------------
.align 32; .global storex; storex:
	retl
        stx     %o0, [%o1]

!--------------------------------------------------------------------------
!       Store a doubleword
!       stored(data1, data2, addr)
!--------------------------------------------------------------------------
.align 32; .global stored; stored:
	retl
        std     %o0, [%o2]
 
!--------------------------------------------------------------------------
!       Swap a word
!       data = swap(data, addr)
!--------------------------------------------------------------------------
.align 32; .global swap; swap:
	retl
        swap    [%o1], %o0

!--------------------------------------------------------------------------
!       Compare and swap a word
!       data = casa(data, addr)
!--------------------------------------------------------------------------
.align 32; .global casa; casa:
	retl
        casa    [%o1] 0x80, %g0, %o0

!--------------------------------------------------------------------------
!       Store a halfword (short), 1 byte at a time
!       storeh_by_bytes(data, addr)
!--------------------------------------------------------------------------
.align 32; .global storeh_by_bytes; storeh_by_bytes:
        stb     %o0, [%o1+1]
        srl     %o0, 8, %o2
	retl
        stb     %o2, [%o1]

!--------------------------------------------------------------------------
!       Store a word (integer), 1 byte at a time
!       storew_by_bytes(data, addr)
!--------------------------------------------------------------------------
.align 32; .global storew_by_bytes; storew_by_bytes:
        stb     %o0, [%o1+3]
        srl     %o0, 24, %o2
        stb     %o2, [%o1]
        srl     %o0, 16, %o3
        stb     %o3, [%o1+1]
        srl     %o0, 8, %o4
	retl
        stb     %o4, [%o1+2]

!--------------------------------------------------------------------------
!       Prefetch a line for many reads - loads into E$
!       prefetch_for_read_many(addr)
!--------------------------------------------------------------------------
.align 32; .global prefetch_for_read_many; prefetch_for_read_many:
	retl
        prefetch [%o0], 0

!--------------------------------------------------------------------------
!       Prefetch a line for one reads - loads into P$
!       prefetch_for_read_once(addr)
!--------------------------------------------------------------------------
.align 32; .global prefetch_for_read_once; prefetch_for_read_once:
	retl
        prefetch [%o0], 1

!--------------------------------------------------------------------------
!       Prefetch a line for write
!       prefetch_for_write_many(addr)
!--------------------------------------------------------------------------
.align 32; .global prefetch_for_write_many; prefetch_for_write_many:
	retl
        prefetch [%o0], 2

!--------------------------------------------------------------------------
!       Prefetch a line for write
!       prefetch_for_write_once(addr)
!--------------------------------------------------------------------------
.align 32; .global prefetch_for_write_once; prefetch_for_write_once:
	retl
        prefetch [%o0], 3


!--------------------------------------------------------------------------
!       membar_sync()
!--------------------------------------------------------------------------
.align 32; .global membar_sync; membar_sync:
	retl
        membar	0x40

!--------------------------------------------------------------------------
!       membar_store_load()
!--------------------------------------------------------------------------
.align 32; .global membar_storeload; membar_storeload:
	retl
        membar #StoreLoad

!--------------------------------------------------------------------------
!       ldstub(addr)
!--------------------------------------------------------------------------
.align 32; .global ldstub; ldstub:
        retl
        ldstub  [%o0], %o0

!--------------------------------------------------------------------------
!       Load a pointer
!       addr1 = loadp(addr)
!--------------------------------------------------------------------------
.align 32; .global loadp; loadp:
	retl
        ldx     [%o0], %o0

!--------------------------------------------------------------------------
!       Store a pointer
!       storep(addr1, addr)
!--------------------------------------------------------------------------
.align 32; .global storep; storep:
	retl
        stx     %o0, [%o1]

!================= end for now ============================================
! Copyright (c) 2018 Princeton University
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

	.file	"put.c"
	.section	".text"
	.align 4
	.global piton_puts
	.type	piton_puts, #function
	.proc	04
piton_puts:
	save	%sp, -176, %sp
	ldsb	[%i0], %i5
	mov	0, %i3
	cmp	%i5, 0
	bne,pt	%icc, .L4
	 add	%i0, 1, %i4
	return	%i7+8
	 sra	%o3, 0, %o0
.L3:
	call	piton_putchar, 0
	 sra	%i5, 0, %o0
	add	%i3, 1, %i3
	ldsb	[%i4], %i5
	cmp	%i5, 0
	be,pn	%icc, .L2
	 add	%i4, 1, %i4
.L4:
	cmp	%i5, 10
	bne,pt	%icc, .L3
	 nop
	call	piton_putchar, 0
	 mov	13, %o0
	call	piton_putchar, 0
	 sra	%i5, 0, %o0
	add	%i3, 1, %i3
	ldsb	[%i4], %i5
	cmp	%i5, 0
	bne,pt	%icc, .L4
	 add	%i4, 1, %i4
.L2:
	sra	%i3, 0, %i0
	return	%i7+8
	 nop
	.size	piton_puts, .-piton_puts
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
!------------------------------------------------------------------------------





SECTION .MAIN

MIDAS_CC FILE=stack/factorial.c ARGS=-O2 -S

