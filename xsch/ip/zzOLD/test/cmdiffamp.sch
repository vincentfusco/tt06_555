v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -60 80 -60 {
lab=#net1}
N 140 -60 180 -60 {
lab=#net2}
N 240 -60 280 -60 {
lab=#net1}
N 340 -60 380 -60 {
lab=#net3}
N 440 -60 480 -60 {
lab=#net1}
N 540 -60 580 -60 {
lab=#net2}
N 10 -160 10 -100 {
lab=V1}
N 310 -160 310 -100 {
lab=V1}
N 410 -160 410 -100 {
lab=V1}
N 640 -60 680 -60 {
lab=#net1}
N 710 -160 710 -100 {
lab=V1}
N -120 -160 710 -160 {
lab=V1}
N 60 -220 60 -60 {
lab=#net1}
N 260 -220 260 -60 {
lab=#net1}
N 660 -220 660 -60 {
lab=#net1}
N 60 -220 660 -220 {
lab=#net1}
N 610 -20 610 40 {
lab=V2}
N 510 -20 510 40 {
lab=V2}
N 210 -20 210 40 {
lab=V2}
N 110 -20 110 40 {
lab=V2}
N -120 40 610 40 {
lab=V2}
N 160 -60 160 100 {
lab=#net2}
N 160 100 160 110 {
lab=#net2}
N 160 110 160 120 {
lab=#net2}
N 160 120 560 120 {
lab=#net2}
N 560 -60 560 120 {
lab=#net2}
N -60 -60 -20 -60 {
lab=#net3}
N -60 -60 -60 220 {
lab=#net3}
N 740 -60 800 -60 {
lab=#net3}
N 800 -60 800 220 {
lab=#net3}
N -60 220 800 220 {
lab=#net3}
N 360 -60 360 220 {
lab=#net3}
N 460 -220 460 -60 {
lab=#net1}
N 20 480 80 480 {
lab=GND}
N 140 480 200 480 {
lab=#net4}
N 260 480 320 480 {
lab=GND}
N -100 480 -40 480 {
lab=#net2}
N 500 480 560 480 {
lab=GND}
N 620 480 680 480 {
lab=#net4}
N 740 480 800 480 {
lab=GND}
N 380 480 440 480 {
lab=#net2}
N -100 480 -100 540 {
lab=#net2}
N -100 540 -100 560 {
lab=#net2}
N 860 480 920 480 {
lab=#net2}
N 920 480 920 540 {
lab=#net2}
N -100 560 920 560 {
lab=#net2}
N 920 540 920 560 {
lab=#net2}
N 830 520 830 560 {
lab=#net2}
N 710 520 710 560 {
lab=#net2}
N 710 520 710 560 {
lab=#net2}
N 590 520 590 560 {
lab=#net2}
N 590 520 590 560 {
lab=#net2}
N 470 520 470 560 {
lab=#net2}
N 470 520 470 560 {
lab=#net2}
N 350 520 350 560 {
lab=#net2}
N 350 520 350 560 {
lab=#net2}
N 230 520 230 560 {
lab=#net2}
N 230 520 230 560 {
lab=#net2}
N 110 520 110 560 {
lab=#net2}
N 110 520 110 560 {
lab=#net2}
N -10 520 -10 560 {
lab=#net2}
N -10 520 -10 560 {
lab=#net2}
N 770 480 770 620 {
lab=GND}
N -240 620 770 620 {
lab=GND}
N 530 480 530 620 {
lab=GND}
N 50 480 50 620 {
lab=GND}
N 290 480 290 620 {
lab=GND}
N 410 490 410 560 {
lab=#net2}
N 410 480 410 490 {
lab=#net2}
N 170 360 170 480 {
lab=#net4}
N 650 360 650 480 {
lab=#net4}
N 170 360 650 360 {
lab=#net4}
N -100 120 -100 480 {
lab=#net2}
N -100 120 160 120 {
lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} 10 -80 1 0 {name=M1a
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 310 -80 1 0 {name=M1b
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 410 -80 1 0 {name=M1c
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 -40 3 0 {name=M2a
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 210 -40 3 0 {name=M2b
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 510 -40 3 0 {name=M2c
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 610 -40 3 0 {name=M2d
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 710 -80 1 0 {name=M1
L=0.5
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -120 -160 0 0 {name=p1 sig_type=std_logic lab=V1}
C {devices/lab_pin.sym} -120 40 0 0 {name=p2 sig_type=std_logic lab=V2}
C {sky130_fd_pr/nfet_01v8.sym} -10 500 3 0 {name=M5a
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 110 500 3 0 {name=M6a
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 500 3 0 {name=M6b
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 350 500 3 0 {name=M5b
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 470 500 3 0 {name=M5c
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 590 500 3 0 {name=M6c
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 710 500 3 0 {name=M6d
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 830 500 3 0 {name=M5d
L=0.5
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -240 620 1 0 {name=l1 lab=GND}
