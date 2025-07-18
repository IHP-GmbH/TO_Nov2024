v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 590 -170 730 -170 {
lab=VOUT}
C {devices/code_shown.sym} -10 300 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.save v(vin) v(vout) 
.control
tran 100p 6u
plot v(vin) v(vout) 
plot v(vin) v(vout)+2
.endc

.measure tran tdelay
+ TRIG tran1.V(VIN) TD=0u VAL=0.6 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=0.6 RISE=1


"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.2}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 3.3 3u 100p 100p 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -170 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 290 -120 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 650 -170 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/capa.sym} 730 -140 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 730 -110 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -220 1 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/code_shown.sym} -10 -20 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/lab_pin.sym} 360 -170 2 0 {name=p13 sig_type=std_logic lab=VOUT}
C {BUFFLV_vto1p1.sym} 240 -130 0 0 {name=X1}
