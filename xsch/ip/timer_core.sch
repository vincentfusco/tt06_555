v {xschem version=3.4.5 file_version=1.2
}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
}
V {}
S {}
E {}
T {Layout Notes:
1. Resistors should carry < 100uA / (um width).} 1230 -810 0 0 0.4 0.4 {}
N -320 -210 -300 -210 {
lab=vss}
N -280 -280 -280 -240 {
lab=vdd}
N -280 -180 -280 -60 {
lab=#net1}
N -280 80 -280 200 {
lab=#net2}
N -280 260 -280 300 {
lab=vss}
N -320 230 -300 230 {
lab=vss}
N 350 -110 350 -90 {
lab=vdd}
N 350 70 350 90 {
lab=vss}
N 430 -50 460 -50 {
lab=q_sr}
N 430 30 460 30 {
lab=Qb}
N 240 -50 270 -50 {
lab=sr_r}
N 240 30 270 30 {
lab=sr_s}
N 460 -50 520 -50 {
lab=q_sr}
N 640 -50 700 -50 {
lab=out_inv1}
N 820 -50 880 -50 {
lab=OUT_D_O_PIN}
N 560 -110 560 -90 {
lab=vdd}
N 740 -110 740 -90 {
lab=vdd}
N 920 -110 920 -90 {
lab=vdd}
N 560 -10 560 10 {
lab=vss}
N 740 -10 740 10 {
lab=vss}
N 920 -10 920 10 {
lab=vss}
N 1130 -20 1130 0 {
lab=vss}
N 1130 -50 1150 -50 {
lab=vss}
N 1130 -150 1130 -80 {
lab=DISCH_A_O_PIN}
N 1130 -150 1350 -150 {
lab=DISCH_A_O_PIN}
N -280 150 -60 150 {
lab=#net2}
N 60 170 160 170 {
lab=sr_s}
N 160 30 240 30 {
lab=sr_s}
N 60 -110 160 -110 {
lab=sr_r}
N 160 -50 240 -50 {
lab=sr_r}
N -280 -90 -60 -90 {
lab=#net1}
N 0 -170 0 -150 {
lab=vdd}
N 0 110 0 130 {
lab=vdd}
N 0 210 0 230 {
lab=vss}
N 0 -70 0 -50 {
lab=vss}
N -500 -130 -60 -130 {
lab=THRESH_A_I_PIN}
N 1060 -240 1350 -240 {
lab=OUT_D_O_PIN}
N 1000 -50 1080 -50 {
lab=#net3}
N 1080 -50 1090 -50 {
lab=#net3}
N 850 -240 850 -50 {
lab=OUT_D_O_PIN}
N 850 -240 1060 -240 {
lab=OUT_D_O_PIN}
N -280 -60 -280 -30 {
lab=#net1}
N -280 30 -280 80 {
lab=#net2}
N -1070 -550 -1060 -550 {
lab=vdd}
N -1060 -600 -1060 -580 {
lab=vdd}
N -1020 -550 -990 -550 {
lab=BIAS_P}
N -20 -190 -20 -160 {
lab=BIAS_N}
N -1060 -520 -1060 -380 {
lab=BIAS_P}
N -1000 -550 -1000 -470 {
lab=BIAS_P}
N -1060 -470 -1000 -470 {
lab=BIAS_P}
N -1060 -320 -1060 -290 {
lab=#net4}
N -1100 -260 -1080 -260 {
lab=vss}
N -1100 -350 -1080 -350 {
lab=vss}
N -20 90 -20 120 {
lab=BIAS_P}
N 160 30 160 170 {
lab=sr_s}
N 160 -110 160 -50 {
lab=sr_r}
N -1070 -150 -1060 -150 {
lab=vss}
N -1060 -120 -1060 -80 {
lab=vss}
N -1020 -150 -960 -150 {
lab=BIAS_N}
N -1060 -230 -1060 -180 {
lab=BIAS_N}
N -990 -200 -990 -150 {
lab=BIAS_N}
N -1060 -200 -990 -200 {
lab=BIAS_N}
N -500 190 -60 190 {
lab=TRIGB_A_I_PIN}
N -330 0 -300 0 {
lab=vss}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 -210 0 0 {name=R_top
L=3.5
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 0 0 0 {name=R_mid
L=3.5
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 230 0 0 {name=R_bot
L=3.5
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {ip/logic/sr_latch.sym} 350 -10 0 0 {name=X_SR_LATCH}
C {devices/lab_pin.sym} 350 90 3 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -280 300 3 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 350 -110 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1110 -50 0 0 {name=M_discharge
L=0.15
W=10
nf=4 
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ip/logic/inv.sym} 560 -50 0 0 {name=X_INV1}
C {ip/logic/inv.sym} 740 -50 0 0 {name=X_INV2[1:0]}
C {ip/logic/inv.sym} 920 -50 0 0 {name=X_INV3[3:0]}
C {devices/lab_pin.sym} 560 -110 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 740 -110 1 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 920 -110 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 560 10 3 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 740 10 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 920 10 3 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1130 0 3 0 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1150 -50 2 0 {name=p13 sig_type=std_logic lab=vss}
C {ip/comp_n.sym} 0 -110 0 0 {name=X_COMP_N}
C {devices/lab_pin.sym} 0 -170 1 0 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 0 110 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 0 230 3 0 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 0 -50 3 0 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -320 230 0 0 {name=p18 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -330 0 0 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -320 -210 0 0 {name=p20 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -280 -280 1 0 {name=p21 sig_type=std_logic lab=vdd}
C {devices/noconn.sym} 460 30 2 0 {name=l1}
C {devices/lab_pin.sym} 450 30 1 0 {name=p22 sig_type=std_logic lab=Qb}
C {devices/lab_pin.sym} 470 -50 1 0 {name=p23 sig_type=std_logic lab=q_sr}
C {devices/lab_pin.sym} 670 -50 1 0 {name=p24 sig_type=std_logic lab=out_inv1}
C {devices/lab_pin.sym} 230 -50 0 0 {name=p28 sig_type=std_logic lab=sr_r}
C {devices/lab_pin.sym} 230 30 0 0 {name=p29 sig_type=std_logic lab=sr_s}
C {devices/ipin.sym} -500 -130 0 0 {name=p30 lab=THRESH_A_I_PIN}
C {devices/ipin.sym} -500 190 0 0 {name=p31 lab=TRIGB_A_I_PIN}
C {devices/opin.sym} 1350 -240 0 0 {name=p32 lab=OUT_D_O_PIN}
C {borders/border_xl.sym} -1380 440 0 0 {
name=X_COMP_P}
C {devices/iopin.sym} -920 -760 0 0 {name=p7 lab=vdd}
C {devices/iopin.sym} -920 -730 0 0 {name=p11 lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} -1040 -550 0 1 {name=M_tail
L=1
W=10
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -1070 -550 2 1 {name=p25 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -1060 -600 3 1 {name=p26 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -990 -550 0 1 {name=p27 sig_type=std_logic lab=BIAS_P}
C {devices/lab_pin.sym} -20 -190 3 1 {name=p34 sig_type=std_logic lab=BIAS_N}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -1060 -350 0 0 {name=R_top1
L=3.5
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -1060 -260 0 0 {name=R_top2
L=3.5
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1100 -260 0 0 {name=p35 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -1100 -350 0 0 {name=p36 sig_type=std_logic lab=vss}
C {ip/comp_p.sym} 0 170 0 0 {name=X_COMP_P1}
C {devices/lab_pin.sym} -20 90 3 1 {name=p37 sig_type=std_logic lab=BIAS_P}
C {sky130_fd_pr/nfet_01v8.sym} -1040 -150 0 1 {name=M_out
L=1
W=10
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -1070 -150 2 1 {name=p38 sig_type=power lab=vss}
C {devices/lab_pin.sym} -1060 -80 1 1 {name=p39 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -960 -150 2 0 {name=p40 sig_type=in lab=BIAS_N}
C {devices/opin.sym} 1350 -150 0 0 {name=p33 lab=DISCH_A_O_PIN}
