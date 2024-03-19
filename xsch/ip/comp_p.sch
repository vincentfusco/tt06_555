v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 180 100 210 {
lab=vss}
N -120 -80 -110 -80 {
lab=vdd}
N 100 150 110 150 {
lab=vss}
N 90 -80 100 -80 {
lab=vdd}
N -10 -210 0 -210 {
lab=vdd}
N -120 -140 -120 -110 {
lab=#net1}
N -120 -140 100 -140 {
lab=#net1}
N 100 -140 100 -110 {
lab=#net1}
N -10 -180 -10 -140 {
lab=#net1}
N -10 -260 -10 -240 {
lab=vdd}
N -120 180 -120 210 {
lab=vss}
N -130 150 -120 150 {
lab=vss}
N -120 -50 -120 120 {
lab=#net2}
N 100 -50 100 120 {
lab=#net3}
N -80 150 -60 150 {
lab=#net2}
N -60 150 60 150 {
lab=#net2}
N -30 60 -30 150 {
lab=#net2}
N -120 60 -30 60 {
lab=#net2}
N -190 -80 -160 -80 {
lab=INn}
N 140 -80 170 -80 {
lab=INp}
N 360 130 360 160 {
lab=vss}
N 360 100 370 100 {
lab=vss}
N 100 100 320 100 {
lab=#net3}
N 360 -210 370 -210 {
lab=vdd}
N 360 -180 360 -140 {
lab=OUT}
N 360 -260 360 -240 {
lab=vdd}
N 360 -140 360 70 {
lab=OUT}
N 360 -40 380 -40 {
lab=OUT}
N -80 -210 -50 -210 {
lab=BIAS_P}
N 360 160 360 210 {
lab=vss}
N 360 210 360 220 {
lab=vss}
N 100 210 100 220 {
lab=vss}
N -120 210 -120 220 {
lab=vss}
N 290 -210 320 -210 {
lab=BIAS_P}
C {sky130_fd_pr/nfet_01v8.sym} 80 150 0 0 {name=M_load
L=1
W=10  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -80 0 0 {name=M_inn
L=0.15
W=10
nf=2 mult=2
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -110 -80 2 0 {name=p4 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 110 150 2 0 {name=p5 sig_type=power lab=vss}
C {devices/iopin.sym} -370 -570 2 0 {name=p6 lab=vdd}
C {borders/border_s.sym} 580 220 0 0 {}
C {sky130_fd_pr/pfet_01v8.sym} 120 -80 0 1 {name=M_inp
L=0.15
W=10
nf=2 mult=2
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -80 2 1 {name=p7 sig_type=power lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -30 -210 0 0 {name=M_tail
L=1
W=10
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 0 -210 2 0 {name=p8 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -10 -260 1 0 {name=p9 sig_type=power lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -100 150 0 1 {name=M_diode
L=1
W=10
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -130 150 2 1 {name=p10 sig_type=power lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 340 100 0 0 {name=M_out
L=1
W=10
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 370 100 2 0 {name=p12 sig_type=power lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 340 -210 0 0 {name=M_output_load
L=1
W=10
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 370 -210 2 0 {name=p14 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 360 -260 1 0 {name=p15 sig_type=power lab=vdd}
C {devices/opin.sym} 380 -40 0 0 {name=p18 lab=OUT}
C {devices/iopin.sym} -370 -540 0 1 {name=p1 lab=vss}
C {devices/lab_pin.sym} -120 220 3 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 100 220 3 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 360 220 3 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -80 -210 0 0 {name=p13 sig_type=std_logic lab=BIAS_P}
C {devices/lab_pin.sym} 290 -210 0 0 {name=p19 sig_type=std_logic lab=BIAS_P}
C {devices/ipin.sym} -370 -510 0 0 {name=p20 lab=BIAS_P}
C {devices/ipin.sym} -190 -80 0 0 {name=p16 lab=INn}
C {devices/ipin.sym} 170 -80 2 0 {name=p21 lab=INp}
