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
1. Resistors should carry < 100uA / (um width).
2. Book-end R_top,R_mid,R_bot with Rbias resistors.
3. Thick trace for V_DISCH_O path. 
4. I/O resistance is limited by tt06 MUX so there is no point
   in over-designing for low-impedance.
} 540 -940 0 0 0.6 0.6 {}
T {60uA} -260 -270 0 0 0.4 0.4 {}
T {12.5uA} -930 -340 0 0 0.4 0.4 {}
N -320 -210 -300 -210 {
lab=VSS}
N -280 -280 -280 -240 {
lab=VDD}
N -280 -180 -280 -60 {
lab=v1p2}
N -280 80 -280 200 {
lab=v0p6}
N -280 260 -280 300 {
lab=VSS}
N -320 230 -300 230 {
lab=VSS}
N 350 -110 350 -90 {
lab=VDD}
N 350 70 350 90 {
lab=VSS}
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
lab=DO_OUT}
N 560 -110 560 -90 {
lab=VDD}
N 740 -110 740 -90 {
lab=VDD}
N 920 -110 920 -90 {
lab=VDD}
N 560 -10 560 10 {
lab=VSS}
N 740 -10 740 10 {
lab=VSS}
N 920 -10 920 10 {
lab=VSS}
N 1130 -20 1130 0 {
lab=VSS}
N 1130 -50 1150 -50 {
lab=VSS}
N 1130 -150 1130 -80 {
lab=V_DISCH_O}
N 1130 -150 1350 -150 {
lab=V_DISCH_O}
N -280 150 -60 150 {
lab=v0p6}
N 60 170 160 170 {
lab=sr_s}
N 160 30 240 30 {
lab=sr_s}
N 60 -110 160 -110 {
lab=sr_r}
N 160 -50 240 -50 {
lab=sr_r}
N -280 -90 -60 -90 {
lab=v1p2}
N 0 -170 0 -150 {
lab=VDD}
N 0 110 0 130 {
lab=VDD}
N 0 210 0 230 {
lab=VSS}
N 0 -70 0 -50 {
lab=VSS}
N -500 -130 -60 -130 {
lab=V_THRESH_I}
N 1060 -240 1350 -240 {
lab=DO_OUT}
N 1000 -50 1080 -50 {
lab=out_inv3}
N 1080 -50 1090 -50 {
lab=out_inv3}
N 850 -240 850 -50 {
lab=DO_OUT}
N 850 -240 1060 -240 {
lab=DO_OUT}
N -280 -60 -280 -30 {
lab=v1p2}
N -280 30 -280 80 {
lab=v0p6}
N -970 -260 -960 -260 {
lab=VDD}
N -960 -310 -960 -290 {
lab=VDD}
N -920 -260 -890 -260 {
lab=bias_p}
N -20 -190 -20 -160 {
lab=bias_n}
N -1000 -160 -980 -160 {
lab=VSS}
N -20 90 -20 120 {
lab=bias_p}
N 160 30 160 170 {
lab=sr_s}
N 160 -110 160 -50 {
lab=sr_r}
N -970 240 -960 240 {
lab=VSS}
N -960 270 -960 310 {
lab=VSS}
N -920 240 -860 240 {
lab=bias_n}
N -890 190 -890 240 {
lab=bias_n}
N -960 190 -890 190 {
lab=bias_n}
N -500 190 -60 190 {
lab=V_TRIG_B_I}
N -330 0 -300 0 {
lab=VSS}
N -960 -210 -890 -210 {
lab=bias_p}
N -890 -260 -890 -210 {
lab=bias_p}
N -920 -260 -860 -260 {
lab=bias_p}
N -1000 -60 -980 -60 {
lab=VSS}
N -960 -130 -960 -90 {
lab=bias_1}
N -960 -230 -960 -190 {
lab=bias_p}
N -960 -30 -960 10 {
lab=bias_2}
N -1000 40 -980 40 {
lab=VSS}
N -1000 140 -980 140 {
lab=VSS}
N -960 70 -960 110 {
lab=bias_3}
N -960 170 -960 210 {
lab=bias_n}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 -210 0 0 {name=R_top
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 0 0 0 {name=R_mid
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -280 230 0 0 {name=R_bot
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {ip/logic/sr_latch.sym} 350 -10 0 0 {name=X_SR_LATCH}
C {devices/lab_pin.sym} 350 90 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -280 300 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -110 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {ip/logic/inv.sym} 560 -50 0 0 {name=X_INV1}
C {ip/logic/inv.sym} 740 -50 0 0 {name=X_INV2[1:0]}
C {ip/logic/inv.sym} 920 -50 0 0 {name=X_INV3[3:0]}
C {devices/lab_pin.sym} 560 -110 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -110 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -110 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 10 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 10 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 10 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1130 0 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 -50 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -170 1 0 {name=p14 sig_type=std_logic lab=VDD
|}
C {devices/lab_pin.sym} 0 110 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 230 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -50 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -320 230 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 0 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -320 -210 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -280 -280 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 460 30 2 0 {name=l1}
C {devices/lab_pin.sym} 450 30 1 0 {name=p22 sig_type=std_logic lab=Qb}
C {devices/lab_pin.sym} 470 -50 1 0 {name=p23 sig_type=std_logic lab=q_sr}
C {devices/lab_pin.sym} 670 -50 1 0 {name=p24 sig_type=std_logic lab=out_inv1}
C {devices/lab_pin.sym} 160 -50 0 0 {name=p28 sig_type=std_logic lab=sr_r}
C {devices/lab_pin.sym} 160 30 0 0 {name=p29 sig_type=std_logic lab=sr_s}
C {devices/ipin.sym} -500 -130 0 0 {name=p30 lab=V_THRESH_I}
C {devices/ipin.sym} -500 190 0 0 {name=p31 lab=V_TRIG_B_I}
C {devices/opin.sym} 1350 -240 0 0 {name=p32 lab=DO_OUT}
C {devices/iopin.sym} -920 -760 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} -920 -730 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} -970 -260 2 1 {name=p25 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -960 -310 3 1 {name=p26 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -860 -260 0 1 {name=p27 sig_type=std_logic lab=bias_p}
C {devices/lab_pin.sym} -20 -190 3 1 {name=p34 sig_type=std_logic lab=bias_n}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -960 -160 0 0 {name=R_bias_1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1000 -160 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 90 3 1 {name=p37 sig_type=std_logic lab=bias_p}
C {devices/lab_pin.sym} -970 240 2 1 {name=p38 sig_type=power lab=VSS}
C {devices/lab_pin.sym} -960 310 1 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -860 240 2 0 {name=p40 sig_type=in lab=bias_n}
C {devices/opin.sym} 1350 -150 0 0 {name=p33 lab=V_DISCH_O}
C {devices/lab_pin.sym} -280 -70 0 0 {name=p41 sig_type=std_logic lab=v1p2}
C {devices/lab_pin.sym} -280 80 0 0 {name=p42 sig_type=std_logic lab=v0p6}
C {devices/lab_pin.sym} 1030 -50 1 0 {name=p44 sig_type=std_logic lab=out_inv3}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -940 240 0 1 {name=Mn_bias
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -940 -260 0 1 {name=Mp_bias
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1110 -50 0 0 {name=Mn_discharge
L=0.35
W=10
nf=8
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
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -960 -60 0 0 {name=R_bias_2
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1000 -60 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {borders/border_xl.sym} -1530 590 0 0 {
name=X_COMP_P2}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -960 40 0 0 {name=R_bias_3
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1000 40 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -960 140 0 0 {name=R_bias_4
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1000 140 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -960 -110 0 0 {name=p46 sig_type=std_logic lab=bias_1}
C {devices/lab_pin.sym} -960 -10 0 0 {name=p47 sig_type=std_logic lab=bias_2}
C {devices/lab_pin.sym} -960 90 0 0 {name=p48 sig_type=std_logic lab=bias_3}
C {ip/comparators/comp_n.sym} 0 -110 0 0 {name=X_COMP_N}
C {ip/comparators/comp_p.sym} 0 170 0 0 {name=X_COMP_P}
