# User config
set ::env(DESIGN_NAME) mem_1r1w

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_BUFFER_FANOUT) {5}

# Fill this
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "clk"
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) {0 0 300 300}
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_CORE_RING) 1
set ::env(SYNTH_MAX_FANOUT) 5
set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

