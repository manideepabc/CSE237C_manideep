############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project baseline
set_top fir
add_files fir.cpp
add_files fir.h
add_files -tb fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution_baseline" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./baseline/solution_baseline/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
