v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 580 -800 1380 -400 {flags=graph,private_cursor
y1=-0.15868814
y2=1.5333694
ypos1=-0.13
ypos2=1.4
divy=5
subdivy=1
unity=1
x1=2.2703841e-06

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=0
unitx=1
logx=0
logy=0



digital=0


sim_type=tran
rainbow=0
hilight_wave=-1




autoload=0



cursor2_x=0



x2=2.3759371e-06



color="4 6 5"
node="_osctrg1[0]
_osctrg2[1]
_patrg[1]"
cursor1_x=6.196e-09}
T {    // Extract individual control signals from data_reg
    wire [4:0] bw_ctrl = data_reg[39:35];      // bw_ctrl is from the upper 5 bits of data_reg
    wire [1:0] trg_ctrl = data_reg[34:33];     // trg_ctrl is from the next 2 bits
    wire [2:0] trg_ext_ctrl = data_reg[32:30]; // trg_ext_ctrl is from the next 3 bits
    wire [3:0] osc_gain = data_reg[29:26];     // osc_gain is from bits 29-26
    wire [3:0] pa_gain = data_reg[25:22];      // pa_gain is from bits 25-22} 480 -1060 0 0 0.4 0.4 {}
N 1600 -1000 1660 -1000 {
lab=_sclk}
N 1480 -1000 1540 -1000 {
lab=#net1}
N 1600 -600 1660 -600 {
lab=_sdi}
N 1480 -600 1540 -600 {
lab=#net2}
N 1600 -840 1660 -840 {
lab=trigger}
N 1480 -840 1540 -840 {
lab=#net3}
N 1600 -720 1660 -720 {
lab=_sload}
N 1480 -720 1540 -720 {
lab=#net4}
C {devices/title.sym} 200 -80 0 0 {name=l1 author="Ali Olyanasab"}
C {devices/code_shown.sym} 20 -460 0 0 {name="NGSPICE" only_toplevel="true" 
value=".param temp=27
.control
.OPTION RELTOL=1e-5
.OPTION METHOD=gear

op
save all
write uwb_dig_tb.raw
set appendwrite
tran 5n 2500n 
remzerovec
write uwb_dig_tb.raw
.endc
"}
C {devices/launcher.sym} 1590 -260 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/launcher.sym} 1590 -215 0 0 {name=h1
descr="Annotate" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 300 -230 0 0 {name=V6 value=1.2 savecurrent=false}
C {devices/gnd.sym} 300 -200 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 300 -260 0 1 {name=p1 sig_type=std_logic lab=vdd1v2}
C {code_shown.sym} 20 -660 0 0 {name="s1" only_toplevel="false" value=".include /foss/designs/ihpdig/uwb_dig/uwb_spi.spice
.include /foss/designs/ihpdig/uwb_dig/uwb_dig.spice
"}
C {launcher.sym} 1590 -300 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/uwb_dig_tb.raw tran"
}
C {devices/lab_pin.sym} 1660 -840 0 1 {name=p3 sig_type=std_logic lab=trigger}
C {devices/gnd.sym} 720 -280 3 0 {name=l14 lab=GND}
C {devices/code_shown.sym} 20 -810 0 0 {name="MODEL" only_toplevel="true"
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ 
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/lab_pin.sym} 860 -220 0 1 {name=p31 sig_type=std_logic lab=_reg[0:39]}
C {devices/lab_pin.sym} 700 -280 0 0 {name=p7 sig_type=std_logic lab=vdd1v2}
C {devices/lab_pin.sym} 1660 -600 2 0 {name=p14 sig_type=std_logic lab=_sdi}
C {devices/vsource.sym} 1480 -970 0 0 {name="V25" value="0 pulse(0 1.2 25n 1n 1n 50n 100n)
"}
C {devices/lab_pin.sym} 1660 -1000 2 0 {name=p30 sig_type=std_logic lab=_sclk}
C {devices/vsource.sym} 1480 -570 0 0 {name="V26" value="pwl 0 0 
+200n 0 +203n 0 +300n 0 +303n 1.2
+400n 1.2 +403n 0 +500n 0 +503n 1.2
+600n 1.2 +603n 1.2 +700n 1.2 +703n 1.2
+800n 1.2 +803n 1.2 +900n 1.2 +903n 0
+1000n 0 +1003n 0 +1100n 0 +1103n 0
+1200n 0 +1203n 1.2 +1300n 1.2 +1303n 0
+1400n 0 +1403n 1.2 +1500n 1.2 +1503n 0
+1600n 0 +1603n 0 +1700n 0 +1703n 1.2
+1800n 1.2 +1803n 1.2 +1900n 1.2 +1903n 0
+2000n 0"}
C {devices/vsource.sym} 1480 -810 0 0 {name="V1" value="0 pulse(0 1.2 2350n 1n 1n 100n 5000n)
"}
C {devices/lab_pin.sym} 560 -180 2 1 {name=p2 sig_type=std_logic lab=_sclk}
C {devices/gnd.sym} 1480 -940 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1480 -780 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1480 -540 0 0 {name=l4 lab=GND}
C {capa-2.sym} 1660 -970 0 0 {name=C1
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1660 -940 0 0 {name=l7 lab=GND}
C {res.sym} 1570 -600 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 1660 -570 0 0 {name=C2
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1660 -540 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 860 -240 2 0 {name=p4 sig_type=std_logic lab=_sdo}
C {res.sym} 1570 -1000 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 560 -240 2 1 {name=p5 sig_type=std_logic lab=_sdi}
C {res.sym} 1570 -840 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 1660 -810 0 0 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1660 -780 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1270 -320 3 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1250 -320 0 0 {name=p13 sig_type=std_logic lab=vdd1v2}
C {devices/lab_pin.sym} 1410 -220 0 1 {name=p15 sig_type=std_logic lab=_osctrg1[0:3]}
C {devices/lab_pin.sym} 1410 -200 0 1 {name=p16 sig_type=std_logic lab=_osctrg2[0:3]}
C {devices/lab_pin.sym} 1410 -180 0 1 {name=p17 sig_type=std_logic lab=_patrg[0:3]}
C {devices/lab_pin.sym} 1110 -280 0 0 {name=p18 sig_type=std_logic lab=trigger}
C {devices/lab_pin.sym} 1410 -280 0 1 {name=p19 sig_type=std_logic lab=trgext1}
C {devices/lab_pin.sym} 1410 -260 0 1 {name=p20 sig_type=std_logic lab=trgext2}
C {devices/lab_pin.sym} 1660 -720 0 1 {name=p6 sig_type=std_logic lab=_sload}
C {devices/vsource.sym} 1480 -690 0 0 {name=V2 value="0 pulse(0 1.2 2000n 1n 1n 100n 5000n)
"}
C {devices/gnd.sym} 1480 -660 0 0 {name=l9 lab=GND}
C {res.sym} 1570 -720 3 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 1660 -690 0 0 {name=C4
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 1660 -660 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 560 -210 0 0 {name=p21 sig_type=std_logic lab=_sload}
C {uwb_dig.sym} 1260 -270 0 0 {name=x1}
C {uwb_spi.sym} 710 -230 0 0 {name=x2}
C {devices/lab_pin.sym} 1110 -260 0 0 {name=p8 sig_type=std_logic lab=_reg[33:34]}
C {devices/lab_pin.sym} 1110 -240 0 0 {name=p9 sig_type=std_logic lab=_reg[30:32]}
C {devices/lab_pin.sym} 1110 -220 0 0 {name=p10 sig_type=std_logic lab=_reg[35:39]}
C {devices/lab_pin.sym} 1110 -200 0 0 {name=p11 sig_type=std_logic lab=_reg[26:29]}
C {devices/lab_pin.sym} 1110 -180 0 0 {name=p12 sig_type=std_logic lab=_reg[22:25]}
