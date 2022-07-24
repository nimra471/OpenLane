# User config
set ::env(DESIGN_NAME) regfile_2r1w


# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(DESIGN_DIR)/bb/*.v]
set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/macros/lef/*.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/macros/gds/*.gds]

#set ::env(FP_ASPECT_RATIO) 2

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) {0 0 1000 1000}
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro_placement.cfg
set ::env(PL_RANDOM_GLB_PLACEMENT) 1
#set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) {0}
set ::env(FP_PDN_CHECK_NODES) 0
#set ::env(SYNTH_STRATEGY) "AREA 1"
#set ::env(SYNTH_MAX_FANOUT) 4
# Fill this

set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "clk"
set ::env(FP_PDN_CORE_RING) 1
set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

