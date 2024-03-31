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
} 460 -660 0 0 0.6 0.6 {}
T {60uA} -310 -290 0 0 0.4 0.4 {}
T {12.5uA} -905 -270 0 0 0.4 0.4 {}
N -370 -230 -350 -230 {
lab=VSS}
N -330 -300 -330 -260 {
lab=VDD}
N -330 -200 -330 -80 {
lab=v1p2}
N -330 60 -330 180 {
lab=v0p6}
N -330 240 -330 280 {
lab=VSS}
N -370 210 -350 210 {
lab=VSS}
N 300 -130 300 -110 {
lab=VDD}
N 300 50 300 70 {
lab=VSS}
N 380 -70 410 -70 {
lab=q_sr}
N 190 -70 220 -70 {
lab=sr_r}
N 410 -70 470 -70 {
lab=q_sr}
N 590 -70 650 -70 {
lab=out_inv1}
N 770 -70 830 -70 {
lab=DO_OUT}
N 510 -130 510 -110 {
lab=VDD}
N 690 -130 690 -110 {
lab=VDD}
N 870 -130 870 -110 {
lab=VDD}
N 510 -30 510 -10 {
lab=VSS}
N 690 -30 690 -10 {
lab=VSS}
N 870 -30 870 -10 {
lab=VSS}
N 1080 -40 1080 -20 {
lab=VSS}
N 1080 -70 1100 -70 {
lab=VSS}
N 1080 -170 1080 -100 {
lab=V_DISCH_O}
N 1080 -170 1300 -170 {
lab=V_DISCH_O}
N -330 130 -110 130 {
lab=v0p6}
N 10 150 110 150 {
lab=sr_s}
N 10 -130 110 -130 {
lab=sr_r}
N 110 -70 190 -70 {
lab=sr_r}
N -330 -110 -110 -110 {
lab=v1p2}
N -50 -190 -50 -170 {
lab=VDD}
N -50 90 -50 110 {
lab=VDD}
N -50 190 -50 210 {
lab=VSS}
N -50 -90 -50 -70 {
lab=VSS}
N -550 -150 -110 -150 {
lab=V_THRESH_I}
N 1010 -260 1300 -260 {
lab=DO_OUT}
N 950 -70 1030 -70 {
lab=out_inv3}
N 1030 -70 1040 -70 {
lab=out_inv3}
N 800 -260 800 -70 {
lab=DO_OUT}
N 800 -260 1010 -260 {
lab=DO_OUT}
N -330 -80 -330 -50 {
lab=v1p2}
N -330 10 -330 60 {
lab=v0p6}
N -945 -190 -935 -190 {
lab=VDD}
N -935 -240 -935 -220 {
lab=VDD}
N -895 -190 -865 -190 {
lab=bias_p}
N -70 -210 -70 -180 {
lab=bias_p}
N -975 -90 -955 -90 {
lab=VSS}
N -70 70 -70 100 {
lab=bias_p}
N 110 10 110 150 {
lab=sr_s}
N 110 -130 110 -70 {
lab=sr_r}
N -945 310 -935 310 {
lab=VSS}
N -935 340 -935 380 {
lab=VSS}
N -895 310 -835 310 {
lab=bias_n}
N -865 260 -865 310 {
lab=bias_n}
N -935 260 -865 260 {
lab=bias_n}
N -550 170 -110 170 {
lab=V_TRIG_B_I}
N -380 -20 -350 -20 {
lab=VSS}
N -935 -140 -865 -140 {
lab=bias_p}
N -865 -190 -865 -140 {
lab=bias_p}
N -895 -190 -835 -190 {
lab=bias_p}
N -975 10 -955 10 {
lab=VSS}
N -935 -60 -935 -20 {
lab=bias_1}
N -935 -160 -935 -120 {
lab=bias_p}
N -935 40 -935 80 {
lab=bias_2}
N -975 110 -955 110 {
lab=VSS}
N -975 210 -955 210 {
lab=VSS}
N -935 140 -935 180 {
lab=bias_3}
N -935 240 -935 280 {
lab=bias_n}
N 190 -30 220 -30 {
lab=sr_r}
N -560 440 190 440 {
lab=sr_r}
N 190 -30 190 440 {
lab=sr_r}
N 110 10 220 10 {
lab=sr_s}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -330 -230 0 0 {name=R_top
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -330 -20 0 0 {name=R_mid
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -330 210 0 0 {name=R_bot
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 300 70 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 280 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -130 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 -130 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 -130 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 870 -130 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 -10 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 690 -10 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 870 -10 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1080 -20 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1100 -70 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -190 1 0 {name=p14 sig_type=std_logic lab=VDD
|}
C {devices/lab_pin.sym} -50 90 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -50 210 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -70 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -370 210 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -380 -20 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -370 -230 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 -300 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -550 -150 0 0 {name=p33 lab=V_THRESH_I }
C {devices/ipin.sym} -550 170 0 0 {name=p0 lab=V_TRIG_B_I}
C {devices/opin.sym} 1300 -260 0 0 {name=p32 lab=DO_OUT}
C {devices/iopin.sym} -930 -430 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} -930 -400 0 0 {name=p11 lab=VSS}
C {devices/lab_pin.sym} -945 -190 2 1 {name=p25 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -935 -240 3 1 {name=p26 sig_type=power lab=VDD}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -935 -90 0 0 {name=R_bias_1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -975 -90 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -945 310 2 1 {name=p38 sig_type=power lab=VSS}
C {devices/lab_pin.sym} -935 380 1 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 1300 -170 0 0 {name=p30 lab=V_DISCH_O}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -915 310 0 1 {name=Mn_bias
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -915 -190 0 1 {name=Mp_bias
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1060 -70 0 0 {name=Mn_discharge
L=0.35
W=10
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -935 10 0 0 {name=R_bias_2
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -975 10 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -935 110 0 0 {name=R_bias_3
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -975 110 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -935 210 0 0 {name=R_bias_4
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -975 210 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 10 0 0 {name=p49 sig_type=std_logic lab=sr_s}
C {devices/lab_wire.sym} 180 -70 0 0 {name=p50 sig_type=std_logic lab=sr_r}
C {devices/lab_wire.sym} -170 130 0 0 {name=p28 sig_type=std_logic lab=v0p6}
C {devices/lab_wire.sym} -180 -110 0 0 {name=p29 sig_type=std_logic lab=v1p2}
C {devices/lab_wire.sym} 430 -70 0 0 {name=p23 sig_type=std_logic lab=q_sr}
C {devices/lab_wire.sym} 650 -70 0 0 {name=p24 sig_type=std_logic lab=out_inv1}
C {devices/lab_wire.sym} 1020 -70 0 0 {name=p41 sig_type=std_logic lab=out_inv3}
C {devices/lab_wire.sym} -835 -190 0 1 {name=p27 sig_type=std_logic lab=bias_p}
C {devices/lab_wire.sym} -835 310 0 1 {name=p40 sig_type=std_logic lab=bias_n}
C {devices/lab_wire.sym} -935 160 0 1 {name=p42 sig_type=std_logic lab=bias_3}
C {devices/lab_wire.sym} -935 60 0 1 {name=p44 sig_type=std_logic lab=bias_2}
C {devices/lab_wire.sym} -935 -40 0 1 {name=p46 sig_type=std_logic lab=bias_1}
C {devices/lab_wire.sym} -70 -190 3 1 {name=p34 sig_type=std_logic lab=bias_p}
C {devices/lab_wire.sym} -70 90 3 1 {name=p37 sig_type=std_logic lab=bias_p}
C {ip/logic/inv/inv.sym} 870 -70 0 0 {name=X_INV3[3:0]}
C {ip/logic/inv/inv.sym} 690 -70 0 0 {name=X_INV2[1:0]}
C {ip/logic/inv/inv.sym} 510 -70 0 0 {name=X_INV1}
C {ip/comparators/comp_p/comp_p.sym} -50 150 0 0 {name=X_COMP_P_BOTTOM}
C {ip/comparators/comp_p/comp_p.sym} -50 -130 0 0 {name=X_COMP_P_TOP}
C {ip/logic/sr_latch_rb/sr_latch_rb.sym} 300 -30 0 0 {name=X_SR_LATCH}
C {devices/ipin.sym} -560 440 0 0 {name=p31 lab=DI_RESET_N}
C {borders/border_xl.sym} -1470 710 0 0 {}
