# Modified by Princeton University on April 3, 2016
##########################################################################################
# Version: I-2013.12-SP4 (July 14, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
##########################################################################################

set DV_ROOT $::env(DV_ROOT)

source -echo ${DV_ROOT}/tools/synopsys/script/common/icc_setup.tcl
# Sourcing this to output DEF back into DC, need filename
source -echo ${DV_ROOT}/tools/synopsys/script/common/dc_setup_filenames.tcl

#######################################
####Outputs Script
#######################################

##Open Design
if {$ICC_ECO_RUN} { 
    open_mw_cel $ICC_ECO_CEL -lib $MW_DESIGN_LIBRARY 
} else { 
    open_mw_cel $ICC_METAL_FILL_CEL -lib $MW_DESIGN_LIBRARY 
}

##Change Names
change_names -rules verilog -hierarchy
save_mw_cel -as change_names_icc
close_mw_cel
open_mw_cel change_names_icc

if { ! [file exists $PNS_OUTPUT_DIR] } { file mkdir $PNS_OUTPUT_DIR }

# Analyze Power/Ground network
#analyze_fp_rail \
    -nets ${MW_POWER_NET} \
    -power_budget ${PNS_POWER_BUDGET} \
    -analyze_power \
    -voltage_supply ${PNS_VOLTAGE_SUPPLY} \
    -output_directory "${PNS_OUTPUT_DIR}/VDD" \
    -use_pins_as_pads

#analyze_fp_rail \
    -nets ${MW_SRAM_POWER_NET} \
    -power_budget ${PNS_POWER_BUDGET} \
    -analyze_power \
    -voltage_supply ${PNS_SRAM_VOLTAGE_SUPPLY} \
    -output_directory "${PNS_OUTPUT_DIR}/VCS" \
    -use_pins_as_pads

#analyze_fp_rail \
    -nets ${MW_GROUND_NET} \
    -power_budget ${PNS_POWER_BUDGET} \
    -analyze_power \
    -voltage_supply ${PNS_VOLTAGE_SUPPLY} \
    -output_directory "${PNS_OUTPUT_DIR}/VSS" \
    -use_pins_as_pads


##Verilog
if {$ICC_WRITE_FULL_CHIP_VERILOG} {
write_verilog -diode_ports -no_physical_only_cells $RESULTS_DIR/$DESIGN_NAME.output.v -macro_definition

## For comparison with a Design Compiler netlist,the option -diode_ports is removed
write_verilog -no_physical_only_cells $RESULTS_DIR/$DESIGN_NAME.output.dc.v -macro_definition

## For LVS use,the option -no_physical_only_cells is removed
write_verilog -diode_ports -pg $RESULTS_DIR/$DESIGN_NAME.output.pg.lvs.v -macro_definition

} else {
write_verilog -diode_ports -no_physical_only_cells $RESULTS_DIR/$DESIGN_NAME.output.v

## For comparison with a Design Compiler netlist,the option -diode_ports is removed
write_verilog -no_physical_only_cells $RESULTS_DIR/$DESIGN_NAME.output.dc.v
}

## For LVS use,the option -no_physical_only_cells is removed
write_verilog -pg -diode_ports $RESULTS_DIR/$DESIGN_NAME.output.pg.lvs.v
## Add -output_net_name_for_tie option to write_verilog command
#  if the verilog file is to be used by "eco_netlist -by_verilog_file" command in eco_icc task

## For Prime Time use,to include DCAP cells for leakage power analysis, add the option -force_output_references
if {$ICC_WRITE_FULL_CHIP_VERILOG} {
  write_verilog -diode_ports -no_physical_only_cells -force_output_references "" $RESULTS_DIR/$DESIGN_NAME.output.pt.v -macro_definition
} else {
  write_verilog -diode_ports -no_physical_only_cells -force_output_references "" $RESULTS_DIR/$DESIGN_NAME.output.pt.v
}

##SDC
set_app_var write_sdc_output_lumped_net_capacitance false
set_app_var write_sdc_output_net_resistance false

  write_sdc $RESULTS_DIR/$DESIGN_NAME.output.sdc

extract_rc -coupling_cap
#write_parasitics  -format SPEF -output $RESULTS_DIR/$DESIGN_NAME.output.spef
write_parasitics  -format SBPF -output $RESULTS_DIR/$DESIGN_NAME.output.sbpf

##DEF
write_def -output  $RESULTS_DIR/$DESIGN_NAME.output.def
# For input back into DC
write_def -all_vias -verbose -output ${DCRM_DCT_DEF_INPUT_FILE}

#SDF
write_sdf $RESULTS_DIR/$DESIGN_NAME.output.sdf

###GDSII
##Set options - usually also include a mapping file (-map_layer)
  set_write_stream_options \
    -map_layer $MAP_LAYER_FILE \
	-child_depth 99 \
       -output_filling fill \
       -output_outdated_fill \
       -output_pin {geometry text}
#       -keep_data_type
   write_stream -lib_name $MW_DESIGN_LIBRARY -format gds $RESULTS_DIR/$DESIGN_NAME.gds

  save_mw_cel -as $DESIGN_NAME
  close_mw_cel 

if {$ICC_CREATE_MODEL } {

    open_mw_cel $DESIGN_NAME

    source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_optimization_settings_icc.tcl
    source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_placement_settings_icc.tcl
    source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_post_cts_timing_settings.tcl
    source -echo ${DV_ROOT}/tools/synopsys/script/common/settings/common_route_si_settings_zrt_icc.tcl

    # Extract M5 and above and vias around pins
    create_macro_fram -extract_blockage_by_merge_with_threshold {m6 0 0 m7 0 0 m8 0 0 m9 0 0 m10 0 0 m11 0 0 m12 0 0 m13 0 0 m14 0 0 m15 0 0} 
    
    if {$ICC_FIX_ANTENNA} {
    ##create Antenna Info
      extract_zrt_hier_antenna_property -cell_name $DESIGN_NAME
    }

    create_block_abstraction

    # Determine core area
    set core_area [get_attribute [get_core_area] bbox]
    set core_x1 [lindex [lindex $core_area 0] 0]
    set core_y1 [lindex [lindex $core_area 0] 1]
    set core_x2 [lindex [lindex $core_area 1] 0]
    set core_y2 [lindex [lindex $core_area 1] 1]

    save_mw_cel
    close_mw_cel 

}
exit

