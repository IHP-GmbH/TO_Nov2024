v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Q=6.92
Rp=153.2ohm
1/Rp=6.525mmho} 630 -360 0 0 0.4 0.4 {}
N 280 -360 460 -360 {
lab=pm}
N 280 -360 280 -300 {
lab=pm}
N 460 -360 460 -300 {
lab=pm}
C {devices/ind.sym} 280 -270 0 0 {name=L3
m="1"
value="252.5p"
footprint="1206"
device="inductor"
lvs_ignore=short}
C {devices/res.sym} 280 -210 0 0 {name=R1
value=1.603
footprint=1206
device=resistor
m=1
lvs_ignore=short}
C {devices/lab_pin.sym} 370 -360 1 0 {name=p19 sig_type=std_logic lab=pm}
C {devices/ind.sym} 460 -270 0 0 {name=L2
m="1"
value="252.5p"
footprint="1206"
device="inductor"
lvs_ignore=short}
C {devices/res.sym} 460 -210 0 0 {name=R2
value=1.603
footprint=1206
device=resistor
m=1
lvs_ignore=short}
C {devices/iopin.sym} 60 -180 0 1 {name=p1 lab=p1}
C {devices/iopin.sym} 60 -160 0 1 {name=p2 lab=pm}
C {devices/iopin.sym} 60 -140 0 1 {name=p3 lab=p2}
C {devices/title.sym} 200 -60 0 0 {name=l1 author="Ali Olyanasab"}
C {devices/lab_pin.sym} 460 -180 2 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 280 -180 0 0 {name=p5 sig_type=std_logic lab=p1}
