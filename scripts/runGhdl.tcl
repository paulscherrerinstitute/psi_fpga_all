##############################################################################
#  Copyright (c) 2018 by Paul Scherrer Institute, Switzerland
#  All rights reserved.
#  Authors: Oliver Bruendler
##############################################################################

#Load dependencies
source ../TCL/PsiSim/PsiSim.tcl
namespace import psi::sim::*

#Initialize Simulation
init -ghdl

#Configure
set myPath [pwd]

cd $myPath/../VHDL/psi_common/sim
source config.tcl

cd $myPath/../VHDL/psi_fix/sim
source config.tcl

#TB not GHDL compatible!
#cd $myPath/../VHDL/psi_multi_stream_daq/sim
#source config.tcl

cd $myPath/../VivadoIp/vivadoIP_axis_data_gen/sim
source config.tcl

#TB not GHDL compatible! (because of GHDL bug)
#cd $myPath/../VivadoIp/vivadoIP_clock_measure/sim
#source config.tcl

#TB not GHDL compatible!
#cd $myPath/../VivadoIp/vivadoIP_data_rec/sim
#source config.tcl

cd $myPath/../VivadoIp/vivadoIP_mem_test/sim
source config.tcl

cd $myPath/../VivadoIp/vivadoIP_spi_simple/sim
source config.tcl

cd $myPath

#Run Simulation
puts "------------------------------"
puts "-- Compile"
puts "------------------------------"
compile_files -all -clean
puts "------------------------------"
puts "-- Run"
puts "------------------------------"
run_tb -all
puts "------------------------------"
puts "-- Check"
puts "------------------------------"

run_check_errors "###ERROR###"