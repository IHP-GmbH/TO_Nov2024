v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -240 660 -240 {
lab=VCP}
N 520 -120 660 -120 {
lab=VCN}
C {devices/code_shown.sym} -300 20 0 0 {name=CODE only_toplevel=false value="
.save v(vin) v(vcp) v(vcn)
.control
tran 100p 300n
plot v(vin) v(vcp) v(vcn)
plot v(vin) v(vcp)+1.5 v(vcn)+3
.endc

.measure tran tdead_fall
+ TRIG tran1.V(vcn) TD=0u VAL=0.6 FALL=1
+ TARG tran1.V(vcp) TD=0u VAL=0.6 FALL=1


.measure tran tdead_rise
+ TRIG tran1.V(vcp) TD=0u VAL=0.6 RISE=1
+ TARG tran1.V(vcn) TD=0u VAL=0.6 RISE=1


"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.2}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 1.2 25n 1p 1p 100n 200n)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -160 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 180 -100 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 580 -240 1 0 {name=p8 sig_type=std_logic lab=VCP}
C {devices/capa.sym} 660 -210 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 660 -180 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -220 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 580 -120 1 0 {name=p9 sig_type=std_logic lab=VCN}
C {devices/capa.sym} 660 -90 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 660 -60 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -180 2 0 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 300 -140 2 0 {name=p12 sig_type=std_logic lab=VCN}
C {../NOL/NOL_vto1p1.sym} 180 -160 0 0 {name=x1}
C {devices/code_shown.sym} 210 30 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.option temp = -39
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_ff
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_ff
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
