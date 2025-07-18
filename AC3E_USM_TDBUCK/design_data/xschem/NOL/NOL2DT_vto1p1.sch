v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {NON-OVERLAP CIRCUIT
VSEL_NOL = 0 --> DelayTT ~ 2ns
VSEL_NOL = 1 --> DelayTT ~ 4ns} 430 -820 0 0 0.4 0.4 {}
N 170 -520 190 -520 {
lab=CLK}
N 280 -520 300 -520 {
lab=A1}
N 170 -520 170 -380 {
lab=CLK}
N 300 -480 300 -460 {
lab=B1}
N 300 -440 300 -420 {
lab=B2}
N 1370 -380 1390 -380 {
lab=#net1}
N 140 -520 170 -520 {
lab=CLK}
N 1370 -520 1400 -520 {
lab=#net2}
N 1470 -380 1500 -380 {
lab=#net3}
N 270 -520 280 -520 {
lab=A1}
N 280 -570 280 -520 {
lab=A1}
N 170 -380 300 -380 {
lab=CLK}
N 420 -380 420 -340 {
lab=C2}
N 1260 -460 1260 -380 {
lab=B1}
N 300 -460 1260 -460 {
lab=B1}
N 1230 -520 1230 -440 {
lab=B2}
N 300 -440 1230 -440 {
lab=B2}
N 1260 -360 1260 -350 {
lab=B1}
N 1260 -380 1290 -380 {
lab=B1}
N 1280 -560 1280 -520 {
lab=B2}
N 1280 -520 1290 -520 {
lab=B2}
N 1230 -520 1280 -520 {
lab=B2}
N 1580 -380 1590 -380 {
lab=VCP}
N 1480 -520 1600 -520 {
lab=VCN}
N 420 -520 420 -500 {
lab=C1}
N 470 -520 810 -520 {
lab=C1}
N 420 -560 420 -520 {
lab=C1}
N 470 -640 470 -520 {
lab=C1}
N 420 -520 470 -520 {
lab=C1}
N 770 -640 810 -640 {
lab=#net4}
N 1210 -540 1230 -540 {
lab=B2}
N 1230 -540 1230 -520 {
lab=B2}
N 470 -380 810 -380 {
lab=C2}
N 420 -400 420 -380 {
lab=C2}
N 470 -380 470 -260 {
lab=C2}
N 420 -380 470 -380 {
lab=C2}
N 770 -260 800 -260 {
lab=#net5}
N 1210 -360 1260 -360 {
lab=B1}
N 1260 -380 1260 -360 {
lab=B1}
N 1100 -340 1100 -260 {
lab=#net6}
N 1100 -340 1130 -340 {
lab=#net6}
N 1110 -380 1130 -380 {
lab=#net7}
N 1110 -640 1120 -640 {
lab=#net8}
N 1120 -640 1120 -520 {
lab=#net8}
N 1120 -520 1130 -520 {
lab=#net8}
N 1110 -560 1110 -520 {
lab=#net9}
N 1110 -560 1130 -560 {
lab=#net9}
C {devices/iopin.sym} 140 -520 2 0 {name=p1 lab=CLK}
C {devices/iopin.sym} 1590 -380 0 0 {name=p2 lab=VCP}
C {devices/iopin.sym} 1600 -520 0 0 {name=p3 lab=VCN}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 970 -560 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 990 -480 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -420 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 990 -340 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 230 -520 0 0 {name=x5 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 360 -500 0 0 {name=x3 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 360 -400 0 0 {name=x1 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1330 -380 0 0 {name=x2 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1330 -520 0 0 {name=x6 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1430 -380 0 0 {name=x7 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1440 -520 0 0 {name=x8 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1540 -380 0 0 {name=x9 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 1280 -560 0 0 {name=p10 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} 420 -560 0 0 {name=p12 sig_type=std_logic lab=C1}
C {devices/lab_pin.sym} 420 -340 0 0 {name=p13 sig_type=std_logic lab=C2}
C {devices/lab_pin.sym} 280 -570 0 0 {name=p14 sig_type=std_logic lab=A1}
C {../large_delay/large_delay_vto1p1.sym} 930 -520 0 0 {name=x10}
C {../large_delay/large_delay_vto1p1.sym} 930 -380 0 0 {name=x4}
C {sg13g2_stdcells/sg13g2_mux2_2.sym} 1170 -540 0 0 {name=x11 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 970 -680 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 990 -600 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {../large_delay/large_delay_vto1p1.sym} 930 -640 0 0 {name=x12}
C {devices/lab_pin.sym} 630 -680 0 0 {name=p17 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 650 -600 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {../large_delay/large_delay_vto1p1.sym} 590 -640 0 0 {name=x13}
C {devices/iopin.sym} 140 -700 2 0 {name=p19 lab=VSEL_NOL}
C {devices/lab_pin.sym} 1130 -480 0 0 {name=p20 sig_type=std_logic lab=VSEL_NOL}
C {sg13g2_stdcells/sg13g2_mux2_2.sym} 1170 -360 0 0 {name=x14 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 960 -300 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 980 -220 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {../large_delay/large_delay_vto1p1.sym} 920 -260 0 0 {name=x15}
C {devices/lab_pin.sym} 630 -300 0 0 {name=p23 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 650 -220 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {../large_delay/large_delay_vto1p1.sym} 590 -260 0 0 {name=x16}
C {devices/lab_pin.sym} 1260 -350 0 0 {name=p25 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 1130 -300 0 0 {name=p11 sig_type=std_logic lab=VSEL_NOL}
