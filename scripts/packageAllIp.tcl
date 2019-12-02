##############################################################################
#  Copyright (c) 2019 by Paul Scherrer Institute, Switzerland
#  All rights reserved.
#  Authors: Oliver Bruendler
##############################################################################

#Setup
set myPath [pwd]

#Package
cd $myPath/../VivadoIp/vivadoIP_axis_data_gen/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_clock_measure/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_data_rec/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_mem_test/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_psi_ms_daq/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_spi_simple/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_i2c_devreg/scripts
source package.tcl

cd $myPath/../VivadoIp/vivadoIP_power_sink/scripts
source package.tcl

#Go back to initial directory
cd $myPath

