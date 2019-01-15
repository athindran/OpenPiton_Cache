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



