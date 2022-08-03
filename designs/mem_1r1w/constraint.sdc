current_design mem_1r1w

create_clock [get_ports $::env(CLOCK_PORT)] -name $::env(CLOCK_PORT) -period $::env(CLOCK_PERIOD)

set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]

set_input_delay $input_delay_value -clock [get_clock $::env(CLOCK_PORT)] [all_inputs]

set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]

set_output_delay $output_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]