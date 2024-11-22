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
B 2 3650 -1230 4280 -900 {flags=graph,unlocked

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
B 2 3650 -500 4280 -170 {flags=graph,unlocked

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
B 2 3650 -1960 4280 -1630 {flags=graph,unlocked

sim_type=dc
y1=0
y2=30u
divy=4
subdivy=1
x1=0
x2=3.6
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
B 2 3650 -890 4280 -560 {flags=graph,unlocked

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
B 2 2970 -1960 3600 -1630 {flags=graph,unlocked
sim_type=ac
y1=-90
y2=10

subdivy=1
x1=3
x2=9
divx=6
subdivx=8



dataset=-1
color="8 4"
node="\\"vdd db20()\\"
\\"vddl db20()\\""
hilight_wave=-1
logx=1
xlabmag=1.4
divy=6
ylabmag=1.2

logy=0
rawfile= $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw
autoload=1}
B 2 2970 -1620 3600 -1290 {flags=graph,unlocked
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
B 2 2970 -500 3600 -170 {flags=graph,unlocked
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
B 2 2970 -1230 3600 -900 {flags=graph,unlocked
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
B 2 2970 -890 3600 -560 {flags=graph,unlocked
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
B 2 4290 -1620 4920 -1290 {flags=graph,unlocked

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
vddl
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
B 2 4290 -890 4920 -560 {flags=graph,unlocked

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
B 2 3650 -1620 4280 -1290 {flags=graph,unlocked

sim_type=dc
y1=0
y2=5m
divy=4
subdivy=1
x1=0
x2=3.6
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=$\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
color=5
node=i(vmeas12)}
B 2 4290 -1960 4920 -1630 {flags=graph,unlocked

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
T {Transient Analysis} 3650 -540 0 0 0.6 0.6 { layer=2}
T {DC zoom Analysis} 3650 -1270 0 0 0.6 0.6 { layer=2}
T {DC Analysis} 3650 -2000 0 0 0.6 0.6 { layer=2}
T {AC Analysis} 2970 -2000 0 0 0.6 0.6 { layer=2}
T {AC CM Analysis} 2970 -540 0 0 0.6 0.6 { layer=2}
T {AC PSRR Analysis} 2970 -1270 0 0 0.6 0.6 { layer=2}
T {tcleval(loaded .raw files: 
[xschem raw info])} 880 -240 0 0 0.3 0.3 {floater=true layer=16}
N 1360 -610 1360 -590 {
lab=#net1}
N 2160 -2080 2160 -1950 {
lab=VDD}
N 1440 -1170 1440 -1150 {lab=#net2}
N 1500 -1170 1500 -1120 {lab=#net2}
N 1480 -1120 1500 -1120 {lab=#net2}
N 1440 -1170 1500 -1170 {lab=#net2}
N 2080 -680 2080 -640 {lab=GND}
N 2060 -680 2080 -680 {lab=GND}
N 2120 -700 2120 -640 {lab=GND}
N 2060 -700 2120 -700 {lab=GND}
N 2060 -760 2080 -760 {lab=VDD}
N 2080 -800 2080 -760 {lab=VDD}
N 2060 -740 2120 -740 {lab=VDDL}
N 2120 -800 2120 -740 {lab=VDDL}
N 2400 -680 2400 -640 {lab=GND}
N 2380 -680 2400 -680 {lab=GND}
N 2440 -700 2440 -640 {lab=GND}
N 2380 -700 2440 -700 {lab=GND}
N 2380 -760 2400 -760 {lab=VDD}
N 2400 -800 2400 -760 {lab=VDD}
N 2380 -740 2440 -740 {lab=VDDL}
N 2440 -800 2440 -740 {lab=VDDL}
N 2080 -360 2080 -320 {lab=GND}
N 2060 -360 2080 -360 {lab=GND}
N 2120 -380 2120 -320 {lab=GND}
N 2060 -380 2120 -380 {lab=GND}
N 2060 -440 2080 -440 {lab=VDD}
N 2080 -480 2080 -440 {lab=VDD}
N 2060 -420 2120 -420 {lab=VDDL}
N 2120 -480 2120 -420 {lab=VDDL}
N 2400 -360 2400 -320 {lab=GND}
N 2380 -360 2400 -360 {lab=GND}
N 2440 -380 2440 -320 {lab=GND}
N 2380 -380 2440 -380 {lab=GND}
N 2380 -440 2400 -440 {lab=VDD}
N 2400 -480 2400 -440 {lab=VDD}
N 2380 -420 2440 -420 {lab=VDDL}
N 2440 -480 2440 -420 {lab=VDDL}
N 1280 -1320 1280 -1280 {lab=GND}
N 1260 -1320 1280 -1320 {lab=GND}
N 1320 -1340 1320 -1280 {lab=GND}
N 1260 -1340 1320 -1340 {lab=GND}
N 1260 -1400 1280 -1400 {lab=VDD}
N 1280 -1440 1280 -1400 {lab=VDD}
N 1260 -1380 1320 -1380 {lab=VDDL}
N 1320 -1440 1320 -1380 {lab=VDDL}
N 1040 -1440 1040 -1430 {lab=VDD}
N 1040 -1370 1040 -1360 {lab=#net3}
N 1040 -1360 1140 -1360 {lab=#net3}
N 1260 -1360 1440 -1360 {lab=#net2}
N 1440 -1360 1440 -1170 {lab=#net2}
N 2400 -1800 2400 -1760 {lab=GND}
N 2400 -1800 2420 -1800 {lab=GND}
N 2360 -1820 2360 -1760 {lab=GND}
N 2360 -1820 2420 -1820 {lab=GND}
N 2400 -1880 2420 -1880 {lab=VDD}
N 2400 -1920 2400 -1880 {lab=VDD}
N 2360 -1860 2420 -1860 {lab=VDDL}
N 2360 -1920 2360 -1860 {lab=VDDL}
N 1990 -1940 2020 -1940 {
lab=DRV_SHUNT}
N 1990 -1920 2020 -1920 {
lab=DRV_SHUNT}
N 2020 -1940 2020 -1920 {lab=DRV_SHUNT}
N 1830 -1890 1860 -1890 {lab=#net4}
N 1830 -1950 1860 -1950 {lab=#net5}
N 1920 -2080 1920 -1980 {lab=VDD}
N 1920 -1860 1920 -1760 {lab=GND}
N 1990 -2080 1990 -1950 {lab=VDD}
N 2020 -1920 2120 -1920 {
lab=DRV_SHUNT}
N 1680 -1810 1680 -1760 {lab=GND}
N 1680 -1890 1680 -1870 {lab=#net6}
N 1680 -1890 1770 -1890 {lab=#net6}
N 1680 -1970 1680 -1890 {lab=#net6}
N 2160 -1520 2160 -1390 {
lab=VDD}
N 1990 -1380 2020 -1380 {
lab=DRV_VDDL}
N 1990 -1360 2020 -1360 {
lab=DRV_VDDL}
N 2020 -1380 2020 -1360 {lab=DRV_VDDL}
N 1830 -1330 1860 -1330 {lab=#net7}
N 1830 -1390 1860 -1390 {lab=#net8}
N 1920 -1520 1920 -1420 {lab=VDD}
N 1920 -1300 1920 -1200 {lab=GND}
N 1990 -1520 1990 -1390 {lab=VDD}
N 2020 -1360 2120 -1360 {
lab=DRV_VDDL}
N 2160 -1240 2160 -1150 {lab=VDDL}
N 1680 -1680 1900 -1680 {lab=#net2}
N 1940 -1300 1940 -1150 {lab=#net9}
N 1760 -1330 1770 -1330 {lab=VDDL}
N 1760 -1330 1760 -1240 {lab=VDDL}
N 1760 -1240 2160 -1240 {lab=VDDL}
N 2160 -1280 2160 -1240 {lab=VDDL}
N 1600 -1950 1770 -1950 {lab=#net10}
N 1600 -1920 1600 -1390 {lab=#net10}
N 1600 -1390 1770 -1390 {lab=#net10}
N 1680 -1680 1680 -1120 {lab=#net2}
N 1940 -1860 1940 -1710 {lab=#net11}
N 1680 -2080 1680 -2030 {lab=VDD}
N 2160 -1890 2160 -1840 {lab=#net12}
N 2160 -1840 2420 -1840 {lab=#net12}
N 2240 -1520 2240 -1280 {lab=VDDL}
N 2160 -1280 2240 -1280 {lab=VDDL}
N 2160 -1330 2160 -1280 {lab=VDDL}
N 2640 -1840 2640 -1820 {lab=#net13}
N 2540 -1840 2640 -1840 {lab=#net13}
N 1680 -1120 2120 -1120 {lab=#net2}
N 1500 -1120 1680 -1120 {lab=#net2}
N 1280 -1880 1280 -1840 {lab=GND}
N 1260 -1880 1280 -1880 {lab=GND}
N 1320 -1900 1320 -1840 {lab=GND}
N 1260 -1900 1320 -1900 {lab=GND}
N 1260 -1960 1280 -1960 {lab=VDD}
N 1280 -2000 1280 -1960 {lab=VDD}
N 1260 -1940 1320 -1940 {lab=VDDL}
N 1320 -2000 1320 -1940 {lab=VDDL}
N 1600 -1950 1600 -1920 {lab=#net10}
N 1260 -1920 1600 -1920 {lab=#net10}
N 960 -1920 960 -1900 {
lab=#net14}
N 720 -3230 820 -3230 {lab=#net15}
N 960 -1920 1010 -1920 {lab=#net14}
N 1070 -1920 1140 -1920 {lab=#net16}
N 1360 -720 1360 -670 {
lab=VDD}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {vsource.sym} 1360 -560 0 0 {name=VDD value="3.3 ac 1 0"  net_name=true
}
C {pwroli.sym} 1360 -720 2 0 {name=l18 lab=VDD
}
C {gndoli.sym} 1360 -530 0 0 {name=l19 lab=GND}
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
C {launcher.sym} 1130 -2370 0 0 {name=h12
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
C {gndoli.sym} 1520 -530 0 0 {name=l25 lab=GND}
C {vsource.sym} 1520 -560 0 0 {name=Vzero value=0  net_name=true
}
C {lab_pin.sym} 1520 -590 0 1 {name=p8 lab=0  net_name=true}
C {launcher.sym} 1130 -2430 0 0 {
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
C {launcher.sym} 3030 -2020 0 0 {name=h1
descr="xschem annotate_op"
tclcommand="


xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
"
}
C {pwroli.sym} 2160 -2080 2 1 {name=l8 lab=VDD
}
C {pmolis-sub2.sym} 2140 -1920 0 0 {name=M11 model=sg13_hv_pmos  w="tcleval([string map \{\{$\} \{\}\} [ev \{300e-6\}]])" l="tcleval([string map \{\{$\} \{\}\} [ev \{$pl\}]])" 
substrate=VDD
ng=10 m=1}
C {gndoli.sym} 1440 -1090 0 0 {name=l4 lab=GND}
C {nmolis-sub2.sym} 1460 -1120 0 1 {name=M5


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2000 -720 0 0 {name=x2

model=sg13g2_IOPadIOVdd
spiceprefix=X
}
C {gndoli.sym} 2080 -640 0 0 {name=l14 lab=GND}
C {pwroli.sym} 2080 -800 2 1 {name=l17 lab=VDD
}
C {gndoli.sym} 2120 -640 0 0 {name=l23 lab=GND}
C {pwroli.sym} 2120 -800 2 1 {name=l24 lab=VDDL

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2320 -720 0 0 {name=X3

model=sg13g2_IOPadIOVss
spiceprefix=X
}
C {gndoli.sym} 2400 -640 0 0 {name=l26 lab=GND}
C {pwroli.sym} 2400 -800 2 1 {name=l27 lab=VDD
}
C {gndoli.sym} 2440 -640 0 0 {name=l28 lab=GND}
C {pwroli.sym} 2440 -800 2 1 {name=l29 lab=VDDL

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2000 -400 0 0 {name=x4

model=sg13g2_IOPadVdd
spiceprefix=X
}
C {gndoli.sym} 2080 -320 0 0 {name=l30 lab=GND}
C {pwroli.sym} 2080 -480 2 1 {name=l31 lab=VDD
}
C {gndoli.sym} 2120 -320 0 0 {name=l32 lab=GND}
C {pwroli.sym} 2120 -480 2 1 {name=l33 lab=VDDL

}
C {tcleval([xschem get current_dirname]/io_pwr.sym)} 2320 -400 0 0 {name=X5

model=sg13g2_IOPadVss
spiceprefix=X
}
C {gndoli.sym} 2400 -320 0 0 {name=l34 lab=GND}
C {pwroli.sym} 2400 -480 2 1 {name=l35 lab=VDD
}
C {gndoli.sym} 2440 -320 0 0 {name=l36 lab=GND}
C {pwroli.sym} 2440 -480 2 1 {name=l37 lab=VDDL

}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 1200 -1360 0 0 {name=x6

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {gndoli.sym} 1280 -1280 0 0 {name=l38 lab=GND}
C {pwroli.sym} 1280 -1440 2 1 {name=l39 lab=VDD
}
C {gndoli.sym} 1320 -1280 0 0 {name=l40 lab=GND}
C {pwroli.sym} 1320 -1440 2 1 {name=l41 lab=VDDL

}
C {isource.sym} 1040 -1400 0 1 {name=I1 value="\{iset\}"}
C {pwroli.sym} 1040 -1440 2 1 {name=l9 lab=VDD
}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 2480 -1840 0 1 {name=x7

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {gndoli.sym} 2400 -1760 0 1 {name=l21 lab=GND}
C {pwroli.sym} 2400 -1920 2 0 {name=l42 lab=VDD
}
C {gndoli.sym} 2360 -1760 0 1 {name=l43 lab=GND}
C {pwroli.sym} 2360 -1920 2 0 {name=l44 lab=VDDL

}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 1920 -1920 0 0 {name=x1 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {gndoli.sym} 1920 -1760 0 0 {name=l16 lab=GND}
C {pwroli.sym} 1920 -2080 2 0 {name=l3 lab=VDD
}
C {vsource.sym} 1800 -1950 1 1 {name=Vzero1 value=\{offset/2\}  net_name=true
}
C {vsource.sym} 1800 -1890 3 1 {name=Vzero2 value=\{offset/2\}  net_name=true
}
C {pwroli.sym} 1990 -2080 2 0 {name=l6 lab=VDD
}
C {rppd.sym} 1680 -2000 2 0 {name=R6
w=1e-6
l=100e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {rppd.sym} 1680 -1840 2 0 {name=R1
w=1e-6
l=100e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {gndoli.sym} 1680 -1760 0 0 {name=l11 lab=GND}
C {pwroli.sym} 1680 -2080 2 0 {name=l12 lab=VDD
}
C {pwroli.sym} 2160 -1520 2 1 {name=l7 lab=VDD
}
C {tcleval(tcleval([xschem get current_dirname]/OTA3C.sym))} 1920 -1360 0 0 {name=x10 

nw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nw\}]])" 
nl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$nl\}]])" 
pw="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pw\}]])" 
pl="tcleval([string map \{\{$\} \{\}\} [ev7 \{$pl\}]])" 



}
C {gndoli.sym} 1920 -1200 0 0 {name=l13 lab=GND}
C {pwroli.sym} 1920 -1520 2 0 {name=l15 lab=VDD
}
C {vsource.sym} 1800 -1390 1 1 {name=Vzero3 value=\{offset/2\}  net_name=true
}
C {vsource.sym} 1800 -1330 3 1 {name=Vzero4 value=\{offset/2\}  net_name=true
}
C {pwroli.sym} 1990 -1520 2 0 {name=l22 lab=VDD
}
C {nmolis-sub2.sym} 2140 -1360 0 0 {name=M1


ng=10
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{200e-6\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {gndoli.sym} 1940 -1090 0 0 {name=l2 lab=GND}
C {nmolis-sub2.sym} 1920 -1120 0 0 {name=M2


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {gndoli.sym} 2160 -1090 0 0 {name=l20 lab=GND}
C {nmolis-sub2.sym} 2140 -1120 0 0 {name=M4


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {gndoli.sym} 1940 -1650 0 0 {name=l53 lab=GND}
C {nmolis-sub2.sym} 1920 -1680 0 0 {name=M6


ng=1
m=1
substrate=VSS
model=sg13_hv_nmos
spiceprefix=X
w="tcleval([string map \{\{$\} \{\}\} [ev \{$nw\}]])"
l="tcleval([string map \{\{$\} \{\}\} [ev \{$nl\}]])"}
C {pwroli.sym} 2240 -1520 2 0 {name=l10 lab=VDDL

}
C {ammeter.sym} 2640 -1790 0 0 {name=Vmeas12 savecurrent=true
lvs_ignore=short}
C {gndoli.sym} 2640 -1760 0 1 {name=l45 lab=GND}
C {tcleval([xschem get current_dirname]/io_ana.sym)} 1200 -1920 0 0 {name=x8

model=sg13g2_IOPadAnalog
spiceprefix=X
}
C {gndoli.sym} 1280 -1840 0 0 {name=l5 lab=GND}
C {pwroli.sym} 1280 -2000 2 1 {name=l46 lab=VDD
}
C {gndoli.sym} 1320 -1840 0 0 {name=l47 lab=GND}
C {pwroli.sym} 1320 -2000 2 1 {name=l48 lab=VDDL

}
C {vsource.sym} 960 -1870 0 0 {name=VDD1 value="1.65"  net_name=true
}
C {gndoli.sym} 960 -1840 0 0 {name=l49 lab=GND}
C {res.sym} 1040 -1920 1 0 {name=R2
value=103k
footprint=1206
device=resistor
m=1}
C {res.sym} 1360 -640 2 0 {name=R3
value=200
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 2080 -1920 1 1 {name=p7 sig_type=std_logic lab=DRV_SHUNT
}
C {lab_pin.sym} 2080 -1360 3 1 {name=p1 sig_type=std_logic lab=DRV_VDDL

}
