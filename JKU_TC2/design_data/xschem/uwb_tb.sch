v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 120 -1300 920 -900 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""

dataset=-1
unitx=1
logx=0
logy=0
}
N 980 -420 1020 -390 {
lab=#net1}
N 1020 -390 1080 -390 {
lab=#net1}
N 1020 -420 1120 -420 {
lab=#net2}
N 980 -390 1020 -420 {
lab=#net2}
N 920 -390 980 -390 {
lab=#net2}
N 880 -690 920 -690 {
lab=vp}
N 1080 -690 1120 -690 {
lab=vn}
N 880 -540 970 -540 {
lab=vp}
N 1030 -540 1120 -540 {
lab=vn}
N 1030 -560 1120 -560 {
lab=vn}
N 880 -560 970 -560 {
lab=vp}
N 880 -560 880 -540 {
lab=vp}
N 1120 -560 1120 -540 {
lab=vn}
N 1120 -690 1120 -560 {
lab=vn}
N 880 -690 880 -560 {
lab=vp}
N 880 -420 980 -420 {
lab=#net1}
N 1700 -200 1740 -200 {
lab=#net3}
N 2200 -630 2290 -630 {
lab=vpa_p}
N 2350 -630 2440 -630 {
lab=vpa_n}
N 2350 -650 2440 -650 {
lab=vpa_n}
N 2200 -650 2290 -650 {
lab=vpa_p}
N 1800 -200 1880 -200 {
lab=#net4}
N 2400 -760 2440 -760 {
lab=vpa_n}
N 2200 -760 2240 -760 {
lab=vpa_p}
N 2200 -650 2200 -630 {
lab=vpa_p}
N 2440 -650 2440 -630 {
lab=vpa_n}
N 2680 -800 2840 -800 {
lab=voutdiff}
N 2400 -800 2620 -800 {
lab=#net5}
N 2440 -630 2440 -480 {
lab=vpa_n}
N 2200 -630 2200 -480 {
lab=vpa_p}
N 1940 -200 1980 -200 {
lab=vdd}
N 2200 -330 2200 -300 {
lab=GND}
N 2200 -760 2200 -650 {
lab=vpa_p}
N 2440 -760 2440 -650 {
lab=vpa_n}
N 2200 -420 2200 -360 {
lab=#net6}
N 2520 -740 2540 -740 {
lab=GND}
N 880 -540 880 -510 {
lab=vp}
N 880 -450 880 -420 {
lab=#net1}
N 1120 -450 1120 -420 {
lab=#net2}
N 1120 -540 1120 -510 {
lab=vn}
N 520 -360 970 -360 {
lab=vtp}
N 1030 -360 1480 -360 {
lab=vtn}
N 2080 -330 2080 -300 {
lab=GND}
N 2080 -420 2080 -360 {
lab=#net7}
N 1960 -330 1960 -300 {
lab=GND}
N 1960 -420 1960 -360 {
lab=#net8}
N 1840 -330 1840 -300 {
lab=GND}
N 1840 -420 1840 -360 {
lab=#net9}
N 1840 -480 2200 -480 {
lab=vpa_p}
N 2440 -330 2440 -300 {
lab=GND}
N 2440 -420 2440 -360 {
lab=#net10}
N 2560 -330 2560 -300 {
lab=GND}
N 2560 -420 2560 -360 {
lab=#net11}
N 2680 -330 2680 -300 {
lab=GND}
N 2680 -420 2680 -360 {
lab=#net12}
N 2800 -330 2800 -300 {
lab=GND}
N 2800 -420 2800 -360 {
lab=#net13}
N 2440 -480 2800 -480 {
lab=vpa_n}
N 1030 -360 1030 -340 {
lab=vtn}
N 970 -360 970 -340 {
lab=vtp}
N 1220 -200 1300 -200 {
lab=#net14}
N 1100 -200 1180 -200 {
lab=#net15}
C {devices/title.sym} 200 -80 0 0 {name=l1 author="Ali Olyanasab"}
C {devices/code_shown.sym} 20 -450 0 0 {name="NGSPICE" only_toplevel="true" 
value="
.param temp=27
.control
*.options savecurrents
* pre_osdi ./psp103_nqs.osdi
save all 
op
write uwb_tb.raw
set appendwrite
*ac dec 10 1 1e11
tran 1p 10n
remzerovec
plot vp vn
write uwb_tb.raw


linearize v(voutdiff)
fft v(voutdiff)
plot mag(v(voutdiff))

.endc
"}
C {devices/code_shown.sym} 20 -550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ 
"}
C {devices/launcher.sym} 740 -220 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} 880 -550 0 0 {name=p1 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 1120 -550 0 1 {name=p2 sig_type=std_logic lab=vn}
C {devices/code_shown.sym} 20 -630 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/vsource.sym} 1180 -170 0 1 {name=V3 value="pulse 0 1.2 1.5n 0.1n 0.1n 5n 100n"}
C {devices/gnd.sym} 1180 -140 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} 1220 -170 0 0 {name=V2 value="pulse 0 1.2 1.6n 0.1n 0.1n 5n 100n"}
C {devices/gnd.sym} 1220 -140 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1360 -200 0 1 {name=p4 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 880 -360 0 0 {name=p5 sig_type=std_logic lab=vtp}
C {devices/lab_pin.sym} 1120 -360 0 1 {name=p6 sig_type=std_logic lab=vtn}
C {devices/launcher.sym} 740 -175 0 0 {name=h1
descr="Annotate" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 1700 -170 0 0 {name=V6 value=1.2 savecurrent=false}
C {devices/gnd.sym} 1700 -140 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 880 -330 3 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1980 -200 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1120 -390 3 0 {name=l2 lab=GND}
C {devices/gnd.sym} 880 -390 1 1 {name=l22 lab=GND}
C {uwb_inductor.sym} 1060 -700 2 0 {name=x1}
C {devices/lab_pin.sym} 1000 -720 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1840 -140 0 0 {name=l5 lab=GND}
C {devices/res.sym} 1770 -200 1 0 {name=R1
value=8
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1840 -170 0 0 {name=C4
m=1
value=360p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2200 -450 3 0 {name=l9 lab=GND}
C {uwb_balun.sym} 2260 -750 0 0 {name=x2}
C {devices/gnd.sym} 2520 -740 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 2840 -800 2 0 {name=p13 sig_type=std_logic lab=voutdiff}
C {devices/ind.sym} 2650 -800 1 0 {name=L15
m=1
value=3n
footprint=1206
device=inductor
lvs_ignore=short}
C {devices/lab_pin.sym} 2320 -730 3 0 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2200 -640 0 0 {name=p14 sig_type=std_logic lab=vpa_p}
C {devices/lab_pin.sym} 2440 -640 0 1 {name=p15 sig_type=std_logic lab=vpa_n}
C {devices/gnd.sym} 2240 -800 1 0 {name=l10 lab=GND}
C {devices/gnd.sym} 2200 -300 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 2160 -330 0 0 {name=p11 sig_type=std_logic lab=ip}
C {sg13g2_pr/sg13_lv_nmos.sym} 900 -390 2 0 {name=M1
l=0.15u
w=15u
ng=4
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1100 -390 2 1 {name=M2
l=0.15u
w=15u
ng=4
m=15
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 860 -330 2 1 {name=M3
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2180 -450 2 1 {name=M5
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2180 -330 2 1 {name=M6
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 2320 -650 1 0 {name=C6
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 2320 -630 3 0 {name=C7
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 2540 -770 2 0 {name=C5
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 2520 -770 0 0 {name=C8
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=4
spiceprefix=X}
C {launcher.sym} 210 -830 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/uwb_tb.raw tran"
}
C {devices/res.sym} 1120 -480 0 0 {name=R2
value=0
footprint=1206
device=resistor
m=1
lvs_ignore=short}
C {devices/res.sym} 880 -480 0 0 {name=R3
value=0
footprint=1206
device=resistor
m=1
lvs_ignore=short}
C {devices/gnd.sym} 880 -300 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 760 -330 3 0 {name=l18 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -330 2 1 {name=M9
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 760 -300 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 640 -330 3 0 {name=l20 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 620 -330 2 1 {name=M10
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 640 -300 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 520 -330 3 0 {name=l23 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 -330 2 1 {name=M11
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 520 -300 0 0 {name=l24 lab=GND}
C {devices/gnd.sym} 1120 -330 1 1 {name=l16 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -330 2 0 {name=M4
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1480 -300 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1240 -330 1 1 {name=l26 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1260 -330 2 0 {name=M12
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1360 -300 0 0 {name=l27 lab=GND}
C {devices/gnd.sym} 1360 -330 1 1 {name=l28 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1380 -330 2 0 {name=M13
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1240 -300 0 0 {name=l29 lab=GND}
C {devices/gnd.sym} 1480 -330 1 1 {name=l30 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1500 -330 2 0 {name=M14
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1120 -300 0 0 {name=l31 lab=GND}
C {devices/res.sym} 1910 -200 3 0 {name=R4
value=0
footprint=1206
device=resistor
m=1
lvs_ignore=short}
C {devices/gnd.sym} 2080 -450 3 0 {name=l32 lab=GND}
C {devices/gnd.sym} 2080 -300 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 2040 -330 0 0 {name=p22 sig_type=std_logic lab=ip}
C {sg13g2_pr/sg13_lv_nmos.sym} 2060 -450 2 1 {name=M15
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2060 -330 2 1 {name=M16
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1960 -450 3 0 {name=l34 lab=GND}
C {devices/gnd.sym} 1960 -300 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 1920 -330 0 0 {name=p24 sig_type=std_logic lab=ip}
C {sg13g2_pr/sg13_lv_nmos.sym} 1940 -450 2 1 {name=M17
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1940 -330 2 1 {name=M18
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1840 -450 3 0 {name=l36 lab=GND}
C {devices/gnd.sym} 1840 -300 0 0 {name=l37 lab=GND}
C {devices/lab_pin.sym} 1800 -330 0 0 {name=p25 sig_type=std_logic lab=ip}
C {sg13g2_pr/sg13_lv_nmos.sym} 1820 -450 2 1 {name=M19
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1820 -330 2 1 {name=M20
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 2440 -450 1 1 {name=l8 lab=GND}
C {devices/gnd.sym} 2440 -300 0 1 {name=l11 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 2460 -450 2 0 {name=M7
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2460 -330 2 0 {name=M8
l=0.15u
w=15u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 2560 -450 1 1 {name=l38 lab=GND}
C {devices/gnd.sym} 2560 -300 0 1 {name=l39 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 2580 -450 2 0 {name=M21
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2580 -330 2 0 {name=M22
l=0.15u
w=15u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 2680 -450 1 1 {name=l40 lab=GND}
C {devices/gnd.sym} 2680 -300 0 1 {name=l41 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 2700 -450 2 0 {name=M23
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2700 -330 2 0 {name=M24
l=0.15u
w=15u
ng=4
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 2800 -450 1 1 {name=l42 lab=GND}
C {devices/gnd.sym} 2800 -300 0 1 {name=l43 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 2820 -450 2 0 {name=M25
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2820 -330 2 0 {name=M26
l=0.15u
w=15u
ng=4
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 2480 -330 0 1 {name=p12 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 2600 -330 0 1 {name=p26 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 2720 -330 0 1 {name=p27 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 2840 -330 0 1 {name=p28 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1800 -450 0 0 {name=p29 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 1920 -450 0 0 {name=p30 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 2040 -450 0 0 {name=p31 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 2160 -450 0 0 {name=p32 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 2480 -450 0 1 {name=p33 sig_type=std_logic lab=vn}
C {devices/lab_pin.sym} 2600 -450 0 1 {name=p34 sig_type=std_logic lab=vn}
C {devices/lab_pin.sym} 2720 -450 0 1 {name=p35 sig_type=std_logic lab=vn}
C {devices/lab_pin.sym} 2840 -450 0 1 {name=p36 sig_type=std_logic lab=vn}
C {devices/gnd.sym} 720 -330 0 1 {name=l49 lab=GND}
C {devices/gnd.sym} 1160 -330 0 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} 480 -330 0 0 {name=p17 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 1520 -330 0 1 {name=p18 sig_type=std_logic lab=in}
C {devices/gnd.sym} 600 -330 0 1 {name=l6 lab=GND}
C {devices/gnd.sym} 1280 -330 0 0 {name=l46 lab=GND}
C {sg13g2_pr/cap_cmim.sym} 1000 -360 1 0 {name=C1
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1000 -340 3 0 {name=C2
model=cap_cmim
w=6.0e-6
l=6.0e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1000 -560 1 0 {name=C3
model=cap_cmim
w=4.0e-6
l=4.0e-6
m=8
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1000 -540 3 0 {name=C9
model=cap_cmim
w=4.0e-6
l=4.0e-6
m=8
spiceprefix=X}
C {devices/gnd.sym} 1360 -140 0 0 {name=l44 lab=GND}
C {devices/res.sym} 1330 -200 1 0 {name=R5
value=250
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1360 -170 0 0 {name=C10
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1040 -200 0 0 {name=p19 sig_type=std_logic lab=ip}
C {devices/gnd.sym} 1040 -140 0 1 {name=l45 lab=GND}
C {devices/res.sym} 1070 -200 3 1 {name=R6
value=250
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1040 -170 0 1 {name=C11
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 840 -330 0 1 {name=l47 lab=GND}
C {devices/gnd.sym} 1400 -330 0 0 {name=l48 lab=GND}
