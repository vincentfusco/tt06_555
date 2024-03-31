v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -600 -90 -600 {
lab=vdd}
N 0 -200 10 -200 {
lab=vss}
N 90 -600 100 -600 {
lab=vdd}
N -10 -350 0 -350 {
lab=vss}
N 0 -420 40 -420 {
lab=OUT}
N -180 -600 -140 -600 {
lab=IN_A}
N -180 -600 -180 -200 {
lab=IN_A}
N -180 -200 -40 -200 {
lab=IN_A}
N -100 -700 -100 -630 {
lab=vdd}
N -100 -700 100 -700 {
lab=vdd}
N 100 -700 100 -630 {
lab=vdd}
N 0 -760 0 -700 {
lab=vdd}
N 0 -320 0 -230 {
lab=drain_mna}
N 0 -170 0 -140 {
lab=vss}
N -100 -570 -100 -480 {
lab=OUT}
N -100 -480 100 -480 {
lab=OUT}
N 100 -570 100 -480 {
lab=OUT}
N 0 -480 0 -380 {
lab=OUT}
N 40 -350 180 -350 {
lab=IN_B}
N 180 -600 180 -350 {
lab=IN_B}
N 140 -600 180 -600 {
lab=IN_B}
N -220 -600 -180 -600 {
lab=IN_A}
N 180 -600 220 -600 {
lab=IN_B}
C {sky130_fd_pr/nfet_01v8.sym} -20 -200 0 0 {name=Mn_a
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -120 -600 0 0 {name=Mp_a
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -220 -600 0 0 {name=p1 lab=IN_A}
C {devices/lab_pin.sym} -90 -600 2 0 {name=p4 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 10 -200 2 0 {name=p5 sig_type=power lab=vss}
C {devices/opin.sym} 40 -420 0 0 {name=p3 lab=OUT}
C {devices/iopin.sym} 0 -760 3 0 {name=p6 lab=vdd}
C {borders/border_s.sym} 380 -125 0 0 {
lab=mp_connection}
C {sky130_fd_pr/pfet_01v8.sym} 120 -600 0 1 {name=Mp_b
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -600 2 1 {name=p7 sig_type=power lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 20 -350 0 1 {name=Mn_b
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -10 -350 2 1 {name=p8 sig_type=power lab=vss}
C {devices/ipin.sym} 220 -600 0 1 {name=p9 lab=IN_B}
C {devices/iopin.sym} 0 -140 1 0 {name=p2 lab=vss}
C {devices/lab_wire.sym} 0 -310 3 0 {name=p10 sig_type=std_logic lab=drain_mna}
