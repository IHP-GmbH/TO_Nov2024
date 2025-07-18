v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -0 185 -0 {
lab=#net1}
N 265 0 310 0 {
lab=#net2}
N 390 0 450 0 {
lab=#net3}
C {iopin.sym} 115 80 0 1 {name=p2 lab=VDIG}
C {ipin.sym} 30 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 530 0 0 0 {name=p4 lab=Vg}
C {iopin.sym} 115 120 0 1 {name=p5 lab=VSS}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 225 0 0 0 {name=x7 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_1.sym} 70 0 0 0 {name=x2 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_16.sym} 350 0 0 0 {name=x1 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_16.sym} 490 0 0 0 {name=x3[0:3] VDD=VDIG VSS=VSS prefix=sg13g2_ }
