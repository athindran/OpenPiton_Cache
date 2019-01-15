# Modified by Princeton University on April 3, 2016

# Common setup
source -echo ${DV_ROOT}/tools/synopsys/script/common/common_setup.tcl


puts "RM-Info: Running script [info script]\n"
### Start of PrimeTime Runtime Variables ###

##########################################################################################
# PrimeTime Variables PrimeTime Reference Methodology script
# Script: pt_setup.tcl
# Version: I-2013.12 (January 13, 2014)
# Copyright (C) 2008-2014 Synopsys All rights reserved.
##########################################################################################

######################################
# Library and Design Setup
######################################

### Mode : Generic

set report_default_significant_digits 3 ;
set sh_source_uses_search_path true ;

# Provide list of Verilog netlist files. It can be compressed --- example "A.v B.v C.v"
set DC_NETLIST_FILES               "${RESULTS_DIR}/${DESIGN_NAME}.mapped.v"
set ICC_NETLIST_FILES              "${RESULTS_DIR}/${DESIGN_NAME}.output.pt.v"


######################################
# Setting Number of Hosts and Licenses
######################################

######################################
# Back Annotation File Section
######################################
# PARASITIC Files --- example "top.sbpf A.sbpf" 
# The path (instance name) and name of the parasitic file --- example "top.spef A.spef" 
# Each PARASITIC_PATH entry corresponds to the related PARASITIC_FILE for the specific block"   
# For a single toplevel PARASITIC file please use the toplevel design name in PARASITIC_PATHS variable."   
set DC_PARASITIC_PATHS	 "${DESIGN_NAME}" 
set DC_PARASITIC_FILES	 "${RESULTS_DIR}/${DESIGN_NAME}.mapped.spef"
set ICC_PARASITIC_PATHS "${DESIGN_NAME}" ; # ${DESIGN_NAME}"
set ICC_PARASITIC_MAX_FILES "${RESULTS_DIR}/${DESIGN_NAME}.output.sbpf.max"
set ICC_PARASITIC_MIN_FILES "${RESULTS_DIR}/${DESIGN_NAME}.output.sbpf.min"

######################################
# Constraint Section Setup
######################################
set DC_CONSTRAINT_FILES  "${RESULTS_DIR}/${DESIGN_NAME}.mapped.sdc"  
set ICC_CONSTRAINT_FILES "${RESULTS_DIR}/${DESIGN_NAME}.output.sdc"

##################################################################
# Determine if we are using output of DC or ICC                  #
##################################################################

set input_from "NONE"
if {[files_exist -files $ICC_NETLIST_FILES] && \
    [files_exist -files $ICC_PARASITIC_MAX_FILES] && \
    [files_exist -files $ICC_PARASITIC_MIN_FILES] && \
    [files_exist -files $ICC_CONSTRAINT_FILES] } {
    set input_from "ICC"
} elseif { [files_exist -files $DC_NETLIST_FILES] && \
           [files_exist -files $DC_PARASITIC_FILES] && \
           [files_exist -files $DC_CONSTRAINT_FILES] } {
    set input_from "DC"
} else {
    puts "RM-Error: Input from neither ICC nor DC is available"
    exit
}
puts "RM-Info: Using outputs from $input_from"

######################################
# Report Directory
######################################

if {$input_from == "ICC"} {
    set REPORTS_DIR "reports/pt_shell_icc"
} else {
    set REPORTS_DIR "reports/pt_shell_dc"
}
if {![file exists ${REPORTS_DIR}]} {
    file mkdir $REPORTS_DIR
}

######################################
# Fix ECO DRC Setup
######################################
# specify a list of allowable buffers to use for fixing DRC
# Example: set eco_drc_buf_list "BUF4 BUF8 BUF12"
set eco_drc_buf_list "$PT_ECO_DRC_BUF_LIST"

######################################
# Fix ECO Timing Setup
######################################
# Specify a list of allowable buffers to use for fixing hold
# Example: set eco_hold_buf_list "DELBUF1 DELBUF2 DELBUF4"
set eco_hold_buf_list $eco_drc_buf_list

######################################
# End
######################################

### End of PrimeTime Runtime Variables ###
puts "RM-Info: Completed script [info script]\n"
