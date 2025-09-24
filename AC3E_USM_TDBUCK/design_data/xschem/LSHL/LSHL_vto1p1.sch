v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 80 -90 140 {
lab=VSS}
N -90 -0 -90 20 {
lab=VgMD2}
N -90 -30 -90 -0 {
lab=VgMD2}
N -130 0 -130 50 {
lab=Vs}
N -130 -60 -130 0 {
lab=Vs}
N -90 -60 -70 -60 {
lab=VDIG}
N -70 -90 -70 -60 {
lab=VDIG}
N -90 -90 -70 -90 {
lab=VDIG}
N -90 50 -70 50 {
lab=VSS}
N -70 50 -70 80 {
lab=VSS}
N -90 80 -70 80 {
lab=VSS}
N -90 0 30 0 {
lab=VgMD2}
N -230 0 -130 0 {
lab=Vs}
N -90 -230 -90 -90 {
lab=VDIG}
N 110 -0 185 -0 {
lab=#net1}
C {iopin.sym} -90 -230 0 1 {name=p2 lab=VDIG}
C {ipin.sym} -230 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 265 0 0 0 {name=p4 lab=Vg}
C {lab_pin.sym} 10 0 1 0 {name=p6 sig_type=std_logic lab=VgMD2}
C {sg13g2_pr/sg13_hv_pmos.sym} -110 -60 0 0 {name=MD5
l=0.4u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -110 50 2 1 {name=MD6
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} -90 140 0 1 {name=p5 lab=VSS}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 225 0 0 0 {name=x7 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 70 0 0 0 {name=x1 VDD=VDIG VSS=VSS prefix=sg13g2_ }
