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
	

	
