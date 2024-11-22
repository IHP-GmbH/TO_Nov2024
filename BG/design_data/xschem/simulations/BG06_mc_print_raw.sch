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
B 2 2770 -1230 3400 -900 {flags=graph,unlocked

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
B 2 2770 -500 3400 -170 {flags=graph,unlocked

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
B 2 2770 -1620 3400 -1290 {flags=graph,unlocked

sim_type=dc
y1=-3
y2=3
divy=4
subdivy=1
x1=-0.01
x2=0.01
divx=6
subdivx=1
node="in+
ip+
minus
plus"
color="8 7 4 21"
dataset=-1
rawfile= [rawfilestart]_dc_zoom_mostt.spice.raw
autoload=1}
B 2 2770 -1960 3400 -1630 {flags=graph,unlocked

sim_type=dc
y1=-3
y2=3
divy=4
subdivy=1
x1=-3
x2=3
divx=6
subdivx=1
node="minus
\\"vdd; minus 0 * 1.65 +\\"
\\"vss; minus 0 * 1.65 -\\"
cmp+
cmn+
cmp+%[rawfilestart]_dc_mosfs.raw
cmn+%[rawfilestart]_dc_mossf.raw"
color="4 4 4 7 8 10 21"
dataset=-1

autoload=1
rawfile=[rawfilestart]_dc_mostt.spice.raw}
B 2 2770 -890 3400 -560 {flags=graph,unlocked

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
B 2 2090 -1960 2720 -1630 {flags=graph,unlocked
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
B 2 2090 -1620 2720 -1290 {flags=graph,unlocked
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
B 2 2090 -500 2720 -170 {flags=graph,unlocked
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
B 2 2090 -1230 2720 -900 {flags=graph,unlocked
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
B 2 2090 -890 2720 -560 {flags=graph,unlocked
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
B 2 3410 -1620 4040 -1290 {flags=graph,unlocked

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
B 2 3410 -1960 4040 -1630 {flags=graph,unlocked

sim_type=dc
y1=-0
y2=4.6e-06
divy=4
subdivy=1
x1=-3
x2=3
divx=6
subdivx=1


dataset=0
rawfile= [rawfilestart]_dc.raw
color="4 7 7 5 5"
node="\\"v-sweep 0 *\\"
i(v.x1.vmeas11)
i(v.x1.vmeas13)
i(v.x2.vmeas11)
i(v.x2.vmeas13)"
autoload=1}
B 2 80 -1440 710 -1110 {flags=graph,unlocked

sim_type=dc
y1=0
y2=4
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1
node="out
vdd
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw


out%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw"
color="4 4 8 8 8 8 8 8 8 8 8 8 18 18 18 18 18 18 18 18 18 18 20 20 20 20 20 7 7 7 7 7"
dataset=-1
rawfile= $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
autoload=1
linewidth_mult=2}
B 2 80 -1100 710 -770 {flags=graph,unlocked

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

color="18 18 18 18 18 18 18 18 18 18"
node="out%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
out%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw"
rawfile=$\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw}
B 2 3410 -890 4040 -560 {flags=graph,unlocked

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
B 2 1210 -860 1840 -530 {flags=graph,unlocked

sim_type=dc
y1=0
y2=3
divy=4
subdivy=1
x1=0
x2=4
divx=6
subdivx=1
node="mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
mpa1%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mostt.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosff.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosfs.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mossf.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosss.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mostt_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosff_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosfs_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mossf_stat.raw
mpa2%$\{netlist_dir\}/$\{schematic\}_dc_mosss_stat.raw"
color="8 8 8 8 8 8 8 8 8 8 18 18 18 18 18 18 18 18 18 18"
dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw}
T {Transient Analysis} 2770 -540 0 0 0.6 0.6 { layer=2}
T {DC zoom Analysis} 2770 -1270 0 0 0.6 0.6 { layer=2}
T {DC Analysis} 2770 -2000 0 0 0.6 0.6 { layer=2}
T {AC Analysis} 2090 -2000 0 0 0.6 0.6 { layer=2}
T {AC CM Analysis} 2090 -540 0 0 0.6 0.6 { layer=2}
T {AC PSRR Analysis} 2090 -1270 0 0 0.6 0.6 { layer=2}
T {tcleval(loaded .raw files: 
[xschem raw info])} 880 -240 0 0 0.3 0.3 {floater=true layer=16}
N 960 -610 960 -590 {
lab=VDD}
N 1180 -1840 1220 -1840 {
lab=VDD}
N 1020 -1840 1060 -1840 {
lab=GND}
N 1150 -1940 1150 -1910 {
lab=gates}
N 1140 -1940 1140 -1910 {
lab=gates}
N 1140 -1940 1150 -1940 {
lab=gates}
N 900 -1860 900 -1840 {
lab=#net1}
N 900 -1860 1060 -1860 {
lab=#net1}
N 1280 -2100 1280 -2030 {
lab=#net2}
N 960 -2100 960 -2030 {
lab=#net3}
N 1400 -2100 1400 -2030 {
lab=#net4}
N 1600 -2100 1600 -2030 {
lab=#net5}
N 840 -2100 840 -2030 {
lab=#net6}
N 840 -1560 840 -1510 {lab=#net7}
N 880 -1610 900 -1610 {lab=#net7}
N 960 -1560 960 -1510 {lab=#net8}
N 1000 -1610 1020 -1610 {lab=#net8}
N 1400 -1560 1400 -1510 {lab=#net9}
N 1340 -1610 1360 -1610 {lab=#net9}
N 1160 -1580 1160 -1510 {lab=#net10}
N 1080 -1580 1080 -1510 {lab=#net11}
N 840 -1720 840 -1640 {lab=#net12}
N 960 -1720 990 -1720 {lab=#net13}
N 1080 -1720 1090 -1720 {lab=mpa1}
N 1160 -1720 1190 -1720 {lab=mpa2}
N 1370 -1720 1400 -1720 {lab=#net14}
N 1400 -1720 1400 -1640 {lab=#net14}
N 960 -1720 960 -1640 {lab=#net13}
N 930 -1720 960 -1720 {lab=#net13}
N 1080 -1720 1080 -1640 {lab=mpa1}
N 1050 -1720 1080 -1720 {lab=mpa1}
N 1160 -1720 1160 -1640 {lab=mpa2}
N 1150 -1720 1160 -1720 {lab=mpa2}
N 840 -1720 870 -1720 {lab=#net12}
N 840 -1970 840 -1720 {lab=#net12}
N 960 -1970 960 -1720 {lab=#net13}
N 1400 -1970 1400 -1720 {lab=#net14}
N 1600 -1570 1600 -1500 {lab=#net15}
N 1600 -1970 1600 -1630 {lab=OUT}
N 1280 -1970 1280 -1720 {lab=#net16}
N 1280 -1720 1310 -1720 {lab=#net16}
N 1280 -1720 1280 -1690 {lab=#net16}
N 1250 -1720 1280 -1720 {lab=#net16}
N 1280 -1630 1280 -1610 {lab=mpa10}
N 1020 -1840 1020 -1830 {lab=GND}
N 1220 -1860 1220 -1840 {lab=VDD}
N 720 -2000 720 -1840 {lab=gates}
N 720 -2000 1120 -2000 {lab=gates}
N 1120 -1940 1120 -1910 {
lab=gates}
N 840 -1560 900 -1560 {lab=#net7}
N 840 -1580 840 -1560 {lab=#net7}
N 900 -1610 900 -1560 {lab=#net7}
N 960 -1560 1020 -1560 {lab=#net8}
N 960 -1580 960 -1560 {lab=#net8}
N 1020 -1610 1020 -1560 {lab=#net8}
N 1340 -1610 1340 -1560 {lab=#net9}
N 1340 -1560 1400 -1560 {lab=#net9}
N 1400 -1580 1400 -1560 {lab=#net9}
N 1190 -1560 1280 -1560 {lab=#net17}
N 1240 -1610 1240 -1590 {lab=mpa10}
N 1310 -1610 1320 -1610 {lab=mpa10}
N 1320 -1610 1320 -1590 {lab=mpa10}
N 1310 -1610 1310 -1590 {lab=mpa10}
N 1300 -1610 1310 -1610 {lab=mpa10}
N 1300 -1610 1300 -1590 {lab=mpa10}
N 1290 -1610 1300 -1610 {lab=mpa10}
N 1290 -1610 1290 -1590 {lab=mpa10}
N 1280 -1610 1290 -1610 {lab=mpa10}
N 1280 -1610 1280 -1590 {lab=mpa10}
N 1270 -1610 1280 -1610 {lab=mpa10}
N 1270 -1610 1270 -1590 {lab=mpa10}
N 1260 -1610 1270 -1610 {lab=mpa10}
N 1260 -1610 1260 -1590 {lab=mpa10}
N 1250 -1610 1260 -1610 {lab=mpa10}
N 1250 -1610 1250 -1590 {lab=mpa10}
N 1240 -1610 1250 -1610 {lab=mpa10}
N 1320 -1530 1320 -1510 {lab=#net17}
N 1240 -1510 1250 -1510 {lab=#net17}
N 1240 -1530 1240 -1510 {lab=#net17}
N 1250 -1530 1250 -1510 {lab=#net17}
N 1250 -1510 1260 -1510 {lab=#net17}
N 1260 -1530 1260 -1510 {lab=#net17}
N 1260 -1510 1270 -1510 {lab=#net17}
N 1270 -1530 1270 -1510 {lab=#net17}
N 1270 -1510 1280 -1510 {lab=#net17}
N 1280 -1530 1280 -1510 {lab=#net17}
N 1280 -1510 1290 -1510 {lab=#net17}
N 1290 -1530 1290 -1510 {lab=#net17}
N 1290 -1510 1300 -1510 {lab=#net17}
N 1300 -1530 1300 -1510 {lab=#net17}
N 1300 -1510 1310 -1510 {lab=#net17}
N 1310 -1530 1310 -1510 {lab=#net17}
N 1310 -1510 1320 -1510 {lab=#net17}
N 1190 -1560 1190 -1510 {lab=#net17}
N 1190 -1510 1240 -1510 {lab=#net17}
N 1090 -1780 1090 -1720 {lab=mpa1}
N 1150 -1780 1150 -1720 {lab=mpa2}
N 1760 -2100 1760 -2030 {
lab=#net18}
N 1760 -1570 1760 -1500 {lab=#net19}
N 1760 -1970 1760 -1630 {lab=OUT1}
N 1120 -2000 1720 -2000 {
lab=gates}
N 1120 -1940 1140 -1940 {lab=gates}
N 1120 -2000 1120 -1940 {
lab=gates}
N 1160 -1940 1160 -1910 {lab=gates}
N 1150 -1940 1160 -1940 {lab=gates}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {vsource.sym} 960 -560 0 0 {name=VDD value="3.3 ac 1 0"  net_name=true
}
C {pwroli.sym} 960 -610 2 0 {name=l18 lab=VDD
}
C {gndoli.sym} 960 -530 0 0 {name=l19 lab=GND}
C {simulator_commands_shown.sym} 0 -1950 0 0 {name=COMMANDS1
simulator=none
only_toplevel=false 

value="tcleval(

pdk_path = [set pdk_path /home/ich/share/pdk/ihp-sg13g2]


mosfet corners: [set corners [list tt ss ff sf fs]]
mosfet corners: [set corners [list tt_stat ss_stat ff_stat sf_stat fs_stat]]
mosfet corners: [set corners [list tt_stat]]

simulations: [set simulations [list dc ac tran temp]]
simulations: [set simulations [list dc]]


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
C {launcher.sym} 730 -2370 0 0 {name=h12
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
C {gndoli.sym} 960 -690 0 0 {name=l25 lab=GND}
C {vsource.sym} 960 -720 0 0 {name=Vzero value=0  net_name=true
}
C {lab_pin.sym} 960 -750 0 1 {name=p8 lab=0  net_name=true}
C {launcher.sym} 730 -2430 0 0 {
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
C {launcher.sym} 2150 -2020 0 0 {name=h1
descr="xschem annotate_op"
tclcommand="


xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
"
}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 1120 -1840 1 1 {name=x1 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {isource.sym} 900 -1810 0 1 {name=I1 value="\{iset\}"}
C {gndoli.sym} 900 -1780 0 1 {name=l5 lab=GND}
C {pwroli.sym} 1280 -2160 2 1 {name=l8 lab=VDD
}
C {ammeter.sym} 1280 -2130 0 1 {name=Vmeas2 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 1260 -2000 0 0 {name=M11 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 960 -2160 2 1 {name=l11 lab=VDD
}
C {ammeter.sym} 960 -2130 0 1 {name=Vmeas5 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 980 -2000 0 1 {name=M14 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 1400 -2160 2 1 {name=l2 lab=VDD
}
C {ammeter.sym} 1400 -2130 0 1 {name=Vmeas1 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 1380 -2000 0 0 {name=M1 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 1600 -2160 2 1 {name=l7 lab=VDD
}
C {ammeter.sym} 1600 -2130 0 1 {name=Vmeas3 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 1580 -2000 0 0 {name=M2 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {pwroli.sym} 840 -2160 2 1 {name=l9 lab=VDD
}
C {ammeter.sym} 840 -2130 0 1 {name=Vmeas4 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 860 -2000 0 1 {name=M3 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {sg13g2_pr/pnpMPA.sym} 860 -1610 0 1 {name=Q4
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {ammeter.sym} 840 -1480 0 1 {name=Vmeas6 savecurrent=true
lvs_ignore=short}
C {sg13g2_pr/pnpMPA.sym} 980 -1610 0 1 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {ammeter.sym} 960 -1480 0 1 {name=Vmeas7 savecurrent=true
lvs_ignore=short}
C {sg13g2_pr/pnpMPA.sym} 1380 -1610 0 0 {name=Q2
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {ammeter.sym} 1400 -1480 0 0 {name=Vmeas8 savecurrent=true
lvs_ignore=short}
C {res.sym} 1280 -1660 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1160 -1480 0 0 {name=Vmeas10 savecurrent=true
lvs_ignore=short}
C {res.sym} 1160 -1610 0 0 {name=R3
value=72k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1080 -1480 0 0 {name=Vmeas11 savecurrent=true
lvs_ignore=short}
C {res.sym} 1080 -1610 0 0 {name=R4
value=72k
footprint=1206
device=resistor
m=1}
C {res.sym} 1020 -1720 1 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 900 -1720 1 0 {name=R6
value=1t
footprint=1206
device=resistor
m=1}
C {res.sym} 1220 -1720 1 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1340 -1720 1 0 {name=R10
value=1t
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1600 -1470 0 0 {name=Vmeas12 savecurrent=true
lvs_ignore=short}
C {res.sym} 1600 -1600 0 0 {name=R11
value=100k
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/pnpMPA.sym} 1300 -1560 0 0 {name=Q12
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {ammeter.sym} 1280 -1480 0 0 {name=Vmeas9 savecurrent=true
lvs_ignore=short}
C {gndoli.sym} 840 -1450 0 0 {name=l4 lab=GND}
C {gndoli.sym} 960 -1450 0 0 {name=l6 lab=GND}
C {gndoli.sym} 1080 -1450 0 0 {name=l10 lab=GND}
C {gndoli.sym} 1160 -1450 0 0 {name=l12 lab=GND}
C {gndoli.sym} 1280 -1450 0 0 {name=l13 lab=GND}
C {gndoli.sym} 1400 -1450 0 0 {name=l14 lab=GND}
C {gndoli.sym} 1600 -1440 0 0 {name=l15 lab=GND}
C {gndoli.sym} 1020 -1830 0 1 {name=l16 lab=GND}
C {pwroli.sym} 1220 -1860 2 1 {name=l3 lab=VDD
}
C {lab_pin.sym} 1600 -1840 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {isource.sym} 720 -1810 0 0 {name=I2 value=0
}
C {gndoli.sym} 720 -1780 0 0 {name=l17 lab=GND}
C {ngspice_probe.sym} 1120 -2000 3 0 {name=r7}
C {lab_pin.sym} 1080 -1670 0 0 {name=p2 sig_type=std_logic lab=mpa1
}
C {lab_pin.sym} 1280 -1630 0 1 {name=p3 sig_type=std_logic lab=mpa10}
C {lab_pin.sym} 1120 -1970 0 1 {name=p4 sig_type=std_logic lab=gates}
C {ngspice_probe.sym} 960 -1720 3 0 {name=r8}
C {ngspice_probe.sym} 1400 -1720 3 0 {name=r12}
C {ngspice_probe.sym} 1400 -1510 3 0 {name=r13}
C {ngspice_probe.sym} 1400 -2060 3 0 {name=r15}
C {ngspice_probe.sym} 1280 -1720 3 0 {name=r14}
C {sg13g2_pr/pnpMPA.sym} 1220 -1560 0 0 {name=Q3
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1230 -1560 0 0 {name=Q5
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1240 -1560 0 0 {name=Q6
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1250 -1560 0 0 {name=Q7
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1260 -1560 0 0 {name=Q8
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1270 -1560 0 0 {name=Q9
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1280 -1560 0 0 {name=Q10
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1290 -1560 0 0 {name=Q11
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {lab_pin.sym} 1160 -1690 0 0 {name=p5 sig_type=std_logic lab=mpa2
}
C {launcher.sym} 890 -910 0 0 {
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
C {pwroli.sym} 1760 -2160 2 1 {name=l20 lab=VDD
}
C {ammeter.sym} 1760 -2130 0 1 {name=Vmeas13 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 1740 -2000 0 0 {name=M4 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {ammeter.sym} 1760 -1470 0 0 {name=Vmeas14 savecurrent=true
lvs_ignore=short}
C {res.sym} 1760 -1600 0 0 {name=R16
value=33k
footprint=1206
device=resistor
m=1}
C {gndoli.sym} 1760 -1440 0 0 {name=l21 lab=GND}
C {lab_pin.sym} 1760 -1840 0 0 {name=p6 sig_type=std_logic lab=OUT1}
C {pwroli.sym} 1100 -1910 2 1 {name=l22 lab=VDD
}
C {simulator_commands.sym} 380 -2380 0 0 {name="Xyce TCL"
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

    if \{$sim_command == \\"dc\\"\} \{
        return [string cat \\\\
                \\".dc vdd 0 3.6 0.1 \\\\\\n\\" \\\\
                \\".sampling useexpr=true \\\\\\n\\" \\\\
                \\".options samples numsamples=33  \\\\\\n\\" \\\\
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
* .lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOSlv.lib   mos_$\{mos_corner\}
*.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ_stat
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ

.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0

.param delay_flag=0


.param mc_ok=1

.include \\"/home/ich/share/pdk/ihp-sg13g2/libs.tech/xyce/models/sg13g2_moshv_stat.lib\\"
* .include \\"/home/ich/share/pdk/ihp-sg13g2/libs.tech/xyce/models/sg13g2_moslv_stat.lib\\"
.include \\"/home/ich/share/pdk/ihp-sg13g2/libs.tech/xyce/models/sg13g2_hbt_stat.lib\\"
.include \\"/home/ich/share/pdk/ihp-sg13g2/libs.tech/xyce/models/resistors_stat.lib\\"
.include \\"/home/ich/share/pdk/ihp-sg13g2/libs.tech/xyce/models/capacitors_stat.lib\\"



.step dec iset 1u 10u 3

[get_sim_code $sim_command]

)
"
}
