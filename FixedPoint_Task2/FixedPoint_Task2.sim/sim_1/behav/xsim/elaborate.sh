#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Nov 24 18:12:27 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 35058e680b2940c28563383dc431e18e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot TB_Fixed_point_behav xil_defaultlib.TB_Fixed_point xil_defaultlib.glbl -log elaborate.log"
xelab -wto 35058e680b2940c28563383dc431e18e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot TB_Fixed_point_behav xil_defaultlib.TB_Fixed_point xil_defaultlib.glbl -log elaborate.log
