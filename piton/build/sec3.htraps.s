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






