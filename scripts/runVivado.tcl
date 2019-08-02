##############################################################################
#  Copyright (c) 2018 by Paul Scherrer Institute, Switzerland
#  All rights reserved.
#  Authors: Oliver Bruendler
##############################################################################

#Load dependencies
source -quiet ../TCL/PsiSim/PsiSim.tcl

#Import psi::sim library
namespace import psi::sim::*

#Initialize Simulation
init -vivado

#Configure
set myPath [pwd]

cd $myPath/../VHDL/psi_common/sim
source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VHDL/psi_fix/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VHDL/psi_multi_stream_daq/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VivadoIp/vivadoIP_axis_data_gen/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VivadoIp/vivadoIP_clock_measure/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VivadoIp/vivadoIP_data_rec/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VivadoIp/vivadoIP_mem_test/sim
#source -quiet config.tcl

#TB not Vivado compatible!
#cd $myPath/../VivadoIp/vivadoIP_spi_simple/sim
#source -quiet config.tcl

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