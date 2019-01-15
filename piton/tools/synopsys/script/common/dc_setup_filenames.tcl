# Modified by Princeton University on April 3, 2016

puts "RM-Info: Running script [info script]\n"

#################################################################################
# Design Compiler Reference Methodology Filenames Setup
# Script: dc_setup_filenames.tcl
# Version: I-2013.12-SP2 (April 7, 2014)
# Copyright (C) 2010-2014 Synopsys, Inc. All rights reserved.
#################################################################################

#################################################################################
# Use this file to customize the filenames used in the Design Compiler
# Reference Methodology scripts.  This file is designed to be sourced at the
# beginning of the dc_setup.tcl file after sourcing the common_setup.tcl file.
#
# Note that the variables presented in this file depend on the type of flow
# selected when generating the reference methodology files.
#
# Example.
#    If you set DFT flow as FALSE, you will not see DFT related filename
#    variables in this file.
#
# When reusing this file for different flows or newer release, ensure that
# all the required filename variables are defined.  One way to do this is
# to source the default dc_setup_filenames.tcl file and then override the
# default settings as needed for your design.
#
# The default values are backwards compatible with older
# Design Compiler Reference Methodology releases.
#
# Note: Care should be taken when modifying the names of output files
#       that are used in other scripts or tools.
#################################################################################

#################################################################################
# General Flow Files
#################################################################################

##########################
# Milkyway Library Names #
##########################

set DCRM_MW_LIBRARY_NAME                                ${DESIGN_NAME}_LIB
set DCRM_FINAL_MW_CEL_NAME                              ${DESIGN_NAME}_DCT

###############
# Input Files #
###############

set DCRM_SDC_INPUT_FILE                                 ${DESIGN_NAME}.sdc
set DCRM_CONSTRAINTS_INPUT_FILE                         script/${DESIGN_NAME}.constraints.tcl

###########
# Reports #
###########

set DCRM_CHECK_LIBRARY_REPORT                           ${DESIGN_NAME}.check_library.rpt

set DCRM_CONSISTENCY_CHECK_ENV_FILE                     ${DESIGN_NAME}.compile_ultra.env
set DCRM_CHECK_DESIGN_REPORT                            ${DESIGN_NAME}.check_design.rpt

set DCRM_FINAL_QOR_REPORT                               ${DESIGN_NAME}.mapped.qor.rpt
set DCRM_FINAL_TIMING_REPORT                            ${DESIGN_NAME}.mapped.timing.rpt
set DCRM_MAX_PATH_TIMING_REPORT                         ${DESIGN_NAME}.mapped.max_paths.rpt
set DCRM_FINAL_TIMING_MAX_DELAY_REPORT                  ${DESIGN_NAME}.mapped.timing.max.rpt
set DCRM_FINAL_TIMING_MIN_DELAY_REPORT                  ${DESIGN_NAME}.mapped.timing.min.rpt
set DCRM_FINAL_TIMING_LOOP_REPORT                       ${DESIGN_NAME}.mapped.timing.loop.rpt
set DCRM_FINAL_AREA_REPORT                              ${DESIGN_NAME}.mapped.area.rpt
set DCRM_FINAL_POWER_REPORT                             ${DESIGN_NAME}.mapped.power.rpt
set DCRM_FINAL_CLOCK_GATING_REPORT                      ${DESIGN_NAME}.mapped.clock_gating.rpt
set DCRM_FINAL_CONSTRAINT_REPORT                        ${DESIGN_NAME}.mapped.constraint.rpt
set DCRM_FINAL_VIOLATIONS_REPORT                        ${DESIGN_NAME}.mapped.violations.rpt
set DCRM_FINAL_SELF_GATING_REPORT                       ${DESIGN_NAME}.mapped.self_gating.rpt
set DCRM_THRESHOLD_VOLTAGE_GROUP_REPORT                 ${DESIGN_NAME}.mapped.threshold.voltage.group.rpt
set DCRM_INSTANTIATE_CLOCK_GATES_REPORT                 ${DESIGN_NAME}.instatiate_clock_gates.rpt

set DCRM_FINAL_INTERFACE_TIMING_REPORT                  ${DESIGN_NAME}.mapped.interface_timing.rpt
set DCRM_FINAL_ILM_INTERFACE_TIMING_REPORT              ${DESIGN_NAME}.mapped.ILM.interface_timing.rpt
set DCRM_FINAL_ILM_CHECK_INTERFACE_TIMING_REPORT        ${DESIGN_NAME}.mapped.ILM.check_interface_timing.rpt

################
# Output Files #
################

set DCRM_AUTOREAD_RTL_SCRIPT                            ${DESIGN_NAME}.autoread_rtl.tcl
set DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE              ${DESIGN_NAME}.elab.ddc
set DCRM_COMPILE_ULTRA_DDC_OUTPUT_FILE                  ${DESIGN_NAME}.compile_ultra.ddc
set DCRM_FINAL_DDC_OUTPUT_FILE                          ${DESIGN_NAME}.mapped.ddc
set DCRM_FINAL_VERILOG_OUTPUT_FILE                      ${DESIGN_NAME}.mapped.v
set DCRM_FINAL_SDC_OUTPUT_FILE                          ${DESIGN_NAME}.mapped.sdc
set DCRM_FINAL_ILM_DDC_OUTPUT_FILE                      ${DESIGN_NAME}.mapped.ILM.ddc

# The following procedures are used to control the naming of the updated blocks
# after transparent interface optimization.
# Modify this procedure if you want to use different names.

proc dcrm_compile_ultra_tio_filename { design } {
  return $design.compile_ultra.tio.ddc
}
proc dcrm_mapped_tio_filename { design } {
  return $design.mapped.tio.ddc
}

#################################################################################
# DCT Flow Files
#################################################################################

###################
# DCT Input Files #
###################

set DCRM_DCT_DEF_INPUT_FILE                             ${DESIGN_NAME}.def
set DCRM_DCT_FLOORPLAN_INPUT_FILE                       ${DESIGN_NAME}.fp
set DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE            ${DESIGN_NAME}.physical_constraints.tcl


###############
# DCT Reports #
###############

set DCRM_DCT_PHYSICAL_CONSTRAINTS_REPORT                ${DESIGN_NAME}.physical_constraints.rpt

set DCRM_DCT_FINAL_CONGESTION_REPORT                    ${DESIGN_NAME}.mapped.congestion.rpt
set DCRM_DCT_FINAL_CONGESTION_MAP_OUTPUT_FILE           ${DESIGN_NAME}.mapped.congestion_map.png
set DCRM_DCT_FINAL_CONGESTION_MAP_WINDOW_OUTPUT_FILE    ${DESIGN_NAME}.mapped.congestion_map_window.png

set DCRM_DCT_FINAL_QOR_SNAPSHOT_FOLDER                  ${DESIGN_NAME}.qor_snapshot
set DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT                  ${DESIGN_NAME}.qor_snapshot.rpt

####################
# DCT Output Files #
####################

set DCRM_DCT_FLOORPLAN_OUTPUT_FILE                      ${DESIGN_NAME}.initial.fp

set DCRM_DCT_FINAL_FLOORPLAN_OUTPUT_FILE                ${DESIGN_NAME}.mapped.fp
set DCRM_DCT_FINAL_SPEF_OUTPUT_FILE                     ${DESIGN_NAME}.mapped.spef
set DCRM_DCT_FINAL_SDF_OUTPUT_FILE                      ${DESIGN_NAME}.mapped.sdf

# Uncomment the DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE variable setting to save the
# standard cell placement for physical guidance flow when ASCII hand-off to IC Compiler 
# is used.  

# set DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE                  ${DESIGN_NAME}.mapped.std_cell.def

#################################################################################
# Formality Flow Files
#################################################################################

set DCRM_SVF_OUTPUT_FILE                                ${DESIGN_NAME}.mapped.svf

puts "RM-Info: Completed script [info script]\n"
