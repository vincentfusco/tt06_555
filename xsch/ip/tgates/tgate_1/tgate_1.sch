v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 -80 -200 -60 {
lab=vss}
N -200 -110 -180 -110 {
lab=vss}
N -200 -250 -180 -250 {
lab=vdd}
N -280 -110 -240 -110 {
lab=en}
N -280 -250 -280 -110 {
lab=en}
N -280 -250 -240 -250 {
lab=en}
N -200 -220 -200 -140 {
lab=tgon_n}
N -200 -300 -200 -280 {
lab=vdd}
N 0 -80 0 -60 {
lab=vss}
N 0 -110 20 -110 {
lab=vss}
N 0 -250 20 -250 {
lab=vdd}
N -80 -110 -40 -110 {
lab=tgon_n}
N -80 -250 -80 -110 {
lab=tgon_n}
N -80 -250 -40 -250 {
lab=tgon_n}
N 0 -220 0 -140 {
lab=tgon}
N 0 -300 0 -280 {
lab=vdd}
N -200 -180 -80 -180 {
lab=tgon_n}
N -300 -180 -280 -180 {
lab=en}
N 230 -640 230 -620 {
lab=vdd}
N 230 -470 230 -450 {
lab=vss}
N 140 -450 200 -450 {
lab=ina}
N 140 -630 140 -450 {
lab=ina}
N 140 -640 140 -630 {
lab=ina}
N 140 -640 200 -640 {
lab=ina}
N 260 -640 320 -640 {
lab=inb}
N 320 -640 320 -460 {
lab=inb}
N 320 -460 320 -450 {
lab=inb}
N 260 -450 320 -450 {
lab=inb}
N 230 -770 230 -680 {
lab=tgon_n}
N 230 -410 230 -310 {
lab=tgon}
N 110 -540 140 -540 {
lab=ina}
N 320 -540 350 -540 {
lab=inb}
N -110 -770 -110 -180 {
lab=tgon_n}
N -110 -770 230 -770 {
lab=tgon_n}
N 0 -180 230 -180 {
lab=tgon}
N 230 -310 230 -180 {
lab=tgon}
C {devices/iopin.sym} -560 -760 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -560 -730 2 0 {name=p2 lab=vss}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -220 -250 0 0 {name=Mp_inv1
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -220 -110 0 0 {name=Mn_inv1
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -200 -60 3 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -180 -110 2 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -180 -250 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -200 -300 1 0 {name=p13 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -250 0 0 {name=Mp_inv2
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -110 0 0 {name=Mn_inv2
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 0 -60 3 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 20 -110 2 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 20 -250 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 0 -300 1 0 {name=p17 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} -300 -180 2 1 {name=p18 lab=en}
C {devices/iopin.sym} 350 -540 0 0 {name=p19 lab=inb}
C {devices/iopin.sym} 110 -540 0 1 {name=p20 lab=ina}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 230 -430 1 1 {name=Mn_switch1
L=0.35
W=20
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 230 -660 3 1 {name=Mp_switch1
L=0.35
W=40
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 230 -620 3 0 {name=p21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 230 -470 1 0 {name=p22 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 0 -770 0 0 {name=p23 sig_type=std_logic lab=tgon_n}
C {devices/lab_wire.sym} 130 -180 0 0 {name=p24 sig_type=std_logic lab=tgon}
