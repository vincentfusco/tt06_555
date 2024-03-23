v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -440 0 -400 {
lab=vdd}
N 0 -370 10 -370 {
lab=vdd}
N -120 -10 -110 -10 {
lab=vss}
N -10 -270 0 -270 {
lab=vdd}
N 0 -340 0 -300 {
lab=mpcon}
N 120 20 120 50 {
lab=vss}
N 110 -10 120 -10 {
lab=vss}
N 0 -240 0 -140 {
lab=OUT}
N -120 -140 120 -140 {
lab=OUT}
N 120 -140 120 -40 {
lab=OUT}
N -120 -140 -120 -40 {
lab=OUT}
N 200 -270 200 -10 {
lab=IN_B}
N 40 -270 200 -270 {
lab=IN_B}
N 160 -10 240 -10 {
lab=IN_B}
N -240 -10 -160 -10 {
lab=IN_A}
N -200 -370 -200 -10 {
lab=IN_A}
N -200 -370 -40 -370 {
lab=IN_A}
N -120 60 120 60 {
lab=vss}
N 120 50 120 60 {
lab=vss}
N -120 20 -120 60 {
lab=vss}
N -0 60 0 80 {
lab=vss}
N 0 -200 40 -200 {
lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} -140 -10 0 0 {name=Mn_a
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 -370 0 0 {name=Mp_a
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -240 -10 0 0 {name=p1 lab=IN_A}
C {devices/lab_pin.sym} 10 -370 2 0 {name=p4 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -110 -10 2 0 {name=p5 sig_type=power lab=vss}
C {devices/opin.sym} 40 -200 0 0 {name=p3 lab=OUT}
C {devices/iopin.sym} 0 80 1 0 {name=p2 lab=vss}
C {devices/iopin.sym} 0 -440 3 0 {name=p6 lab=vdd}
C {borders/border_s.sym} 350 110 0 0 {
lab=mp_connection}
C {sky130_fd_pr/pfet_01v8.sym} 20 -270 0 1 {name=Mp_b
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -10 -270 2 1 {name=p7 sig_type=power lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 140 -10 0 1 {name=Mn_b
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 110 -10 2 1 {name=p8 sig_type=power lab=vss}
C {devices/ipin.sym} 240 -10 0 1 {name=p9 lab=IN_B}
C {devices/lab_pin.sym} 0 -320 0 0 {name=p10 sig_type=std_logic lab=mpcon}
