v {xschem version=3.4.6RC file_version=1.2
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2023 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
G {}
K {}
V {}
S {}
E {}
B 2 4770 -1230 5400 -900 {flags=graph,unlocked

sim_type=dc
y1=-1.6
y2=1.6
divy=4
subdivy=1
x1=-0.01
x2=0.01
divx=6
subdivx=1
node="in+
ip+"
color="8 7"
dataset=-1

sweep=v-sweep

autoload=1
rawfile=[rawfilestart]_dc_zoom_mostt.spice.raw}
B 2 4770 -500 5400 -170 {flags=graph,unlocked

sim_type=tran
y1=-2
y2=2
divy=4
subdivy=1
x1=2
x2=2
divx=6
subdivx=1
node="out_psweep
out_nsweep
minus
plus"
color="8 7 4 21"
dataset=0
rawfile= [rawfilestart].raw[rawfilestart]_dc_zoom_mostt.spice.raw
autoload=1}
B 2 4770 -1960 5400 -1630 {flags=graph,unlocked

sim_type=dc
y1=0
y2=30u
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
color="5 4 8 8 7"
node="i(vmeas9)
i(vmeas7)
i(vmeas10)
i(vmeas11)
\\"0 i(vdd) -\\""}
B 2 4770 -890 5400 -560 {flags=graph,unlocked

sim_type=dc
y1=0
y2=100
divy=5
subdivy=1
x1=-0.01
x2=0.01
divx=6
subdivx=1
node="\\"Ap [db]; in+ deriv() abs() db20() 0 max()\\"
\\"An [db]; ip+ deriv() abs() db20() 0 max()\\"


\\"A(p-n) [db]; ip+ in+ - deriv() abs() db20() 0 max()\\""
color="8 7 4"
dataset=-1

sweep=v-sweep
rawfile= [rawfilestart]_dc_zoom_mostt.spice.raw
logy=0
autoload=1}
B 2 4090 -1960 4720 -1630 {flags=graph,unlocked
sim_type=ac
y1=-100
y2=0

subdivy=1
x1=3
x2=9
divx=6
subdivx=8



dataset=-1
color=8
node="\\"out db20()\\""
hilight_wave=-1
logx=1
xlabmag=1.4
divy=6
ylabmag=1.2

logy=0
rawfile= $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw
autoload=1}
B 2 4090 -1620 4720 -1290 {flags=graph,unlocked
sim_type=ac
y1=-180
y2=180
divy=4
subdivy=1
x1=3.3
x2=9.3
divx=6
subdivx=8



dataset=-1
color="8 7"
node="tcleval(\\"ph p iset0; ph(in+)\\")
tcleval(\\"ph n iset0; ph(ip+)\\")"
hilight_wave=-1
logx=1
xlabmag=1.4

rawfile= [rawfilestart]_ac_mostt.spice.raw
autoload=1}
B 2 4090 -500 4720 -170 {flags=graph,unlocked
sim_type=ac
y1=-39
y2=0
divy=4
subdivy=1
x1=3
x2=9
divx=6
subdivx=8



dataset=-1
color="8 4"
node="tcleval(\\"cm $iset0; cm+ db20() %0\\")

\\"0; frequency 0 *\\""
hilight_wave=-1
logx=1
xlabmag=1.4

rawfile= [rawfilestart]_ac.spice.raw
autoload=1}
B 2 4090 -1230 4720 -900 {flags=graph,unlocked
sim_type=ac
y1=-90
y2=0

subdivy=1
x1=3
x2=9
divx=6
subdivx=8



dataset=-1
color="8 5 6 15 4"
node="\\"cmn+ db20()\\"
\\"cmp+ db20()\\"
\\"cmn- db20()\\"
\\"cmp- db20()\\"

\\"0; frequency 0 *\\""
hilight_wave=-1
logx=1
xlabmag=1.4
divy=5
ylabmag=1.2

logy=0
rawfile=[rawfilestart]_ac_mostt.spice.raw
autoload=1}
B 2 4090 -890 4720 -560 {flags=graph,unlocked
sim_type=ac
y1=-27
y2=3

subdivy=1
x1=3
x2=9
divx=6
subdivx=8



dataset=-1
color="8 5 7 10 9 9"
node="\\"x8.in_buf db20()\\"
\\"x8.ip_buf db20()\\"
\\"x3.in_buf db20()\\"
\\"x3.ip_buf db20()\\"
\\"plus db20() 1 +\\"
\\"minus db20() 1 +\\""
hilight_wave=-1
logx=1
xlabmag=1.4
divy=5
ylabmag=1.2

logy=0
rawfile= [rawfilestart]_ac_mostt.spice.raw
autoload=1}
B 2 5410 -1620 6040 -1290 {flags=graph,unlocked

sim_type=dc
y1=-0
y2=5.2e-06
divy=4
subdivy=1
x1=-1.5
x2=3.5
divx=6
subdivx=1


dataset=0
rawfile= [rawfilestart]_dc.raw
color="7 7 5 5 4"
node="i(v.x4.vmeas13)
i(v.x4.vmeas11)
i(v.x3.vmeas13)
i(v.x3.vmeas11)
\\"v-sweep 0 *\\""
autoload=1}
B 2 80 -1440 710 -1110 {flags=graph,unlocked

sim_type=dc
y1=-1
y2=4
divy=4
subdivy=1

x2=4
divx=6
subdivx=1
node="out
vdd
mpa1
mpa10
gates
net15
out1"
color="4 8 5 15 7 8 12"
dataset=-1
rawfile= $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
autoload=1
linewidth_mult=2
x1=-0}
B 2 80 -1100 710 -770 {flags=graph,unlocked

sim_type=dc
y1=-1u
y2=30u
divy=4
subdivy=1
x1=0.3
x2=3.3
divx=6
subdivx=1


dataset=-1

autoload=1


color="7 8 4 12"
node="i(vmeas7)
i(vmeas9)
i(vmeas13)
i(vzero)"
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw}
B 2 80 -760 710 -430 {flags=graph,unlocked

sim_type=dc
y1=0
y2=-300u
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1
node=i(vdd)
color=8
dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw}
B 2 80 -420 710 -90 {flags=graph,unlocked

sim_type=dc
y1=0
y2=2
divy=4
subdivy=1
x1=-50
x2=150
divx=6
subdivx=1


dataset=-1

autoload=1

color="9 5 7 10 14 14 8 4 4 4 4"
node="\\"out .001 +\\"
\\"out 1.5 - 10 *\\"
mpa1
mpa10
\\"mpa1 mpa10 - 10 *\\"
\\"mpa1 mpa2 - 1000 *\\"
out1
out%$\{netlist_dir\}/$\{schematic\}_temp_mosff.raw
out%$\{netlist_dir\}/$\{schematic\}_temp_mosss.raw
out%$\{netlist_dir\}/$\{schematic\}_temp_mosfs.raw
out%$\{netlist_dir\}/$\{schematic\}_temp_mossf.raw"
rawfile=$\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw}
B 2 5410 -890 6040 -560 {flags=graph,unlocked

sim_type=dc
y1=0
y2=100
divy=5
subdivy=1
x1=-0.01
x2=0.01
divx=6
subdivx=1
node="\\"A(p-n) [db]; ip+ in+ - deriv() abs() db20() 0 max()%1\\"
\\"A(p-n) [db]; ip+ in+ - deriv() abs() db20() 0 max()%2\\"
\\"A(p-n) [db]; ip+ in+ - deriv() abs() db20() 0 max()%0\\"


\\"A(p-n) [db]; ip+ in+ - deriv() abs() db20() 0 max()%3\\""
color="8 5 4 7"
dataset=-1

sweep=v-sweep

logy=0
autoload=1
rawfile=[rawfilestart]_dc_zoom_mostt.spice.raw}
B 2 4770 -1620 5400 -1290 {flags=graph,unlocked

sim_type=dc
y1=0
y2=50u
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
color="5 4"
node="i(vmeas12)
i(vmeas14)"}
B 2 5410 -1960 6040 -1630 {flags=graph,unlocked

sim_type=dc
y1=0
y2=200u
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
color="5 4 8 8 7"
node="i(vmeas9)
i(vmeas7)
i(vmeas10)
i(vmeas11)
\\"0 i(vdd) -\\""}
T {Transient Analysis} 4770 -540 0 0 0.6 0.6 { layer=2}
T {DC zoom Analysis} 4770 -1270 0 0 0.6 0.6 { layer=2}
T {DC Analysis} 4770 -2000 0 0 0.6 0.6 { layer=2}
T {AC Analysis} 4090 -2000 0 0 0.6 0.6 { layer=2}
T {AC CM Analysis} 4090 -540 0 0 0.6 0.6 { layer=2}
T {AC PSRR Analysis} 4090 -1270 0 0 0.6 0.6 { layer=2}
T {tcleval(loaded .raw files: 
[xschem raw info])} 800 -320 0 0 0.3 0.3 {floater=true layer=16}
N 2540 -2480 2580 -2480 {
lab=IOVDD}
N 2380 -2480 2420 -2480 {
lab=VSS}
N 2510 -2580 2510 -2550 {
lab=gates}
N 2500 -2580 2500 -2550 {
lab=gates}
N 2500 -2580 2510 -2580 {
lab=gates}
N 2240 -2500 2240 -2480 {
lab=#net1}
N 2240 -2500 2420 -2500 {
lab=#net1}
N 2640 -2720 2640 -2670 {
lab=IOVDD}
N 2320 -2720 2320 -2670 {
lab=IOVDD}
N 2960 -2720 2960 -2670 {
lab=IOVDD}
N 2320 -2040 2320 -1990 {lab=VSS}
N 2360 -2090 2380 -2090 {lab=VSS}
N 2520 -2060 2520 -1990 {lab=VSS}
N 2440 -2060 2440 -1990 {lab=VSS}
N 2320 -2200 2350 -2200 {lab=#net2}
N 2440 -2200 2450 -2200 {lab=mpa1}
N 2520 -2200 2550 -2200 {lab=mpa2}
N 2320 -2200 2320 -2120 {lab=#net2}
N 2440 -2200 2440 -2120 {lab=mpa1}
N 2410 -2200 2440 -2200 {lab=mpa1}
N 2520 -2200 2520 -2120 {lab=mpa2}
N 2510 -2200 2520 -2200 {lab=mpa2}
N 2320 -2610 2320 -2200 {lab=#net2}
N 2960 -2050 2960 -1980 {lab=VSS}
N 2640 -2610 2640 -2200 {lab=#net3}
N 2640 -2200 2640 -2170 {lab=#net3}
N 2610 -2200 2640 -2200 {lab=#net3}
N 2640 -2110 2640 -2090 {lab=mpa10}
N 2380 -2480 2380 -2420 {lab=VSS}
N 2480 -2580 2480 -2550 {
lab=gates}
N 2320 -2040 2380 -2040 {lab=VSS}
N 2320 -2060 2320 -2040 {lab=VSS}
N 2380 -2090 2380 -2040 {lab=VSS}
N 2550 -2040 2640 -2040 {lab=VSS}
N 2600 -2090 2600 -2070 {lab=mpa10}
N 2670 -2090 2680 -2090 {lab=mpa10}
N 2680 -2090 2680 -2070 {lab=mpa10}
N 2670 -2090 2670 -2070 {lab=mpa10}
N 2660 -2090 2670 -2090 {lab=mpa10}
N 2660 -2090 2660 -2070 {lab=mpa10}
N 2650 -2090 2660 -2090 {lab=mpa10}
N 2650 -2090 2650 -2070 {lab=mpa10}
N 2640 -2090 2650 -2090 {lab=mpa10}
N 2640 -2090 2640 -2070 {lab=mpa10}
N 2630 -2090 2640 -2090 {lab=mpa10}
N 2630 -2090 2630 -2070 {lab=mpa10}
N 2620 -2090 2630 -2090 {lab=mpa10}
N 2620 -2090 2620 -2070 {lab=mpa10}
N 2610 -2090 2620 -2090 {lab=mpa10}
N 2610 -2090 2610 -2070 {lab=mpa10}
N 2600 -2090 2610 -2090 {lab=mpa10}
N 2680 -2010 2680 -1990 {lab=VSS}
N 2600 -1990 2610 -1990 {lab=VSS}
N 2600 -2010 2600 -1990 {lab=VSS}
N 2610 -2010 2610 -1990 {lab=VSS}
N 2610 -1990 2620 -1990 {lab=VSS}
N 2620 -2010 2620 -1990 {lab=VSS}
N 2620 -1990 2630 -1990 {lab=VSS}
N 2630 -2010 2630 -1990 {lab=VSS}
N 2630 -1990 2640 -1990 {lab=VSS}
N 2640 -2010 2640 -1990 {lab=VSS}
N 2640 -1990 2650 -1990 {lab=VSS}
N 2650 -2010 2650 -1990 {lab=VSS}
N 2650 -1990 2660 -1990 {lab=VSS}
N 2660 -2010 2660 -1990 {lab=VSS}
N 2660 -1990 2670 -1990 {lab=VSS}
N 2670 -2010 2670 -1990 {lab=VSS}
N 2670 -1990 2680 -1990 {lab=VSS}
N 2550 -2040 2550 -1990 {lab=VSS}
N 2550 -1990 2600 -1990 {lab=VSS}
N 3120 -2720 3120 -2670 {
lab=IOVDD}
N 2480 -2580 2500 -2580 {lab=gates}
N 2480 -2640 2480 -2580 {
lab=gates}
N 2520 -2580 2520 -2550 {lab=gates}
N 2510 -2580 2520 -2580 {lab=gates}
N 2480 -2640 3080 -2640 {lab=gates}
N 2080 -2640 2080 -2480 {lab=gates}
N 2080 -2640 2480 -2640 {lab=gates}
N 2450 -2420 2450 -2350 {lab=mpa1}
N 2510 -2420 2510 -2350 {lab=mpa2}
N 2450 -2290 2450 -2200 {lab=mpa1}
N 2510 -2290 2510 -2200 {lab=mpa2}
N 2580 -2550 2580 -2480 {lab=IOVDD}
N 1600 -2440 1600 -2400 {lab=IOVSS}
N 1580 -2440 1600 -2440 {lab=IOVSS}
N 1640 -2460 1640 -2400 {lab=VSS}
N 1580 -2460 1640 -2460 {lab=VSS}
N 1580 -2520 1600 -2520 {lab=IOVDD}
N 1600 -2560 1600 -2520 {lab=IOVDD}
N 1580 -2500 1640 -2500 {lab=VDD}
N 1640 -2560 1640 -2500 {lab=VDD}
N 1360 -2560 1360 -2550 {lab=IOVDD}
N 1360 -2490 1360 -2480 {lab=BiAS}
N 1360 -2480 1460 -2480 {lab=BiAS}
N 1580 -2480 1760 -2480 {lab=#net4}
N 3280 -2440 3280 -2400 {lab=IOVSS}
N 3280 -2440 3300 -2440 {lab=IOVSS}
N 3240 -2460 3240 -2400 {lab=VSS}
N 3240 -2460 3300 -2460 {lab=VSS}
N 3280 -2520 3300 -2520 {lab=IOVDD}
N 3280 -2560 3280 -2520 {lab=IOVDD}
N 3240 -2500 3300 -2500 {lab=VDD}
N 3240 -2560 3240 -2500 {lab=VDD}
N 3420 -2480 3520 -2480 {lab=REFCUR}
N 3120 -2480 3300 -2480 {lab=#net5}
N 3120 -2610 3120 -2480 {lab=#net5}
N 2960 -2140 2960 -2110 {lab=REF}
N 3280 -2040 3280 -2000 {lab=IOVSS}
N 3280 -2040 3300 -2040 {lab=IOVSS}
N 3240 -2060 3240 -2000 {lab=VSS}
N 3240 -2060 3300 -2060 {lab=VSS}
N 3280 -2120 3300 -2120 {lab=IOVDD}
N 3280 -2160 3280 -2120 {lab=IOVDD}
N 3240 -2100 3300 -2100 {lab=VDD}
N 3240 -2160 3240 -2100 {lab=VDD}
N 3420 -2080 3520 -2080 {lab=ADJ}
N 2640 -2200 2770 -2200 {lab=#net3}
N 2830 -2200 3120 -2200 {lab=#net6}
N 3120 -2200 3120 -2080 {lab=#net6}
N 3120 -2080 3300 -2080 {lab=#net6}
N 2160 -3090 2160 -3070 {
lab=#net7}
N 3040 -1680 3040 -1550 {
lab=IOVDD}
N 2880 -3160 2880 -3120 {lab=IOVSS}
N 2860 -3160 2880 -3160 {lab=IOVSS}
N 2920 -3180 2920 -3120 {lab=VSS}
N 2860 -3180 2920 -3180 {lab=VSS}
N 2860 -3240 2880 -3240 {lab=IOVDD}
N 2880 -3280 2880 -3240 {lab=IOVDD}
N 2860 -3220 2920 -3220 {lab=VDD}
N 2920 -3280 2920 -3220 {lab=VDD}
N 3200 -3160 3200 -3120 {lab=IOVSS}
N 3180 -3160 3200 -3160 {lab=IOVSS}
N 3240 -3180 3240 -3120 {lab=VSS}
N 3180 -3180 3240 -3180 {lab=VSS}
N 3180 -3240 3200 -3240 {lab=IOVDD}
N 3200 -3280 3200 -3240 {lab=IOVDD}
N 3180 -3220 3240 -3220 {lab=VDD}
N 3240 -3280 3240 -3220 {lab=VDD}
N 2880 -2840 2880 -2800 {lab=IOVSS}
N 2860 -2840 2880 -2840 {lab=IOVSS}
N 2920 -2860 2920 -2800 {lab=VSS}
N 2860 -2860 2920 -2860 {lab=VSS}
N 2860 -2920 2880 -2920 {lab=IOVDD}
N 2880 -2960 2880 -2920 {lab=IOVDD}
N 2860 -2900 2920 -2900 {lab=VDD}
N 2920 -2960 2920 -2900 {lab=VDD}
N 3200 -2840 3200 -2800 {lab=IOVSS}
N 3180 -2840 3200 -2840 {lab=IOVSS}
N 3240 -2860 3240 -2800 {lab=VSS}
N 3180 -2860 3240 -2860 {lab=VSS}
N 3180 -2920 3200 -2920 {lab=IOVDD}
N 3200 -2960 3200 -2920 {lab=IOVDD}
N 3180 -2900 3240 -2900 {lab=VDD}
N 3240 -2960 3240 -2900 {lab=VDD}
N 3280 -1480 3280 -1440 {lab=IOVSS}
N 3280 -1480 3300 -1480 {lab=IOVSS}
N 3240 -1500 3240 -1440 {lab=VSS}
N 3240 -1500 3300 -1500 {lab=VSS}
N 3280 -1560 3300 -1560 {lab=IOVDD}
N 3280 -1600 3280 -1560 {lab=IOVDD}
N 3240 -1540 3300 -1540 {lab=VDD}
N 3240 -1600 3240 -1540 {lab=VDD}
N 2870 -1540 2900 -1540 {
lab=DRV_SHUNT}
N 2870 -1520 2900 -1520 {
lab=DRV_SHUNT}
N 2900 -1540 2900 -1520 {lab=DRV_SHUNT}
N 2710 -1490 2740 -1490 {lab=#net8}
N 2710 -1550 2740 -1550 {lab=#net9}
N 2800 -1680 2800 -1580 {lab=IOVDD}
N 2800 -1460 2800 -1360 {lab=VSS}
N 2870 -1680 2870 -1550 {lab=IOVDD}
N 2900 -1520 3000 -1520 {
lab=DRV_SHUNT}
N 2560 -1410 2560 -1360 {lab=VSS}
N 2560 -1490 2560 -1470 {lab=#net8}
N 2560 -1490 2650 -1490 {lab=#net8}
N 2560 -1570 2560 -1490 {lab=#net8}
N 3040 -1120 3040 -990 {
lab=IOVDD}
N 2870 -980 2900 -980 {
lab=DRV_VDDL}
N 2870 -960 2900 -960 {
lab=DRV_VDDL}
N 2900 -980 2900 -960 {lab=DRV_VDDL}
N 2710 -930 2740 -930 {lab=VDD}
N 2710 -990 2740 -990 {lab=#net9}
N 2800 -1120 2800 -1020 {lab=IOVDD}
N 2800 -900 2800 -800 {lab=VSS}
N 2870 -1120 2870 -990 {lab=IOVDD}
N 2900 -960 3000 -960 {
lab=DRV_VDDL}
N 3040 -840 3040 -750 {lab=VDD}
N 2560 -1280 2780 -1280 {lab=#net4}
N 2820 -900 2820 -750 {lab=#net10}
N 2640 -930 2650 -930 {lab=VDD}
N 2640 -930 2640 -840 {lab=VDD}
N 2640 -840 3040 -840 {lab=VDD}
N 3040 -880 3040 -840 {lab=VDD}
N 2480 -1550 2650 -1550 {lab=#net9}
N 2480 -1520 2480 -990 {lab=#net9}
N 2480 -990 2650 -990 {lab=#net9}
N 2820 -1460 2820 -1310 {lab=#net11}
N 2560 -1680 2560 -1630 {lab=IOVDD}
N 3040 -1490 3040 -1370 {lab=SHUNT_GND}
N 3120 -1120 3120 -880 {lab=VDD}
N 3040 -880 3120 -880 {lab=VDD}
N 3040 -930 3040 -880 {lab=VDD}
N 3520 -1520 3520 -1500 {lab=SHUNT_GND}
N 3440 -1520 3520 -1520 {lab=SHUNT_GND}
N 2560 -720 3000 -720 {lab=#net4}
N 2160 -1480 2160 -1440 {lab=IOVSS}
N 2140 -1480 2160 -1480 {lab=IOVSS}
N 2200 -1500 2200 -1440 {lab=VSS}
N 2140 -1500 2200 -1500 {lab=VSS}
N 2140 -1560 2160 -1560 {lab=IOVDD}
N 2160 -1600 2160 -1560 {lab=IOVDD}
N 2140 -1540 2200 -1540 {lab=VDD}
N 2200 -1600 2200 -1540 {lab=VDD}
N 2480 -1550 2480 -1520 {lab=#net9}
N 2140 -1520 2480 -1520 {lab=#net9}
N 2160 -3200 2160 -3150 {
lab=IOVDD}
N 2870 -400 3120 -400 {
lab=OTA_OUT}
N 2710 -370 2740 -370 {lab=#net12}
N 2710 -430 2740 -430 {lab=#net13}
N 2800 -560 2800 -460 {lab=IOVDD}
N 2800 -340 2800 -240 {lab=VSS}
N 2870 -560 2870 -420 {lab=IOVDD}
N 2820 -340 2820 -190 {lab=#net14}
N 2560 -720 2560 -160 {lab=#net4}
N 2560 -1280 2560 -720 {lab=#net4}
N 3280 -360 3280 -320 {lab=IOVSS}
N 3280 -360 3300 -360 {lab=IOVSS}
N 3240 -380 3240 -320 {lab=VSS}
N 3240 -380 3300 -380 {lab=VSS}
N 3280 -440 3300 -440 {lab=IOVDD}
N 3280 -480 3280 -440 {lab=IOVDD}
N 3240 -420 3300 -420 {lab=VDD}
N 3240 -480 3240 -420 {lab=VDD}
N 3520 -400 3520 -380 {lab=OTA_OUT}
N 3440 -400 3520 -400 {lab=OTA_OUT}
N 2160 -480 2160 -440 {lab=IOVSS}
N 2140 -480 2160 -480 {lab=IOVSS}
N 2200 -500 2200 -440 {lab=VSS}
N 2140 -500 2200 -500 {lab=VSS}
N 2140 -560 2160 -560 {lab=IOVDD}
N 2160 -600 2160 -560 {lab=IOVDD}
N 2140 -540 2200 -540 {lab=VDD}
N 2200 -600 2200 -540 {lab=VDD}
N 2160 -240 2160 -200 {lab=IOVSS}
N 2140 -240 2160 -240 {lab=IOVSS}
N 2200 -260 2200 -200 {lab=VSS}
N 2140 -260 2200 -260 {lab=VSS}
N 2140 -320 2160 -320 {lab=IOVDD}
N 2160 -360 2160 -320 {lab=IOVDD}
N 2140 -300 2200 -300 {lab=VDD}
N 2200 -360 2200 -300 {lab=VDD}
N 2140 -280 2480 -280 {lab=#net12}
N 2480 -370 2480 -280 {lab=#net12}
N 2480 -370 2650 -370 {lab=#net12}
N 2140 -520 2480 -520 {lab=#net13}
N 2480 -520 2480 -430 {lab=#net13}
N 2480 -430 2650 -430 {lab=#net13}
N 1820 -210 1820 -160 {lab=#net4}
N 1800 -160 1820 -160 {lab=#net4}
N 1760 -210 1820 -210 {lab=#net4}
N 2560 -160 2780 -160 {lab=#net4}
N 1820 -160 2560 -160 {lab=#net4}
N 1760 -210 1760 -190 {lab=#net4}
N 1760 -2450 2200 -2450 {lab=#net4}
N 1760 -2450 1760 -210 {lab=#net4}
N 1760 -2480 1760 -2450 {lab=#net4}
N 2870 -1500 2870 -1360 {lab=VSS}
N 2870 -940 2870 -800 {lab=VSS}
N 2870 -380 2870 -240 {lab=VSS}
N 3040 -1370 3440 -1370 {lab=SHUNT_GND}
N 3440 -1520 3440 -1370 {lab=SHUNT_GND}
N 3420 -1520 3440 -1520 {lab=SHUNT_GND}
N 2160 -1280 2160 -1200 {lab=IOVSS}
N 2160 -1280 2210 -1280 {lab=IOVSS}
N 2270 -1280 2320 -1280 {lab=VSS}
N 2320 -1280 2320 -1200 {lab=VSS}
N 1920 -1410 1920 -1380 {lab=VSS}
N 1920 -1520 1920 -1470 {lab=REF}
N 1990 -1520 2020 -1520 {lab=REF}
N 1990 -1800 1990 -1520 {lab=REF}
N 1920 -1520 1990 -1520 {lab=REF}
N 1990 -1800 3040 -1800 {lab=REF}
N 3040 -2140 3040 -1800 {lab=REF}
N 2960 -2140 3040 -2140 {lab=REF}
N 2960 -2610 2960 -2140 {lab=REF}
N 1920 -520 2020 -520 {lab=OTA+}
N 1920 -280 2020 -280 {lab=OTA-}
N 3120 -400 3120 -280 {lab=OTA_OUT}
N 3120 -280 3440 -280 {lab=OTA_OUT}
N 3440 -400 3440 -280 {lab=OTA_OUT}
N 3420 -400 3440 -400 {lab=OTA_OUT}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {simulator_commands_shown.sym} 0 -1950 0 0 {name=COMMANDS1
simulator=none
only_toplevel=false 

value="tcleval(

pdk_path = [set pdk_path /home/ich/share/pdk/ihp-sg13g2]


mosfet corners: [set corners [list tt ss ff sf fs]]
mosfet corners: [set corners [list tt]]

simulations: [set simulations [list dc ac tran temp]]
simulations: [set simulations [list dc ac temp]]


ac [set fstart 1e3]..[set fend 1e9]Hz;

# pmos w/l = [set pw 2u]/[set pl 1u] dont work for TCL
# nmos w/l = [set nw 1u]/[set nl 1u] dont work for TCL
pmos w/l = [set pw 2e-6]/[set pl 1e-6]
nmos w/l = [set nw 1e-6]/[set nl 1e-6]

[proc rawfilestart \{\} \{
  global netlist_dir
  return $\{netlist_dir\}/[file rootname [file tail [xschem get current_name]]]
\}]

[proc sim_is_none \{\} \{ return 0\}] #proc to ignore "simulator=none" evaluation for ngspice

.raw-file path and namebase: [rawfilestart] 
)"}
C {simulator_commands.sym} 20 -2400 0 0 {name="NGSPiCE TCL"
simulator=ngspice
only_toplevel=true 

value="tcleval(
    * schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
    * dir: [set srcdir [file dirname [xschem get current_name]]]
    * test: [file dirname [xschem get current_name]]/OTA33_BiAS.sym

    * mos_corner: [set_ne mos_corner tt]

    .include $\{pdk_path\}/libs.tech/ngspice/models/diodes.lib 

    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerRES.lib     res_typ
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerMOShv.lib   mos_$\{mos_corner\}
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerMOSlv.lib   mos_$\{mos_corner\}
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerCAP.lib     cap_typ
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerHBT.lib     hbt_typ


    .option rshunt = 1.0e9
    .option rseries = 1.0e-6

    .control
        pre_osdi $\{pdk_path\}/libs.tech/ngspice/openvaf/psp103_nqs.osdi
        pre_set strict_errorhandling **destroys ac simulation with .option savecurrents

        unset ngdebug

        .option maxwarns

        .param nw=$nw
        .param nl=$nl
        .param pw=$pw
        .param pl=$pl

        .param iset=1u

        save all
        op
        write $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_zoom_dc_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw

        set appendwrite

        [return \{* foreach begin\}]
        [
            set code \{\};
            foreach i $i_list \{
                append code \\" 
                alterparam iset = $i 
                reset 
                save all 
                dc vminus -3 3 0.1 
                write $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw 
                dc vminus -10m 10m 100u 
                write $\{netlist_dir\}/$\{schematic\}_zoom_dc_mos$\{mos_corner\}.raw 
                ac dec 10 $fstart $fend 
                remzerovec 
                write $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw 
                dc temp -40 160 20 
                write $\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw 
                tran 1n 77u
                write $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
                \\";
            \}
            return $code;
        ]
        [return \{* end\}]

        quit 
    .endc
)
"
spice_ignore=true}
C {launcher.sym} 1130 -2530 0 0 {name=h12
descr="load waves"
tclcommand="
proc load_wavefoarms \{\} \{

    global netlist_dir
    global mos_corner

    proc get_raw_data_info_txt \{\} \{
        set data \{\}
        foreach \{i f t\} [lrange [xschem raw info] 2 end] \{
            append data \\"$i: $\{f\}\\\\n\\"
            xschem raw switch $f $t
            for \{set j 0\} \{$j < [xschem raw_query datasets]\} \{incr j\} \{
                set points [xschem raw_query points $j]
                append data \\"  [string toupper $t] set: $j $\{points\} pts\\\\n\\"
            \}
        \}
        puts [set data]

        return [set data]
    \}
    set_ne mos_corner tt
    set schematic [file rootname [file tail [xschem get current_name]]]
    xschem raw_clear;
    xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw

    return [get_raw_data_info_txt]
\}

set raw_file_data_detailed [load_wavefoarms]

xschem redraw
"
}
C {simulator_commands_shown.sym} -1200 -1950 0 0 {name=COMMANDS3
simulator=none
only_toplevel=false 

value="tcleval(

spice code

[xschem getprop instance \\"Xyce TCL\\" value]
)"}
C {simulator_commands.sym} 180 -2400 0 0 {name="Xyce TCL"
simulator=xyce
only_toplevel=true 

value="tcleval(
* schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
* dir:       [set srcdir [file dirname [xschem get current_name]]]
* test:      [file dirname [xschem get current_name]]/OTA33_BiAS.sym

* mos_corner: [set_ne mos_corner tt]
* mos_corner: [set_ne sim_command op]


[proc get_sim_code \{sim_command\} \{

    global netlist_dir
    global schematic
    global mos_corner

    global offset 

    global fstart
    global fend

    if \{$sim_command == \\"dc\\"\} \{
        return [string cat \\\\
                \\".dc VDD 0 3.6 0.1 \\\\\\n\\" \\\\
                \\".print dc format=raw file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw v(*) i(*) \\" \\\\
            ]
    \} elseif \{$sim_command == \\"temp\\"\} \{
        return [string cat \\\\
                \\".dc temp -50 150 10 \\\\\\n\\" \\\\
                \\".print dc format=raw file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw v(*) i(*) \\" \\\\
            ]
    \} elseif \{$sim_command == \\"ac\\"\} \{
        return [string cat \\\\
                \\".ac dec 10 $fstart $fend \\\\\\n\\" \\\\
                \\".print ac format=raw file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw v(*) i(*) \\" \\\\
            ]
    \} elseif \{$sim_command == \\"tran\\"\} \{
        return [string cat \\\\
                \\".tran 1n 77u \\\\\\n\\" \\\\
                \\".print tran format=raw file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw v(*) i(*) \\" \\\\
            ]
    \} else \{
        puts    \\"error: get_sim_code\{\}; simulation not implemented $sim_command\\\\\\n\\"
        return  \\"error: simulation not implemented $sim_command\\\\\\n\\"
    \}
\}]



* .option temp=27


.lib $\{pdk_path\}/libs.tech/xyce/models/cornerRES.lib     res_typ
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerCAP.lib     cap_typ

.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOShv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOSlv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ

.include $\{pdk_path\}/libs.tech/xyce/models/diodes.lib
.include $\{pdk_path\}/libs.ref/sg13g2_io/spice/sg13g2_io.spi


.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0
.param offset=0

.step dec iset 1u 10u 3
.step offset -5m 5m 5m

[get_sim_code $sim_command]

)
"}
C {launcher.sym} 1130 -2590 0 0 {
descr="xyce netlist simulate corners ALL" 

tclcommand="

    proc simulate_and_plot \{corners load_the_plots\} \{

	global netlist_dir
	global execute
	global mos_corner
	global sim_command
	global simulations

        set schematic [file rootname [file tail [xschem get schname 0]]]

        foreach corner $corners \{ 
            set mos_corner $\{corner\};
            foreach sim $simulations \{ 
                set sim_command $sim;

                xschem netlist $\{netlist_dir\}/$\{schematic\}_$\{sim\}_mos$\{corner\}.spice
            \}
        \}

        puts netlists_written;

        foreach corner $corners \{ 
            foreach sim $simulations \{
                xschem set netlist_name $\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                set id_$\{sim\}_$\{corner\} [simulate ]
            \}
        \}

        puts sims_started;

        while \{[llength [get_running_cmds]]\} \{

            puts -nonewline .; flush stdout;

            delay 99;
        \}

        if \{$\{load_the_plots\}\} \{
            xschem raw_clear;
            xschem annotate_op $\{netlist_dir\}/$\{schematic\}_ac_mostt.raw
        \}

        puts done

    \}


    xschem set netlist_type spice
    set lvs_ignore 0
    set lvs_netlist 0
    set spiceprefix 1

    simulate_and_plot $\{corners\} true
"}
C {simulator_commands.sym} 180 -2640 0 0 {name=Xyce TCL1
simulator=xyce
only_toplevel=true 

value="tcleval(
* schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
* dir:       [set srcdir [file dirname [xschem get current_name]]]
* test:      [file dirname [xschem get current_name]]/OTA33_BiAS.sym

* mos_corner: [set_ne mos_corner tt]
* mos_corner: [set_ne sim_command op]


[proc get_sim_code \{sim_command\} \{

    global netlist_dir
    global schematic
    global mos_corner

    global fstart
    global fend

    if \{$sim_command == \\"op\\"\} \{
        return [string cat \\\\
                \\".op \\\\\\n\\" \\\\
                \\".print op -format=raw -file=$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"dc\\"\} \{
        return [string cat \\\\
                \\".dc vminus -3 3 0.1 \\\\\\n\\" \\\\
                \\".print dc -format=raw -file=$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"dc_zoom\\"\} \{
        return [string cat \\\\
                \\".dc vminus -10m 10m 100u \\\\\\n\\" \\\\
                \\".print dc -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"ac\\"\} \{
        return [string cat \\\\
                \\".ac dec 10 $fstart $fend \\\\\\n\\" \\\\
                \\".print ac -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"tran\\"\} \{
        return [string cat \\\\
                \\".tran 1n 77u \\\\\\n\\" \\\\
                \\".print tran -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} else \{
        puts    \\"error: get_sim_code\{\}; simulation not implemented $sim_command\\\\\\n\\"
        return  \\"error: simulation not implemented $sim_command\\\\\\n\\"
    \}
\}]



.option temp=27

.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOShv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOSlv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ

.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0

.step dec iset 1u 10u 3

[get_sim_code $sim_command]

)
"
spice_ignore=true}
C {launcher.sym} 4150 -2020 0 0 {name=h1
descr="xschem annotate_op"
tclcommand="


xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
"
}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 2480 -2480 1 1 {name=x1 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {pwroli.sym} 2240 -2420 0 1 {name=l5 lab=VSS}
C {pwroli.sym} 2640 -2720 2 1 {name=l8 lab=IOVDD
}
C {pmolis-sub2.sym} 2620 -2640 0 0 {name=M11 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 2320 -2720 2 1 {name=l11 lab=IOVDD
}
C {pmolis-sub2.sym} 2340 -2640 0 1 {name=M14 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 2960 -2720 2 1 {name=l7 lab=IOVDD
}
C {pmolis-sub2.sym} 2940 -2640 0 0 {name=M2 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {sg13g2_pr/pnpMPA.sym} 2340 -2090 0 1 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {ammeter.sym} 2320 -1960 0 1 {name=Vmeas7 savecurrent=true
lvs_ignore=short}
C {ammeter.sym} 2520 -1960 0 0 {name=Vmeas10 savecurrent=true
lvs_ignore=short}
C {ammeter.sym} 2440 -1960 0 0 {name=Vmeas11 savecurrent=true
lvs_ignore=short}
C {ammeter.sym} 2960 -1950 0 0 {name=Vmeas12 savecurrent=true
lvs_ignore=short}
C {sg13g2_pr/pnpMPA.sym} 2660 -2040 0 0 {name=Q12
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {ammeter.sym} 2640 -1960 0 0 {name=Vmeas9 savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2320 -1930 0 0 {name=l6 lab=VSS}
C {pwroli.sym} 2440 -1930 0 0 {name=l10 lab=VSS}
C {pwroli.sym} 2520 -1930 0 0 {name=l12 lab=VSS}
C {pwroli.sym} 2640 -1930 0 0 {name=l13 lab=VSS}
C {pwroli.sym} 2960 -1920 0 0 {name=l15 lab=VSS}
C {pwroli.sym} 2380 -2420 0 1 {name=l16 lab=VSS}
C {pwroli.sym} 2580 -2550 2 1 {name=l3 lab=IOVDD
}
C {ngspice_probe.sym} 2480 -2640 3 0 {name=r7}
C {lab_pin.sym} 2440 -2150 0 0 {name=p2 sig_type=std_logic lab=mpa1
}
C {lab_pin.sym} 2640 -2110 0 1 {name=p3 sig_type=std_logic lab=mpa10}
C {lab_pin.sym} 2480 -2610 0 1 {name=p4 sig_type=std_logic lab=gates}
C {ngspice_probe.sym} 2320 -2200 3 0 {name=r8}
C {ngspice_probe.sym} 2640 -2200 3 0 {name=r14}
C {sg13g2_pr/pnpMPA.sym} 2580 -2040 0 0 {name=Q3
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2590 -2040 0 0 {name=Q5
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2600 -2040 0 0 {name=Q6
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2610 -2040 0 0 {name=Q7
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2620 -2040 0 0 {name=Q8
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2630 -2040 0 0 {name=Q9
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2640 -2040 0 0 {name=Q10
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 2650 -2040 0 0 {name=Q11
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {lab_pin.sym} 2520 -2170 0 0 {name=p5 sig_type=std_logic lab=mpa2
}
C {pwroli.sym} 3120 -2720 2 1 {name=l20 lab=IOVDD
}
C {pmolis-sub2.sym} 3100 -2640 0 0 {name=M4 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {lab_pin.sym} 3520 -2480 0 1 {name=p6 sig_type=std_logic lab=REFCUR
}
C {pwroli.sym} 2460 -2550 2 1 {name=l22 lab=IOVDD
}
C {pwroli.sym} 2080 -2420 0 1 {name=l2 lab=VSS}
C {vsource.sym} 2510 -2320 0 0 {name=Vzero1 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {vsource.sym} 2450 -2320 2 0 {name=Vzero2 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {nmolis-sub2.sym} 2060 -2450 0 0 {name=M1


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{10 * $nl\}]])"}
C {nmolis-sub2.sym} 2220 -2450 0 0 {name=M3


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {launcher.sym} 2400 -1600 0 0 {
descr="xyce netlist simulate corners ALL" 

tclcommand="

    proc simulate_and_plot \{corners load_the_plots\} \{

	global netlist_dir
	global execute
	global mos_corner
	global sim_command
	global simulations

        set schematic [file rootname [file tail [xschem get schname 0]]]

        foreach corner $corners \{ 
            set mos_corner $\{corner\};
            foreach sim $simulations \{ 
                set sim_command $sim;

                xschem netlist $\{netlist_dir\}/$\{schematic\}_$\{sim\}_mos$\{corner\}.spice
            \}
        \}

        puts netlists_written;

        foreach corner $corners \{ 
            foreach sim $simulations \{
                xschem set netlist_name $\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                set id_$\{sim\}_$\{corner\} [simulate ]
            \}
        \}

        puts sims_started;

        while \{[llength [get_running_cmds]]\} \{

            puts -nonewline .; flush stdout;

            delay 99;
        \}

        if \{$\{load_the_plots\}\} \{
            xschem raw_clear;
            xschem annotate_op $\{netlist_dir\}/$\{schematic\}_ac_mostt.raw
        \}

        puts done

    \}


    xschem set netlist_type spice
    set lvs_ignore 0
    set lvs_netlist 0
    set spiceprefix 1

    simulate_and_plot $\{corners\} true
"}
C {rppd.sym} 2640 -2140 0 0 {name=R1
w=1e-6
l=45e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 2440 -2090 2 0 {name=R2
w=1e-6
l=300e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 2580 -2200 1 0 {name=R3
w=1e-6
l=6e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 2380 -2200 3 0 {name=R4
w=1e-6
l=6e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 2520 -2090 2 0 {name=R5
w=1e-6
l=300e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 2960 -2080 2 0 {name=R6
w=1e-6
l=400e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 1520 -2480 0 0 {name=x6

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 1600 -2560 2 1 {name=l39 lab=IOVDD
}
C {pwroli.sym} 1640 -2400 0 0 {name=l40 lab=VSS}
C {pwroli.sym} 1640 -2560 2 1 {name=l41 lab=VDD

}
C {isource.sym} 1360 -2520 0 1 {name=I1 value="\{iset\}"


lvs_ignore=open
}
C {pwroli.sym} 1360 -2560 2 1 {name=l9 lab=IOVDD
}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 3360 -2480 0 1 {name=x7

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 3280 -2560 2 0 {name=l42 lab=IOVDD
}
C {pwroli.sym} 3240 -2400 0 1 {name=l43 lab=VSS}
C {pwroli.sym} 3240 -2560 2 0 {name=l44 lab=VDD

}
C {lab_pin.sym} 3520 -2080 0 1 {name=p7 sig_type=std_logic lab=ADJ}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 3360 -2080 0 1 {name=x9

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 3280 -2160 2 0 {name=l50 lab=IOVDD
}
C {pwroli.sym} 3240 -2000 0 1 {name=l51 lab=VSS}
C {pwroli.sym} 3240 -2160 2 0 {name=l52 lab=VDD

}
C {rppd.sym} 2800 -2200 1 0 {name=R9
w=1e-6
l=6e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {vsource.sym} 2160 -3040 0 0 {name=VDD value="3.3 ac 1 0"  net_name=true
lvs_ignore=open}
C {pwroli.sym} 2160 -3200 2 0 {name=l18 lab=IOVDD
}
C {pwroli.sym} 2160 -3010 0 0 {name=l19 lab=VSS}
C {pwroli.sym} 2320 -3010 0 0 {name=l25 lab=VSS}
C {vsource.sym} 2320 -3040 0 0 {name=Vzero value=0  net_name=true
lvs_ignore=open
}
C {lab_pin.sym} 2320 -3070 0 1 {name=p8 lab=0  net_name=true}
C {pwroli.sym} 3040 -1680 2 1 {name=l14 lab=IOVDD
}
C {pmolis-sub2.sym} 3020 -1520 0 0 {name=M6 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{300e-6\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=20 m=1}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2800 -3200 0 0 {name=x2

model=sg13g2_IOPadIOVdd
spiceprefix=X
}
C {pwroli.sym} 2880 -3280 2 1 {name=l24 lab=IOVDD
}
C {pwroli.sym} 2920 -3120 0 0 {name=l26 lab=VSS}
C {pwroli.sym} 2920 -3280 2 1 {name=l27 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 3120 -3200 0 0 {name=X3

model=sg13g2_IOPadIOVss
spiceprefix=X
}
C {pwroli.sym} 3200 -3280 2 1 {name=l29 lab=IOVDD
}
C {pwroli.sym} 3240 -3120 0 0 {name=l30 lab=VSS}
C {pwroli.sym} 3240 -3280 2 1 {name=l31 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2800 -2880 0 0 {name=x4

model=sg13g2_IOPadVdd
spiceprefix=X
}
C {pwroli.sym} 2880 -2960 2 1 {name=l33 lab=IOVDD
}
C {pwroli.sym} 2920 -2800 0 0 {name=l34 lab=VSS}
C {pwroli.sym} 2920 -2960 2 1 {name=l35 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 3120 -2880 0 0 {name=X5

model=sg13g2_IOPadVss
spiceprefix=X
}
C {pwroli.sym} 3200 -2960 2 1 {name=l37 lab=IOVDD
}
C {pwroli.sym} 3240 -2800 0 0 {name=l53 lab=VSS}
C {pwroli.sym} 3240 -2960 2 1 {name=l54 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 3360 -1520 0 1 {name=x11

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 3280 -1600 2 0 {name=l61 lab=IOVDD
}
C {pwroli.sym} 3240 -1440 0 1 {name=l62 lab=VSS}
C {pwroli.sym} 3240 -1600 2 0 {name=l63 lab=VDD

}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 2800 -1520 0 0 {name=x12 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {pwroli.sym} 2800 -1360 0 0 {name=l64 lab=VSS}
C {pwroli.sym} 2800 -1680 2 0 {name=l65 lab=IOVDD
}
C {vsource.sym} 2680 -1550 1 1 {name=Vzero3 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {vsource.sym} 2680 -1490 3 1 {name=Vzero4 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {pwroli.sym} 2870 -1680 2 0 {name=l66 lab=IOVDD
}
C {rppd.sym} 2560 -1600 2 0 {name=R10
w=1e-6
l=22e-6
model=rppd
spiceprefix=X
b=4
m=1
}
C {rppd.sym} 2560 -1440 2 0 {name=R11
w=1e-6
l=22e-6
model=rppd
spiceprefix=X
b=4
m=1
}
C {pwroli.sym} 2560 -1360 0 0 {name=l67 lab=VSS}
C {pwroli.sym} 2560 -1680 2 0 {name=l68 lab=IOVDD
}
C {pwroli.sym} 3040 -1120 2 1 {name=l69 lab=IOVDD
}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 2800 -960 0 0 {name=x13 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {pwroli.sym} 2800 -800 0 0 {name=l70 lab=VSS}
C {pwroli.sym} 2800 -1120 2 0 {name=l71 lab=IOVDD
}
C {vsource.sym} 2680 -990 1 1 {name=Vzero5 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {vsource.sym} 2680 -930 3 1 {name=Vzero6 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {pwroli.sym} 2870 -1120 2 0 {name=l72 lab=IOVDD
}
C {nmolis-sub2.sym} 3020 -960 0 0 {name=M8


ng=10
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{200e-6\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 2820 -690 0 0 {name=l73 lab=VSS}
C {nmolis-sub2.sym} 2800 -720 0 0 {name=M9


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 3040 -690 0 0 {name=l74 lab=VSS}
C {nmolis-sub2.sym} 3020 -720 0 0 {name=M10


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 2820 -1250 0 0 {name=l75 lab=VSS}
C {nmolis-sub2.sym} 2800 -1280 0 0 {name=M12


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 3120 -1120 2 0 {name=l76 lab=VDD

}
C {ammeter.sym} 3520 -1470 0 0 {name=Vmeas1 savecurrent=true
lvs_ignore=open}
C {pwroli.sym} 3520 -1440 0 1 {name=l77 lab=VSS}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 2080 -1520 0 0 {name=x14

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 2160 -1600 2 1 {name=l79 lab=IOVDD
}
C {pwroli.sym} 2200 -1440 0 0 {name=l80 lab=VSS}
C {pwroli.sym} 2200 -1600 2 1 {name=l81 lab=VDD

}
C {vsource.sym} 1920 -1350 0 0 {name=VDD1 value="1.65"  net_name=true
lvs_ignore=short}
C {pwroli.sym} 1920 -1320 0 0 {name=l82 lab=VSS}
C {res.sym} 1920 -1440 2 0 {name=R12
value=103k
footprint=1206
device=resistor
m=1
lvs_ignore=open}
C {res.sym} 2160 -3120 2 0 {name=R13
value=200
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 2960 -1520 1 1 {name=p9 sig_type=std_logic lab=DRV_SHUNT
}
C {lab_pin.sym} 2960 -960 3 1 {name=p10 sig_type=std_logic lab=DRV_VDDL

}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 2800 -400 0 0 {name=x10 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {pwroli.sym} 2800 -240 0 0 {name=l55 lab=VSS}
C {pwroli.sym} 2800 -560 2 0 {name=l56 lab=IOVDD
}
C {vsource.sym} 2680 -430 1 1 {name=Vzero7 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {vsource.sym} 2680 -370 3 1 {name=Vzero8 value=\{offset/2\}  net_name=true
lvs_ignore=short}
C {pwroli.sym} 2870 -560 2 0 {name=l57 lab=IOVDD
}
C {pwroli.sym} 2820 -130 0 0 {name=l58 lab=VSS}
C {nmolis-sub2.sym} 2800 -160 0 0 {name=M13


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 3360 -400 0 1 {name=x15

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 3280 -480 2 0 {name=l59 lab=IOVDD
}
C {pwroli.sym} 3240 -320 0 1 {name=l83 lab=VSS}
C {pwroli.sym} 3240 -480 2 0 {name=l84 lab=VDD

}
C {ammeter.sym} 3520 -350 0 0 {name=Vmeas2 savecurrent=true
lvs_ignore=open
}
C {pwroli.sym} 3520 -320 0 1 {name=l85 lab=VSS}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 2080 -520 0 0 {name=x16

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 2160 -600 2 1 {name=l87 lab=IOVDD
}
C {pwroli.sym} 2200 -440 0 0 {name=l88 lab=VSS}
C {pwroli.sym} 2200 -600 2 1 {name=l89 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 2080 -280 0 0 {name=x17

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 2160 -360 2 1 {name=l91 lab=IOVDD
}
C {pwroli.sym} 2200 -200 0 0 {name=l92 lab=VSS}
C {pwroli.sym} 2200 -360 2 1 {name=l93 lab=VDD

}
C {pwroli.sym} 1760 -130 0 0 {name=l4 lab=VSS}
C {nmolis-sub2.sym} 1780 -160 0 1 {name=M5


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 2870 -1360 0 0 {name=l94 lab=VSS}
C {pwroli.sym} 2870 -800 0 0 {name=l95 lab=VSS}
C {pwroli.sym} 2870 -240 0 0 {name=l96 lab=VSS}
C {vsource.sym} 2400 -3040 0 0 {name=Vzero9 value=0  net_name=true

lvs_ignore=open
}
C {lab_pin.sym} 2400 -3070 0 1 {name=p11 lab=0  net_name=true}
C {pwroli.sym} 2400 -3010 0 1 {name=l109 lab=IOVSS}
C {pwroli.sym} 2880 -3120 0 1 {name=l23 lab=IOVSS}
C {pwroli.sym} 3200 -3120 0 1 {name=l28 lab=IOVSS}
C {pwroli.sym} 3200 -2800 0 1 {name=l32 lab=IOVSS}
C {pwroli.sym} 2880 -2800 0 1 {name=l36 lab=IOVSS}
C {pwroli.sym} 1600 -2400 0 1 {name=l38 lab=IOVSS}
C {pwroli.sym} 2160 -1440 0 1 {name=l78 lab=IOVSS}
C {pwroli.sym} 2160 -440 0 1 {name=l86 lab=IOVSS}
C {pwroli.sym} 2160 -200 0 1 {name=l90 lab=IOVSS}
C {pwroli.sym} 3280 -2400 0 1 {name=l17 lab=IOVSS}
C {pwroli.sym} 3280 -2000 0 1 {name=l45 lab=IOVSS}
C {pwroli.sym} 3280 -1440 0 1 {name=l49 lab=IOVSS}
C {pwroli.sym} 3280 -320 0 1 {name=l60 lab=IOVSS}
C {sg13g2_pr/rsil.sym} 2240 -1280 3 0 {name=R15
w=10e-6
l=27e-6
model=rsil
spiceprefix=X
b=0
m=1
}
C {pwroli.sym} 2320 -1200 0 0 {name=l110 lab=VSS}
C {pwroli.sym} 2160 -1200 0 1 {name=l111 lab=IOVSS}
C {lab_pin.sym} 3520 -1520 0 1 {name=p12 sig_type=std_logic lab=SHUNT_GND
}
C {lab_pin.sym} 1920 -1520 0 0 {name=p13 sig_type=std_logic lab=REF

}
C {lab_pin.sym} 1360 -2480 0 0 {name=p14 sig_type=std_logic lab=BiAS

}
C {lab_pin.sym} 3520 -400 0 1 {name=p1 sig_type=std_logic lab=OTA_OUT

}
C {lab_pin.sym} 1920 -520 0 0 {name=p15 sig_type=std_logic lab=OTA+}
C {lab_pin.sym} 1920 -280 0 0 {name=p16 sig_type=std_logic lab=OTA-}
