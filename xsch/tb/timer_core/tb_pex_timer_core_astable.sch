v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -580 90 -580 110 {
lab=GND}
N 0 130 0 150 {
lab=GND}
N -340 -50 -340 30 {
lab=discharge}
N -340 -140 -340 -110 {
lab=VDD}
N -340 90 -340 150 {
lab=cap}
N -340 210 -340 270 {
lab=GND}
N -240 -30 -200 -30 {
lab=cap}
N -240 -30 -240 50 {
lab=cap}
N -240 50 -200 50 {
lab=cap}
N 200 50 340 50 {
lab=discharge}
N 340 50 340 380 {
lab=discharge}
N -450 380 340 380 {
lab=discharge}
N -450 -0 -450 380 {
lab=discharge}
N 200 -30 240 -30 {
lab=do_out}
N -580 0 -580 30 {
lab=VDD}
N 0 -140 0 -110 {
lab=VDD}
N -340 110 -240 110 {
lab=cap}
N -240 50 -240 110 {
lab=cap}
N -450 0 -340 -0 {
lab=discharge}
C {devices/vsource.sym} -580 60 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} -580 0 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -580 110 0 0 {name=l5 lab=GND}
C {devices/code.sym} -820 -200 0 0 {name=SIMULATOR only_toplevel=false value=
"
.ic v(cap) = 0

.control
	tran 0.1u 10m
	;plot v(cap) v(discharge) v(do_out)

	;plot v(x_timer_core.v0p6) v(x_timer_core.v1p2) v(x_timer_core.bias_p) v(x_timer_core.bias_1) v(x_timer_core.bias_2) v(x_timer_core.bias_3) v(x_timer_core.bias_n)

	;plot v(x_timer_core.sr_r) v(x_timer_core.sr_s) v(x_timer_core.v1p2) v(x_timer_core.v0p6)
	;plot v(x_timer_core.bias_n) v(x_timer_core.bias_1) v(x_timer_core.bias_2) v(x_timer_core.bias_3) v(x_timer_core.bias_p)
	plot v(x_timer_core.sr_r) v(x_timer_core.sr_s)

	plot v(x_timer_core.x_comp_p_top/latch_left) v(x_timer_core.x_comp_p_top/latch_right) v(x_timer_core.x_comp_p_top/tail) v(x_timer_core.x_comp_p_top/out_left)
.endc
.end
"}
C {sky130_fd_pr/corner.sym} -820 -30 0 0 {name=CORNER only_toplevel=false corner=TT}
C {devices/gnd.sym} 0 150 0 0 {name=l1 lab=GND}
C {devices/res.sym} -340 -80 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -340 60 0 0 {name=R2
value=47k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -340 180 0 0 {name=C1
m=1
value=10n
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -340 270 0 0 {name=l2 lab=GND}
C {devices/code.sym} -810 140 0 0 {name=SAVES only_toplevel=false value=
"
.save all
.save v(do_out) v(discharge) v(cap) v(x_timer_core.out_inv3) v(cap2)

.savecurrents
"}
C {devices/lab_pin.sym} -340 120 0 0 {name=p3 sig_type=std_logic lab=cap}
C {devices/lab_pin.sym} -190 380 0 0 {name=p4 sig_type=std_logic lab=discharge}
C {devices/lab_pin.sym} -340 -140 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 -140 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 240 -30 0 1 {name=l3}
C {devices/lab_pin.sym} 220 -30 1 0 {name=p5 sig_type=std_logic lab=do_out}
C {devices/code.sym} -810 300 0 0 {name=INCLUDES only_toplevel=false value=
"
.include ~/projects/tt06_555/xsch/ip/timers/timer_core/timer_core_pex.spice
"}
C {ip/timers/timer_core/timer_core_pex.sym} 0 10 0 0 {name=X_TIMER_CORE}
