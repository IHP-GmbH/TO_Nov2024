v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 0 230 -0 {
lab=16}
N 20 -100 20 -70 {
lab=VCC}
N 350 -90 350 -60 {
lab=VCC}
N 20 70 20 90 {
lab=VSS}
N 350 60 350 80 {
lab=VSS}
N -160 20 -130 20 {
lab=VINR}
N -160 -20 -130 -20 {
lab=VINS}
N 470 20 500 20 {
lab=VCN}
N 470 -20 500 -20 {
lab=VCP}
N 200 -80 200 0 {
lab=16}
N 170 0 200 0 {
lab=16}
C {devices/iopin.sym} -150 -200 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -150 -160 2 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 20 -100 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 350 -90 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 20 90 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 80 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -270 -40 2 0 {name=p7 lab=VINS}
C {devices/iopin.sym} -270 40 2 0 {name=p8 lab=VINR}
C {devices/lab_pin.sym} -160 20 0 0 {name=p20 sig_type=std_logic lab=VINR}
C {devices/lab_pin.sym} -160 -20 0 0 {name=p6 sig_type=std_logic lab=VINS}
C {devices/iopin.sym} 500 -20 0 0 {name=p9 lab=VCP}
C {devices/iopin.sym} 500 20 0 0 {name=p10 lab=VCN}
C {../PD/PD_vto1p1.sym} 20 0 0 0 {name=x2}
C {../NOL/NOL_vto1p1.sym} 350 0 0 0 {name=x1}
C {devices/lab_pin.sym} 200 -80 0 0 {name=p11 sig_type=std_logic lab=16}
