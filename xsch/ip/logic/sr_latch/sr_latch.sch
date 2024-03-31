v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -200 -20 -180 {
lab=vdd}
N -20 -100 -20 -80 {
lab=vss}
N -20 80 -20 100 {
lab=vdd}
N -20 180 -20 200 {
lab=vss}
N 60 -140 220 -140 {
lab=OUT_Q_B}
N 60 140 220 140 {
lab=OUT_Q}
N 140 40 140 140 {
lab=OUT_Q}
N -140 -40 140 40 {
lab=OUT_Q}
N 140 -140 140 -40 {
lab=OUT_Q_B}
N -140 40 140 -40 {
lab=OUT_Q_B}
N -220 -120 -60 -120 {
lab=IN_S}
N -140 160 -60 160 {
lab=IN_R}
N -140 120 -60 120 {
lab=OUT_Q_B}
N -140 40 -140 120 {
lab=OUT_Q_B}
N -140 -160 -140 -40 {
lab=OUT_Q}
N -140 -160 -60 -160 {
lab=OUT_Q}
N -220 160 -140 160 {}
C {devices/ipin.sym} -220 160 0 0 {name=p1 lab=IN_R}
C {devices/opin.sym} 220 -140 0 0 {name=p3 lab=OUT_Q_B}
C {devices/lab_pin.sym} -20 -200 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -20 -80 3 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -20 80 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -20 200 3 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/opin.sym} 220 140 0 0 {name=p10 lab=OUT_Q}
C {devices/ipin.sym} -220 -120 0 0 {name=p11 lab=IN_S}
C {devices/ipin.sym} -490 -450 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -490 -410 0 0 {name=p6 lab=vss}
C {ip/logic/nor/nor.sym} -20 -140 0 0 {name=X_NOR_TOP}
C {ip/logic/nor/nor.sym} -20 140 0 0 {name=X_NOR_BOTTOM}
