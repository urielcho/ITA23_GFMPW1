###############################################################################
# Created by write_sdc
# Fri Nov 10 19:00:20 2023
###############################################################################
current_design ita58
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {segm[13]}]
set_load -pin_load 0.1900 [get_ports {segm[12]}]
set_load -pin_load 0.1900 [get_ports {segm[11]}]
set_load -pin_load 0.1900 [get_ports {segm[10]}]
set_load -pin_load 0.1900 [get_ports {segm[9]}]
set_load -pin_load 0.1900 [get_ports {segm[8]}]
set_load -pin_load 0.1900 [get_ports {segm[7]}]
set_load -pin_load 0.1900 [get_ports {segm[6]}]
set_load -pin_load 0.1900 [get_ports {segm[5]}]
set_load -pin_load 0.1900 [get_ports {segm[4]}]
set_load -pin_load 0.1900 [get_ports {segm[3]}]
set_load -pin_load 0.1900 [get_ports {segm[2]}]
set_load -pin_load 0.1900 [get_ports {segm[1]}]
set_load -pin_load 0.1900 [get_ports {segm[0]}]
set_load -pin_load 0.1900 [get_ports {sel[11]}]
set_load -pin_load 0.1900 [get_ports {sel[10]}]
set_load -pin_load 0.1900 [get_ports {sel[9]}]
set_load -pin_load 0.1900 [get_ports {sel[8]}]
set_load -pin_load 0.1900 [get_ports {sel[7]}]
set_load -pin_load 0.1900 [get_ports {sel[6]}]
set_load -pin_load 0.1900 [get_ports {sel[5]}]
set_load -pin_load 0.1900 [get_ports {sel[4]}]
set_load -pin_load 0.1900 [get_ports {sel[3]}]
set_load -pin_load 0.1900 [get_ports {sel[2]}]
set_load -pin_load 0.1900 [get_ports {sel[1]}]
set_load -pin_load 0.1900 [get_ports {sel[0]}]
set_input_transition 0.6100 [get_ports {clk}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 4.0000 [current_design]
