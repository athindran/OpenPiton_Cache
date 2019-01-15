// Modified by Princeton University on June 9th, 2015
/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: iob_int_disp_vec.s
* Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
* 
* The above named program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License version 2 as published by the Free Software Foundation.
* 
* The above named program is distributed in the hope that it will be 
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public
* License along with this work; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
* 
* ========== Copyright Header End ============================================
*/
/***********************************************************************
 * Name:   iob_int_disp_vec.s
 * Date:   
 *
 *  Description: Generate interrupt, idle, resume and reset requests to
 *               to all 32 threads.        
 *
 **********************************************************************/
#define MAIN_PAGE_HV_ALSO
#include "iob_defines.h"
#define H_HT0_Interrupt_0x60                  trap_interrupt_iob
#include "boot.s"
        
.text
.align 64
.global main
main:
th_fork(th_main,%l0)		! start up to four threads.
	! All threads do the same thing. No need to run more than one core,
	! and no need to differentiate the threads because nobody stores
	! anything.
th_main_31:    
th_main_30:    
th_main_29:    
th_main_28:    
th_main_27:    
th_main_26:    
th_main_25:    
th_main_24:    
th_main_23:    
th_main_22:    
th_main_21:    
th_main_20:    
th_main_19:    
th_main_18:    
th_main_17:    
th_main_16:    
th_main_15:    
th_main_14:    
th_main_13:    
th_main_12:    
th_main_11:    
th_main_10:    
th_main_9:    
th_main_8:    
th_main_7:    
th_main_6:    
th_main_5:    
th_main_4:    
th_main_3:    
th_main_2:    
th_main_1:            
        ta      T_CHANGE_HPRIV  ! Operations can only be done in hyper visor priv mode.
        nop

        set     0x0,    %l7
        set     0x40,   %g7
        
        ! Wait forever.        
wait_loop:             
        ba      wait_loop
        nop
                
th_main_0:    
        ta      T_CHANGE_HPRIV  ! Operations can only be done in hyper visor priv mode.
        nop

        setx    0x0000009800000800,     %l0,    %g1     ! Register address.

        set     THREAD_COUNT,   %g2     ! Number of threads.
        set     THREAD_STRIDE,  %g6     ! Thread stride.
        set     0x1,            %g3     ! Current thread to receive requests.
        set     0x0,            %g7     ! Thread to generate requests.

        set     0x0,    %l7
        set     0x40,   %g7                        
gen_int_loop:        
                            
        ! Clear semaphore.
clr_sema_int:           
        setx    semaphore,      %l0,    %l1
        set     0x0,    %l2
        sll     %g3,    0x3,    %l2
        add     %l1,    %l2,    %l3
        set     0x0,    %l4
        stx     %l4,    [%l3]
        
        ! Issue interrupt request.	
issue_int:			
	mov     %l7,    %l1
        set     0x0,    %l2
        sll     %g3,    0x8,    %l2
        set     0x0,    %g4
        set     0x0,    %l3
        sll     %g4,    0x10,   %l3
        or      %l2,    %l3,    %l4
        or      %l1,    %l4,    %l5
        stx     %l5,    [%g1]

        ! Wait for the thread to be interrupted.	
wait_int_req_loop:        
        nop
        nop
        nop
        nop
        setx    semaphore,      %l0,    %l1
        set     0x0,    %l2
        sll     %g3,    0x3,    %l2
        add     %l1,    %l2,    %l3
        ldx     [%l3],  %l4
        setx    0x0123456789abcdef,     %l0,    %l5
        cmp     %l4,    %l5
        bne     wait_int_req_loop
        nop
	        
        add     %l7,    0x1,    %l7
        cmp     %l7,    %g7
        bne     gen_int_loop
        nop
        
diag_pass:
        ta      T_GOOD_TRAP
        nop
        
diag_fail:
        ta      T_BAD_TRAP
        nop

! Include subroutines and data.        
#include "iob_subs.s"
#include "iob_data.s"

! Trap handlers.
SECTION .HTRAPS
.text
.align 64        
                        
! Interrupt iob trap handler.
! No need to clear the mask for interrupt generated by iob since
! the interrupt is not maskable.
.global trap_interrupt_iob
trap_interrupt_iob:

        ! Check the correct bit is set in the ASI interrupt registers.
        ldxa    [%g0] 0x72,     %g1
        set     0x1,    %g2
        sllx    %g2,    %l7,    %g3
        cmp     %g1,    %g3
        bne     trap_diag_fail        
        nop
        
        ! Check the correct vector is logged in the ASI interrupt registers.
        ldxa    [%g0] 0x74,     %g1
        mov     %l7,    %g3
        cmp     %g1,    %g3
        bne     trap_diag_fail        
        nop

        ! Write to semaphore to indicate interrupt completion.
        setx    semaphore,      %g0,    %g1
        rdth_id        
        set     0x0,    %g2
        sll     %o1,    0x3,    %g2
        add     %g1,    %g2,    %g3
        setx    0x0123456789abcdef,     %g0,    %g4
        stx     %g4,    [%g3]
        
        ! Clear iob interrupt mask.
        setx    0x0000009800000408,     %l0,    %l1     ! Set interrupt control register address.
        set     0x0,    %l2     ! Write to interrupt control register.
        stx     %l2,    [%l1]
        
        add     %l7,    0x1,    %l7
        
        retry

trap_diag_fail:
        ta      T_BAD_TRAP
        nop
