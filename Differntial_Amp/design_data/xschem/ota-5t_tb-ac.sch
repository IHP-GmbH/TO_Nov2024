v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -300 520 -280 {
lab=GND}
N 600 -300 600 -280 {
lab=GND}
N 600 -380 600 -360 {
lab=v_ss}
N 1050 -830 1090 -830 {
lab=v_dd}
N 1050 -550 1050 -380 {
lab=v_ss}
N 1300 -530 1300 -380 {
lab=v_ss}
N 1300 -630 1300 -590 {
lab=v_out}
N 900 -600 900 -510 {
lab=#net1}
N 900 -600 970 -600 {
lab=#net1}
N 700 -510 700 -380 {
lab=v_ss}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -660 700 -570 {
lab=v_in}
N 700 -660 970 -660 {
lab=v_in}
N 1090 -830 1090 -810 {
lab=v_dd}
N 1090 -750 1090 -710 {
lab=#net2}
N 1050 -760 1050 -710 {
lab=v_dd}
N 520 -760 1050 -760 {
lab=v_dd}
N 520 -760 520 -360 {
lab=v_dd}
N 1050 -830 1050 -760 {
lab=v_dd}
N 1090 -400 1090 -380 {
lab=v_ss}
N 1050 -380 1090 -380 {
lab=v_ss}
N 1090 -550 1090 -460 {
lab=v_ena}
N 1300 -380 1310 -380 {
lab=v_ss}
N 900 -380 1050 -380 {
lab=v_ss}
N 1150 -630 1300 -630 {
lab=v_out}
N 900 -450 900 -380 {
lab=v_ss}
N 700 -380 900 -380 {
lab=v_ss}
N 1090 -380 1300 -380 {lab=v_ss}
C {devices/code_shown.sym} 0 -240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write ota-5t_tb-ac.raw
set appendwrite

ac dec 101 1k 200MEG
write ota-5t_tb-ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let dcgain_dB = 20*log10(dcgain)
let f3db = dcgain/sqrt(2)
meas ac bw WHEN vmag(v_out)=f3db FALL=1
meas ac gbw WHEN vmag(v_out)=1 FALL=1
let gainerror=(dcgain-1)/1
print dcgain_dB
print bw
print gbw

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=3.3}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 Harald Pretl"}
C {devices/launcher.sym} 500 -160 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 740 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1300 -560 0 0 {name=C1
value=50f}
C {lab_wire.sym} 1300 -630 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {lab_wire.sym} 760 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1090 -780 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {vsource.sym} 1090 -430 0 0 {name=Venable value=3.3 savecurrent=false}
C {spice_probe.sym} 820 -660 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1180 -630 0 0 {name=p6 attrs=""}
C {spice_probe.sym} 1090 -470 0 0 {name=p7 attrs=""}
C {lab_wire.sym} 1090 -530 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {/home/aidas93/Downloads/TO_Nov2024-main/Differntial_Amp/design_data/xschem/ota.sym} 1050 -630 0 0 {name=x1}
C {devices/vsource.sym} 900 -480 2 0 {name=Vin1 value="dc -1.65 ac 1"}
C {vsource.sym} 700 -540 0 0 {name=Vin3 value="dc 1.65 ac 1" savecurrent=false}