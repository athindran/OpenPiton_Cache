# Modified by Princeton University on April 3, 2016
#################################################################################
# PrimeTime Reference Methodology Script
# Script: pt.tcl
# Version: I-2013.12 (January 13, 2014)
# Copyright (C) 2008-2014 Synopsys All rights reserved.
################################################################################

##################################################################
#    Source common and pt_setup.tcl File                         #
##################################################################

set DV_ROOT $::env(DV_ROOT)
source -echo ${DV_ROOT}/tools/synopsys/script/common/pt_setup.tcl

##################################################################
#    Netlist Reading Section                                     #
##################################################################

# fail if we don't have a submodule timing model
set link_create_black_boxes false

# WARNING: be careful to check which ports are mismatched if any
set link_allow_design_mismatch true

if {$input_from == "DC"} {
    read_verilog $DC_NETLIST_FILES
} else {
    read_verilog $ICC_NETLIST_FILES
}

current_design $DESIGN_NAME 
link

# This should be done after design is linked for primetime
foreach {max_library min_library} "$MIN_LIBRARY_FILES $ADDITIONAL_MIN_LIBRARY_FILES" {
  set_min_library $max_library -min_version $min_library
}

##################################################################
#    Back Annotation Section                                     #
##################################################################

if {$input_from == "DC"} {
    if { [info exists DC_PARASITIC_PATHS] && [info exists DC_PARASITIC_FILES] } {
        foreach para_path $DC_PARASITIC_PATHS para_file $DC_PARASITIC_FILES {
            if {[string compare $para_path $DESIGN_NAME] == 0} {
                read_parasitics -format spef $para_file 
            } else {
                read_parasitics -path $para_path -format spef $para_file 
            }
        }
    }
} else {
    if { [info exists ICC_PARASITIC_PATHS] && [info exists ICC_PARASITIC_FILES] } {
        foreach para_path $ICC_PARASITIC_PATHS \
                para_max_file $ICC_PARASITIC_MAX_FILES \
                para min_file $ICC_PARASITIC_MIN_FILES {
            if {[string compare $para_path $DESIGN_NAME] == 0} {
                read_parasitics -format sbpf "$para_max_file  $para_min_file"
            } else {
                read_parasitics -path $para_path -format sbpf "$para_max_file $para_min_file" 
            }
        }
    }
}


##################################################################
#    Reading Constraints Section                                 #
##################################################################
if {$input_from == "DC"} {
    if  {[info exists DC_CONSTRAINT_FILES]} {
        foreach constraint_file $DC_CONSTRAINT_FILES {
            if {[file extension $constraint_file] eq ".sdc"} {
                read_sdc -echo $constraint_file
            } else {
                source -echo $constraint_file
            }
        }
    }
} else {
    if  {[info exists ICC_CONSTRAINT_FILES]} {
        foreach constraint_file $ICC_CONSTRAINT_FILES {
            if {[file extension $constraint_file] eq ".sdc"} {
                read_sdc -echo $constraint_file
            } else {
                source -echo $constraint_file
            }
        }
    }
}

##################################################################
#    Fix ECO Variable Setup                                      #
##################################################################
set timing_save_pin_arrival_and_slack true



##################################################################
#    Update_timing and check_timing Section                      #
##################################################################

update_timing -full
if {$input_from == "DC"} {
    check_timing -verbose > $REPORTS_DIR/${DESIGN_NAME}_check_timing.dc.report
} else {
    check_timing -verbose > $REPORTS_DIR/${DESIGN_NAME}_check_timing.icc.report
}


##################################################################
#    Report_timing Section                                       #
##################################################################
if {$input_from == "DC"} {
    report_global_timing > $REPORTS_DIR/${DESIGN_NAME}_report_global_timing.dc.report
    report_clock -skew -attribute > $REPORTS_DIR/${DESIGN_NAME}_report_clock.dc.report 
    report_analysis_coverage > $REPORTS_DIR/${DESIGN_NAME}_report_analysis_coverage.dc.report
    report_timing -slack_lesser_than 0.0 -delay min_max -nosplit -input -net  > $REPORTS_DIR/${DESIGN_NAME}_report_timing.dc.report
    report_constraints -all_violators -verbose > $REPORTS_DIR/${DESIGN_NAME}_report_constraints.dc.report
    report_design > $REPORTS_DIR/${DESIGN_NAME}_report_design.dc.report
    report_net > $REPORTS_DIR/${DESIGN_NAME}_report_net.dc.report
    write_sdf -context Verilog -exclude checkpins $RESULTS_DIR/${DESIGN_NAME}.mapped.pt.sdf
} else {
    report_global_timing > $REPORTS_DIR/${DESIGN_NAME}_report_global_timing.icc.report
    report_clock -skew -attribute > $REPORTS_DIR/${DESIGN_NAME}_report_clock.icc.report 
    report_analysis_coverage > $REPORTS_DIR/${DESIGN_NAME}_report_analysis_coverage.icc.report
    report_timing -slack_lesser_than 0.0 -delay min_max -nosplit -input -net  > $REPORTS_DIR/${DESIGN_NAME}_report_timing.icc.report
    report_constraints -all_violators -verbose > $REPORTS_DIR/${DESIGN_NAME}_report_constraints.icc.report
    report_constraints  > $REPORTS_DIR/${DESIGN_NAME}_report_constraints.icc.summary
    report_design > $REPORTS_DIR/${DESIGN_NAME}_report_design.icc.report
    report_net > $REPORTS_DIR/${DESIGN_NAME}_report_net.icc.report
    write_sdf -context Verilog -exclude checkpins $RESULTS_DIR/${DESIGN_NAME}.output.pt.sdf
}

# Clock Gating & Vth Group Reporting Section
set power_enable_analysis true

##################################################################
#    No Power Switching Activity is being used; set user annotated activity  #
##################################################################
# Clock gate savings report is using 10% toggle rate and is NOT using switching activity from simulation
set_switching_activity -clock_derate 0.1 -clock_domains [all_clocks] -type clock_gating_cells

report_clock_gate_savings

# Set Vth attribute for each library
if {[file exists ${DV_ROOT}/tools/synopsys/script/common/vt_group_setup.tcl]} {
    source -echo ${DV_ROOT}/tools/synopsys/script/common/vt_group_setup.tcl
}
foreach_in_collection l [get_libs] {
        if {[get_attribute [get_lib $l] default_threshold_voltage_group] == ""} {
                set lname [get_object_name [get_lib $l]]
                set_user_attribute [get_lib $l] default_threshold_voltage_group $lname -class lib
        }
}
if {$input_from == "DC"} {
    report_power -threshold_voltage_group > $REPORTS_DIR/${DESIGN_NAME}_pwr.dc.per_lib_leakage
    report_threshold_voltage_group > $REPORTS_DIR/${DESIGN_NAME}_pwr.dc.per_volt_threshold_group
} else {
    report_power -threshold_voltage_group > $REPORTS_DIR/${DESIGN_NAME}_pwr.icc.per_lib_leakage
    report_threshold_voltage_group > $REPORTS_DIR/${DESIGN_NAME}_pwr.icc.per_volt_threshold_group
}




##################################################################
#    Fix ECO Comments                                            #
##################################################################
# You can use -current_library option of fix_eco_drc and fix_eco_timing to use
# library cells only from the current library that the cell belongs to when sizing
#
# You can control the allowable area increase of the cell during sizing by setting the
# eco_alternative_area_ratio_threshold variable
#
# You can restrict sizing within a group of cells by setting the
# eco_alternative_cell_attribute_restrictions variable
#
# Refer to man page for more details

##################################################################
#    Fix ECO DRC Section					 #
##################################################################
# Additional setup and hold margins can be preserved while fixing DRC with -setup_margin and -hold_margin
# Refer to man page for more details
# fix max transition 
fix_eco_drc -type max_transition -method { size_cell insert_buffer } -verbose -buffer_list $eco_drc_buf_list -current_library 
# fix max capacitance 
fix_eco_drc -type max_capacitance -method { size_cell insert_buffer } -verbose -buffer_list $eco_drc_buf_list -current_library
# fix max fanout 
fix_eco_drc -type max_fanout  -method { size_cell insert_buffer } -verbose -buffer_list $eco_drc_buf_list -current_library

##################################################################
#    Fix ECO Timing Section                                      #
##################################################################
# Path Based Analysis is supported for setup and hold fixing
#
# You can use -setup_margin and -hold_margin to add margins during 
# setup and hold fixing
# 
# DRC can be ignored while fixing timing violations with -ignore_drc

# Refer to man page for more details
# fix setup with sequential cell sizing 
fix_eco_timing -type setup -verbose -slack_lesser_than 0 
# fix hold with sequential cell sizing 
fix_eco_timing -type hold -verbose -buffer_list $eco_hold_buf_list -slack_lesser_than 0 -hold_margin 0 -setup_margin 0 


##################################################################
#    Fix ECO Output Section                                      #
##################################################################
# write netlist changes
if {$input_from == "DC"} {
    write_changes -format icctcl -output $RESULTS_DIR/eco_changes_dc.tcl
} else {
    write_changes -format icctcl -output $RESULTS_DIR/eco_changes_icc.tcl
}

set pt_ilm_dir $RESULTS_DIR 

##################################################################
#    Generation of Hierarchical Model Section                    #
##################################################################

create_ilm -verification_script -block_scope -auto_ignore -parasitics_options {spef_format input_port_nets constant_nets}
if {$input_from == "DC"} {
    write_interface_timing $REPORTS_DIR/${DESIGN_NAME}_ilm_netlist_timing.dc.report 
} else {
    write_interface_timing $REPORTS_DIR/${DESIGN_NAME}_ilm_netlist_timing.icc.report
}

if {$input_from == "DC"} {
    extract_model -library_cell -test_design -output ${RESULTS_DIR}/${DESIGN_NAME}.dc -format {lib db} -block_scope
    write_interface_timing ${REPORTS_DIR}/${DESIGN_NAME}_etm_netlist_interface_timing.dc.report
} else {
    extract_model -library_cell -test_design -output ${RESULTS_DIR}/${DESIGN_NAME}.icc -format {lib db} -block_scope
    write_interface_timing ${REPORTS_DIR}/${DESIGN_NAME}_etm_netlist_interface_timing.icc.report
}

exit
