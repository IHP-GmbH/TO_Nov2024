# GLOBAL PARAMS

set CYCLE 10
set INPUT_DLY [expr 0.5*$CYCLE]
set OUTPUT_DLY [expr 0.5*$CYCLE]


# CLOCK CONSTRAINTS

# Create 100MHz clock
create_clock -name clk_100m -period $CYCLE  [get_ports clk_100m]

#Create 25MHz clock
create_generated_clock -name clk_pix -source [get_port clk_100m] -divide_by 4 [get_pins divider_inst/clk_pix]

# Rising clock edge for each DFF will be 0.2ns
set_clock_transition 0.2  [get_clocks clk_100m]

# Clock jitter
set_clock_uncertainty 0.2 [get_clocks clk_100m]


# IO CONSTRAINTS
# Delays outside the chip

# Starting with rising edge of the clk how long it takes the signal to get to the INPUT PORT
set_input_delay -max $INPUT_DLY -clock clk_100m [remove_from_collection [all_inputs] [get_ports clk_100m]] ;# setup time check
set_input_delay -min 0 -clock clk_100m [remove_from_collection [all_inputs] [get_ports clk_100m]] ;# hold time check
# remove_from_collection to skip this delay on the clk input

# Starting with the rising edge of the clk how long it takes the signal to get from the OUTPUT PORT to the EXTERNAL DFF input
set_output_delay -max $OUTPUT_DLY -clock clk_100m [all_outputs] ;# setup time check
set_output_delay -min 0 -clock clk_100m [all_outputs] ;# hold time check

# Set a cell that will drive chip input can also set input transition instead
# set_driving_cell -cell [get_lib_cells MYLIB/INV4] -pin Z [remove_from_collection [all_inputs] [get_ports clk_100m]]
# Alternatively set transition manually
set_input_transition 0.5 [all_inputs]

# And set the capacitance on chip outputs
set_load 0.05 [all_outputs]


# DRV (DESIGN RULE VIOLATION) CONSTRAINTS

# Tools should read the following two command values from .lib automatically
# Maximum allowed transition time through a net (to fit inside the delay table in .lib)
#set_max_transition 3 [all_inputs]
# Maximum capacitive load of a net (to fit inside the delay table in .lib)
#set_max_capacitance 0.15 [all_inputs]

#set_max_fanout 10 [all_inputs]

set_wireload 0.05



