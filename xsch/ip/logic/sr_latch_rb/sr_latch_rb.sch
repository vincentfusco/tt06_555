v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -310 30 -290 {
lab=vdd}
N 30 -210 30 -190 {
lab=vss}
N 30 -30 30 -10 {
lab=vdd}
N 30 70 30 90 {
lab=vss}
N 110 -250 270 -250 {
lab=OUT_Qb}
N 110 30 270 30 {
lab=OUT_Q}
N 190 -70 190 30 {
lab=OUT_Q}
N -90 -150 190 -70 {
lab=OUT_Q}
N 190 -250 190 -150 {
lab=OUT_Qb}
N -90 -70 190 -150 {
lab=OUT_Qb}
N -170 -230 -10 -230 {
lab=IN_S}
N -90 50 -10 50 {
lab=out_nand}
N -90 10 -10 10 {
lab=OUT_Qb}
N -90 -70 -90 10 {
lab=OUT_Qb}
N -90 -270 -90 -150 {
lab=OUT_Q}
N -90 -270 -10 -270 {
lab=OUT_Q}
N -170 50 -90 50 {
lab=out_nand}
N -570 30 -530 30 {
lab=IN_R}
N -490 -30 -490 -10 {
lab=vdd}
N -250 -10 -250 10 {
lab=vdd}
N -250 90 -250 110 {
lab=vss}
N -490 70 -490 90 {
lab=vss}
N -410 30 -290 30 {
lab=in_nand}
N -350 70 -290 70 {
lab=IN_R_N}
N -350 70 -350 170 {
lab=IN_R_N}
N -570 170 -350 170 {
lab=IN_R_N}
C {devices/ipin.sym} -570 30 0 0 {name=p1 lab=IN_R}
C {devices/lab_pin.sym} 30 -310 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 30 -190 3 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 30 -30 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 30 90 3 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/opin.sym} 270 30 0 0 {name=p10 lab=OUT_Q}
C {devices/ipin.sym} -170 -230 0 0 {name=p11 lab=IN_S}
C {devices/ipin.sym} -530 -510 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -530 -470 0 0 {name=p6 lab=vss}
C {ip/logic/nor/nor.sym} 30 -250 0 0 {name=X_NOR_TOP}
C {ip/logic/nor/nor.sym} 30 30 0 0 {name=X_NOR_BOTTOM}
C {devices/lab_wire.sym} 270 -250 0 0 {name=p3 sig_type=std_logic lab=OUT_Qb}
C {ip/logic/nand/nand.sym} -250 50 0 0 {name=X_NAND}
C {ip/logic/inv/inv.sym} -490 30 0 0 {name=X_INV}
C {devices/lab_pin.sym} -490 -30 1 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -250 -10 1 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -250 110 3 0 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -490 90 3 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/ipin.sym} -570 170 0 0 {name=p15 lab=IN_R_N}
C {devices/lab_wire.sym} -330 30 0 0 {name=p16 sig_type=std_logic lab=in_nand}
C {devices/lab_wire.sym} -60 50 0 0 {name=p17 sig_type=std_logic lab=out_nand}
C {borders/border_s.sym} 140 230 0 0 {}
