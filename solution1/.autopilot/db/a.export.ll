; ModuleID = 'C:/Users/Awais/singlecylce_riscv/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@uncond_jump_rd_V = constant [2 x i5] zeroinitializer
@uncond_jump_opcode_V = constant [2 x i7] [i7 55, i7 -17]
@uncond_jump_immed_V = constant [2 x i20] zeroinitializer
@store_rs2_V = constant [1 x i5] zeroinitializer
@store_rs1_V = constant [1 x i5] zeroinitializer
@store_opcode_V_0 = constant i7 35
@store_immed2_V = constant [1 x i7] zeroinitializer
@store_immed_V = constant [1 x i5] zeroinitializer
@store_funct3_V = constant [1 x i3] [i3 2]
@singlecycle_riscv_st = internal unnamed_addr constant [18 x i8] c"singlecycle_riscv\00"
@pProgramCounter_name_1 = internal global i5 0
@pProgramCounter_name = global i4* getelementptr inbounds ([15 x i4]* @instSet_name, i64 0, i64 0)
@pProgramCounter_form_1 = internal global i6 15
@pProgramCounter_form = global i8* getelementptr inbounds ([15 x i8]* @instSet_format_Sel, i64 0, i64 0)
@pProgramCounter_entr_1 = internal global i7 30
@pProgramCounter_entr = global i5* getelementptr inbounds ([15 x i5]* @instSet_entryIndex_V_1, i64 0, i64 0)
@load_rs1_V = constant [3 x i5] zeroinitializer
@load_rd_V = constant [3 x i5] zeroinitializer
@load_opcode_V_2 = constant i7 -25
@load_opcode_V_1 = constant i7 3
@load_opcode_V_0 = constant i7 52
@load_opcode_V = constant [3 x i7] [i7 52, i7 3, i7 -25]
@load_immediate_V = constant [3 x i12] zeroinitializer
@load_funct3_V = constant [3 x i3] [i3 0, i3 2, i3 0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@instSet_name = constant [15 x i4] [i4 0, i4 1, i4 2, i4 3, i4 4, i4 5, i4 6, i4 7, i4 -8, i4 -7, i4 -6, i4 -5, i4 -4, i4 -3, i4 -2]
@instSet_format_Sel = constant [15 x i8] c"\00\01\00\00\01\02\04\04\01\00\00\03\03\00\00"
@instSet_entryIndex_V_1 = constant [15 x i5] [i5 0, i5 0, i5 1, i5 2, i5 1, i5 0, i5 0, i5 1, i5 2, i5 3, i5 4, i5 0, i5 1, i5 5, i5 6]
@instSet_entryIndex_V = constant [15 x i3] [i3 0, i3 0, i3 1, i3 2, i3 1, i3 0, i3 0, i3 1, i3 2, i3 3, i3 -4, i3 0, i3 1, i3 -3, i3 -2]
@branch_rs2_V = constant [2 x i5] zeroinitializer
@branch_rs1_V = constant [2 x i5] zeroinitializer
@branch_opcode_V_1 = constant i7 -24
@branch_opcode_V_0 = constant i7 -24
@branch_opcode_V = constant [2 x i7] [i7 -24, i7 -24]
@branch_immed2_V = constant [2 x i7] zeroinitializer
@branch_immed_V = constant [2 x i5] zeroinitializer
@branch_funct3_V = constant [2 x i3] [i3 0, i3 1]
@arithematic_rs2_V = constant [7 x i5] zeroinitializer
@arithematic_rs1_V = constant [7 x i5] zeroinitializer
@arithematic_rd_V = constant [7 x i5] zeroinitializer
@arithematic_opcode_V = constant [7 x i7] [i7 51, i7 53, i7 54, i7 56, i7 57, i7 -23, i7 -22]
@arithematic_funt7_V = constant [7 x i7] zeroinitializer
@arithematic_funct3_V = constant [7 x i3] [i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 1, i3 -3]
@GReg_V = global [31 x i32] zeroinitializer
@DataReg_V = constant [32 x i5] zeroinitializer
@p_str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1

define void @singlecycle_riscv(i32 %startingInst_V, i6 %immediate_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %startingInst_V), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap(i6 %immediate_V), !map !149
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @singlecycle_riscv_st) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i6 %immediate_V, [6 x i8]* @p_str13, i32 0, i32 0, [1 x i8]* @p_str14, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %startingInst_V, [6 x i8]* @p_str13, i32 0, i32 0, [1 x i8]* @p_str14, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %_ifconv ]
  %exitcond = icmp eq i4 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15, i64 15, i64 15)
  %i_1 = add i4 %i, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %pProgramCounter_name = load i5* @pProgramCounter_name_1, align 1
  %pProgramCounter_form = load i6* @pProgramCounter_form_1, align 1
  %pProgramCounter_entr = load i7* @pProgramCounter_entr_1, align 1
  %mem_index_gep = add i5 %pProgramCounter_name, 1
  %mem_index_gep2 = add i6 %pProgramCounter_form, 1
  %mem_index_gep4 = add i7 %pProgramCounter_entr, 1
  store i5 %mem_index_gep, i5* @pProgramCounter_name_1, align 1
  store i6 %mem_index_gep2, i6* @pProgramCounter_form_1, align 1
  store i7 %mem_index_gep4, i7* @pProgramCounter_entr_1, align 1
  br label %1

; <label>:2                                       ; preds = %1
  %pProgramCounter_form_2 = load i6* @pProgramCounter_form_1, align 1
  %adjSize11_cast = zext i6 %pProgramCounter_form_2 to i7
  %pProgramCounter_entr_2 = load i7* @pProgramCounter_entr_1, align 1
  %adjSize14_cast = zext i7 %pProgramCounter_entr_2 to i8
  %addrCmp = icmp ugt i6 %pProgramCounter_form_2, 14
  %addrCmp1 = icmp ult i6 %pProgramCounter_form_2, 30
  %gepindex = add i7 -15, %adjSize11_cast
  %gepindex_cast = sext i7 %gepindex to i9
  %addrCmp2 = icmp ugt i7 %pProgramCounter_entr_2, 29
  %addrCmp3 = icmp ult i7 %pProgramCounter_entr_2, 45
  %gepindex1 = add i8 -30, %adjSize14_cast
  %gepindex2 = select i1 %addrCmp2, i8 %gepindex1, i8 14
  %gepindex3 = select i1 %addrCmp3, i8 %gepindex2, i8 14
  %gepindex220_cast = sext i8 %gepindex3 to i64
  %instSet_entryIndex_V = getelementptr [15 x i3]* @instSet_entryIndex_V, i64 0, i64 %gepindex220_cast
  %instSet_entryIndex_V_2 = load i3* %instSet_entryIndex_V, align 1
  %p_op = lshr i9 -238, %gepindex_cast
  %tmp = trunc i9 %p_op to i1
  %cond_i1 = and i1 %addrCmp, %tmp
  %cond_i = and i1 %addrCmp1, %cond_i1
  br i1 %cond_i, label %3, label %ALU.exit

; <label>:3                                       ; preds = %2
  %tmp_1 = trunc i3 %instSet_entryIndex_V_2 to i2
  %merge_i_i = call i7 @_ssdm_op_Mux.ap_auto.4i7.i2(i7 52, i7 3, i7 -25, i7 -25, i2 %tmp_1)
  br label %ALU.exit

ALU.exit:                                         ; preds = %2, %3
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i7 @_ssdm_op_Mux.ap_auto.4i7.i2(i7, i7, i7, i7, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i7 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i7 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

declare void @_ssdm_SpecMemSelectRead(...)

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !17, !17, !17, !17, !23, !23, !17, !17, !26, !26, !28, !26, !26, !17, !17, !30, !34, !34, !17, !36, !17, !17, !39, !39, !41, !17, !42, !42, !17, !17, !44, !44, !46, !44, !44, !17, !17, !44, !44, !44, !44, !17, !17, !48, !48, !48, !48, !48, !48, !17, !44, !44, !44, !44, !17, !17, !52, !55, !44, !44, !17, !17, !44, !44, !17, !17, !44, !44, !17, !17, !61, !61, !17, !17, !23, !23, !46, !44, !44, !17, !17, !62, !68, !68, !69, !17, !17, !17, !17, !69, !17, !34, !34, !17, !71, !17, !17, !17, !26, !26, !73, !73, !75, !26, !26, !17, !77, !17, !79, !79, !68, !68, !83, !26, !26, !83, !85, !17, !88, !17, !17, !17, !90, !90, !92, !92, !93, !93, !83, !17, !17, !17, !26, !26, !83, !95, !39, !39, !92, !92, !46, !83, !17}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!97, !104, !109, !114, !119, !126, !131, !136}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<32>", metadata !"ap_int<6>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"volatile", metadata !"volatile"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"startingInst", metadata !"immediate"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"struct Instruction*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"pProgramCounter"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<7> &"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space"}
!19 = metadata !{metadata !"kernel_arg_access_qual"}
!20 = metadata !{metadata !"kernel_arg_type"}
!21 = metadata !{metadata !"kernel_arg_type_qual"}
!22 = metadata !{metadata !"kernel_arg_name"}
!23 = metadata !{null, metadata !14, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<5> &"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!26 = metadata !{null, metadata !14, metadata !9, metadata !27, metadata !11, metadata !25, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!28 = metadata !{null, metadata !14, metadata !9, metadata !29, metadata !11, metadata !16, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<6> &"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !31, metadata !32, metadata !33, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!34 = metadata !{null, metadata !14, metadata !9, metadata !35, metadata !11, metadata !25, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !32, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"const ap_int_base<32, true> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!39 = metadata !{null, metadata !14, metadata !9, metadata !40, metadata !11, metadata !25, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &"}
!41 = metadata !{null, metadata !14, metadata !9, metadata !24, metadata !11, metadata !16, metadata !6}
!42 = metadata !{null, metadata !14, metadata !9, metadata !43, metadata !11, metadata !25, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile ap_int<6> &"}
!44 = metadata !{null, metadata !14, metadata !9, metadata !35, metadata !11, metadata !45, metadata !6}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!46 = metadata !{null, metadata !14, metadata !9, metadata !47, metadata !11, metadata !16, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !50, metadata !51, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!52 = metadata !{null, metadata !14, metadata !9, metadata !53, metadata !11, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"GRegister_Values"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"Add"}
!55 = metadata !{null, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !6}
!56 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!57 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<5>", metadata !"ap_int<5>", metadata !"ap_int<6>"}
!59 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"rS1", metadata !"rS2", metadata !"rDorImmed"}
!61 = metadata !{null, metadata !14, metadata !9, metadata !29, metadata !11, metadata !25, metadata !6}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<32>", metadata !"ap_int<32>", metadata !"ap_int<12>", metadata !"ap_int<5>", metadata !"ap_int<20>", metadata !"ap_int<32>*", metadata !"struct Instruction*"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"rS1", metadata !"rS2", metadata !"immed", metadata !"immed2", metadata !"immed3", metadata !"rD", metadata !"branchjump"}
!68 = metadata !{null, metadata !14, metadata !9, metadata !27, metadata !11, metadata !16, metadata !6}
!69 = metadata !{null, metadata !14, metadata !9, metadata !70, metadata !11, metadata !16, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !72, metadata !32, metadata !38, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !14, metadata !9, metadata !74, metadata !11, metadata !25, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!75 = metadata !{null, metadata !14, metadata !9, metadata !76, metadata !11, metadata !16, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!77 = metadata !{null, metadata !14, metadata !9, metadata !35, metadata !11, metadata !78, metadata !6}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!79 = metadata !{null, metadata !80, metadata !2, metadata !81, metadata !32, metadata !82, metadata !6}
!80 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !32, metadata !38, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!85 = metadata !{null, metadata !80, metadata !2, metadata !86, metadata !32, metadata !87, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"struct Instruction*", metadata !"const ap_int_base<20, true> &"}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !32, metadata !38, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<5, true> &"}
!90 = metadata !{null, metadata !14, metadata !9, metadata !91, metadata !11, metadata !25, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, true> &"}
!92 = metadata !{null, metadata !14, metadata !9, metadata !76, metadata !11, metadata !25, metadata !6}
!93 = metadata !{null, metadata !14, metadata !9, metadata !94, metadata !11, metadata !25, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !32, metadata !38, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<12, true> &"}
!97 = metadata !{metadata !98, i4** @pProgramCounter_name}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 3, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"pProgramCounter.name", metadata !102, metadata !"enum InstName", i32 0, i32 3}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 0, i32 1}
!104 = metadata !{metadata !105, i8** @pProgramCounter_form}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 7, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"pProgramCounter.format_Sel", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!109 = metadata !{metadata !110, i5** @pProgramCounter_entr}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 4, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"pProgramCounter.entryIndex.V", metadata !102, metadata !"int5", i32 0, i32 4}
!114 = metadata !{metadata !115, [1 x i32]* @llvm_global_ctors_0}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"llvm.global_ctors.0", metadata !102, metadata !"", i32 0, i32 31}
!119 = metadata !{metadata !120, [15 x i4]* @instSet_name}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 3, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"instSet.name", metadata !124, metadata !"enum InstName", i32 0, i32 3}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 14, i32 1}
!126 = metadata !{metadata !127, [15 x i8]* @instSet_format_Sel}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 7, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"instSet.format_Sel", metadata !124, metadata !"unsigned char", i32 0, i32 7}
!131 = metadata !{metadata !132, [15 x i5]* @instSet_entryIndex_V_1}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 4, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"instSet.entryIndex.V", metadata !124, metadata !"int5", i32 0, i32 4}
!136 = metadata !{metadata !137, [31 x i32]* @GReg_V}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 31, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"GReg.V", metadata !141, metadata !"int32", i32 0, i32 31}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 30, i32 1}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 31, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"startingInst.V", metadata !147, metadata !"int32", i32 0, i32 31}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 0, i32 0}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 0, i32 5, metadata !151}
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !"immediate.V", metadata !147, metadata !"int6", i32 0, i32 5}
