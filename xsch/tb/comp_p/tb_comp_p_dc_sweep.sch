v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {12.5uA} -210 -890 0 0 0.4 0.4 {}
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
N -250 -810 -240 -810 {
lab=VDD}
N -240 -860 -240 -840 {
lab=VDD}
N -200 -810 -170 -810 {
lab=bias_p}
N -280 -710 -260 -710 {
lab=VSS}
N -250 -310 -240 -310 {
lab=VSS}
N -240 -280 -240 -240 {
lab=GND}
N -200 -310 -140 -310 {
lab=bias_n}
N -170 -360 -170 -310 {
lab=bias_n}
N -240 -360 -170 -360 {
lab=bias_n}
N -240 -760 -170 -760 {
lab=bias_p}
N -170 -810 -170 -760 {
lab=bias_p}
N -200 -810 -140 -810 {
lab=bias_p}
N -280 -610 -260 -610 {
lab=VSS}
N -240 -680 -240 -640 {
lab=bias_1}
N -240 -780 -240 -740 {
lab=bias_p}
N -240 -580 -240 -540 {
lab=bias_2}
N -280 -510 -260 -510 {
lab=VSS}
N -280 -410 -260 -410 {
lab=VSS}
N -240 -480 -240 -440 {
lab=bias_3}
N -240 -380 -240 -340 {
lab=bias_n}
N -110 -110 -110 -50 {
lab=bias_p}
N 20 250 40 250 {
lab=vinp}
N 0 250 20 250 {
lab=vinp}
N 20 290 40 290 {
lab=vinn}
N 0 290 20 290 {
lab=vinn}
N 80 300 80 320 {
lab=GND}
N 80 220 80 240 {
lab=vin_diff}
C {devices/vdd.sym} -90 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -90 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -410 300 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -500 250 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vdd.sym} -500 200 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -500 300 0 0 {name=l5 lab=GND}
C {devices/code.sym} -540 -190 0 0 {name=SIMULATOR only_toplevel=false value=
"

* control language script

.control
;tran 100p 500n               ; simulation command 1

set xbrushwidth=2
;plot v(in) v(out)

;write $inputdir/outtran.out v(in) v(out)

;reset

let v_TL = vector(1)
let v_TH = vector(2)

dc VCOMP_N 0 1.2 0.01e-3              ; simulation command 2

plot v(out) v(vin_diff) xlabel 'V_TL measurement'              ; v(in) not required because it is the x axis already

meas dc vrampval find v(vin_diff) when v(out)=0.9
let vgain = vecmin(deriv(v(out)))
let v_TL = vrampval

echo ---- My Measurements ----
echo Voffset:  $&vrampval
echo Maximum Gain: $&vgain
echo -------------------------


dc VCOMP_P 0 1.2 0.01e-3              ; simulation command 2

plot v(out) v(vin_diff) xlabel 'V_TH measurement'       ; 

meas dc vrampval find v(vin_diff) when v(out)=0.9
let vgain = vecmax(deriv(v(out)))
let v_TH = vrampval 

echo ---- My Measurements ----
echo Voffset:  $&vrampval
echo Maximum Gain: $&vgain
echo -------------------------

reset

echo V_tl $&v_TL
echo V_th $&v_TH
let v_hyst = mag($&v_TL - $&v_TH)
echo V_hyst $&v_hyst
let voffset = -$&v_hyst/2.0
echo V_offset $&voffset

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
C {devices/lab_pin.sym} -250 -810 2 1 {name=p25 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -240 -860 3 1 {name=p26 sig_type=power lab=VDD}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -240 -710 0 0 {name=R_bias_1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -280 -710 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -310 2 1 {name=p38 sig_type=power lab=VSS}
C {devices/lab_pin.sym} -140 -310 2 0 {name=p40 sig_type=in lab=bias_n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -220 -310 0 1 {name=Mn_bias
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -220 -810 0 1 {name=Mp_bias
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
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -240 -610 0 0 {name=R_bias_2
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -280 -610 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -240 -510 0 0 {name=R_bias_3
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -280 -510 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -240 -410 0 0 {name=R_bias_4
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -280 -410 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -660 0 0 {name=p46 sig_type=std_logic lab=bias_1}
C {devices/lab_pin.sym} -240 -560 0 0 {name=p47 sig_type=std_logic lab=bias_2}
C {devices/lab_pin.sym} -240 -460 0 0 {name=p48 sig_type=std_logic lab=bias_3}
C {devices/lab_wire.sym} -140 -810 0 1 {name=p6 sig_type=std_logic lab=bias_p}
C {devices/lab_wire.sym} -110 -60 3 1 {name=p7 sig_type=std_logic lab=bias_p}
C {devices/vsource.sym} -410 250 0 0 {name=VCOMP_P value=0.6 savecurrent=false}
C {devices/vcvs.sym} 80 270 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} 40 250 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 40 290 0 0 {name=p9 sig_type=std_logic lab=vinn}
C {devices/gnd.sym} 80 320 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 80 220 0 0 {name=p10 sig_type=std_logic lab=vin_diff}
C {devices/gnd.sym} -240 -240 0 0 {name=l9 lab=GND}
C {ip/comparators/comp_p/comp_p.sym} -90 0 0 0 {name=X1}
