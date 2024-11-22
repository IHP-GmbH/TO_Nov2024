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
x1=0
x2=3
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

color="5 5 7 10 14 14 8 4 4 4 4"
node="\\"out .01 +\\"
\\"out 1.64 - 100 *\\"
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
N 1600 -2100 1600 -2030 {
lab=#net4}
N 960 -1400 960 -1350 {lab=#net5}
N 1000 -1450 1020 -1450 {lab=#net5}
N 1160 -1420 1160 -1350 {lab=#net6}
N 1080 -1420 1080 -1350 {lab=#net7}
N 960 -1560 990 -1560 {lab=#net8}
N 1080 -1560 1090 -1560 {lab=mpa1}
N 1160 -1560 1190 -1560 {lab=mpa2}
N 960 -1560 960 -1480 {lab=#net8}
N 1080 -1560 1080 -1480 {lab=mpa1}
N 1050 -1560 1080 -1560 {lab=mpa1}
N 1160 -1560 1160 -1480 {lab=mpa2}
N 1150 -1560 1160 -1560 {lab=mpa2}
N 960 -1970 960 -1560 {lab=#net8}
N 1600 -1410 1600 -1340 {lab=#net9}
N 1600 -1970 1600 -1470 {lab=OUT}
N 1280 -1970 1280 -1560 {lab=#net10}
N 1280 -1560 1280 -1530 {lab=#net10}
N 1250 -1560 1280 -1560 {lab=#net10}
N 1280 -1470 1280 -1450 {lab=mpa10}
N 1020 -1840 1020 -1830 {lab=GND}
N 1220 -1860 1220 -1840 {lab=VDD}
N 1120 -1940 1120 -1910 {
lab=gates}
N 960 -1400 1020 -1400 {lab=#net5}
N 960 -1420 960 -1400 {lab=#net5}
N 1020 -1450 1020 -1400 {lab=#net5}
N 1190 -1400 1280 -1400 {lab=#net11}
N 1240 -1450 1240 -1430 {lab=mpa10}
N 1310 -1450 1320 -1450 {lab=mpa10}
N 1320 -1450 1320 -1430 {lab=mpa10}
N 1310 -1450 1310 -1430 {lab=mpa10}
N 1300 -1450 1310 -1450 {lab=mpa10}
N 1300 -1450 1300 -1430 {lab=mpa10}
N 1290 -1450 1300 -1450 {lab=mpa10}
N 1290 -1450 1290 -1430 {lab=mpa10}
N 1280 -1450 1290 -1450 {lab=mpa10}
N 1280 -1450 1280 -1430 {lab=mpa10}
N 1270 -1450 1280 -1450 {lab=mpa10}
N 1270 -1450 1270 -1430 {lab=mpa10}
N 1260 -1450 1270 -1450 {lab=mpa10}
N 1260 -1450 1260 -1430 {lab=mpa10}
N 1250 -1450 1260 -1450 {lab=mpa10}
N 1250 -1450 1250 -1430 {lab=mpa10}
N 1240 -1450 1250 -1450 {lab=mpa10}
N 1320 -1370 1320 -1350 {lab=#net11}
N 1240 -1350 1250 -1350 {lab=#net11}
N 1240 -1370 1240 -1350 {lab=#net11}
N 1250 -1370 1250 -1350 {lab=#net11}
N 1250 -1350 1260 -1350 {lab=#net11}
N 1260 -1370 1260 -1350 {lab=#net11}
N 1260 -1350 1270 -1350 {lab=#net11}
N 1270 -1370 1270 -1350 {lab=#net11}
N 1270 -1350 1280 -1350 {lab=#net11}
N 1280 -1370 1280 -1350 {lab=#net11}
N 1280 -1350 1290 -1350 {lab=#net11}
N 1290 -1370 1290 -1350 {lab=#net11}
N 1290 -1350 1300 -1350 {lab=#net11}
N 1300 -1370 1300 -1350 {lab=#net11}
N 1300 -1350 1310 -1350 {lab=#net11}
N 1310 -1370 1310 -1350 {lab=#net11}
N 1310 -1350 1320 -1350 {lab=#net11}
N 1190 -1400 1190 -1350 {lab=#net11}
N 1190 -1350 1240 -1350 {lab=#net11}
N 1760 -2100 1760 -2030 {
lab=#net12}
N 1760 -1410 1760 -1340 {lab=#net13}
N 1760 -1970 1760 -1470 {lab=OUT1}
N 1120 -1940 1140 -1940 {lab=gates}
N 1120 -2000 1120 -1940 {
lab=gates}
N 1160 -1940 1160 -1910 {lab=gates}
N 1150 -1940 1160 -1940 {lab=gates}
N 1120 -2000 1720 -2000 {lab=gates}
N 800 -2000 800 -1840 {lab=gates}
N 800 -2000 1120 -2000 {lab=gates}
N 1090 -1780 1090 -1710 {lab=#net14}
N 1150 -1780 1150 -1710 {lab=#net15}
N 1090 -1650 1090 -1560 {lab=mpa1}
N 1150 -1650 1150 -1560 {lab=mpa2}
N 640 -1860 640 -1840 {lab=#net16}
N 700 -1810 860 -1810 {lab=#net16}
N 950 -2170 960 -2170 {lab=#net17}
N 630 -2170 640 -2170 {lab=#net18}
N 640 -2100 640 -2030 {lab=#net19}
N 700 -1860 700 -1810 {lab=#net16}
N 680 -1810 700 -1810 {lab=#net16}
N 640 -1860 700 -1860 {lab=#net16}
N 640 -1970 640 -1860 {lab=#net16}
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

simulations: [set simulations [list dc ac tran temp]]


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

.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0
.param offset=0

.step dec iset 1u 10u 3
.step offset -5m 5m 1m

[get_sim_code $sim_command]

)
"}
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
C {isource.sym} 640 -2000 0 1 {name=I1 value="\{iset\}"}
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
C {pwroli.sym} 1600 -2160 2 1 {name=l7 lab=VDD
}
C {ammeter.sym} 1600 -2130 0 1 {name=Vmeas3 savecurrent=true
lvs_ignore=short}
C {pmolis-sub2.sym} 1580 -2000 0 0 {name=M2 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{$pw\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=1 m=1}
C {sg13g2_pr/pnpMPA.sym} 980 -1450 0 1 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {ammeter.sym} 960 -1320 0 1 {name=Vmeas7 savecurrent=true
lvs_ignore=short}
C {res.sym} 1280 -1500 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1160 -1320 0 0 {name=Vmeas10 savecurrent=true
lvs_ignore=short}
C {res.sym} 1160 -1450 0 0 {name=R3
value=72k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1080 -1320 0 0 {name=Vmeas11 savecurrent=true
lvs_ignore=short}
C {res.sym} 1080 -1450 0 0 {name=R4
value=72k
footprint=1206
device=resistor
m=1}
C {res.sym} 1020 -1560 1 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1220 -1560 1 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1600 -1310 0 0 {name=Vmeas12 savecurrent=true
lvs_ignore=short}
C {res.sym} 1600 -1440 0 0 {name=R11
value=100k
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/pnpMPA.sym} 1300 -1400 0 0 {name=Q12
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {ammeter.sym} 1280 -1320 0 0 {name=Vmeas9 savecurrent=true
lvs_ignore=short}
C {gndoli.sym} 960 -1290 0 0 {name=l6 lab=GND}
C {gndoli.sym} 1080 -1290 0 0 {name=l10 lab=GND}
C {gndoli.sym} 1160 -1290 0 0 {name=l12 lab=GND}
C {gndoli.sym} 1280 -1290 0 0 {name=l13 lab=GND}
C {gndoli.sym} 1600 -1280 0 0 {name=l15 lab=GND}
C {gndoli.sym} 1020 -1830 0 1 {name=l16 lab=GND}
C {pwroli.sym} 1220 -1860 2 1 {name=l3 lab=VDD
}
C {lab_pin.sym} 1600 -1840 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {ngspice_probe.sym} 1120 -2000 3 0 {name=r7}
C {lab_pin.sym} 1080 -1510 0 0 {name=p2 sig_type=std_logic lab=mpa1
}
C {lab_pin.sym} 1280 -1470 0 1 {name=p3 sig_type=std_logic lab=mpa10}
C {lab_pin.sym} 1120 -1970 0 1 {name=p4 sig_type=std_logic lab=gates}
C {ngspice_probe.sym} 960 -1560 3 0 {name=r8}
C {ngspice_probe.sym} 1280 -1560 3 0 {name=r14}
C {sg13g2_pr/pnpMPA.sym} 1220 -1400 0 0 {name=Q3
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1230 -1400 0 0 {name=Q5
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1240 -1400 0 0 {name=Q6
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1250 -1400 0 0 {name=Q7
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1260 -1400 0 0 {name=Q8
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1270 -1400 0 0 {name=Q9
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1280 -1400 0 0 {name=Q10
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {sg13g2_pr/pnpMPA.sym} 1290 -1400 0 0 {name=Q11
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
m=9}
C {lab_pin.sym} 1160 -1530 0 0 {name=p5 sig_type=std_logic lab=mpa2
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
C {ammeter.sym} 1760 -1310 0 0 {name=Vmeas14 savecurrent=true
lvs_ignore=short}
C {res.sym} 1760 -1440 0 0 {name=R16
value=33k
footprint=1206
device=resistor
m=1}
C {gndoli.sym} 1760 -1280 0 0 {name=l21 lab=GND}
C {lab_pin.sym} 1760 -1840 0 0 {name=p6 sig_type=std_logic lab=OUT1}
C {pwroli.sym} 1100 -1910 2 1 {name=l22 lab=VDD
}
C {gndoli.sym} 800 -1780 0 1 {name=l2 lab=GND}
C {vsource.sym} 1150 -1680 0 0 {name=Vzero1 value=\{offset/2\}  net_name=true
}
C {vsource.sym} 1090 -1680 2 0 {name=Vzero2 value=\{offset/2\}  net_name=true
}
C {nmolis-sub2.sym} 780 -1810 0 0 {name=M1
L=10e-6
W=1e-6
ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
}
C {nmolis-sub2.sym} 880 -1810 0 0 {name=M3
L=1e-6
W=1e-6
ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
}
C {gndoli.sym} 640 -1780 0 0 {name=l4 lab=GND}
C {nmolis-sub2.sym} 660 -1810 0 1 {name=M5
L=1e-6
W=1e-6
ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
}
C {pwroli.sym} 640 -2160 2 1 {name=l9 lab=VDD
}
C {ammeter.sym} 640 -2130 0 1 {name=Vmeas1 savecurrent=true
lvs_ignore=short}
