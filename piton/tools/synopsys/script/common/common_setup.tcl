# Modified by Princeton University on April 3, 2016

puts "RM-Info: Running script [info script]\n"

# -echo is source command is a non-standard
# extension of Tcl in Synopsys tools 
# tclsh used in merge_gds cannot do this
set SOURCE_ARGS "-echo"
if {![info exists synopsys_program_name]} {
    set SOURCE_ARGS ""
}

# Setup environment variables
eval "source ${SOURCE_ARGS} ${DV_ROOT}/tools/synopsys/script/common/env_setup.tcl"

# Get custom functions
source ${DV_ROOT}/tools/synopsys/script/common/func/func.tcl

##########################################################################################
# Variables common to all reference methodology scripts
# Script: common_setup.tcl
# Version: I-2013.12-SP4 (July 14, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
##########################################################################################

# The design planning version of the back-end scripts
# set this variable before it sources this script.  Normal
# runs of the back-end do not have this variable set, so we 
# set it to 0 if it is not set
if {![info exists DP_RUN]} {
        set DP_RUN 0
}

# Setup any search paths you would like added here
set SEARCH_PATH             ""
set DESIGN_REF_DATA_PATH    $DV_ROOT

# Design specific setup that is module independent
eval "source ${SOURCE_ARGS} ${DV_ROOT}/tools/synopsys/script/common/design_setup.tcl"

# Process specific setup
eval "source ${SOURCE_ARGS} ${DV_ROOT}/tools/synopsys/script/common/process_setup.tcl"

# Power/ground network setup
eval "source ${SOURCE_ARGS} ${DV_ROOT}/tools/synopsys/script/common/pgn_setup.tcl"

# Module specific setup
if {$DP_RUN} {
    eval "source ${SOURCE_ARGS} ./script/module_setup.dp.tcl"
} else {
    eval "source ${SOURCE_ARGS} ./script/module_setup.tcl"
}

# Results directory is the same for all scripts
set RESULTS_DIR "results"
if {![file exists ${RESULTS_DIR}]} {
    file mkdir $RESULTS_DIR
}

# For a hierarchical flow, add the block-level results directories to the search
# path to find the block-level design files.  Also add the the block-level MW
# libraries and timing models for primetime
foreach design_dir $HIERARCHICAL_DESIGNS_DIRS design $HIERARCHICAL_DESIGNS {
    if {$design_dir != "" && $design != ""} {
        lappend SEARCH_PATH ../${design_dir}/synopsys
        lappend SEARCH_PATH ../${design_dir}/synopsys/${RESULTS_DIR}
        lappend MW_REFERENCE_LIB_DIRS ../${design_dir}/synopsys/${design}_LIB
        if {[info exists synopsys_program_name] && $synopsys_program_name == "pt_shell"} {
            # TODO: For design planning hierarchical DC flow, need to add DC .db file instead
            lappend ADDITIONAL_LINK_LIB_FILES ../${design_dir}/synopsys/${RESULTS_DIR}/${design}.icc_lib.db
        }
    }
}

#
# For synopsys scripts, library and search path setup
#
if {[info exists synopsys_program_name]} {
    # Allow these to be set without error message for all shells
    set_app_var sh_allow_tcl_with_set_app_var_no_message_list [list target_library synthetic_library link_library test_simulation_library]
    if {![info exists search_path]} { set_app_var search_path "" }
    if {![info exists target_library]} { set_app_var target_library "" }
    if {![info exists synthetic_library]} { set_app_var synthetic_library "" }
    if {![info exists link_library]} { set_app_var link_library "" }
    if {![info exists test_simulation_library]} { set_app_var test_simulation_library "" }
    # Make sure target library doesn't have "your_library.db"
    if {$target_library == "your_library.db"} { set_app_var target_library "" }
    if {$link_library == " * your_library.db "} { set_app_var link_library " * " }

    # Search path setup
    set_app_var search_path     ". ./$RESULTS_DIR $SEARCH_PATH $ADDITIONAL_SEARCH_PATH $search_path"

    # Target libraries setup
    set_app_var target_library  "$TARGET_LIBRARY_FILES $ADDITIONAL_TARGET_LIBRARY_FILES $target_library"

    # Synthetic library
    if {$synopsys_program_name == "dc_shell"} {
        set_app_var synthetic_library "dw_foundation.sldb"
    }

    # Link libraries
    set_app_var link_library  "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library $link_library"

    # Set the variable to use Verilog libraries for Test Design Rule Checking
    # (See dc.tcl for details)
    set_app_var test_simulation_library "$TARGET_LIBRARY_VERILOG $test_simulation_library"
    
    # Not needed for formality and should be done after design is linked in primetime
    if {$synopsys_program_name != "fm_shell" && $synopsys_program_name != "pt_shell"} {
        ## Min/Max library relationships
        #  For "set_operating_conditions -analysis_type on_chip_variation", 
        #  it is not recommended if only -max is specified.
        #  Only use it if both -max and -min of set_operating_conditions 
        #  are specified and point to two different libraries
        #  and are characterized to model OCV effects of the same corner.
        foreach {max_library min_library} "$MIN_LIBRARY_FILES $ADDITIONAL_MIN_LIBRARY_FILES" {
          set_min_library $max_library -min_version $min_library
        }
    }
}

puts "RM-Info: Completed script [info script]\n"

