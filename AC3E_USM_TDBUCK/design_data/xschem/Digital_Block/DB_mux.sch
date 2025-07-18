v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {VSEL_OL = 0 --> Closed loop
VSEL_OL = 1 --> Open loop} 110 230 0 0 0.5 0.5 {}
N 200 0 230 -0 {
lab=PD_OUT}
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
N 170 0 200 0 {
lab=PD_OUT}
N 200 -120 200 0 {
lab=PD_OUT}
N 180 -120 200 -120 {
lab=PD_OUT}
N -330 -240 -330 -200 {
lab=VCC}
N -330 -100 -330 -60 {
lab=VSS}
N -330 90 -330 120 {
lab=VCC}
N -330 220 -330 260 {
lab=VSS}
N 300 -200 300 -170 {
lab=VSS}
N 300 -330 300 -300 {
lab=VCC}
N 880 -330 880 -290 {
lab=VCC}
N 880 -190 880 -160 {
lab=VSS}
N 880 140 880 170 {
lab=VCC}
N 880 270 880 320 {
lab=VSS}
N 950 -240 1000 -240 {
lab=NOC_P_BUFF}
N 950 220 1000 220 {
lab=NOC_N_BUFF}
N 370 -250 420 -250 {
lab=PD_BUFF}
N -260 -150 -210 -150 {
lab=VINS_BUFF}
N -260 170 -230 170 {
lab=VINR_BUFF}
N 800 -100 810 -100 {
lab=NOC_P}
N 800 100 810 100 {
lab=NOC_N}
N 200 -250 220 -250 {
lab=PD_OUT}
N 200 -250 200 -120 {
lab=PD_OUT}
N 470 -20 500 -20 {
lab=#net1}
N 470 20 500 20 {
lab=#net2}
N 500 -120 500 -20 {
lab=#net1}
N 500 -120 690 -120 {
lab=#net1}
N 500 20 500 80 {
lab=#net2}
N 500 80 690 80 {
lab=#net2}
N 800 -240 800 -100 {
lab=NOC_P}
N 770 -100 800 -100 {
lab=NOC_P}
N 800 100 800 220 {
lab=NOC_N}
N 770 100 800 100 {
lab=NOC_N}
C {devices/iopin.sym} -520 -260 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} -520 -220 2 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 20 -100 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 350 -90 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 20 90 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 80 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -520 -180 2 0 {name=p7 lab=VINS}
C {devices/iopin.sym} -520 -100 2 0 {name=p8 lab=VINR}
C {devices/lab_pin.sym} -160 20 0 0 {name=p20 sig_type=std_logic lab=VINR}
C {devices/lab_pin.sym} -160 -20 0 0 {name=p6 sig_type=std_logic lab=VINS}
C {devices/iopin.sym} 810 -100 0 0 {name=p9 lab=NOC_P}
C {devices/iopin.sym} 810 100 0 0 {name=p10 lab=NOC_N
}
C {devices/lab_pin.sym} 180 -120 0 0 {name=p14 sig_type=std_logic lab=PD_OUT}
C {../PD/PD_vto1p1.sym} 20 0 0 0 {name=x3}
C {../NOL/NOL_vto1p1.sym} 350 0 0 0 {name=x4}
C {../BUFFLV/BUFFLV_vto1p1.sym} -380 -110 0 0 {name=X1}
C {../BUFFLV/BUFFLV_vto1p1.sym} -380 210 0 0 {name=X2}
C {../BUFFLV/BUFFLV_vto1p1.sym} 250 -210 0 0 {name=X5}
C {../BUFFLV/BUFFLV_vto1p1.sym} 830 -200 0 0 {name=X6}
C {../BUFFLV/BUFFLV_vto1p1.sym} 830 260 0 0 {name=X7}
C {devices/iopin.sym} -210 -150 0 0 {name=p12 lab=VINS_BUFF}
C {devices/iopin.sym} -230 170 0 0 {name=p13 lab=VINR_BUFF}
C {devices/iopin.sym} 420 -250 0 0 {name=p15 lab=PD_BUFF}
C {devices/iopin.sym} 1000 -240 0 0 {name=p16 lab=NOC_P_BUFF}
C {devices/iopin.sym} 1000 220 0 0 {name=p18 lab=NOC_N_BUFF}
C {devices/lab_pin.sym} -330 -240 0 0 {name=p19 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 -60 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 90 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -330 260 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 320 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -160 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -330 0 0 {name=p26 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 880 140 0 0 {name=p27 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 300 -330 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 300 -170 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -410 -150 0 0 {name=p30 sig_type=std_logic lab=VINS}
C {devices/lab_pin.sym} -410 170 0 0 {name=p11 sig_type=std_logic lab=VINR}
C {devices/iopin.sym} 710 -280 2 0 {name=p31 lab=VPWMP_OL}
C {devices/iopin.sym} 710 -250 2 0 {name=p32 lab=VPWMN_OL}
C {devices/iopin.sym} 710 -220 2 0 {name=p33 lab=VSEL_OL}
C {sg13g2_stdcells/sg13g2_mux2_2.sym} 730 -100 0 0 {name=x8 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_mux2_2.sym} 730 100 0 0 {name=x9 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 690 -80 0 0 {name=p34 sig_type=std_logic lab=VPWMP_OL}
C {devices/lab_pin.sym} 690 120 0 0 {name=p35 sig_type=std_logic lab=VPWMN_OL}
C {devices/lab_pin.sym} 690 -40 0 0 {name=p36 sig_type=std_logic lab=VSEL_OL}
C {devices/lab_pin.sym} 690 160 0 0 {name=p37 sig_type=std_logic lab=VSEL_OL}
