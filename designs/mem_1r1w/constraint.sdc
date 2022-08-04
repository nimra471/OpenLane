current_design mem_1r1w


#set $::env(IO_PCT) "0.2" #input_output delay percentage set by default

create_clock [get_ports $::env(CLOCK_PORT)] -name $::env(CLOCK_PORT) -period $::env(CLOCK_PERIOD) # clock definition 

set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]   #set the input delay value

set_input_delay $input_delay_value -clock [get_clock $::env(CLOCK_PORT)] [all_inputs] #apply input delay to all input to achieve better timing

set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)] #set the output_delay_value 

set_output_delay $output_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs] #apply output delay to all outputs