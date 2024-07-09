# operating conditions and boundary conditions #

set clk_period  1.0

set input_max   [expr {double(round(1000*$clk_period * 0.6))/1000}]
set input_min   [expr {double(round(1000*$clk_period * 0.0))/1000}]
set output_max  [expr {double(round(1000*$clk_period * 0.6))/1000}]
set output_min  [expr {double(round(1000*$clk_period * 0.0))/1000}]

create_clock -period $clk_period [get_ports  clk]
set_dont_touch_network      [get_clocks clk]
set_clock_uncertainty  0.02  [get_clocks clk]
set_clock_latency      0.2   [get_clocks clk]

set_input_delay  -clock clk  -max $input_max  [all_inputs]
set_input_delay  -clock clk  -min $input_min  [all_inputs]

set_output_delay -clock clk  -max $output_max [all_outputs]
set_output_delay -clock clk  -min $output_min [all_outputs]

set_driving_cell -library N16ADFP_StdCellss0p72vm40c -lib_cell BUFFD4BWP16P90LVT -pin {Z} [get_ports clk]
set_driving_cell -library N16ADFP_StdCellss0p72vm40c -lib_cell DFQD1BWP16P90LVT  -pin {Q} [remove_from_collection [all_inputs] [get_ports clk]]
set_load [load_of "N16ADFP_StdCellss0p72vm40c/DFQD1BWP16P90LVT/D"] [all_outputs]

set_operating_conditions -min_library N16ADFP_StdCellff0p88v125c -min ff0p88v125c \
                         -max_library N16ADFP_StdCellss0p72vm40c -max ss0p72vm40c
set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c                       

set_max_fanout 20 [all_inputs]
