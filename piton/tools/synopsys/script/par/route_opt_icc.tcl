# Modified by Princeton University on April 3, 2016
##########################################################################################
# Version: I-2013.12-SP4 (July 14, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
##########################################################################################

set DV_ROOT $::env(DV_ROOT)

source -echo ${DV_ROOT}/tools/synopsys/script/common/icc_setup.tcl

############################################
## route_opt_icc: Post Route optimization ##
############################################




open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_ROUTE_OPT_CEL}"
copy_mw_cel -from $ICC_ROUTE_CEL -to $ICC_ROUTE_OPT_CEL

## TIO setup for route_opt command
if {$ICC_IMPLEMENTATION_PHASE == "top"} {
  ## Copy block CELs to current library for interface optimization, 
  #  if ICC_TIO_OPTIMIZE_BLOCK_INTERFACE is enabled, ICC_TIO_BLOCK_LIST not empty, and host options are specified 
  if {$ICC_TIO_OPTIMIZE_BLOCK_INTERFACE && $ICC_TIO_BLOCK_LIST != "" && $ICC_TIO_HOST_OPTION != "" && $ICC_TIO_BLOCK_LIST_DIRS != ""} {
    foreach block_dir $ICC_TIO_BLOCK_LIST_DIRS block $ICC_TIO_BLOCK_LIST {
    copy_mw_cel -from_lib ../$block_dir/synopsys/${block}_LIB -from $block 
    }
  }
}

open_mw_cel $ICC_ROUTE_OPT_CEL



source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_optimization_settings_icc.tcl
source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_placement_settings_icc.tcl
source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_post_cts_timing_settings.tcl

## Load the route and si settings
source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_route_si_settings_zrt_icc.tcl




##############################
## RP : Relative Placement  ##     
##############################
## Ensuring that the RP cells are not changed during route_opt
#set_rp_group_options [all_rp_groups] -route_opt_option fixed_placement
#set_rp_group_options [all_rp_groups] -route_opt_option "size_only"


if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
## start the post route optimization
set_app_var compile_instance_name_prefix icc_route_opt
update_timing
# This is to ensure timing is current before xtalk fixing (not required beyond E-2010.12-SP1 release)
if {$ICC_SANITY_CHECK} {
	check_physical_design -stage pre_route_opt -no_display -output check_physical_design.pre_route_opt
}

if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }

if {$ICC_ENABLE_CHECKPOINT} {
echo "RM-Info : Please ensure there's enough disk space before enabling the set_checkpoint_strategy feature."
set_checkpoint_strategy -enable -overwrite
# The -overwrite option is used by default. Remove it if needed.
}

# To enable cell pre-sizing as a first step in route_opt crosstalk reduction,
# set the following variable to TRUE (default is FALSE):
# set_app_var routeopt_xtalk_reduction_cell_sizing TRUE

if {[file exists [which $CUSTOM_ROUTE_OPT_PRE_SCRIPT]]} {
echo "RM-Info: Sourcing [which $CUSTOM_ROUTE_OPT_PRE_SCRIPT]"
source $CUSTOM_ROUTE_OPT_PRE_SCRIPT
}

########################################
#   TIO setup for route_opt command
########################################
if {$ICC_IMPLEMENTATION_PHASE == "top"} {
source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_route_opt_tio_settings_icc.tcl
}

########################################
#   route_opt core command
########################################
## For running route_opt with filler cells placed :
#  The filler cells must be of type std_filler.
#  This is done by marking the std filler cells with gdsStdFillerCell during library dataprep.
#  If you see the following message when filler cells are inserted prior to route_opt,
#  then that means they are not marked properly :
#     WARNING : cell <xxx> is not of std filler cell subtype

## To enable verbose output for information related to route_opt operations, set the following.
#  See man page for complete details. Here's an example :
#  	set_app_var routeopt_verbose 31

## To use the scenario compression feature, try the following :
#	open_mw_cel, etc 
#	compress_scenario
#	route_opt -skip_initial_route -effort $ROUTE_OPT_EFFORT -xtalk_reduction -power
#	route_opt -incremental ;# more run time benefit when multiple route_opt commands are used
#	uncompress_scenario
#	route_opt -incremental -size_only ;# to recover final QoR

set route_opt_cmd "route_opt -skip_initial_route -effort $ROUTE_OPT_EFFORT -xtalk_reduction" 

## route_opt -power performs both power aware optimization (PAO, for ex, replacing LVT with HVT cells), 
#  and power recovery (PR, for ex, at the end of route_opt, recovering power by sizing).
#  If only PAO is desired and not PR, please do the following:
#  1. set_route_opt_strategy -power_aware_optimization true
#  2. comment out the line below (-power is not needed)
if {$POWER_OPTIMIZATION} {lappend route_opt_cmd -power}



echo $route_opt_cmd
eval $route_opt_cmd

if {$ICC_ENABLE_CHECKPOINT} {set_checkpoint_strategy -disable}

########################################
#   Additional route_opt practices
########################################
## For more on the post-H-2013.03 recommended postroute design closure flow, 
#  refer to SolvNet #038921
# Using the following flow can help further improvme QoR in postroute. 
# These steps come after the initial "route_opt -skip_initial":
#	set_app_var routeopt_enable_aggressive_optimization true
#	route_opt -incremental
#	set_app_var routeopt_restrict_tns_to_size_only true
#	route_opt -incremental

## To limit route_opt to specific optimizations :
#	route_opt -incremental -only_xtalk_reduction : only xtalk reduction 
#	route_opt -incremental -only_hold_time : only hold fixing 
#	route_opt -incremental -(only_)wire_size : runs wire sizing which fixes timing by applying NDR's from define_routing_rule

## To prioritize max tran fixing :
#  By default, route_opt prioritizes max delay cost over max design rule costs (e.g. max tran). 
#  To set higher priority for DRC fixing, set the following variable.
#  Note that this variable only works with the -only_design_rule option.
#  set_app_var routeopt_drc_over_timing true
#  	route_opt -incremental -only_design_rule

## To run size only but still allowing buffers to be inserted for hold fixing :
#  set_app_var routeopt_allow_min_buffer_with_size_only true
########################################


if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
########################################
#           CONNECT P/G                #
########################################
## Connect Power & Ground for non-MV and MV-mode

 if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
   echo "RM-Info: Sourcing [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]"
   source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
 } else {
    derive_pg_connection -power_net $MW_POWER_NET -power_pin $MW_POWER_PORT -ground_net $MW_GROUND_NET -ground_pin $MW_GROUND_PORT 
    if {!$ICC_TIE_CELL_FLOW} {derive_pg_connection -power_net $MW_POWER_NET -ground_net $MW_GROUND_NET -tie}
   }
if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
if {$ICC_REPORTING_EFFORT == "MED" } {
 redirect -tee -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.qor {report_qor}
 redirect -tee -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.qor -append {report_qor -summary}
 redirect -tee -file $REPORTS_DIR_PLACE_OPT/$ICC_ROUTE_OPT_CEL.qor -append {report_timing_histogram -range_maximum 0}
 redirect -tee -file $REPORTS_DIR_PLACE_OPT/$ICC_ROUTE_OPT_CEL.qor -append {report_timing_histogram -range_minimum 0}
 redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.con {report_constraints}
 redirect -file $REPORTS_DIR_PLACE_OPT/$ICC_PLACE_OPT_CEL.channel_cap {report_channel_capacity -consider_pins true -consider_global_routing true}
 redirect -file $REPORTS_DIR_PLACE_OPT/$ICC_PLACE_OPT_CEL.glbl_cong {report_congestion -routing_stage global}
 redirect -file $REPORTS_DIR_PLACE_OPT/$ICC_PLACE_OPT_CEL.trck_cong {report_congestion -routing_stage track}
 redirect -file $REPORTS_DIR_PLACE_OPT/$ICC_PLACE_OPT_CEL.detl_cong {report_congestion -routing_stage detail}
}

if {$ICC_REPORTING_EFFORT != "OFF" } {
     redirect -tee -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.clock_tree {report_clock_tree -nosplit -summary}     ;# global skew report
     redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.clock_timing {report_clock_timing -nosplit -type skew} ;# local skew report
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.max.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay max}
 redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.min.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay min}
}
if {$ICC_REPORTING_EFFORT == "MED" && $POWER_OPTIMIZATION } {
 redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.power {report_power -nosplit}
}

## Uncomment if you want detailed routing violation report with or without antenna info
# if {$ICC_FIX_ANTENNA} {
#    verify_zrt_route -antenna true ;
# } else {
#    verify_zrt_route -antenna false ;
#   }

#antenna fixing in the reference script is done in chip_finish_icc.tcl.
#somehow, ICC does not fix antenna violation after critical area reduction in chip_finish_icc.tcl.
#so moved it here
if {$ICC_FIX_ANTENNA && $ICC_ROUTING_DIODES != ""} {
    set_route_zrt_detail_options -antenna true -diode_libcell_names $ICC_ROUTING_DIODES -insert_diodes_during_routing true
    route_zrt_detail -incremental true
}

if {[file exists [which $CUSTOM_ROUTE_OPT_POST_SCRIPT]]} {
echo "RM-Info: Sourcing [which $CUSTOM_ROUTE_OPT_POST_SCRIPT]"
source $CUSTOM_ROUTE_OPT_POST_SCRIPT
}

save_mw_cel -as $ICC_ROUTE_OPT_CEL
if {$ICC_REPORTING_EFFORT != "OFF" } {
 create_qor_snapshot -clock_tree -name $ICC_ROUTE_OPT_CEL
 redirect -file $REPORTS_DIR_ROUTE_OPT/$ICC_ROUTE_OPT_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
}
if {[file exists [which $ICC_SIGNOFF_OPT_CHECK_CORRELATION_POSTROUTE_SCRIPT]]} { 
  source $ICC_SIGNOFF_OPT_CHECK_CORRELATION_POSTROUTE_SCRIPT 
}
exit

