v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 100 10 130 {
lab=vss}
N 10 70 20 70 {
lab=vss}
N -390 -90 -360 -90 {
lab=vinn}
N 370 -90 400 -90 {
lab=vinp}
N 580 220 590 220 {
lab=vss}
N 580 -190 590 -190 {
lab=vdd}
N 580 -160 580 -120 {
lab=vout}
N 580 -240 580 -220 {
lab=vdd}
N 10 130 10 140 {
lab=vss}
N -320 -90 -310 -90 {
lab=vss}
N 320 -90 330 -90 {
lab=vss}
N -320 -60 -320 -10 {
lab=tail}
N 110 -10 330 -10 {
lab=tail}
N 330 -60 330 -10 {
lab=tail}
N 10 0 10 40 {
lab=tail}
N -330 -300 -320 -300 {
lab=vdd}
N -320 -350 -320 -330 {
lab=vdd}
N 580 250 580 290 {
lab=vss}
N -90 70 -30 70 {
lab=vbias_n}
N 580 30 580 190 {
lab=vout}
N -100 -300 -90 -300 {
lab=vdd}
N -100 -350 -100 -330 {
lab=vdd}
N -270 -300 -140 -300 {
lab=latch_left}
N -280 -300 -270 -300 {
lab=latch_left}
N -320 -270 -320 -120 {
lab=latch_left}
N -320 -10 -70 -10 {
lab=tail}
N -70 -10 110 -10 {
lab=tail}
N -220 -300 -220 -240 {
lab=latch_left}
N -320 -220 -220 -220 {
lab=latch_left}
N -220 -240 -220 -220 {
lab=latch_left}
N 330 -300 340 -300 {
lab=vdd}
N 330 -350 330 -330 {
lab=vdd}
N 100 -300 110 -300 {
lab=vdd}
N 110 -350 110 -330 {
lab=vdd}
N 150 -300 280 -300 {
lab=latch_right}
N 280 -300 290 -300 {
lab=latch_right}
N 330 -270 330 -120 {
lab=latch_right}
N 230 -300 230 -240 {
lab=latch_right}
N 230 -220 330 -220 {
lab=latch_right}
N 230 -240 230 -220 {
lab=latch_right}
N -100 -270 -100 -220 {
lab=latch_right}
N -320 -140 -100 -140 {
lab=latch_left}
N 110 -140 330 -140 {
lab=latch_right}
N -100 -220 110 -140 {
lab=latch_right}
N -100 -140 110 -220 {
lab=latch_left}
N 330 -190 540 -190 {
lab=latch_right}
N 10 -10 10 0 {
lab=tail}
N -580 220 -570 220 {
lab=vss}
N -580 -190 -570 -190 {
lab=vdd}
N -570 -160 -570 -120 {
lab=out_left}
N -570 -240 -570 -220 {
lab=vdd}
N -570 250 -570 290 {
lab=vss}
N -530 220 -470 220 {
lab=out_left}
N -570 30 -570 190 {
lab=out_left}
N -530 -190 -320 -190 {
lab=latch_left}
N -570 -120 -570 30 {
lab=out_left}
N -470 220 510 220 {
lab=out_left}
N 510 220 540 220 {
lab=out_left}
N -480 140 -480 200 {
lab=out_left}
N -480 200 -480 220 {
lab=out_left}
N -550 140 -490 140 {
lab=out_left}
N -570 140 -550 140 {
lab=out_left}
N -490 140 -480 140 {
lab=out_left}
N 580 -120 580 30 {
lab=vout}
N 580 0 600 0 {
lab=vout}
N 110 -270 110 -220 {
lab=latch_left}
C {devices/lab_pin.sym} 20 70 2 0 {name=p5 sig_type=power lab=vss}
C {devices/iopin.sym} -720 -510 2 0 {name=p6 lab=vdd}
C {borders/border_s.sym} 320 350 0 0 {
lab=bias_n}
C {devices/lab_pin.sym} 590 220 2 0 {name=p12 sig_type=power lab=vss}
C {devices/lab_pin.sym} 590 -190 2 0 {name=p14 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 580 -240 1 0 {name=p15 sig_type=power lab=vdd}
C {devices/opin.sym} 600 0 0 0 {name=p18 lab=vout}
C {devices/iopin.sym} -720 -480 0 1 {name=p1 lab=vss}
C {devices/lab_pin.sym} 10 140 3 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/ipin.sym} -720 -450 0 0 {name=p20 lab=vbias_n}
C {devices/ipin.sym} -390 -90 0 0 {name=p16 lab=vinn}
C {devices/ipin.sym} 400 -90 2 0 {name=p21 lab=vinp}
C {devices/lab_pin.sym} -310 -90 2 0 {name=p17 sig_type=power lab=vss}
C {devices/lab_pin.sym} 320 -90 2 1 {name=p22 sig_type=power lab=vss}
C {devices/lab_pin.sym} -330 -300 2 1 {name=p7 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -320 -350 3 1 {name=p8 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 580 290 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -90 70 2 1 {name=p10 sig_type=in lab=vbias_n

}
C {devices/lab_pin.sym} 10 20 0 0 {name=p13 sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} -90 -300 2 0 {name=p19 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -100 -350 1 0 {name=p23 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 340 -300 2 0 {name=p2 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 330 -350 1 0 {name=p4 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 100 -300 2 1 {name=p24 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 110 -350 3 1 {name=p25 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -580 220 2 1 {name=p26 sig_type=power lab=vss}
C {devices/lab_pin.sym} -580 -190 2 1 {name=p27 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -570 -240 3 1 {name=p28 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -570 290 1 1 {name=p30 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -570 60 0 0 {name=p11 sig_type=std_logic lab=out_left}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -550 220 0 1 {name=Mn_diode_left
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -550 -190 0 1 {name=Mp_out_left_top
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 220 0 0 {name=Mn_out
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 70 0 0 {name=Mn_tail
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -340 -90 0 0 {name=Mn_inn
L=0.35
W=5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 350 -90 0 1 {name=Mn_inp
L=0.35
W=5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -300 -300 0 1 {name=Mp_diode_left
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -120 -300 0 0 {name=Mp_cs_left
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 -300 0 1 {name=Mp_cs_right
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 310 -300 0 0 {name=Mp_diode_right
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 560 -190 0 0 {name=Mp_out_right_top
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
C {devices/lab_pin.sym} -320 -170 0 0 {name=p29 sig_type=std_logic lab=latch_left}
C {devices/lab_pin.sym} 330 -170 0 0 {name=p31 sig_type=std_logic lab=latch_right}
