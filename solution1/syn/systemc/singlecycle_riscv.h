// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _singlecycle_riscv_HH_
#define _singlecycle_riscv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "singlecycle_riscvcud.h"
#include "singlecycle_riscvbkb.h"

namespace ap_rtl {

struct singlecycle_riscv : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > startingInst_V;
    sc_in< sc_logic > startingInst_V_ap_vld;
    sc_out< sc_logic > startingInst_V_ap_ack;
    sc_in< sc_lv<6> > immediate_V;
    sc_in< sc_logic > immediate_V_ap_vld;
    sc_out< sc_logic > immediate_V_ap_ack;
    sc_signal< sc_lv<7> > ap_var_for_const0;
    sc_signal< sc_lv<7> > ap_var_for_const1;
    sc_signal< sc_lv<7> > ap_var_for_const2;


    // Module declarations
    singlecycle_riscv(sc_module_name name);
    SC_HAS_PROCESS(singlecycle_riscv);

    ~singlecycle_riscv();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    singlecycle_riscvbkb* instSet_entryIndex_V_U;
    singlecycle_riscvcud<1,1,7,7,7,7,2,7>* singlecycle_riscvcud_U1;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > pProgramCounter_name_1;
    sc_signal< sc_lv<6> > pProgramCounter_form_1;
    sc_signal< sc_lv<7> > pProgramCounter_entr_1;
    sc_signal< sc_lv<4> > instSet_entryIndex_V_address0;
    sc_signal< sc_logic > instSet_entryIndex_V_ce0;
    sc_signal< sc_lv<3> > instSet_entryIndex_V_q0;
    sc_signal< sc_lv<4> > i_1_fu_105_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond_fu_99_p2;
    sc_signal< sc_lv<4> > i_reg_80;
    sc_signal< sc_lv<64> > gepindex220_cast_fu_189_p1;
    sc_signal< sc_lv<5> > mem_index_gep_fu_115_p2;
    sc_signal< sc_lv<6> > mem_index_gep2_fu_121_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > mem_index_gep4_fu_127_p2;
    sc_signal< sc_lv<8> > adjSize14_cast_fu_151_p1;
    sc_signal< sc_lv<1> > addrCmp2_fu_155_p2;
    sc_signal< sc_lv<8> > gepindex1_fu_167_p2;
    sc_signal< sc_lv<1> > addrCmp3_fu_161_p2;
    sc_signal< sc_lv<8> > gepindex2_fu_173_p3;
    sc_signal< sc_lv<8> > gepindex3_fu_181_p3;
    sc_signal< sc_lv<2> > merge_i_i_fu_246_p5;
    sc_signal< sc_lv<7> > merge_i_i_fu_246_p6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_1D;
    static const sc_lv<7> ap_const_lv7_2D;
    static const sc_lv<8> ap_const_lv8_E2;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<7> ap_const_lv7_34;
    static const sc_lv<7> ap_const_lv7_3;
    static const sc_lv<7> ap_const_lv7_67;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_addrCmp2_fu_155_p2();
    void thread_addrCmp3_fu_161_p2();
    void thread_adjSize14_cast_fu_151_p1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond_fu_99_p2();
    void thread_gepindex1_fu_167_p2();
    void thread_gepindex220_cast_fu_189_p1();
    void thread_gepindex2_fu_173_p3();
    void thread_gepindex3_fu_181_p3();
    void thread_i_1_fu_105_p2();
    void thread_immediate_V_ap_ack();
    void thread_instSet_entryIndex_V_address0();
    void thread_instSet_entryIndex_V_ce0();
    void thread_mem_index_gep2_fu_121_p2();
    void thread_mem_index_gep4_fu_127_p2();
    void thread_mem_index_gep_fu_115_p2();
    void thread_merge_i_i_fu_246_p5();
    void thread_startingInst_V_ap_ack();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
