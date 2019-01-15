// Copyright (c) 2015 Princeton University
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of Princeton University nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY PRINCETON UNIVERSITY "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL PRINCETON UNIVERSITY BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//==================================================================================================
//  Filename      : l2_mon.v
//  Created On    : 2014-05-08
//  Last Modified : 2018-11-16 17:18:12
//  Revision      :
//  Author        : Yaosheng Fu
//  Company       : Princeton University
//  Email         : yfu@princeton.edu
//
//  Description   : Monitors for the L2 cache
//
//
//====================================================================================================


// /home/arkumar/ee475/openpiton/piton/verif/env/manycore/devices.xml


`include "define.tmp.h"
`include "l2.tmp.h"
`include "sys.h"
`include "iop.h"
`include "cross_module.tmp.h"

module l2_mon (
    input wire clk
);



always @ (posedge clk)
begin



if(!$test$plusargs("disable_l2_mon"))
begin

if (`L2_TOP0.pipe1.ctrl.valid_S1 && ~`L2_TOP0.pipe1.ctrl.stall_S1)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write($time, " P1S1 msg type: ");
    print_msg_type(`L2_TOP0.pipe1.ctrl.msg_type_trans_S1);
    $display("addr: 0x%h, Data_size: %b, cache_type: %b", `L2_TOP0.pipe1.dpath.addr_S1, `L2_TOP0.pipe1.ctrl.data_size_S1, `L2_TOP0.pipe1.ctrl.cache_type_S1);
    $display("P1S1 valid: stall: %b, stall_pre: %b, stall_hazard: %b, stall_mshr: %b, stall_msg: %b, stall_global: %b",
              `L2_TOP0.pipe1.ctrl.stall_S1, `L2_TOP0.pipe1.ctrl.stall_pre_S1,
              `L2_TOP0.pipe1.ctrl.stall_hazard_S1, `L2_TOP0.pipe1.ctrl.stall_mshr_S1,
              `L2_TOP0.pipe1.ctrl.stall_msg_S1, `L2_TOP0.pipe1.ctrl.global_stall_S1);
    $display("Control signals: %b", `L2_TOP0.pipe1.ctrl.cs_S1);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe1.ctrl.csm_en);
    `endif
    $display("Special addr type: %b", `L2_TOP0.pipe1.ctrl.special_addr_type_S1);
    $display("Msg from mshr: %b", `L2_TOP0.pipe1.ctrl.msg_from_mshr_S1);
    $display("P1S1 addr: 0x%h", `L2_TOP0.pipe1.dpath.addr_S1);
    $display("Mshr_addr: 0x%h", `L2_TOP0.pipe1.dpath.mshr_addr_in_S1);
    $display("Tag_addr: 0x%h", `L2_TOP0.pipe1.dpath.tag_addr_S1);
    $display("Tag data in: 0x%h", `L2_TOP0.pipe1.dpath.tag_data_in_S1);
    $display("Tag data mask in: 0x%h", `L2_TOP0.pipe1.dpath.tag_data_mask_in_S1);
    $display("State_rd_addr: 0x%h",`L2_TOP0.pipe1.dpath.state_rd_addr_S1);
    $display("Msg data: 0x%h", `L2_TOP0.pipe1.dpath.msg_data_S1);
    $display("Msg length: %b", `L2_TOP0.pipe1.msg_length);
    $display("src x: %b, src y: %b", `L2_TOP0.pipe1.dpath.src_x_S1, `L2_TOP0.pipe1.dpath.src_y_S1);
    $display("sdid: %d, lsid: %d", `L2_TOP0.pipe1.dpath.sdid_S1, `L2_TOP0.pipe1.dpath.lsid_S1);

end
if (`L2_TOP0.pipe1.ctrl.valid_S2 && ~`L2_TOP0.pipe1.ctrl.stall_real_S2)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write($time, " P1S2 msg type: ");
    print_msg_type(`L2_TOP0.pipe1.ctrl.msg_type_S2_f);
    $display("addr: 0x%h, Data_size: %b, cache_type: %b", `L2_TOP0.pipe1.dpath.addr_S2, `L2_TOP0.pipe1.ctrl.data_size_S2_f, `L2_TOP0.pipe1.ctrl.cache_type_S2_f);
    $display("P1S2 valid: recycle: %b, stall: %b, stall_pre: %b, stall_real: %b, stall_load: %b, stall_msg: %b, stall_global: %b",
              `L2_TOP0.pipe1.ctrl.req_recycle_S2, `L2_TOP0.pipe1.ctrl.stall_S2, `L2_TOP0.pipe1.ctrl.stall_pre_S2,
              `L2_TOP0.pipe1.ctrl.stall_real_S2, `L2_TOP0.pipe1.ctrl.stall_load_S2,
              `L2_TOP0.pipe1.ctrl.stall_msg_S2, `L2_TOP0.pipe1.ctrl.global_stall_S2);
    $display("Control signals: %b", `L2_TOP0.pipe1.ctrl.cs_S2);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe1.ctrl.csm_en);
    `endif
    $display("Special addr type: %b", `L2_TOP0.pipe1.ctrl.special_addr_type_S2);
    $display("Msg from mshr: %b", `L2_TOP0.pipe1.ctrl.msg_from_mshr_S2);
    $display("P1S2 addr: 0x%h", `L2_TOP0.pipe1.dpath.addr_S2);
    $display("P1S2 valid: l2_way_sel: %b, l2_hit: %b, l2_evict: %b, l2_wb: %b",
              `L2_TOP0.pipe1.dpath.l2_way_sel_S2, `L2_TOP0.pipe1.dpath.l2_tag_hit_S2,
              `L2_TOP0.pipe1.dpath.l2_evict_S2, `L2_TOP0.pipe1.dpath.l2_wb_S2);
    $display("State VD bits: %b %b %b %b",
            `L2_TOP0.pipe1.dpath.state_way_S2[3][`L2_STATE_VD], `L2_TOP0.pipe1.dpath.state_way_S2[2][`L2_STATE_VD],
            `L2_TOP0.pipe1.dpath.state_way_S2[1][`L2_STATE_VD], `L2_TOP0.pipe1.dpath.state_way_S2[0][`L2_STATE_VD]);
    $display("State: rb: %b, lru: %b, mesi: %b, vd: %b, subline: %b, cache_type: %b, owner: %b",
             `L2_TOP0.pipe1.dpath.l2_rb_bits_S2, `L2_TOP0.pipe1.dpath.l2_lru_bits_S2,`L2_TOP0.pipe1.dpath.l2_way_state_mesi_S2,
             `L2_TOP0.pipe1.dpath.l2_way_state_vd_S2, `L2_TOP0.pipe1.dpath.l2_way_state_subline_S2,
             `L2_TOP0.pipe1.dpath.l2_way_state_cache_type_S2, `L2_TOP0.pipe1.dpath.l2_way_state_owner_S2);
    $display("Msg data valid: %b", `L2_TOP0.pipe1.ctrl.msg_data_valid_S2);
    $display("Msg data ready: %b", `L2_TOP0.pipe1.ctrl.msg_data_ready_S2);
    $display("Msg data: 0x%h", `L2_TOP0.pipe1.dpath.msg_data_S2);
    $display("Return data: 0x%h", `L2_TOP0.pipe1.dpath.return_data_S2);
    $display("State data: 0x%h", `L2_TOP0.pipe1.dpath.state_data_S2);
    $display("Tag data: 0x%h", `L2_TOP0.pipe1.dpath.tag_data_S2);
    $display("Dir addr: 0x%h", `L2_TOP0.pipe1.dpath.dir_addr_S2);
    $display("Dir data: 0x%h", `L2_TOP0.pipe1.dpath.dir_data_in_S2);
    $display("Dir data mask: 0x%h", `L2_TOP0.pipe1.dpath.dir_data_mask_in_S2);
    $display("Data addr: 0x%h", `L2_TOP0.pipe1.dpath.data_addr_S2);
    $display("Data data: 0x%h", `L2_TOP0.pipe1.dpath.data_data_in_S2);
    $display("Data data mask: 0x%h", `L2_TOP0.pipe1.dpath.data_data_mask_in_S2);
    $display("State data in: 0x%h", `L2_TOP0.pipe1.dpath.state_data_in_S2);
    $display("State data mask in: 0x%h", `L2_TOP0.pipe1.dpath.state_data_mask_in_S2);
    $display("src x: %b, src y: %b", `L2_TOP0.pipe1.dpath.src_x_S2_f, `L2_TOP0.pipe1.dpath.src_y_S2_f);
    $display("sdid: %d, lsid: %d", `L2_TOP0.pipe1.dpath.sdid_S2_f, `L2_TOP0.pipe1.dpath.lsid_S2_f);

end



if (`L2_TOP0.pipe1.ctrl.valid_S3 && ~`L2_TOP0.pipe1.ctrl.stall_S3)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write($time, " P1S3 msg type: ");
    print_msg_type(`L2_TOP0.pipe1.ctrl.msg_type_S3_f);
    $display("addr: 0x%h, Data_size: %b, cache_type: %b", `L2_TOP0.pipe1.dpath.addr_S3_f, `L2_TOP0.pipe1.ctrl.data_size_S3_f, `L2_TOP0.pipe1.ctrl.cache_type_S3_f);
    $display("P1S3 valid: recycle: %b, stall: %b", `L2_TOP0.pipe1.ctrl.req_recycle_S3, `L2_TOP0.pipe1.ctrl.stall_S3);
    $display("State wr en: %b", `L2_TOP0.pipe1.ctrl.state_wr_en_S3_f);
    $display("Dir data: 0x%h", `L2_TOP0.pipe1.ctrl.dir_data_S3);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe1.ctrl.csm_en);
    `endif
    $display("Msg from mshr: %b", `L2_TOP0.pipe1.ctrl.msg_from_mshr_S3_f);
    $display("P1S3 addr: 0x%h", `L2_TOP0.pipe1.dpath.addr_S3_f);
    $display("P1S3 valid: l2_hit: %b, l2_evict: %b",
              `L2_TOP0.pipe1.dpath.l2_tag_hit_S3_f, `L2_TOP0.pipe1.dpath.l2_evict_S3_f);
    $display("Data data: 0x%h", `L2_TOP0.pipe1.dpath.data_data_S3);
    $display("State:mesi: %b, vd: %b, subline: %b, cache_type: %b, owner: %b",
             `L2_TOP0.pipe1.dpath.l2_way_state_mesi_S3_f, `L2_TOP0.pipe1.dpath.l2_way_state_vd_S3_f,
             `L2_TOP0.pipe1.dpath.l2_way_state_subline_S3_f, `L2_TOP0.pipe1.dpath.l2_way_state_cache_type_S3_f,
             `L2_TOP0.pipe1.dpath.l2_way_state_owner_S3_f);
    $display("sdid: %d, lsid: %d", `L2_TOP0.pipe1.dpath.sdid_S3_f, `L2_TOP0.pipe1.dpath.lsid_S3_f);
end

if (`L2_TOP0.pipe1.ctrl.valid_S4  && (~`L2_TOP0.pipe1.ctrl.stall_S4 || (`L2_TOP0.pipe1.ctrl.msg_stall_S4 || `L2_TOP0.pipe1.ctrl.dir_data_stall_S4)))
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write($time, " P1S4 msg type: ");
    print_msg_type(`L2_TOP0.pipe1.ctrl.msg_type_S4_f);
    $display("addr: 0x%h, Data_size: %b, cache_type: %b", `L2_TOP0.pipe1.dpath.addr_S4, `L2_TOP0.pipe1.ctrl.data_size_S4_f, `L2_TOP0.pipe1.ctrl.cache_type_S4_f);
    `ifndef NO_RTL_CSM
    $display("P1S4 valid: recycle: %b, stall: %b, msg_stall: %b, dir_data_stall: %b, stall_inv_counter: %b, stall_smc_buf: %b, smc_stall: %b, global_stall: %b, broadcast_stall: %b",
              `L2_TOP0.pipe1.ctrl.req_recycle_S4, `L2_TOP0.pipe1.ctrl.stall_S4,
              `L2_TOP0.pipe1.ctrl.msg_stall_S4, `L2_TOP0.pipe1.ctrl.dir_data_stall_S4,
              `L2_TOP0.pipe1.ctrl.stall_inv_counter_S4, `L2_TOP0.pipe1.ctrl.stall_smc_buf_S4,
              `L2_TOP0.pipe1.ctrl.smc_stall_S4, `L2_TOP0.pipe1.ctrl.global_stall_S4, `L2_TOP0.pipe1.ctrl.broadcast_stall_S4);
    `else
    $display("P1S4 valid: recycle: %b, stall: %b, msg_stall: %b, dir_data_stall: %b, stall_inv_counter: %b, global_stall: %b",
              `L2_TOP0.pipe1.ctrl.req_recycle_S4, `L2_TOP0.pipe1.ctrl.stall_S4,
              `L2_TOP0.pipe1.ctrl.msg_stall_S4, `L2_TOP0.pipe1.ctrl.dir_data_stall_S4,
              `L2_TOP0.pipe1.ctrl.stall_inv_counter_S4,
              `L2_TOP0.pipe1.ctrl.global_stall_S4);
    `endif
    $display("Control signals: %b", `L2_TOP0.pipe1.ctrl.cs_S4);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe1.ctrl.csm_en);
    $display("broadcast coreid: (%d, %d, %d)", `L2_TOP0.pipe1.ctrl.broadcast_chipid_out_S4, `L2_TOP0.pipe1.ctrl.broadcast_y_out_S4, `L2_TOP0.pipe1.ctrl.broadcast_x_out_S4);
    $display("broadcast state: %b, broadcast op val: %b", `L2_TOP0.pipe1.ctrl.broadcast_state_S4_f, `L2_TOP0.pipe1.ctrl.broadcast_counter_op_val_S4);
    `endif
    $display("Special addr type: %b", `L2_TOP0.pipe1.ctrl.special_addr_type_S4);
    $display("MSHR state wr en: %b", `L2_TOP0.pipe1.ctrl.mshr_wr_state_en_S4);
    $display("MSHR data wr en: %b", `L2_TOP0.pipe1.ctrl.mshr_wr_data_en_S4);
    $display("MSHR data wr : 0x%x", `L2_TOP0.pipe1.dpath.mshr_data_in_S4);
    $display("MSHR inv counter : %d", `L2_TOP0.pipe1.dpath.mshr_inv_counter_out_S4);
    $display("State wr en: %b", `L2_TOP0.pipe1.ctrl.state_wr_en_S4);
    $display("Dir data: 0x%h", `L2_TOP0.pipe1.ctrl.dir_data_S4);
    $display("Dir sharer counter: %d", `L2_TOP0.pipe1.dpath.dir_sharer_counter_S4);
    $display("State data in: 0x%h", `L2_TOP0.pipe1.dpath.state_data_in_S4);
    $display("State data mask in: 0x%h", `L2_TOP0.pipe1.dpath.state_data_mask_in_S4);
    $display("State wr addr: 0x%h", `L2_TOP0.pipe1.dpath.state_wr_addr_S4);
    $display("Msg data: 0x%h", `L2_TOP0.pipe1.dpath.msg_data_S4_f);
    `ifndef NO_RTL_CSM
    $display("SMC miss: %b", `L2_TOP0.pipe1.ctrl.smc_miss_S4);
    $display("SMC data out: 0x%h", `L2_TOP0.pipe1.dpath.smc_data_out_S4);
    $display("SMC tag out: 0x%h", `L2_TOP0.pipe1.dpath.smc_tag_out_S4);
    $display("SMC valid out: 0x%h", `L2_TOP0.pipe1.dpath.smc_valid_out_S4);
    `endif
    $display("Msg send valid: %b, send ready: %b, mode: %b, length: %b", `L2_TOP0.pipe1.ctrl.msg_send_valid_S4,
             `L2_TOP0.pipe1.ctrl.msg_send_ready_S4, `L2_TOP0.pipe1.ctrl.msg_send_mode_S4,`L2_TOP0.pipe1.ctrl.msg_send_length_S4);
    $write("Msg send type: ");
    print_msg_type(`L2_TOP0.pipe1.ctrl.msg_send_type_S4);
    $display("Msg send data_size: %b, cache_type: %b, mesi: %b, l2_miss: %b, mshrid: %b, subline_vector: %b",
    `L2_TOP0.pipe1.ctrl.msg_send_data_size_S4, `L2_TOP0.pipe1.ctrl.msg_send_cache_type_S4,
    `L2_TOP0.pipe1.ctrl.msg_send_mesi_S4, `L2_TOP0.pipe1.ctrl.msg_send_l2_miss_S4,
    `L2_TOP0.pipe1.ctrl.msg_send_mshrid_S4, `L2_TOP0.pipe1.ctrl.msg_send_subline_vector_S4);
    $display("Msg from mshr: %b", `L2_TOP0.pipe1.ctrl.msg_from_mshr_S4_f);
    $display("P1S4 addr: 0x%h", `L2_TOP0.pipe1.dpath.addr_S4);
    $display("P1S4 valid: l2_hit: %b, l2_evict: %b",
              `L2_TOP0.pipe1.dpath.l2_tag_hit_S4, `L2_TOP0.pipe1.dpath.l2_evict_S4);
    $display("Data data: 0x%h", `L2_TOP0.pipe1.dpath.data_data_S4);
    $display("State:mesi: %b, vd: %b, subline: %b, cache_type: %b, owner: %b",
             `L2_TOP0.pipe1.dpath.l2_way_state_mesi_S4, `L2_TOP0.pipe1.dpath.l2_way_state_vd_S4,
             `L2_TOP0.pipe1.dpath.l2_way_state_subline_S4, `L2_TOP0.pipe1.dpath.l2_way_state_cache_type_S4,
             `L2_TOP0.pipe1.dpath.l2_way_state_owner_S4_f);
    $display("Msg send: addr: 0x%h, dst_x: %b, dst_y: %b, dst_fbits: %b", `L2_TOP0.pipe1.dpath.msg_send_addr_S4,
             `L2_TOP0.pipe1.dpath.msg_send_dst_x_S4, `L2_TOP0.pipe1.dpath.msg_send_dst_y_S4,
             `L2_TOP0.pipe1.dpath.msg_send_dst_fbits_S4);
    $display("Msg send data: 0x%h", `L2_TOP0.pipe1.dpath.msg_send_data_S4);
    $display("src x: %b, src y: %b", `L2_TOP0.pipe1.dpath.src_x_S4_f, `L2_TOP0.pipe1.dpath.src_y_S4_f);
    $display("sdid: %d, lsid: %d", `L2_TOP0.pipe1.dpath.sdid_S4_f, `L2_TOP0.pipe1.dpath.lsid_S4_f);
end

// Tri: print out raw messages
if (`L2_TOP0.pipe1.buf_out.valid_out && `L2_TOP0.pipe1.buf_out.ready_out)
begin
    $display($time);
    $display("TILE0 noc2 flit raw: 0x%x", `L2_TOP0.pipe1.buf_out.data_out);
    if ( ^`L2_TOP0.pipe1.buf_out.data_out === 1'bx)
    begin
        $display("%d : Simulation -> FAIL(TILE0 noc2 sends X data 0x%x)", $time,  `L2_TOP0.pipe1.buf_out.data_out);
        repeat(5)@(posedge clk);
        `MONITOR_PATH.fail("l2_mon: TILE0 noc2 sends X data");
    end
end


if (`L2_TOP0.pipe2.ctrl.valid_S1  && ~`L2_TOP0.pipe2.ctrl.stall_S1)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write("P2S1 msg type: ");
    print_msg_type(`L2_TOP0.pipe2.ctrl.msg_type_S1);
    $display("Data_size: %b, cache_type: %b, last_subline: %b", `L2_TOP0.pipe2.ctrl.data_size_S1,
            `L2_TOP0.pipe2.ctrl.cache_type_S1, `L2_TOP0.pipe2.ctrl.msg_last_subline_S1);
    $display("P2S1 valid: stall: %b, stall_pre: %b, stall_hazard: %b",
            `L2_TOP0.pipe2.ctrl.stall_S1, `L2_TOP0.pipe2.ctrl.stall_pre_S1, `L2_TOP0.pipe2.ctrl.stall_hazard_S1);
    $display("Control signals: %b", `L2_TOP0.pipe2.ctrl.cs_S1);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe2.ctrl.csm_en);
    $display("SMC miss: %b", `L2_TOP0.pipe2.ctrl.smc_miss_S1);
    `endif
    $display("Msg from mshr: %b", `L2_TOP0.pipe2.ctrl.msg_from_mshr_S1);
    $display("Msg length: %b", `L2_TOP0.pipe2.ctrl.msg_length_S1);
    $display("P2S1 addr: 0x%h", `L2_TOP0.pipe2.dpath.addr_S1);
    $display("Mshr_rd_index: %b", `L2_TOP0.pipe2.dpath.mshr_rd_index_S1);
    $display("Tag_addr: 0x%h", `L2_TOP0.pipe2.dpath.tag_addr_S1,);
    $display("Tag_data_in: 0x%h", `L2_TOP0.pipe2.dpath.tag_data_in_S1,);
    $display("Tag_data_mask_in: 0x%h", `L2_TOP0.pipe2.dpath.tag_data_mask_in_S1,);
    $display("State_rd_addr: 0x%h",`L2_TOP0.pipe2.dpath.state_rd_addr_S1);
    $display("src x: %b, src y: %b", `L2_TOP0.pipe2.dpath.src_x_S1, `L2_TOP0.pipe2.dpath.src_y_S1);

end


if (`L2_TOP0.pipe2.ctrl.valid_S2  && ~`L2_TOP0.pipe2.ctrl.stall_real_S2)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    $write("P2S2 msg type: ");
    print_msg_type(`L2_TOP0.pipe2.ctrl.msg_type_S2_f);
    $display("Data_size: %b, cache_type: %b, last_subline: %b", `L2_TOP0.pipe2.ctrl.data_size_S2_f,
             `L2_TOP0.pipe2.ctrl.cache_type_S2_f, `L2_TOP0.pipe2.ctrl.msg_last_subline_S2_f);
    $display("P2S2 valid: stall: %b, stall_real: %b, stall_load: %b",
              `L2_TOP0.pipe2.ctrl.stall_S2, `L2_TOP0.pipe2.ctrl.stall_real_S2, `L2_TOP0.pipe2.ctrl.stall_load_S2);
    $display("Control signals: %b", `L2_TOP0.pipe2.ctrl.cs_S2);
    `ifndef NO_RTL_CSM
    $display("CSM enable: %b", `L2_TOP0.pipe2.ctrl.csm_en);
    $display("broadcast coreid: (%d, %d, %d)", `L2_TOP0.pipe2.ctrl.broadcast_chipid_out_S2, `L2_TOP0.pipe2.ctrl.broadcast_y_out_S2, `L2_TOP0.pipe2.ctrl.broadcast_x_out_S2);
    $display("broadcast op val: %b", `L2_TOP0.pipe2.ctrl.broadcast_counter_op_val_S2);
    $display("SMC miss: %b", `L2_TOP0.pipe2.ctrl.smc_miss_S2_f);
    `endif
    $display("Msg from mshr: %b", `L2_TOP0.pipe2.ctrl.msg_from_mshr_S2);
    $display("P2S2 addr: 0x%h", `L2_TOP0.pipe2.dpath.addr_S2);
    $display("P2S2 valid: l2_way_sel: %b, l2_hit: %b, l2_wb: %b",
              `L2_TOP0.pipe2.dpath.l2_way_sel_S2, `L2_TOP0.pipe2.dpath.l2_tag_hit_S2, `L2_TOP0.pipe2.dpath.l2_wb_S2);
    $display("state: mesi: %b, vd: %b, subline: %b, cache_type: %b, owner: %b",
             `L2_TOP0.pipe2.dpath.l2_way_state_mesi_S2, `L2_TOP0.pipe2.dpath.l2_way_state_vd_S2,
             `L2_TOP0.pipe2.dpath.l2_way_state_subline_S2, `L2_TOP0.pipe2.dpath.l2_way_state_cache_type_S2,
             `L2_TOP0.pipe2.dpath.l2_way_state_owner_S2);
    $display("State data: 0x%h", `L2_TOP0.pipe2.dpath.state_data_S2);
    $display("Tag data: 0x%h", `L2_TOP0.pipe2.dpath.tag_data_S2);
    $display("Dir addr: 0x%h", `L2_TOP0.pipe2.dpath.dir_addr_S2);
    $display("Dir data: 0x%h", `L2_TOP0.pipe2.dpath.dir_data_in_S2);
    $display("Dir data mask: 0x%h", `L2_TOP0.pipe2.dpath.dir_data_mask_in_S2);
    $display("Data addr: 0x%h", `L2_TOP0.pipe2.dpath.data_addr_S2);
    $display("Data data: 0x%h", `L2_TOP0.pipe2.dpath.data_data_in_S2);
    $display("Data data mask: 0x%h", `L2_TOP0.pipe2.dpath.data_data_mask_in_S2);
    $display("State data in: 0x%h", `L2_TOP0.pipe2.dpath.state_data_in_S2);
    $display("State data mask: 0x%h", `L2_TOP0.pipe2.dpath.state_data_mask_in_S2);
    $display("src x: %b, src y: %b", `L2_TOP0.pipe2.dpath.src_x_S2_f, `L2_TOP0.pipe2.dpath.src_y_S2_f);

end
if (`L2_TOP0.pipe2.ctrl.valid_S3  && ~`L2_TOP0.pipe2.ctrl.stall_S3)
begin
    $display("TILE0-------------------------------------");
    $display($time);
    `ifndef NO_RTL_CSM
    $display("SMC miss: %b", `L2_TOP0.pipe2.ctrl.smc_miss_S3_f);
    $display("CSM enable: %b", `L2_TOP0.pipe2.ctrl.csm_en);
    `endif
    $display("P2S3 State wr addr: 0x%h", `L2_TOP0.pipe2.dpath.state_wr_addr_S3);
    $display("Mshr wr index: %b", `L2_TOP0.pipe2.dpath.mshr_wr_index_S3);
    $display("MSHR state wr en: %b", `L2_TOP0.pipe2.ctrl.mshr_wr_state_en_S3);
    $display("MSHR inc inv counter en: %b", `L2_TOP0.pipe2.ctrl.mshr_inc_counter_en_S3);
    if (`L2_TOP0.pipe2.ctrl.mshr_inc_counter_en_S3)
    begin
        $display("MSHR inc inv counter: %d", `L2_TOP0.pipe1.dpath.mshr_inv_counter_out_S4);
    end
    $display("State wr en: %b", `L2_TOP0.pipe2.ctrl.state_wr_en_S3);
end


//////////////////////////////////////
// Monitors
//////////////////////////////////////


//the lru bit should be invalid if the line itself is invalid
//if (`L2_TOP0.pipe1.ctrl.valid_S2 && ~`L2_TOP0.pipe1.ctrl.stall_S2)
//begin
//        if((!`L2_TOP0.pipe1.dpath.state_way_S2[0][`L2_STATE_VD]) && `L2_TOP0.pipe1.dpath.l2_lru_bits_S2[0])
//        begin
//            $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 lru bit 0 is valid but the line itself is invalid.)", $time);
//            repeat(5)@(posedge clk);
//            `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 lru bit 0 is valid but the line itself is invalid ");
//        end
//        if((!`L2_TOP0.pipe1.dpath.state_way_S2[1][`L2_STATE_VD]) && `L2_TOP0.pipe1.dpath.l2_lru_bits_S2[1])
//        begin
//            $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 lru bit 1 is valid but the line itself is invalid.)", $time);
//           repeat(5)@(posedge clk);
//            `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 lru bit 1 is valid but the line itself is invalid ");
//        end
//        if((!`L2_TOP0.pipe1.dpath.state_way_S2[2][`L2_STATE_VD]) && `L2_TOP0.pipe1.dpath.l2_lru_bits_S2[2])
//        begin
//           $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 lru bit 2 is valid but the line itself is invalid.)", $time);
//            repeat(5)@(posedge clk);
//            `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 lru bit 2 is valid but the line itself is invalid ");
//        end
//        if((!`L2_TOP0.pipe1.dpath.state_way_S2[3][`L2_STATE_VD]) && `L2_TOP0.pipe1.dpath.l2_lru_bits_S2[3])
//        begin
//            $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 lru bit 3 is valid but the line itself is invalid.)", $time);
//            repeat(5)@(posedge clk);
//            `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 lru bit 3 is valid but the line itself is invalid ");
//        end

//end

//do not evict a non-empty entry if there are empty entries left
if (`L2_TOP0.pipe1.ctrl.valid_S2 && ~`L2_TOP0.pipe1.ctrl.stall_S2)
begin
    if (`L2_TOP0.pipe1.dpath.l2_evict_S2)
    begin
        if(!(`L2_TOP0.pipe1.dpath.state_way_S2[0][`L2_STATE_VD] && `L2_TOP0.pipe1.dpath.state_way_S2[1][`L2_STATE_VD]
        && `L2_TOP0.pipe1.dpath.state_way_S2[2][`L2_STATE_VD] && `L2_TOP0.pipe1.dpath.state_way_S2[3][`L2_STATE_VD])
        && `L2_TOP0.pipe1.dpath.state_way_S2[`L2_TOP0.pipe1.dpath.l2_evict_way_sel_S2][`L2_STATE_VD])
        begin
            $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 evicts a non-empty line %d with other empty line left.)", $time,  `L2_TOP0.pipe1.dpath.l2_evict_way_sel_S2);
            repeat(5)@(posedge clk);
            `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 evicts a wrong line ");
        end
    end
end

// Tri: print out raw messages
if (`L2_TOP0.pipe2.buf_in.valid_in && `L2_TOP0.pipe2.buf_in.ready_in)
begin
    $display($time);
    $display("TILE0 noc3 flit raw: 0x%x", `L2_TOP0.pipe2.buf_in.data_in);
    if ( ^`L2_TOP0.pipe2.buf_in.data_in === 1'bx)
    begin
        $display("%d : Simulation -> FAIL(TILE0 noc3 receives X data 0x%x)", $time,  `L2_TOP0.pipe2.buf_in.data_in);
        repeat(5)@(posedge clk);
        `MONITOR_PATH.fail("l2_mon: TILE0 noc3 receives X data");
    end
end

/*
//check for valid address
if (`L2_TOP0.pipe1.ctrl.valid_S1 && !`L2_TOP0.pipe1.ctrl.stall_S1)
begin
    if (~`L2_TOP0.pipe1.ctrl.csm_en
    &&(`L2_TOP0.pipe1.ctrl.msg_type_trans_S1 != `MSG_TYPE_INTERRUPT)
    &&(`L2_TOP0.pipe1.ctrl.msg_type_trans_S1 != `MSG_TYPE_INTERRUPT_FWD)
    //for csm
    &&(`L2_TOP0.pipe1.ctrl.msg_type_trans_S1 != `MSG_TYPE_NC_LOAD_REQ)
    &&(`L2_TOP0.pipe1.ctrl.msg_type_trans_S1 != `MSG_TYPE_NC_STORE_REQ)
    &&(~`L2_TOP0.pipe1.ctrl.special_addr_type_S1))
    begin
        if (`L2_TOP0.pipe1.ctrl.addr_S1[39:36] == 4'b1010)
        begin
            if (((`L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_HIGH]) % `L15_TOP0.l15_csm.num_homes_s2)
            != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
            begin
                $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe1.ctrl.addr_S1);
                repeat(5)@(posedge clk);
                `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 receive illegal address");
            end
        end
        else
        begin
            case(`L15_TOP0.l15_csm.home_alloc_method)
            `HOME_ALLOC_LOW_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_LOW]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe1.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 receive illegal address");
                end
            end
            `HOME_ALLOC_MIDDLE_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_MIDDLE]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe1.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 receive illegal address");
                end
            end
            `HOME_ALLOC_HIGH_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_HIGH]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe1.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 receive illegal address");
                end
            end
            `HOME_ALLOC_MIXED_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_LOW] ^ `L2_TOP0.pipe1.ctrl.addr_S1[`HOME_ID_ADDR_POS_MIDDLE] ) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe1 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe1.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe1 receive illegal address");
                end
            end
            endcase
        end
    end
end

//check for valid address
if (`L2_TOP0.pipe2.ctrl.valid_S1 && !`L2_TOP0.pipe2.ctrl.stall_S1)
begin
    if (~`L2_TOP0.pipe1.ctrl.csm_en
    &&(`L2_TOP0.pipe2.ctrl.msg_type_S1 != `MSG_TYPE_LOAD_MEM_ACK )
    &&(`L2_TOP0.pipe2.ctrl.msg_type_S1 != `MSG_TYPE_STORE_MEM_ACK )
    &&(`L2_TOP0.pipe2.ctrl.msg_type_S1 != `MSG_TYPE_NC_LOAD_MEM_ACK )
    &&(`L2_TOP0.pipe2.ctrl.msg_type_S1 != `MSG_TYPE_NC_STORE_MEM_ACK ))
    begin
        if (`L2_TOP0.pipe2.ctrl.addr_S1[39:36] == 4'b1010)
        begin
            if (((`L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_HIGH]) % `L15_TOP0.l15_csm.num_homes_s2)
            != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
            begin
                $display("%d : Simulation -> FAIL(TILE0 L2 pipe2 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe2.ctrl.addr_S1);
                repeat(5)@(posedge clk);
                `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe2 receive illegal address");
            end
        end
        else
        begin
            case(`L15_TOP0.l15_csm.home_alloc_method)
            `HOME_ALLOC_LOW_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_LOW]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe2 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe2.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe2 receive illegal address");
                end
            end
            `HOME_ALLOC_MIDDLE_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_MIDDLE]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe2 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe2.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe2 receive illegal address");
                end
            end
            `HOME_ALLOC_HIGH_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_HIGH]) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe2 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe2.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe2 receive illegal address");
                end
            end
            `HOME_ALLOC_MIXED_ORDER_BITS:
            begin
                if (((`L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_LOW] ^ `L2_TOP0.pipe2.ctrl.addr_S1[`HOME_ID_ADDR_POS_MIDDLE] ) % `L15_TOP0.l15_csm.num_homes_s2)
                != (`L2_TOP0.pipe1.dpath.my_nodeid_x_S4 + `L2_TOP0.pipe1.dpath.my_nodeid_y_S4 * `X_TILES))
                begin
                    $display("%d : Simulation -> FAIL(TILE0 L2 pipe2 receive illegal address 0x%x)", $time,  `L2_TOP0.pipe2.ctrl.addr_S1);
                    repeat(5)@(posedge clk);
                    `MONITOR_PATH.fail("l2_mon: TILE0 L2 pipe2 receive illegal address");
                end
            end
            endcase
        end
    end
end
*/

//check x signals
if (`L2_TOP0.pipe2.ctrl.valid_S2 && !`L2_TOP0.pipe2.ctrl.stall_S2)
begin
    if (`L2_TOP0.pipe2.ctrl.msg_type_S2_f == `MSG_TYPE_WB_REQ ||
        `L2_TOP0.pipe2.ctrl.msg_type_S2_f == `MSG_TYPE_LOAD_FWDACK ||
        `L2_TOP0.pipe2.ctrl.msg_type_S2_f == `MSG_TYPE_STORE_FWDACK ||
        `L2_TOP0.pipe2.ctrl.msg_type_S2_f == `MSG_TYPE_INV_FWDACK ||
        `L2_TOP0.pipe2.ctrl.msg_type_S2_f == `MSG_TYPE_LOAD_MEM_ACK)
    begin
        if(`L2_TOP0.pipe2.dpath.l2_way_sel_S2 === 2'bxx)
        begin
            $display("%d : Simulation -> FAIL(%0s)", $time, "Cannot find the pre-allocated entry in L2");
            repeat(5)@(posedge clk);
            `MONITOR_PATH.fail("l2_mon: Cannot find the pre-allocated entry in L2");
        end
    end
end

//inv_fwdack monitor
if (`L2_TOP0.pipe2.ctrl.valid_S1 && !`L2_TOP0.pipe2.ctrl.stall_S1)
begin
    if ((`L2_TOP0.pipe2.ctrl.msg_type_S1 == `MSG_TYPE_INV_FWDACK)
    && (`L2_TOP0.pipe2.ctrl.msg_length_S1))
    begin
        $display("%d : Simulation -> FAIL(%0s)", $time, "inv_fwdack contain data flits");
        repeat(5)@(posedge clk);
        `MONITOR_PATH.fail("l2_mon: inv_fwdack contain data flits");

    end
end


//SMC refill invalid data
`ifndef NO_RTL_CSM
if (`L2_TOP0.pipe2.ctrl.valid_S2 && !`L2_TOP0.pipe2.ctrl.stall_S2)
begin
    if (`L2_TOP0.pipe2.ctrl.smc_wr_en_S2
    && (~(`L2_TOP0.pipe2.dpath.smc_data_in_S2[127] | `L2_TOP0.pipe2.dpath.smc_data_in_S2[95]
         |`L2_TOP0.pipe2.dpath.smc_data_in_S2[63]  | `L2_TOP0.pipe2.dpath.smc_data_in_S2[31])))
    begin
        $display("%d : Simulation -> FAIL(%0s)", $time, "l2_mon: SMC refills invalid data");
        repeat(5)@(posedge clk);
        `MONITOR_PATH.fail("l2_mon: SMC refills invalid data");
    end
end
`endif


end     //disable_l2_mon






end






task print_msg_type;
input [`MSG_TYPE_WIDTH-1:0] msg_type;
begin
    case (msg_type)
        `MSG_TYPE_LOAD_REQ              : $write("    ld_req     ");
        `MSG_TYPE_PREFETCH_REQ          : $write("   pref_req    ");
        `MSG_TYPE_STORE_REQ             : $write("    st_req     ");
        `MSG_TYPE_BLK_STORE_REQ         : $write("  blk_st_req   ");
        `MSG_TYPE_BLKINIT_STORE_REQ     : $write(" blkinit_st_req");
        `MSG_TYPE_CAS_REQ               : $write("    cas_req    ");
        `MSG_TYPE_CAS_P1_REQ            : $write("  cas_p1_req   ");
        `MSG_TYPE_CAS_P2Y_REQ           : $write("  cas_p2y_req  ");
        `MSG_TYPE_CAS_P2N_REQ           : $write("  cas_p2n_req  ");
        `MSG_TYPE_SWAP_REQ              : $write("    swap_req   ");
        `MSG_TYPE_SWAP_P1_REQ           : $write("  swap_p1_req  ");
        `MSG_TYPE_SWAP_P2_REQ           : $write("  swap_p2_req  ");
        `MSG_TYPE_WB_REQ                : $write("     wb_req    ");
        `MSG_TYPE_WBGUARD_REQ           : $write("   wbgrd_req   ");
        `MSG_TYPE_NC_LOAD_REQ           : $write("   nc_ld_req   ");
        `MSG_TYPE_NC_STORE_REQ          : $write("   nc_st_req   ");
        `MSG_TYPE_LOAD_FWD              : $write("     ld_fwd    ");
        `MSG_TYPE_STORE_FWD             : $write("     st_fwd    ");
        `MSG_TYPE_INV_FWD               : $write("    inv_fwd    ");
        `MSG_TYPE_LOAD_MEM              : $write("     ld_mem    ");
        `MSG_TYPE_STORE_MEM             : $write("     st_mem    ");
        `MSG_TYPE_LOAD_FWDACK           : $write("   ld_fwdack   ");
        `MSG_TYPE_STORE_FWDACK          : $write("   st_fwdack   ");
        `MSG_TYPE_INV_FWDACK            : $write("   inv_fwdack  ");
        `MSG_TYPE_LOAD_MEM_ACK          : $write("   ld_mem_ack  ");
        `MSG_TYPE_STORE_MEM_ACK         : $write("   st_mem_ack  ");
        `MSG_TYPE_NC_LOAD_MEM_ACK       : $write(" nc_ld_mem_ack ");
        `MSG_TYPE_NC_STORE_MEM_ACK      : $write(" nc_st_mem_ack ");
        `MSG_TYPE_NODATA_ACK            : $write("   nodata_ack  ");
        `MSG_TYPE_DATA_ACK              : $write("    data_ack   ");
        `MSG_TYPE_INTERRUPT_FWD         : $write("     int_fwd   ");
        `MSG_TYPE_INTERRUPT             : $write("       int     ");
        `MSG_TYPE_L2_LINE_FLUSH_REQ     : $write("   line_flush  ");
        `MSG_TYPE_L2_DIS_FLUSH_REQ      : $write("    dis_flush  ");
        default                         : $write("      undef    ");
    endcase
end
endtask








endmodule
