#Read All Files
read_file -format verilog  {../rtl/top.v}
#read_file -format sverilog  top.sv
current_design top
link

#Setting Clock Constraints
source -echo -verbose DC.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
compile -exact_map -map_effort high

write -format ddc     -hierarchy -output "../syn/top_syn.ddc"
write_sdf -version 2.1  ../syn/top_syn.sdf
write -format verilog -hierarchy -output ../syn/top_syn.v
report_area > ../syn/area.log
report_timing -attributes > ../syn/timing.log
report_power > ../syn/power.log
report_qor   >  ../syn/top_syn.qor

