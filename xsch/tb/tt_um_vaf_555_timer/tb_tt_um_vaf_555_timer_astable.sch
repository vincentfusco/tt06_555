v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -760 -290 -760 -270 {
lab=GND}
N -760 -380 -760 -350 {
lab=VDD}
N 400 -450 400 -430 {
lab=GND}
N -440 -860 -440 -780 {
lab=discharge}
N -440 -950 -440 -920 {
lab=VDD}
N -440 -720 -440 -660 {
lab=cap}
N -440 -600 -440 -540 {
lab=GND}
N -440 -690 -340 -690 {
lab=cap}
N -550 -810 -550 -430 {
lab=discharge}
N -550 -810 -440 -810 {
lab=discharge}
N 820 -700 860 -700 {
lab=do_out}
N 400 -1080 400 -1050 {
lab=VDD}
N 400 -470 400 -450 {
lab=GND}
N 860 -700 920 -700 {
lab=do_out}
N -550 -430 -250 -430 {
lab=discharge}
N -250 -430 -180 -430 {
lab=discharge}
N -340 -860 -340 -690 {
lab=cap}
N -330 -940 -50 -940 {
lab=cap}
N -180 -820 -180 -430 {
lab=discharge}
N -40 -940 -20 -940 {
lab=cap}
N -40 -960 -40 -940 {
lab=cap}
N -40 -960 -20 -960 {
lab=cap}
N -340 -940 -340 -860 {
lab=cap}
N -340 -940 -330 -940 {
lab=cap}
N -50 -940 -40 -940 {
lab=cap}
N -80 -820 -80 -800 {
lab=VDD}
N -80 -800 -20 -800 {
lab=VDD}
N -180 -920 -180 -820 {
lab=discharge}
N -180 -920 -20 -920 {
lab=discharge}
N 400 310 400 330 {
lab=GND}
N -440 -100 -440 -20 {
lab=discharge_extracted}
N -440 -190 -440 -160 {
lab=VDD}
N -440 40 -440 100 {
lab=cap_extracted}
N -440 160 -440 220 {
lab=GND}
N -440 70 -340 70 {
lab=cap_extracted}
N -550 -50 -550 330 {
lab=discharge_extracted}
N -550 -50 -440 -50 {
lab=discharge_extracted}
N 820 60 860 60 {
lab=do_out_extracted}
N 400 -320 400 -290 {
lab=VDD}
N 400 290 400 310 {
lab=GND}
N 860 60 920 60 {
lab=do_out_extracted}
N -550 330 -250 330 {
lab=discharge_extracted}
N -250 330 -180 330 {
lab=discharge_extracted}
N -340 -100 -340 70 {
lab=cap_extracted}
N -330 -180 -50 -180 {
lab=cap_extracted}
N -180 -60 -180 330 {
lab=discharge_extracted}
N -40 -180 -20 -180 {
lab=cap_extracted}
N -40 -200 -40 -180 {
lab=cap_extracted}
N -40 -200 -20 -200 {
lab=cap_extracted}
N -340 -180 -340 -100 {
lab=cap_extracted}
N -340 -180 -330 -180 {
lab=cap_extracted}
N -50 -180 -40 -180 {
lab=cap_extracted}
N -80 -60 -80 -40 {
lab=VDD}
N -80 -40 -20 -40 {
lab=VDD}
N -180 -160 -180 -60 {
lab=discharge_extracted}
N -180 -160 -20 -160 {
lab=discharge_extracted}
N 920 60 1000 60 {
lab=do_out_extracted}
C {devices/vsource.sym} -760 -320 0 0 {name=V1 value=1.8 savecurrent=true}
C {devices/vdd.sym} -760 -380 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -760 -270 0 0 {name=l5 lab=GND}
C {devices/code.sym} -1000 -580 0 0 {name=SIMULATOR only_toplevel=false value=
"

.ic v(cap) = 0
.ic v(cap_pex) = 0

.control
	tran 0.1u 400u

	meas tran thigh trig v(do_out) val=0.9 rise=3 targ v(do_out) val=0.9 fall=4
	meas tran tlow trig v(do_out) val=0.9 fall=4 targ v(do_out) val=0.9 rise=4

	meas tran thigh_ext trig v(do_out_extracted) val=0.9 rise=3 targ v(do_out_extracted) val=0.9 fall=4
	meas tran tlow_ext trig v(do_out_extracted) val=0.9 fall=4 targ v(do_out_extracted) val=0.9 rise=4

	let period_meas = $&thigh + $&tlow;
	let freq_meas = 1/period_meas;
	
	let period_meas_ext = $&thigh_ext + $&tlow_ext;
	let freq_meas_ext = 1/period_meas_ext;
	echo --------------------
	echo Output High Schematic [seconds]: $&thigh
	echo Output Low Schematic [seconds]: $&tlow
	echo Frequency Schematic [Hz]: $&freq_meas
	echo --------------------
	echo Output High Extracted [seconds]: $&thigh_ext
	echo Output Low Extracted [seconds]: $&tlow_ext
	echo Frequency Extracted [Hz]: $&freq_meas_ext
	echo --------------------
	
	plot v(cap) v(do_out) ylabel 'Schematic'
	plot v(cap_extracted) v(do_out_extracted) ylabel 'Extracted'

.endc
.end
"}
C {sky130_fd_pr/corner.sym} -1000 -410 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/code.sym} -1000 -250 0 0 {name=SAVES only_toplevel=false value=
"
.save v(do_out) v(discharge) v(cap) v(cap_extracted) v(do_out_extracted) v(discharge_extracted)
=

.savecurrents
"}
C {devices/code.sym} -1000 -80 0 0 {name=INCLUDES only_toplevel=false value=
"
.include ~/projects/tt06_555/xsch/ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex.spice
"}
C {devices/gnd.sym} 400 -430 0 0 {name=l15 lab=GND}
C {devices/res.sym} -440 -890 0 0 {name=RA
value=1.78k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -440 -750 0 0 {name=RB
value=4.12k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -440 -630 0 0 {name=C1
m=1
value=0.01u
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -440 -540 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -440 -950 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -1080 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 920 -700 0 1 {name=l17}
C {devices/noconn.sym} 820 -1020 0 1 {name=l18}
C {devices/noconn.sym} 820 -1000 0 1 {name=l19}
C {devices/noconn.sym} 820 -980 0 1 {name=l20}
C {devices/noconn.sym} 820 -960 0 1 {name=l21}
C {devices/noconn.sym} 820 -940 0 1 {name=l22}
C {devices/noconn.sym} 820 -920 0 1 {name=l23}
C {devices/noconn.sym} 820 -900 0 1 {name=l24}
C {devices/noconn.sym} 820 -880 0 1 {name=l26}
C {devices/noconn.sym} 820 -860 0 1 {name=l27}
C {devices/noconn.sym} 820 -780 0 1 {name=l28}
C {devices/noconn.sym} 820 -800 0 1 {name=l32}
C {devices/noconn.sym} 820 -820 0 1 {name=l33}
C {devices/noconn.sym} 820 -840 0 1 {name=l34}
C {devices/lab_wire.sym} -270 -940 0 0 {name=p8 sig_type=std_logic lab=cap}
C {devices/lab_wire.sym} -330 -430 0 0 {name=p9 sig_type=std_logic lab=discharge}
C {devices/lab_wire.sym} 900 -700 0 0 {name=p10 sig_type=std_logic lab=do_out}
C {devices/noconn.sym} 820 -720 0 1 {name=l35}
C {devices/noconn.sym} 820 -740 0 1 {name=l36}
C {devices/noconn.sym} 820 -760 0 1 {name=l37}
C {devices/noconn.sym} 820 -640 0 1 {name=l38}
C {devices/noconn.sym} 820 -660 0 1 {name=l39}
C {devices/noconn.sym} 820 -680 0 1 {name=l40}
C {devices/noconn.sym} 820 -580 0 1 {name=l41}
C {devices/noconn.sym} 820 -600 0 1 {name=l42}
C {devices/noconn.sym} 820 -620 0 1 {name=l43}
C {devices/noconn.sym} 820 -560 0 1 {name=l44}
C {devices/noconn.sym} -20 -580 0 0 {name=l48}
C {devices/noconn.sym} -20 -600 0 0 {name=l49}
C {devices/noconn.sym} -20 -620 0 0 {name=l81}
C {devices/noconn.sym} -20 -520 0 0 {name=l82}
C {devices/noconn.sym} -20 -540 0 0 {name=l83}
C {devices/noconn.sym} -20 -560 0 0 {name=l84}
C {devices/noconn.sym} -20 -500 0 0 {name=l85}
C {devices/noconn.sym} -20 -720 0 0 {name=l86}
C {devices/noconn.sym} -20 -740 0 0 {name=l87}
C {devices/noconn.sym} -20 -760 0 0 {name=l88}
C {devices/noconn.sym} -20 -660 0 0 {name=l89}
C {devices/noconn.sym} -20 -680 0 0 {name=l90}
C {devices/noconn.sym} -20 -700 0 0 {name=l91}
C {devices/noconn.sym} -20 -640 0 0 {name=l92}
C {devices/noconn.sym} -20 -980 0 0 {name=l93}
C {devices/noconn.sym} -20 -1000 0 0 {name=l94}
C {devices/noconn.sym} -20 -1020 0 0 {name=l95}
C {devices/noconn.sym} -20 -900 0 0 {name=l99}
C {devices/noconn.sym} -20 -880 0 0 {name=l100}
C {devices/noconn.sym} -20 -780 0 0 {name=l101}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer.sym} 400 -760 0 0 {name=x1}
C {devices/lab_pin.sym} -80 -820 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} -20 -860 0 0 {name=l96}
C {devices/noconn.sym} -20 -840 0 0 {name=l97}
C {devices/noconn.sym} -20 -820 0 0 {name=l98}
C {devices/gnd.sym} 400 330 0 0 {name=l1 lab=GND}
C {devices/res.sym} -440 -130 0 0 {name=RA1
value=1.78k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -440 10 0 0 {name=RB1
value=4.12k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -440 130 0 0 {name=C2
m=1
value=0.01u
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -440 220 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -440 -190 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -320 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 1000 60 0 1 {name=l3}
C {devices/noconn.sym} 820 -260 0 1 {name=l6}
C {devices/noconn.sym} 820 -240 0 1 {name=l7}
C {devices/noconn.sym} 820 -220 0 1 {name=l8}
C {devices/noconn.sym} 820 -200 0 1 {name=l9}
C {devices/noconn.sym} 820 -180 0 1 {name=l10}
C {devices/noconn.sym} 820 -160 0 1 {name=l11}
C {devices/noconn.sym} 820 -140 0 1 {name=l12}
C {devices/noconn.sym} 820 -120 0 1 {name=l13}
C {devices/noconn.sym} 820 -100 0 1 {name=l14}
C {devices/noconn.sym} 820 -20 0 1 {name=l25}
C {devices/noconn.sym} 820 -40 0 1 {name=l29}
C {devices/noconn.sym} 820 -60 0 1 {name=l30}
C {devices/noconn.sym} 820 -80 0 1 {name=l31}
C {devices/lab_wire.sym} -220 -180 0 0 {name=p3 sig_type=std_logic lab=cap_extracted}
C {devices/lab_wire.sym} -330 330 0 0 {name=p4 sig_type=std_logic lab=discharge_extracted}
C {devices/lab_wire.sym} 980 60 0 0 {name=p6 sig_type=std_logic lab=do_out_extracted}
C {devices/noconn.sym} 820 40 0 1 {name=l45}
C {devices/noconn.sym} 820 20 0 1 {name=l46}
C {devices/noconn.sym} 820 0 0 1 {name=l47}
C {devices/noconn.sym} 820 120 0 1 {name=l50}
C {devices/noconn.sym} 820 100 0 1 {name=l51}
C {devices/noconn.sym} 820 80 0 1 {name=l52}
C {devices/noconn.sym} 820 180 0 1 {name=l53}
C {devices/noconn.sym} 820 160 0 1 {name=l54}
C {devices/noconn.sym} 820 140 0 1 {name=l55}
C {devices/noconn.sym} 820 200 0 1 {name=l56}
C {devices/noconn.sym} -20 180 0 0 {name=l57}
C {devices/noconn.sym} -20 160 0 0 {name=l58}
C {devices/noconn.sym} -20 140 0 0 {name=l59}
C {devices/noconn.sym} -20 240 0 0 {name=l60}
C {devices/noconn.sym} -20 220 0 0 {name=l61}
C {devices/noconn.sym} -20 200 0 0 {name=l62}
C {devices/noconn.sym} -20 260 0 0 {name=l63}
C {devices/noconn.sym} -20 40 0 0 {name=l64}
C {devices/noconn.sym} -20 20 0 0 {name=l65}
C {devices/noconn.sym} -20 0 0 0 {name=l66}
C {devices/noconn.sym} -20 100 0 0 {name=l67}
C {devices/noconn.sym} -20 80 0 0 {name=l68}
C {devices/noconn.sym} -20 60 0 0 {name=l69}
C {devices/noconn.sym} -20 120 0 0 {name=l70}
C {devices/noconn.sym} -20 -220 0 0 {name=l71}
C {devices/noconn.sym} -20 -240 0 0 {name=l72}
C {devices/noconn.sym} -20 -260 0 0 {name=l73}
C {devices/noconn.sym} -20 -140 0 0 {name=l74}
C {devices/noconn.sym} -20 -120 0 0 {name=l75}
C {devices/noconn.sym} -20 -20 0 0 {name=l76}
C {devices/lab_pin.sym} -80 -60 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} -20 -100 0 0 {name=l77}
C {devices/noconn.sym} -20 -80 0 0 {name=l78}
C {devices/noconn.sym} -20 -60 0 0 {name=l79}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex.sym} 400 0 0 0 {name=x2}
