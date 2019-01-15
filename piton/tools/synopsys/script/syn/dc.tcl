# Modified by Princeton University on April 3, 2016

set DV_ROOT $::env(DV_ROOT)

# Common setup
source -echo ${DV_ROOT}/tools/synopsys/script/common/dc_setup.tcl

#################################################################################
# Design Compiler Block-Level and Top-Level Reference Methodology Script for Hierarchical Flow
# Script: dc.tcl (combined with dc_top.tcl)
# Version: I-2013.12-SP2 (April 7, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
#################################################################################

# Design Compiler must be run in topographical mode for SPG flow support
# SPG also requires a license for Design Compiler Graphical
if {![shell_is_in_topographical_mode]} {
  puts "RM-Error: dc_shell must be run in topographical mode for SPG support."
  exit 1
}

#################################################################################
# Additional Variables
#
# Add any additional variables needed for your flow here.
#################################################################################

# No additional flow variables are being recommended

#################################################################################
# Setup for Formality Verification
#################################################################################

# In the event of an inconclusive (or hard) verification, we recommend using
# the set_verification_priority commands provided from the analyze_points command
# in Formality. The set_verification_priority commands target specific
# operators to reduce verification complexity while minimizing QoR impact.
# The set_verification_priority commands should be applied after the design
# is read and elaborated.

# For designs that don't have tight QoR constraints and don't have register retiming,
# you can use the following variable to enable the highest productivity single pass flow.
# This flow modifies the optimizations to make verification easier.
# This variable setting should be applied prior to reading in the RTL for the design.

# set_app_var simplified_verification_mode true

# For more information about facilitating formal verification in the flow, refer
# to the following SolvNet article:
# "Resolving Inconclusive and Hard Verifications in Design Compiler"
# https://solvnet.synopsys.com/retrieve/033140.html

# Define the verification setup file for Formality
set_svf ${RESULTS_DIR}/${DCRM_SVF_OUTPUT_FILE}

#################################################################################
# Setup SAIF Name Mapping Database
#
# Include an RTL SAIF for better power optimization and analysis.
#
# saif_map should be issued prior to RTL elaboration to create a name mapping
# database for better annotation.
################################################################################

# saif_map -start

#################################################################################
# Read in the RTL Design
#
# Read in the RTL source files or read in the elaborated design (.ddc).
#################################################################################

if {${HIERARCHICAL}} {

  # The set_top_implementation_options command defines which blocks should be
  # read as block abstractions.
  # Note: You can use the -block_update_setup_script option to pass any variable 
  #       setting for the block update process. 
  
  if { ${ICC_BLOCK_ABSTRACTION_DESIGNS} != ""} {
    set_top_implementation_options -block_references ${ICC_BLOCK_ABSTRACTION_DESIGNS}
  }
  if { ${DC_BLOCK_ABSTRACTION_DESIGNS} != ""} {
    set_top_implementation_options -block_references ${DC_BLOCK_ABSTRACTION_DESIGNS}
  }
  # Enable the -optimize_block_interface option for DC block abstraction with 
  # transparent interface optimization.
  # Note: If interface optimization is enabled the updated DC blocks must be written out
  # after optimization.
  if { ${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} != ""} {
    set_top_implementation_options -block_references ${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} -optimize_block_interface true
  }
  
}

define_design_lib WORK -path ./WORK

# Preprocess the RTL with PyHP
source -echo ${DV_ROOT}/tools/synopsys/script/common/pyhp_preprocess_setup.tcl
set RTL_SOURCE_FILES [pyhp_preprocess -rtl ${RTL_SOURCE_FILES}]

analyze -format verilog -define "${DEFAULT_MACROS} ${ADDITIONAL_MACROS}" ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}

if {${HIERARCHICAL}} {

    # Remove the RTL version of the hierarchical blocks in case they were read in
    if {[get_designs -quiet ${HIERARCHICAL_DESIGNS}] != ""} {
      remove_design -hierarchy [get_designs -quiet ${HIERARCHICAL_DESIGNS}]
    }

}

write -hierarchy -format ddc -output ${RESULTS_DIR}/${DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE}

# DO NOT LINK yet or Presto will rebuild the RTL version of the physical blocks.
# Finish loading the physical blocks below before linking.

if {${HIERARCHICAL}} {

    #################################################################################
    # Load Hierarchical Designs
    #################################################################################
    
    # Read in compiled hierarchical blocks
    # For topographical mode top-level synthesis all physical blocks are required to
    # be compiled in topographical mode.
    
    foreach design ${DDC_HIER_DESIGNS} {
      read_ddc ${design}.mapped.ddc
    }
    
    foreach design ${DC_BLOCK_ABSTRACTION_DESIGNS} {
      read_ddc ${design}.mapped.ddc
    }
    
    foreach design ${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} {
      read_ddc ${design}.mapped.ddc
    }
    
    foreach design ${DC_ILM_HIER_DESIGNS} {
      read_ddc ${design}.mapped.ILM.ddc
    }
    
    current_design ${DESIGN_NAME}
    link
    
    # Check to make sure that all the correct designs were linked
    # Pay special attention to the source location of your physical blocks
    list_designs -show_file
    
    # Report the block abstraction settings and usage
    if { (${ICC_BLOCK_ABSTRACTION_DESIGNS} != "") || (${DC_BLOCK_ABSTRACTION_DESIGNS} != "") || (${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} != "") } {
     report_top_implementation_options
     report_block_abstraction
    }
    
    # Don't optimize ${DDC_HIER_DESIGNS}
    if { ${DDC_HIER_DESIGNS} != ""} {
      if {[shell_is_in_topographical_mode]} {
        # Hierarchical .ddc blocks must be marked as physical hierarchy
        # In case of multiply instantiated designs, only set_physical_hierarchy on ONE instance
        set_physical_hierarchy [sub_instances_of -hierarchy -master_instance -of_references ${DDC_HIER_DESIGNS} ${DESIGN_NAME}]
        get_physical_hierarchy
      } else {
        # Don't touch these blocks in DC-WLM
        set_dont_touch [get_designs ${DDC_HIER_DESIGNS}]
      }
    }
    
    # Prevent optimization of top-level logic based on physical block contents
    # (required for hierarchical formal verification flow)
    set_boundary_optimization ${HIERARCHICAL_DESIGNS} false
    set_app_var compile_preserve_subdesign_interfaces true
    set_app_var compile_enable_constant_propagation_with_no_boundary_opt false

}

#################################################################################
# Apply Logical Design Constraints
#################################################################################

# You can use either SDC file ${DCRM_SDC_INPUT_FILE} or Tcl file 
# ${DCRM_CONSTRAINTS_INPUT_FILE} to constrain your design.
if {[file exists ${DCRM_SDC_INPUT_FILE}]} {
  puts "RM-Info: Reading SDC file [which ${DCRM_SDC_INPUT_FILE}]\n"
  read_sdc ${DCRM_SDC_INPUT_FILE}
}
if {[file exists ${DCRM_CONSTRAINTS_INPUT_FILE}]} {
  puts "RM-Info: Sourcing script file [which ${DCRM_CONSTRAINTS_INPUT_FILE}]\n"
  source -echo -verbose ${DCRM_CONSTRAINTS_INPUT_FILE}
}

#################################################################################
# Apply The Operating Conditions
#################################################################################

# We use max-min library pairs (only one operating condition for each library)
# Set operating condition on top level
# set_operating_conditions -max <max_opcond> -min <min_opcond>

#################################################################################
# Create Default Path Groups
#
# Separating these paths can help improve optimization.
# Remove these path group settings if user path groups have already been defined.
#################################################################################

set ports_clock_root [filter_collection [get_attribute [get_clocks] sources] object_class==port]
group_path -name REGOUT -to [all_outputs] 
group_path -name REGIN -from [remove_from_collection [all_inputs] ${ports_clock_root}] 
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] ${ports_clock_root}] -to [all_outputs]

#################################################################################
# Power Optimization Section
#################################################################################

    #############################################################################
    # Clock Gating Setup
    #############################################################################

    # If your design has instantiated clock gates, you should use identify_clock_gating
    # command to identify and the report_clock_gating -multi_stage to report them.

    # identify_clock_gating
    # report_clock_gating -multi_stage -nosplit > ${REPORTS_DIR}/${DCRM_INSTANTIATE_CLOCK_GATES_REPORT}

    # Default clock_gating_style suits most designs.  Change only if necessary.
    # set_clock_gating_style -positive_edge_logic {integrated} -negative_edge_logic {integrated} -control_point before ...   

    # Clock gate insertion is now performed during compile_ultra -gate_clock
    # so insert_clock_gating is no longer recommended at this step.

    # The following setting can be used to enable global clock gating.
    # With global clock gating, common enables are extracted across hierarchies
    # which results in fewer redundant clock gates. 

    # set compile_clock_gating_through_hierarchy true 

    # For better timing optimization of enable logic, clock latency for 
    # clock gating cells can be optionally specified.

    # set_clock_gate_latency -clock <clock_name> -stage <stage_num> \
    #         -fanout_latency {fanout_range1 latency_val1 fanout_range2 latency_val2 ...}

    # To improve enable timing in high performance designs, physically aware clock gating 
    # is available in Design Compiler topographical for Synopsys Physical Guidance (SPG) 
    # flow. This flow works best with a corresponding IC Compiler  SPG flow. To enable 
    # physically aware clock gating in Design Compiler Graphical, uncomment the 
    # following setting:

    # set power_cg_physically_aware_cg true

    #############################################################################
    # Apply Power Optimization Constraints
    #############################################################################

    # Include a SAIF file, if possible, for power optimization.  If a SAIF file
    # is not provided, the default toggle rate of 0.1 will be used for propagating
    # switching activity.

    # read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose

    if {[shell_is_in_topographical_mode]} {
      # For multi-Vth design, replace the following to set the threshold voltage groups in the libraries.
      if {[file exists ${DV_ROOT}/tools/synopsys/script/common/vt_group_setup.tcl]} {
          source -echo ${DV_ROOT}/tools/synopsys/script/common/vt_group_setup.tcl
      }
    }
    
    set_leakage_optimization true

    if {[shell_is_in_topographical_mode]} {
      # Use the following command to enable power prediction using clock tree estimation.

      # set_power_prediction true -ct_references <LIB CELL LIST>
    }

if {[shell_is_in_topographical_mode]} {

  ##################################################################################
  # Apply Physical Design Constraints
  #
  # Optional: Floorplan information can be read in here if available.
  # This is highly recommended for irregular floorplans.
  #
  # Floorplan constraints can be provided from one of the following sources:
  # * extract_physical_constraints with a DEF file
  #	* read_floorplan with a floorplan file (written by write_floorplan)
  #	* User generated Tcl physical constraints
  #
  ##################################################################################

  # Specify ignored layers for routing to improve correlation
  # Use the same ignored layers that will be used during place and route

  if { ${MIN_ROUTING_LAYER} != ""} {
    set_ignored_layers -min_routing_layer ${MIN_ROUTING_LAYER}
  }
  if { ${MAX_ROUTING_LAYER} != ""} {
    set_ignored_layers -max_routing_layer ${MAX_ROUTING_LAYER}
  }

  report_ignored_layers

  # If the macro names change after mapping and writing out the design due to
  # ungrouping or Verilog change_names renaming, it may be necessary to translate 
  # the names to correspond to the cell names that exist before compile.

  # Note: The floorplan files from IC Compiler are named ${DESIGN_NAME}.DCT.def and ${DESIGN_NAME}.DCT.fp.
  #       You should choose your floorplan file and name it to ${DESIGN_NAME}.def
  #       or ${DESIGN_NAME}.fp for Design Compiler use.

  # During DEF constraint extraction, extract_physical_constraints automatically
  # matches DEF names back to precompile names in memory using standard matching rules.
  # read_floorplan will also automatically perform this name matching.

  # Modify set_query_rules if other characters are used for hierarchy separators
  # or bus names. 

  # set_query_rules  -hierarchical_separators {/ _ .} \
  #                  -bus_name_notations {[] __ ()}   \
  #                  -class {cell pin port net}       \
  #                  -wildcard                        \
  #                  -regsub_cumulative               \
  #                  -show

  ## For DEF floorplan input

  # The DEF file for Design Compiler Topographical can be written from IC Compiler using the following 
  # recommended options:
  # icc_shell> write_def -version 5.7 -rows_tracks_gcells -fixed -pins -blockages -specialnets \
  #                      -vias -regions_groups -verbose -output ${DCRM_DCT_DEF_INPUT_FILE}

  if {[file exists ${DCRM_DCT_DEF_INPUT_FILE}]} {
    # If you have physical only cells as a part of your floorplan DEF file, you can use
    # the -allow_physical_cells option with extract_physical_constraints to include
    # the physical only cells as a part of the floorplan in Design Compiler to improve correlation.
    #
    # Note: With -allow_physical_cells, new logical cells in the DEF file
    #       that have a fixed location will also be added to the design in memory.
    #       See the extract_physical_constraints manpage for more information about
    #       identifying the cells added to the design when using -allow_physical_cells.
  
    # extract_physical_constraints -allow_physical_cells ${DCRM_DCT_DEF_INPUT_FILE}

    puts "RM-Info: Reading in DEF file [which ${DCRM_DCT_DEF_INPUT_FILE}]\n"
    extract_physical_constraints ${DCRM_DCT_DEF_INPUT_FILE}
  }
  
  # OR

  ## For floorplan file input

  # The floorplan file for Design Compiler Topographical can be written from IC Compiler using the following 
  # recommended options:
  # Note: IC Compiler requires the use of -placement {terminal} with -create_terminal beginning in the
  #       D-2010.03-SP1 release.
  # icc_shell> write_floorplan -placement {io terminal hard_macro soft_macro} -create_terminal \
  #                            -row -create_bound -preroute -track ${DCRM_DCT_FLOORPLAN_INPUT_FILE}

  # Read in the secondary floorplan file, previously written by write_floorplan in Design Compiler,
  # to restore physical-only objects back to the design, before reading the main floorplan file.

  if {[file exists ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]} {
    puts "RM-Info: Reading in secondary floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]\n"
    read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects
  }

  if {[file exists ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]} {
    puts "RM-Info: Reading in floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]\n"
    read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}
  }

  # OR

  ## For Tcl file input

  # For Tcl constraints, the name matching feature must be explicitly enabled
  # and will also use the set_query_rules setttings. This should be turned off
  # after the constraint read in order to minimize runtime.

  if {[file exists ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]} {
    set_app_var enable_rule_based_query true
    puts "RM-Info: Sourcing script file [which ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]\n"
    source -echo -verbose ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}
    set_app_var enable_rule_based_query false 
  }


  # Use write_floorplan to save the applied floorplan.

  # Note: A secondary floorplan file ${DCRM_DCT_FLOORPLAN_OUTPUT_FILE}.objects
  #       might also be written to capture physical-only objects in the design.
  #       This file should be read in before reading the main floorplan file.

  write_floorplan -all ${RESULTS_DIR}/${DCRM_DCT_FLOORPLAN_OUTPUT_FILE}

  # Verify that all the desired physical constraints have been applied
  # Add the -pre_route option to include pre-routes in the report
  report_physical_constraints > ${REPORTS_DIR}/${DCRM_DCT_PHYSICAL_CONSTRAINTS_REPORT}
}

#################################################################################
# Apply Additional Optimization Constraints
#################################################################################

# Prevent assignment statements in the Verilog netlist.
set_fix_multiple_port_nets -all -buffer_constants

# Fix hold time violations
set_fix_hold [all_clocks]

if {[shell_is_in_topographical_mode]} {
    # Fix all DRC violations
    set_app_var compile_final_drc_fix all
}

# Optimize for area
#set_max_area 0.0

# Fix warnings about clock not being propogated through
# clock-gating cells
set_app_var case_analysis_propagate_through_icg  true

#################################################################################
# Save the compile environment snapshot for the Consistency Checker utility.
#
# This utility checks for inconsistent settings between Design Compiler and
# IC Compiler which can contribute to correlation mismatches.
#
# Download this utility from SolvNet.  See the following SolvNet article for
# complete details:
#
# https://solvnet.synopsys.com/retrieve/026366.html
#
# The article is titled: "Using the Consistency Checker to Automatically Compare
# Environment Settings Between Design Compiler and IC Compiler"
#################################################################################

# Uncomment the following to snapshot the environment for the Consistency Checker

# write_environment -consistency -output ${REPORTS_DIR}/${DCRM_CONSISTENCY_CHECK_ENV_FILE}

#################################################################################
# Check for Design Errors
#################################################################################

if {${HIERARCHICAL}} {

    if {(${ICC_BLOCK_ABSTRACTION_DESIGNS} != "") || (${DC_BLOCK_ABSTRACTION_DESIGNS} != "") ||   (${DC_BLOCK_ABSTRACTION_DESIGNS_TIO} != "")} {
        check_block_abstraction
    }

}

check_design -summary
check_design > ${REPORTS_DIR}/${DCRM_CHECK_DESIGN_REPORT}

#################################################################################
# Compile the Design
#
# Recommended Options:
#
#     -scan
#     -gate_clock (-self_gating)
#     -retime
#     -timing_high_effort_script
#     -spg
#
# Use compile_ultra as your starting point. For test-ready compile, include
# the -scan option with the first compile and any subsequent compiles.
#
# Use -gate_clock to insert clock-gating logic during optimization.  This
# is now the recommended methodology for clock gating.
#
# Note: You can use -self_gating option in addition to -gate_clock for 
#       potentially saving additional dynamic power, in topographical mode 
#       only. Registers that are not clock gated will be considered for XOR
#       self gating.
#       XOR self gating should be performed along with clock gating, using 
#       -gate_clock and -self_gating options. XOR self gates will be inserted 
#       only if there is potential power saving without degrading the timing.
#       An accurate switching activity annotation either by reading in a saif 
#       file or through set_switching_activity command is recommended.
#       You can use "set_self_gating_options" command to specify self-gating 
#       options. For example, to specify that the inserted self-gates be merged
#       with traditional clock gates, you can use the following:
#
#       set_self_gating_options -interaction_with_clock_gating  merge
#
# Use -retime to enable adaptive retiming optimization for further timing benefit.
#
# The -timing_high_effort_script option can be used to try and improve the
# optimization results at the tradeoff of some additional runtime.
#
# Use the -spg option to enable Design Compiler Graphical physical guidance flow.
# The physical guidance flow improves QoR, area and timing correlation, and congestion.
# It also improves place_opt runtime in IC Compiler.
#
# Note: In addition to -spg option you can enable the support of via resistance for 
#       RC estimation to improve the timing correlation with IC Compiler by using the 
#       following setting:
#
#       set_app_var spg_enable_via_resistance_support true
#
# You can selectively enable or disable the congestion optimization on parts of 
# the design by using the set_congestion_optimization command.
# This option requires a license for Design Compiler Graphical.
#
# The constant propagation is enabled when boundary optimization is disabled. In 
# order to stop constant propagation you can do the following
#
# set_compile_directives -constant_propagation false <object_list>
#
# Note: Layer optimization is on by default in Design Compiler Graphical, to 
#       improve the the accuracy of certain net delay during optimization.
#       To disable the the automatic layer optimization you can use the 
#       -no_auto_layer_optimization option.
#
#################################################################################

if {[shell_is_in_topographical_mode]} {
    # Use the "-check_only" option of "compile_ultra" to verify that your
    # libraries and design are complete and that optimization will not fail
    # in topographical mode.  Use the same options as will be used in compile_ultra.
    
    compile_ultra -gate_clock -check_only
}

if {$DP_RUN} {
    compile_ultra -gate_clock -no_autoungroup 
} else {
    compile_ultra -gate_clock 
}

#################################################################################
# High-effort area optimization
#
# optimize_netlist -area command, was introduced in I-2013.12 release to improve
# area of gate-level netlists. The command performs monotonic gate-to-gate 
# optimization on mapped designs, thus improving area without degrading timing or
# leakage. 
#################################################################################

# Tthis command is unstable, sometimes crashes?
#optimize_netlist -area

#################################################################################
# Write Out Final Design and Reports
#
#        .ddc:   Recommended binary format used for subsequent Design Compiler sessions
#    Milkyway:   Recommended binary format for IC Compiler
#        .v  :   Verilog netlist for ASCII flow (Formality, PrimeTime, VCS)
#       .spef:   Topographical mode parasitics for PrimeTime
#        .sdf:   SDF backannotated topographical mode timing for PrimeTime
#        .sdc:   SDC constraints for ASCII flow
#
#################################################################################

if {!${HIERARCHICAL}} {

    # If this will be a sub-block in a hierarchical design, uniquify with block unique names
    # to avoid name collisions when integrating the design at the top level
    
    set_app_var uniquify_naming_style "${DESIGN_NAME}_%s_%d"
    uniquify -force
}

change_names -rules verilog -hierarchy

create_block_abstraction

if {!${HIERARCHICAL}} {

    #################################################################################
    # Write out Design
    #################################################################################
    
    write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
    write -format ddc     -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
    
    # Write and close SVF file and make it available for immediate use
    set_svf -off

}

#################################################################################
# Write out Design Data
#################################################################################

if {[shell_is_in_topographical_mode]} {

  # Note: A secondary floorplan file ${DCRM_DCT_FINAL_FLOORPLAN_OUTPUT_FILE}.objects
  #       might also be written to capture physical-only objects in the design.
  #       This file should be read in before reading the main floorplan file.

  write_floorplan -all ${RESULTS_DIR}/${DCRM_DCT_FINAL_FLOORPLAN_OUTPUT_FILE}

  # If the DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE variable has been set in dc_setup_filenames.tcl
  # file then the standard cell physical guidance is being created to support SPG ASCII hand-off
  # to IC Compiler by the write_def command.
  # Invoking write_def commands requires a Design Compiler Graphical license or an IC Compiler
  # Design Planning license.

  if {[info exists DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE]} {
    write_def -components -output ${RESULTS_DIR}/${DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE}
  }

  # Write parasitics data from Design Compiler Topographical placement for static timing analysis
  write_parasitics -output ${RESULTS_DIR}/${DCRM_DCT_FINAL_SPEF_OUTPUT_FILE}

  # Write SDF backannotation data from Design Compiler Topographical placement for static timing analysis
  write_sdf ${RESULTS_DIR}/${DCRM_DCT_FINAL_SDF_OUTPUT_FILE}

  # Do not write out net RC info into SDC
  set_app_var write_sdc_output_lumped_net_capacitance false
  set_app_var write_sdc_output_net_resistance false
}

write_sdc -nosplit ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}

# If SAIF is used, write out SAIF name mapping file for PrimeTime-PX
# saif_map -type ptpx -write_map ${RESULTS_DIR}/${DESIGN_NAME}.mapped.SAIF.namemap

#################################################################################
# Generate Final Reports
#################################################################################

report_qor > ${REPORTS_DIR}/${DCRM_FINAL_QOR_REPORT}

# Create a QoR snapshot of timing, physical, constraints, clock, power data, and routing on 
# active scenarios and stores it in the location  specified  by  the icc_snapshot_storage_location 
# variable. 

if {[shell_is_in_topographical_mode]} {
  set icc_snapshot_storage_location ${REPORTS_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_FOLDER}
  create_qor_snapshot -name ${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT} > ${REPORTS_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT}
}

report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_TIMING_REPORT}
report_timing -transition_time -nets -attributes -nosplit -max_paths 10 > ${REPORTS_DIR}/${DCRM_MAX_PATH_TIMING_REPORT}
report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay max > ${REPORTS_DIR}/${DCRM_FINAL_TIMING_MAX_DELAY_REPORT} 
report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay min > ${REPORTS_DIR}/${DCRM_FINAL_TIMING_MIN_DELAY_REPORT}
report_timing -loop -max_paths 10 > ${REPORTS_DIR}/${DCRM_FINAL_TIMING_LOOP_REPORT}


if {[shell_is_in_topographical_mode]} {
  report_area -physical -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_AREA_REPORT}
} else {
  report_area -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_AREA_REPORT}
}

if {[shell_is_in_topographical_mode]} {
  # report_congestion (topographical mode only) uses zroute for estimating and reporting 
  # routing related congestion which improves the congestion correlation with IC Compiler.
  # Design Compiler Topographical supports create_route_guide command to be consistent with IC
  # Compiler after topographical mode synthesis.
  # Those commands require a license for Design Compiler Graphical.

  #report_congestion > ${REPORTS_DIR}/${DCRM_DCT_FINAL_CONGESTION_REPORT}

  # Use the following to generate and write out a congestion map from batch mode
  # This requires a GUI session to be temporarily opened and closed so a valid DISPLAY
  # must be set in your UNIX environment.

  # No license for this
  #if {[info exists env(DISPLAY)]} {
  #  gui_start

  #  # Create a layout window
  #  set MyLayout [gui_create_window -type LayoutWindow]

  #  # Build congestion map in case report_congestion was not previously run
  #  report_congestion -build_map

  #  # Display congestion map in layout window
  #  gui_show_map -map "Global Route Congestion" -show true

  #  # Zoom full to display complete floorplan
  #  gui_zoom -window [gui_get_current_window -view] -full

  #  # Write the congestion map out to an image file
  #  # You can specify the output image type with -format png | xpm | jpg | bmp

  #  # The following saves only the congestion map without the legends
  #  gui_write_window_image -format png -file ${REPORTS_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_OUTPUT_FILE}

  #  # The following saves the entire congestion map layout window with the legends
  #  gui_write_window_image -window ${MyLayout} -format png -file ${REPORTS_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_WINDOW_OUTPUT_FILE}

  #  gui_stop
  #} else {
  #  puts "Information: The DISPLAY environment variable is not set. Congestion map generation has been skipped."
  #}
}

# Use SAIF file for power analysis
# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose

report_power -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_POWER_REPORT}
report_clock_gating -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_CLOCK_GATING_REPORT}

report_constraint > ${REPORTS_DIR}/${DCRM_FINAL_CONSTRAINT_REPORT}
report_constraint -all_violators -verbose > ${REPORTS_DIR}/${DCRM_FINAL_VIOLATIONS_REPORT}

# Uncomment the next line if you include the -self_gating to the compile_ultra command
# to report the XOR Self Gating information.
# report_self_gating  -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_SELF_GATING_REPORT}

# Uncomment the next line to reports the number, area, and  percentage  of cells 
# for each threshold voltage group in the design.
report_threshold_voltage_group -nosplit > ${REPORTS_DIR}/${DCRM_THRESHOLD_VOLTAGE_GROUP_REPORT}

if {!${HIERARCHICAL}} {

    #################################################################################
    # Create Design Compiler ILM for Hierarchical Flow
    #
    # If the design makes use of latch time borrowing, ILM compaction should
    # be disabled with the following option:
    #
    # create_ilm -compact none
    #################################################################################
    
    if {${DC_ILM_HIER_DESIGNS} != ""} {
      # Write out the original interface timing before creating the ILM
      write_interface_timing -nosplit ${REPORTS_DIR}/${DCRM_FINAL_INTERFACE_TIMING_REPORT}
    
      create_ilm
    
      # Write out the interface timing after creating the ILM
      write_interface_timing -nosplit ${REPORTS_DIR}/${DCRM_FINAL_ILM_INTERFACE_TIMING_REPORT}
    
      # Now verify that the ILM interface timing matches the original design using compare_interface_timing
      # For more information about interface timing differences that can occur with ILM creation,
      # refer to the following SolvNet article: "ILM Creation and Verification Guidelines - 
      # Using the write_interface_timing and compare_interface_timing Commands"
      # https://solvnet.synopsys.com/retrieve/029724.html
    
      compare_interface_timing \
                  ${REPORTS_DIR}/${DCRM_FINAL_INTERFACE_TIMING_REPORT} \
                  ${REPORTS_DIR}/${DCRM_FINAL_ILM_INTERFACE_TIMING_REPORT} \
                  -output ${REPORTS_DIR}/${DCRM_FINAL_ILM_CHECK_INTERFACE_TIMING_REPORT} \
                  -nosplit -sort_by_worst
      write -format ddc -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_ILM_DDC_OUTPUT_FILE}
    }

} else {

    ################################################################################
    # Write out Top-Level Design Without Hierarchical Blocks
    #
    # Note: Beginning in D-2010.03, the write command will automatically skip writing
    #       out IC Compiler ILMs, Design Compiler ILMs, and .ddc physical hierarchical
    #       blocks in Design Compiler topographical mode. Design Compiler block 
    #       abstractions blocks are automatically skip. DC WLM mode still need to be 
    #       removed before writing out the top-level design.
    #
    #       For the multivoltage flow, the hierarchical blocks still need to be manually
    #       removed in order to only save the top-level UPF data.
    #
    # When reading the design into other tools, read in all of the mapped
    # hierarchical blocks and the mapped top-level design.
    #
    # For IC Compiler: Replace the Design Compiler ILMs and Design Compiler block
    #                  abstractions with the complete block mapped netlist.
    # For Formality: Verify each block (fm.tcl) and top (fm_top.tcl) separately.
    #
    #################################################################################
    
    # Writing out the updated Design Compiler blocks with transparent interface optimization
    foreach design "${DC_BLOCK_ABSTRACTION_DESIGNS_TIO}" {
     write -format ddc -hierarchy -output ${RESULTS_DIR}/[dcrm_mapped_tio_filename $design] $design
    }
    
    # Remove the hierarchical designs before writing out the top-level design
    if {![shell_is_in_topographical_mode]} {
      if {[get_designs -quiet ${DDC_HIER_DESIGNS}] != "" } {
        remove_design -hierarchy [get_designs -quiet ${DDC_HIER_DESIGNS}]
      }
    }
    
    write -format verilog  -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
    
    # Remove the hierarchical designs before writing out the top-level design 
    if {![shell_is_in_topographical_mode]} {
      if {[get_designs -quiet ${DDC_HIER_DESIGNS}] != "" } {
        remove_design -hierarchy [get_designs -quiet ${DDC_HIER_DESIGNS}]
      }
    }
    
    # Write out ddc mapped top-level design
    write -format ddc -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
    
    # Write and close SVF file
    set_svf -off

}

# Note: Do not write out the Milkyway design partitions for hierarchical flow
#       Milkyway design partitioning is done during hierarchical design planning 
#       in IC Compiler (ICC-HRM)

exit
