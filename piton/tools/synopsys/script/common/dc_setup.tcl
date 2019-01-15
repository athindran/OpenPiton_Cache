# Modified by Princeton University on April 3, 2016

# Common setup
source -echo ${DV_ROOT}/tools/synopsys/script/common/common_setup.tcl

# Filenames setup
source -echo ${DV_ROOT}/tools/synopsys/script/common/dc_setup_filenames.tcl

puts "RM-Info: Running script [info script]\n"

#################################################################################
# Design Compiler Reference Methodology Setup for Hierarchical Flow
# Script: dc_setup.tcl
# Version: I-2013.12-SP2 (April 7, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
#################################################################################

# For hierarchical synthesis, block abstractions cannot be combined ILMs
if {(${ICC_BLOCK_ABSTRACTION_DESIGNS} != "") || (${DC_BLOCK_ABSTRACTION_DESIGNS} != "") || (${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} != "")} {
  if {(${DC_ILM_HIER_DESIGNS} != "") || (${ICC_ILM_HIER_DESIGNS} != "")} {
    puts "RM-Error: Using block abstraction with ILM is not supported."
    exit 1
  }
}

#################################################################################
# Setup Variables
#
# Modify settings in this section to customize your Design Compiler Reference 
# Methodology run.
# Portions of dc_setup.tcl may be used by other tools so program name checks
# are performed where necessary.
#################################################################################

# The following setting removes new variable info messages from the end of the log file
set_app_var sh_new_variable_message false
# Allow parameterized modules
set hdlin_auto_save_templates false
# Do not split buses
set verilogout_single_bit false
# Do not remove unconnected ports
set verilogout_show_unconnected_pins true
# No assign statements in output hdl
set hdlout_internal_busses true
# Bus naming
set bus_naming_style {%s[%d]}
set bus_inference_style $bus_naming_style
# Report inferred latches, flip-flops, tri-states, and multiplexers
set hdlin_reporting_level verbose
# Write out top-level modules first when writing verilog files
set verilogout_higher_designs_first true
# Take into account constants when analyzing case statements
set case_analysis_with_logic_constants true
# Needed for forward SAIF file generation
set power_preserve_rtl_hier_names true
# High fanout net consideration threshold
set high_fanout_net_threshold 500

if {$synopsys_program_name == "dc_shell"}  {

  #################################################################################
  # Design Compiler Specific Setup Variables
  #################################################################################

  # Use the set_host_options command to enable multicore optimization to improve runtime.
  # This feature has special usage and license requirements.  Refer to the 
  # "Support for Multicore Technology" section in the Design Compiler User Guide
  # for multicore usage guidelines.
  # Note: This is a DC Ultra feature and is not supported in DC Expert.

  set_host_options -max_cores 6

  # Change alib_library_analysis_path to point to a central cache of analyzed libraries
  # to save runtime and disk space.  The following setting only reflects the
  # default value and should be changed to a central location for best results.

  set_app_var alib_library_analysis_path .

  # Add any additional Design Compiler variables needed here
}

# Reports and results directories
set REPORTS_DIR "reports/dc_shell"

# Make reports and results directories
if {![file exists ${REPORTS_DIR}]} {
    file mkdir ${REPORTS_DIR}
}

#################################################################################
# Library Setup
#
# This section is designed to work with the settings from common_setup.tcl
# without any additional modification.
#################################################################################

# Milkyway variable settings

# Make sure to define the Milkyway library variable
# mw_design_library, it is needed by write_milkyway command

set mw_reference_library "${MW_REFERENCE_LIB_DIRS} ${ADDITIONAL_MW_REFERENCE_LIB_DIRS}"
set mw_design_library ${DCRM_MW_LIBRARY_NAME}

set mw_site_name_mapping { {CORE unit} {Core unit} {core unit} }

# The remainder of the setup below should only be performed in Design Compiler
if {$synopsys_program_name == "dc_shell"}  {

  if {[shell_is_in_topographical_mode]} {

    # Only create new Milkyway design library if it doesn't already exist
    if {![file isdirectory $mw_design_library ]} {
      create_mw_lib   -technology $TECH_FILE \
                      -mw_reference_library $mw_reference_library \
                      $mw_design_library
    } else {
      # If Milkyway design library already exists, ensure that it 
      # is consistent with specified Milkyway reference libraries
      set_mw_lib_reference $mw_design_library -mw_reference_library $mw_reference_library
    }

    open_mw_lib     $mw_design_library

    check_library > ${REPORTS_DIR}/${DCRM_CHECK_LIBRARY_REPORT}

    # TLUplus files
    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE \
                       -min_tluplus $TLUPLUS_MIN_FILE \
                       -tech2itf_map $MAP_FILE

    check_tlu_plus_files

    # If you are using IC Compiler ILMs in Design Compiler wireload mode, you will need
    # to use the Milkyway library setup in Design Compiler wireload mode as well.
    # In that case, remove the "if {[shell_is_in_topographical_mode]}"
    # to include this Milkyway library setup in Design Compiler wireload mode.
  }

  #################################################################################
  # Library Modifications
  #
  # Apply library modifications after the libraries are loaded.
  #################################################################################

  if {[file exists [which ${LIBRARY_DONT_USE_FILE}]]} {
    puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_FILE}]\n"
    source -echo -verbose ${LIBRARY_DONT_USE_FILE}
  }
}

puts "RM-Info: Completed script [info script]\n"
