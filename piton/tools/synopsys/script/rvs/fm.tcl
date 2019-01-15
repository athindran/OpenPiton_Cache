# Modified by Princeton University on April 3, 2016

set DV_ROOT $::env(DV_ROOT)                                                                                      
source -echo ${DV_ROOT}/tools/synopsys/script/common/fm_setup.tcl

#################################################################################
# Formality Verification Script for
# Design Compiler Block-Level Reference Methodology Script for Hierarchical Flow
# Script: fm.tcl
# Version: I-2013.12-SP2 (April 7, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
#################################################################################
# Parts of this script taken from IC compiler reference, DC compiler reference (both hierarchical and flat)

#################################################################################
# Synopsys Auto Setup Mode
#################################################################################

# set_app_var synopsys_auto_setup true

# Note: The Synopsys Auto Setup mode is less conservative than the Formality default 
# mode, and is more likely to result in a successful verification out-of-the-box.
#
# Using the Setting this variable will change the default values of the variables 
# listed here below. You may change any of these variables back to their default 
# settings to be more conservative. Uncomment the appropriate lines below to revert 
# back to their default settings:

    # set_app_var hdlin_ignore_parallel_case true
    # set_app_var hdlin_ignore_full_case true
    # set_app_var verification_verify_directly_undriven_output true
    # set_app_var hdlin_ignore_embedded_configuration false
    # set_app_var svf_ignore_unqualified_fsm_information true
    # set_app_var signature_analysis_allow_subset_match true

# Other variables with changed default values are described in the next few sections.

#################################################################################
# Setup for handling undriven signals in the design
#################################################################################

# The Synopsys Auto Setup mode sets undriven signals in the reference design to
# "0" or "BINARY" (as done by DC), and the undriven signals in the impl design are
# forced to "BINARY".  This is done with the following setting:

if {$INPUT_FROM == "DC"} {
    set_app_var verification_set_undriven_signals synthesis
} else {
    # Uncomment the next line to revert back to the more conservative default setting:
    set_app_var verification_set_undriven_signals BINARY:X
}

#################################################################################
# Setup for simulation/synthesis mismatch messaging
#################################################################################

# The Synopsys Auto Setup mode will produce warning messages, not error messages,
# when Formality encounters potential differences between simulation and synthesis.
# Uncomment the next line to revert back to the more conservative default setting:

    # set_app_var hdlin_error_on_mismatch_message true

#################################################################################
# Setup for Clock-gating
#################################################################################

# The Synopsys Auto Setup mode, along with the SVF file, will appropriately set 
# the clock-gating variable. Otherwise, the user will need to notify Formality 
# of clock-gating by uncommenting the next line:

set_app_var verification_clock_gate_hold_mode any

#################################################################################
# Setup for instantiated DesignWare or function-inferred DesignWare components
#################################################################################

# The Synopsys Auto Setup mode, along with the SVF file, will automatically set 
# the hdlin_dwroot variable to the top-level of the Design Compiler tree used for 
# synthesis.  Otherwise, the user will need to set this variable if the design 
# contains instantiated DW or function-inferred DW.

    # set_app_var hdlin_dwroot "" ;# Enter the pathname to the top-level of the DC tree

#################################################################################
# Setup for handling missing design modules
#################################################################################

# If the design has missing blocks or missing components in both the reference and 
# implementation designs, uncomment the following variable so that Formality can 
# complete linking each design:

    # set_app_var hdlin_unresolved_modules black_box

#################################################################################
# Read in the SVF file(s)
#################################################################################

# Set this variable to point to individual SVF file(s) or to a directory containing SVF files.

set_svf ${FMRM_SVF_FILES}

#################################################################################
# Read in the libraries
#################################################################################

foreach tech_lib [lsort -unique $target_library] {
  read_db -technology_library $tech_lib
}

#################################################################################
# Read in the Reference Design
#################################################################################

if {$INPUT_FROM == "DC"} {
    read_verilog -r $DC_REFERENCE_DESIGN_SOURCES -work_library WORK
} else {
    if {$ICC_INIT_DESIGN_INPUT == "VERILOG"} {
        read_verilog -r $ICC_REFERENCE_DESIGN_SOURCES
    } elseif {$ICC_INIT_DESIGN_INPUT == "DDC"} {
        read_ddc -r $ICC_REFERENCE_DESIGN_SOURCES
    } elseif {$ICC_INIT_DESIGN_INPUT == "MW"} {
        # Note: Milkyway design format is not supported with UPF flow in Formality
        # The -no_pg option should be used for MW designs from DC to prevent automatic 
        # linking to power aware versions of the cells.
        read_milkyway -r -no_pg -libname WORK -cell_name $ICC_INPUT_CEL $ICC_REFERENCE_DESIGN_SOURCES
    }
}

set_top r:/WORK/${DESIGN_NAME}

#################################################################################
# Read in the Implementation Design
#################################################################################

if {$INPUT_FROM == "DC"} {
    if {$ICC_INIT_DESIGN_INPUT == "VERILOG"} {
        read_verilog -i $DC_IMPLEMENTED_DESIGN_SOURCES
    } elseif {$ICC_INIT_DESIGN_INPUT == "DDC"} {
        read_ddc -i $DC_IMPLEMENTED_DESIGN_SOURCES
    } elseif {$ICC_INIT_DESIGN_INPUT == "MW"} {
        # The -no_pg option should be used for MW designs from DC to prevent automatic 
        # linking to power aware versions of the cells.
        read_milkyway -i -no_pg -libname WORK -cell_name $DCRM_FINAL_MW_CEL_NAME $DC_IMPLEMENTED_DESIGN_SOURCES
    } 
} else {
    read_verilog -i $ICC_IMPLEMENTED_DESIGN_SOURCES
}

set_top i:/WORK/${DESIGN_NAME}

#################################################################################
# Black-Box the hierarchical designs for a top-only verification
#################################################################################

# Doing full verification at every level to be conservative
#if {${HIERARCHICAL}} {
#    foreach design ${HIERARCHICAL_DESIGNS} {
#        set_black_box r:/WORK/${design}
#        set_black_box i:/WORK/${design}
#    }
#}

#################################################################################
# Setup for scan re-ordering
#
# If IC Compiler has performed scan re-ordering, the user will need to manually
# set constants on the scan enable and test mode signals to disable scan path
# verification.
# 
# Example command format:
#
#   set_constant -type port r:/WORK/${DESIGN_NAME}/<port_name> <constant_value> 
#   set_constant -type port i:/WORK/${DESIGN_NAME}/<port_name> <constant_value> 
#
#
# Also, the user will need to manually perform set_dont_verify on dedicated scanout
# ports to avoid verification failures on those ports.
#
# Example command format:
#
#   set_dont_verify_point -type port r:/WORK/${DESIGN_NAME}/<port_name>
#   ...
#
#################################################################################

#################################################################################
# Report design statistics, design read warning messages, and user specified setup
#################################################################################

# report_setup_status will create a report showing all design statistics,
# design read warning messages, and all user specified setup.  This will allow
# the user to check all setup before proceeding to run the more time consuming
# commands "match" and "verify".

report_setup_status

#################################################################################
# Match compare points and report unmatched points 
#################################################################################

match

report_unmatched_points > ${REPORTS_DIR}/${FMRM_UNMATCHED_POINTS_REPORT}

#################################################################################
# Verify and Report
#
# If the verification is not successful, the session will be saved and reports
# will be generated to help debug the failed or inconclusive verification.
#################################################################################

if { ![verify] }  {  
  save_session -replace ${REPORTS_DIR}/${FMRM_FAILING_SESSION_NAME}
  report_failing_points > ${REPORTS_DIR}/${FMRM_FAILING_POINTS_REPORT}
  report_aborted > ${REPORTS_DIR}/${FMRM_ABORTED_POINTS_REPORT}
  # Use analyze_points to help determine the next step in resolving verification
  # issues. It runs heuristic analysis to determine if there are potential causes
  # other than logical differences for failing or hard verification points. 
  analyze_points -all > ${REPORTS_DIR}/${FMRM_ANALYZE_POINTS_REPORT}
  set fm_status "FAIL"
} else {
  set fm_status "PASS"
}

# Write out status
set status_fp [open ${REPORTS_DIR}/${FMRM_MATCH_STATUS_REPORT} "w"]
puts -nonewline $status_fp $fm_status
close $status_fp

exit
