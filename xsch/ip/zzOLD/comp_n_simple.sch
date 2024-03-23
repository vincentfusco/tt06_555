v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 130 0 160 {
lab=vss}
N 0 100 10 100 {
lab=vss}
N 110 -110 110 -80 {
lab=gate}
N -180 -50 -150 -50 {
lab=INn}
N 150 -50 180 -50 {
lab=INp}
N 340 100 350 100 {
lab=vss}
N 340 -160 350 -160 {
lab=vdd}
N 340 -130 340 -90 {
lab=OUT}
N 340 -210 340 -190 {
lab=vdd}
N 0 160 0 170 {
lab=vss}
N -110 -50 -100 -50 {
lab=vss}
N 100 -50 110 -50 {
lab=vss}
N -110 -20 -110 30 {
lab=tail}
N -110 30 110 30 {
lab=tail}
N 110 -20 110 30 {
lab=tail}
N 0 30 0 70 {
lab=tail}
N 110 -220 120 -220 {
lab=vdd}
N 110 -190 110 -150 {
lab=gate}
N 110 -270 110 -250 {
lab=vdd}
N -120 -220 -110 -220 {
lab=vdd}
N -110 -190 -110 -150 {
lab=mirror}
N -110 -270 -110 -250 {
lab=vdd}
N -110 -150 -110 -80 {
lab=mirror}
N 110 -150 110 -110 {
lab=gate}
N -70 -220 70 -220 {
lab=mirror}
N 110 -160 300 -160 {
lab=gate}
N 340 -30 360 -30 {
lab=OUT}
N 340 130 340 170 {
lab=vss}
N -100 100 -40 100 {
lab=bias_n}
N 240 100 300 100 {
lab=bias_n}
N 340 -90 340 70 {
lab=OUT}
N -110 -130 -60 -130 {
lab=mirror}
N -60 -130 -40 -130 {
lab=mirror}
N -40 -220 -40 -130 {
lab=mirror}
C {sky130_fd_pr/nfet_01v8.sym} -20 100 0 0 {name=M_tail
L=1
W=10  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 10 100 2 0 {name=p5 sig_type=power lab=vss}
C {devices/iopin.sym} -370 -570 2 0 {name=p6 lab=vdd}
C {borders/border_s.sym} 350 220 0 0 {
lab=bias_n}
C {sky130_fd_pr/nfet_01v8.sym} 320 100 0 0 {name=M_out
L=1
W=10
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 350 100 2 0 {name=p12 sig_type=power lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 320 -160 0 0 {name=M_output_load
L=1
W=10
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 350 -160 2 0 {name=p14 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 340 -210 1 0 {name=p15 sig_type=power lab=vdd}
C {devices/opin.sym} 360 -30 0 0 {name=p18 lab=OUT}
C {devices/iopin.sym} -370 -540 0 1 {name=p1 lab=vss}
C {devices/lab_pin.sym} 0 170 3 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/ipin.sym} -370 -510 0 0 {name=p20 lab=bias_n}
C {devices/ipin.sym} -180 -50 0 0 {name=p16 lab=INn}
C {devices/ipin.sym} 180 -50 2 0 {name=p21 lab=INp}
C {sky130_fd_pr/nfet_01v8.sym} -130 -50 0 0 {name=M_inn
L=0.15
W=10
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -100 -50 2 0 {name=p17 sig_type=power lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 130 -50 0 1 {name=M_inp
L=0.15
W=10
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 100 -50 2 1 {name=p22 sig_type=power lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 90 -220 0 0 {name=M_output_load1
L=1
W=10
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 120 -220 2 0 {name=p2 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 110 -270 1 0 {name=p4 sig_type=power lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -90 -220 0 1 {name=M_output_load2
L=1
W=10
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -120 -220 2 1 {name=p7 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -110 -270 3 1 {name=p8 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 340 170 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -100 100 2 1 {name=p10 sig_type=in lab=bias_n

}
C {devices/lab_pin.sym} 240 100 2 1 {name=p11 sig_type=in lab=bias_n}
C {devices/lab_pin.sym} 0 50 0 0 {name=p13 sig_type=std_logic lab=tail}
C {devices/lab_pin.sym} -110 -160 0 0 {name=p19 sig_type=std_logic lab=mirror}
C {devices/lab_pin.sym} 110 -120 0 0 {name=p23 sig_type=std_logic lab=gate}
