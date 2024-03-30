v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -90 -290 -90 {
lab=vdd}
N 330 -90 340 -90 {
lab=vdd}
N -370 -90 -340 -90 {
lab=vinn}
N 380 -90 410 -90 {
lab=vinp}
N -300 -60 -300 90 {
lab=latch_left}
N 340 -60 340 90 {
lab=latch_right}
N -300 40 -200 40 {
lab=latch_left}
N -250 120 -120 120 {
lab=latch_left}
N -260 120 -250 120 {
lab=latch_left}
N -200 40 -200 100 {
lab=latch_left}
N -200 100 -200 120 {
lab=latch_left}
N -300 150 -300 170 {
lab=vss}
N -120 120 -110 120 {
lab=latch_left}
N -70 150 -70 170 {
lab=vss}
N -310 120 -300 120 {
lab=vss}
N -70 120 -60 120 {
lab=vss}
N -70 40 -70 90 {
lab=latch_right}
N -70 40 140 -40 {
lab=latch_right}
N 340 -60 340 90 {
lab=latch_right}
N 240 40 340 40 {
lab=latch_right}
N 160 120 290 120 {
lab=latch_right}
N 290 120 300 120 {
lab=latch_right}
N 240 40 240 100 {
lab=latch_right}
N 240 100 240 120 {
lab=latch_right}
N 340 150 340 170 {
lab=vss}
N 150 120 160 120 {
lab=latch_right}
N 110 150 110 170 {
lab=vss}
N 340 120 350 120 {
lab=vss}
N 100 120 110 120 {
lab=vss}
N 110 40 110 90 {
lab=latch_left}
N -100 -40 110 40 {
lab=latch_left}
N -300 -170 -300 -120 {
lab=tail}
N 340 -170 340 -120 {
lab=tail}
N -300 -40 -100 -40 {
lab=latch_left}
N 140 -40 340 -40 {
lab=latch_right}
N -300 -170 340 -170 {
lab=tail}
N 20 -210 20 -170 {
lab=tail}
N 20 -220 20 -210 {
lab=tail}
N 20 -250 30 -250 {
lab=vdd}
N 20 -300 20 -280 {
lab=vdd}
N 340 10 550 10 {
lab=latch_right}
N -510 10 -300 10 {
lab=latch_left}
N 590 10 600 10 {
lab=vss}
N 590 40 590 80 {
lab=vss}
N 590 -180 590 -20 {
lab=vout}
N -560 10 -550 10 {
lab=vss}
N -550 40 -550 80 {
lab=vss}
N -80 -250 -20 -250 {
lab=vbias_p}
N -560 -400 -550 -400 {
lab=vdd}
N -550 -450 -550 -430 {
lab=vdd}
N -500 -400 -370 -400 {
lab=out_left}
N -510 -400 -500 -400 {
lab=out_left}
N -450 -400 -450 -340 {
lab=out_left}
N -550 -320 -450 -320 {
lab=out_left}
N -450 -340 -450 -320 {
lab=out_left}
N -550 -370 -550 -330 {
lab=out_left}
N -550 -180 -550 -20 {
lab=out_left}
N -550 -330 -550 -180 {
lab=out_left}
N 590 -400 600 -400 {
lab=vdd}
N 590 -450 590 -430 {
lab=vdd}
N 410 -400 540 -400 {
lab=out_left}
N 540 -400 550 -400 {
lab=out_left}
N 590 -370 590 -330 {
lab=vout}
N -370 -400 410 -400 {
lab=out_left}
N 590 -330 590 -180 {
lab=vout}
N 590 -210 610 -210 {
lab=vout}
C {devices/iopin.sym} -670 -560 2 0 {name=p6 lab=vdd}
C {devices/iopin.sym} -670 -530 0 1 {name=p1 lab=vss}
C {devices/ipin.sym} -670 -500 0 0 {name=p20 lab=vbias_p}
C {borders/border_s.sym} 420 220 0 0 {
lab=bias_n}
C {devices/lab_pin.sym} -290 -90 2 0 {name=p52 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 330 -90 2 1 {name=p53 sig_type=power lab=vdd}
C {devices/ipin.sym} -370 -90 0 0 {name=p54 lab=vinn}
C {devices/ipin.sym} 410 -90 2 0 {name=p55 lab=vinp}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -320 -90 0 0 {name=Mp_inn1
L=0.35
W=10
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 360 -90 0 1 {name=Mp_inp1
L=0.35
W=10
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -280 120 0 1 {name=Mn_diode_left1
L=1
W=4
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
C {devices/lab_pin.sym} -300 170 1 1 {name=p56 sig_type=power lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -90 120 0 0 {name=Mn_cs_left
L=1
W=5
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
C {devices/lab_pin.sym} -70 170 3 0 {name=p57 sig_type=power lab=vss}
C {devices/lab_pin.sym} -310 120 2 1 {name=p58 sig_type=power lab=vss}
C {devices/lab_pin.sym} -60 120 2 0 {name=p59 sig_type=power lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 120 0 0 {name=Mn_diode_right
L=1
W=4
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
C {devices/lab_pin.sym} 340 170 3 0 {name=p60 sig_type=power lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 120 0 1 {name=Mn_cs_right1
L=1
W=5
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
C {devices/lab_pin.sym} 110 170 1 1 {name=p61 sig_type=power lab=vss}
C {devices/lab_pin.sym} 350 120 2 0 {name=p62 sig_type=power lab=vss}
C {devices/lab_pin.sym} 100 120 2 1 {name=p63 sig_type=power lab=vss}
C {devices/lab_pin.sym} 30 -250 2 0 {name=p64 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 20 -300 1 0 {name=p65 sig_type=power lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 0 -250 0 0 {name=Mp_tail
L=1
W=10
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
C {devices/lab_pin.sym} 600 10 2 0 {name=p66 sig_type=power lab=vss}
C {devices/lab_pin.sym} 590 80 3 0 {name=p67 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 570 10 0 0 {name=Mn_out_right
L=1
W=5
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
C {devices/lab_pin.sym} -560 10 2 1 {name=p2 sig_type=power lab=vss}
C {devices/lab_pin.sym} -550 80 1 1 {name=p3 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -530 10 0 1 {name=Mn_out_left
L=1
W=5
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
C {devices/lab_pin.sym} -80 -250 2 1 {name=p4 sig_type=in lab=vbias_p

}
C {devices/lab_pin.sym} -560 -400 2 1 {name=p5 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -550 -450 3 1 {name=p7 sig_type=power lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -530 -400 0 1 {name=Mp_diode_left1
L=1
W=8
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
C {devices/lab_pin.sym} 600 -400 2 0 {name=p8 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 590 -450 1 0 {name=p9 sig_type=power lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 570 -400 0 0 {name=Mp_out
L=1
W=8
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
C {devices/opin.sym} 610 -210 0 0 {name=p10 lab=vout}
C {devices/lab_pin.sym} -300 -10 0 0 {name=p11 sig_type=std_logic lab=latch_left}
C {devices/lab_pin.sym} 340 -20 0 0 {name=p12 sig_type=std_logic lab=latch_right}
C {devices/lab_pin.sym} 20 -200 0 0 {name=p13 sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} -550 -170 0 0 {name=p14 sig_type=std_logic lab=out_left}
