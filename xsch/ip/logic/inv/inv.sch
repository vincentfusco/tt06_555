v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -60 0 -60 {
lab=vin}
N -40 -60 -40 60 {
lab=vin}
N -40 60 0 60 {
lab=vin}
N -80 0 -40 0 {
lab=vin}
N 40 -30 40 30 {
lab=vout}
N 40 0 80 0 {
lab=vout}
N 40 90 40 120 {
lab=vss}
N 40 -120 40 -90 {
lab=vdd}
N 40 -60 50 -60 {
lab=vdd}
N 40 60 50 60 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 20 60 0 0 {name=Mn
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -60 0 0 {name=Mp
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -80 0 0 0 {name=p1 lab=vin}
C {devices/lab_pin.sym} 50 -60 2 0 {name=p4 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 50 60 2 0 {name=p5 sig_type=power lab=vss}
C {devices/opin.sym} 80 0 0 0 {name=p3 lab=vout}
C {borders/border_s.sym} 370 340 0 0 {}
C {devices/ipin.sym} 40 -120 1 0 {name=p6 lab=vdd}
C {devices/ipin.sym} 40 120 3 0 {name=p2 lab=vss}
