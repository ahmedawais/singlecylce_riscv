############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project singlecylce_riscv
set_top singlecycle_riscv
add_files singlecylce_riscv/ins_memory.cpp
add_files singlecylce_riscv/data_memory.cpp
add_files singlecylce_riscv/GReg.cpp
add_files singlecylce_riscv/ALU.cpp
add_files -tb singlecycle_risv.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./singlecylce_riscv/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog
