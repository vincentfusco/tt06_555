v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 180 -410 200 {
lab=vinp}
N -410 200 -410 220 {
lab=vinp}
N -90 40 -90 60 {
lab=GND}
N -90 -60 -90 -40 {
lab=VDD}
N -30 0 -10 0 {
lab=out}
N -410 280 -410 300 {
lab=GND}
N -500 200 -500 220 {
lab=VDD}
N -500 280 -500 300 {
lab=GND}
N -10 0 50 0 {
lab=out}
N -190 180 -190 200 {
lab=vinn}
N -190 200 -190 220 {
lab=vinn}
N -190 280 -190 300 {
lab=GND}
N -170 20 -150 20 {
lab=vinn}
N -190 20 -170 20 {
lab=vinn}
N -170 -20 -150 -20 {
lab=vinp}
N -190 -20 -170 -20 {
lab=vinp}
N -110 -110 -110 -50 {
lab=bias_p}
N -40 230 -20 230 {
lab=vinp}
N -60 230 -40 230 {
lab=vinp}
N -40 270 -20 270 {
lab=vinn}
N -60 270 -40 270 {
lab=vinn}
N 20 280 20 300 {
lab=GND}
N 20 200 20 220 {
lab=vin_diff}
N -860 -210 -850 -210 {
lab=VDD}
N -850 -260 -850 -240 {
lab=VDD}
N -810 -210 -780 -210 {
lab=bias_p}
N -890 -110 -870 -110 {
lab=VSS}
N -860 290 -850 290 {
lab=VSS}
N -850 320 -850 360 {
lab=GND}
N -810 290 -750 290 {
lab=bias_n}
N -780 240 -780 290 {
lab=bias_n}
N -850 240 -780 240 {
lab=bias_n}
N -850 -160 -780 -160 {
lab=bias_p}
N -780 -210 -780 -160 {
lab=bias_p}
N -810 -210 -750 -210 {
lab=bias_p}
N -890 -10 -870 -10 {
lab=VSS}
N -850 -80 -850 -40 {
lab=bias_1}
N -850 -180 -850 -140 {
lab=bias_p}
N -850 20 -850 60 {
lab=bias_2}
N -890 90 -870 90 {
lab=VSS}
N -890 190 -870 190 {
lab=VSS}
N -850 120 -850 160 {
lab=bias_3}
N -850 220 -850 260 {
lab=bias_n}
C {devices/vdd.sym} -90 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -90 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -410 300 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -500 250 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vdd.sym} -500 200 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -500 300 0 0 {name=l5 lab=GND}
C {devices/code.sym} -540 -190 0 0 {name=SIMULATOR only_toplevel=false value=
"

* control language script
.save X_COMP_P.latch_right
.save X_COMP_P.latch_left
.save vinp vinn out vdd
.save X_COMP_P.tail

.control
tran 0.1u 2100u

meas tran v_cross_lh FIND v(vinp) when v(out)=0.9 RISE=1
meas tran v_cross_hl FIND v(vinp) when v(out)=0.9 FALL=1

let v_th = v_cross_lh-0.6
let v_tl = v_cross_hl-0.6
let v_hyst = $&v_th - $&v_tl
let v_offset = $&v_th + $&v_tl

set xbrushwidth=2
plot v(out) v(vinp) v(vinn)
plot v(x_comp_p.latch_right) v(x_comp_p.latch_left)
plot v(X_COMP_P.tail)

echo V_th: $&v_th
echo V_tl: $&v_tl
echo V_hyst: $&v_hyst
echo V_offset: $&v_offset

rusage

.endc
.end

"}
C {sky130_fd_pr/corner.sym} -540 -20 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/noconn.sym} 50 0 2 0 {name=l6}
C {devices/lab_wire.sym} 20 0 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} -190 250 0 0 {name=VCOMP_N value=0.6 savecurrent=false}
C {devices/gnd.sym} -190 300 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -410 180 3 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -190 180 3 0 {name=p3 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -190 20 0 1 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -190 -20 0 1 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -110 -60 3 1 {name=p7 sig_type=std_logic lab=bias_p}
C {devices/vsource.sym} -410 250 0 0 {name=VCOMP_P value="PWL(0 0 100u 0 1100u 1.8 2100u 0)" savecurrent=false}
C {devices/vcvs.sym} 20 250 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} -20 230 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -20 270 0 0 {name=p9 sig_type=std_logic lab=vinn}
C {devices/gnd.sym} 20 300 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 20 200 0 0 {name=p10 sig_type=std_logic lab=vin_diff}
C {devices/lab_pin.sym} -860 -210 2 1 {name=p11 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -850 -260 3 1 {name=p12 sig_type=power lab=VDD}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -850 -110 0 0 {name=R_bias_1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -890 -110 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -860 290 2 1 {name=p38 sig_type=power lab=VSS}
C {devices/lab_pin.sym} -750 290 2 0 {name=p40 sig_type=in lab=bias_n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -830 290 0 1 {name=Mn_bias
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -830 -210 0 1 {name=Mp_bias1
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
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -850 -10 0 0 {name=R_bias_2
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -890 -10 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -850 90 0 0 {name=R_bias_3
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -890 90 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -850 190 0 0 {name=R_bias_4
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -890 190 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -850 -60 0 0 {name=p46 sig_type=std_logic lab=bias_1}
C {devices/lab_pin.sym} -850 40 0 0 {name=p47 sig_type=std_logic lab=bias_2}
C {devices/lab_pin.sym} -850 140 0 0 {name=p48 sig_type=std_logic lab=bias_3}
C {devices/lab_wire.sym} -750 -210 0 1 {name=p13 sig_type=std_logic lab=bias_p}
C {devices/gnd.sym} -850 360 0 0 {name=l10 lab=GND}
C {ip/comparators/comp_p/comp_p.sym} -90 0 0 0 {name=X_COMP_P}
