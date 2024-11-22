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
N 3280 -2440 3280 -2400 {lab=IOVSS}
N 3280 -2440 3300 -2440 {lab=IOVSS}
N 3240 -2460 3240 -2400 {lab=VSS}
N 3240 -2460 3300 -2460 {lab=VSS}
N 3280 -2520 3300 -2520 {lab=IOVDD}
N 3280 -2560 3280 -2520 {lab=IOVDD}
N 3240 -2500 3300 -2500 {lab=VDD}
N 3240 -2560 3240 -2500 {lab=VDD}
N 3420 -2480 3520 -2480 {lab=REFCUR}
N 3280 -2040 3280 -2000 {lab=IOVSS}
N 3280 -2040 3300 -2040 {lab=IOVSS}
N 3240 -2060 3240 -2000 {lab=VSS}
N 3240 -2060 3300 -2060 {lab=VSS}
N 3280 -2120 3300 -2120 {lab=IOVDD}
N 3280 -2160 3280 -2120 {lab=IOVDD}
N 3240 -2100 3300 -2100 {lab=VDD}
N 3240 -2160 3240 -2100 {lab=VDD}
N 3420 -2080 3520 -2080 {lab=ADJ}
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
N 2160 -1480 2160 -1440 {lab=IOVSS}
N 2140 -1480 2160 -1480 {lab=IOVSS}
N 2200 -1500 2200 -1440 {lab=VSS}
N 2140 -1500 2200 -1500 {lab=VSS}
N 2140 -1560 2160 -1560 {lab=IOVDD}
N 2160 -1600 2160 -1560 {lab=IOVDD}
N 2140 -1540 2200 -1540 {lab=VDD}
N 2200 -1600 2200 -1540 {lab=VDD}
N 3280 -360 3280 -320 {lab=IOVSS}
N 3280 -360 3300 -360 {lab=IOVSS}
N 3240 -380 3240 -320 {lab=VSS}
N 3240 -380 3300 -380 {lab=VSS}
N 3280 -440 3300 -440 {lab=IOVDD}
N 3280 -480 3280 -440 {lab=IOVDD}
N 3240 -420 3300 -420 {lab=VDD}
N 3240 -480 3240 -420 {lab=VDD}
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
N 3420 -1520 3520 -1520 {lab=SHUNT_GND}
N 1920 -1520 2020 -1520 {lab=REF}
N 1920 -520 2020 -520 {lab=OTA+}
N 1920 -280 2020 -280 {lab=OTA-}
N 3420 -400 3520 -400 {lab=OTA_OUT}
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
C {lab_pin.sym} 3520 -2480 0 1 {name=p6 sig_type=std_logic lab=REFCUR
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
C {tcleval([xschem get current_dirname]/io_ana.sym)} 2080 -1520 0 0 {name=x14

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 2160 -1600 2 1 {name=l79 lab=IOVDD
}
C {pwroli.sym} 2200 -1440 0 0 {name=l80 lab=VSS}
C {pwroli.sym} 2200 -1600 2 1 {name=l81 lab=VDD

}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 3360 -400 0 1 {name=x15

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {pwroli.sym} 3280 -480 2 0 {name=l59 lab=IOVDD
}
C {pwroli.sym} 3240 -320 0 1 {name=l83 lab=VSS}
C {pwroli.sym} 3240 -480 2 0 {name=l84 lab=VDD

}
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
