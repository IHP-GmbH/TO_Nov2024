#!/bin/bash
# Create SPICE file from gatelevel (structured) Verilog using QFlow tools
# for IHP SG13G2.
#
# SPDX-FileCopyrightText: 2024 Harald Pretl
# Johannes Kepler University, Institute for Integrated Circuits
# SPDX-License-Identifier: Apache-2.0

# Convert to powered Verilog
vlog2Verilog -v VDD -g VSS -c -o tmp1.v $1

# Convert to SPICE
# 4simulation - use .include for the spice library 
vlog2Spice -d -l $PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice -o tmp2.spice tmp1.v

# 4LVS include the subcells as subckt in the text
#vlog2Spice -i -d -l $PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice -o tmp2.spice tmp1.v

# Remove filler cells
sed -i '/_fill_/d' tmp2.spice

# Remove '\', '$', '[' and ']'
sed -i 's/\\//g' tmp2.spice
sed -i 's/\$//g' tmp2.spice
sed -i 's/\[//g' tmp2.spice
sed -i 's/\]//g' tmp2.spice

# Change MOSFET from subcircuit to primitive
sed -i '/sg13_lv_nmos/ s/^./M/g' tmp2.spice
sed -i '/sg13_lv_pmos/ s/^./M/g' tmp2.spice

# Create output file
FIN=$1
FOUT=${FIN%.*}
cp tmp2.spice $FOUT.spice

# Cleanup
rm -f tmp1.v
rm -f tmp2.spice
