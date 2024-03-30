v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -690 -740 -690 -720 {
lab=GND}
N 230 360 230 380 {
lab=GND}
N -340 -50 -340 30 {
lab=discharge_pex}
N -340 -140 -340 -110 {
lab=VDD}
N -340 90 -340 150 {
lab=cap_pex}
N -340 210 -340 270 {
lab=GND}
N -340 120 -240 120 {
lab=cap_pex}
N -450 -0 -450 380 {
lab=discharge_pex}
N -450 -0 -340 -0 {
lab=discharge_pex}
N 380 110 420 110 {
lab=do_out_pex}
N -690 -830 -690 -800 {
lab=VDD}
N 230 -270 230 -240 {
lab=VDD}
N 230 340 230 360 {
lab=GND}
N 420 110 480 110 {
lab=do_out_pex}
N -450 380 -150 380 {
lab=discharge_pex}
N -150 380 -80 380 {
lab=discharge_pex}
N 40 -50 80 -50 {
lab=cap_pex}
N 40 -50 40 -30 {
lab=cap_pex}
N 40 -30 80 -30 {
lab=cap_pex}
N -240 -50 -240 120 {
lab=cap_pex}
N -240 -50 40 -50 {
lab=cap_pex}
N -80 -10 80 -10 {
lab=discharge_pex}
N -80 -10 -80 380 {
lab=discharge_pex}
N 230 -450 230 -430 {
lab=GND}
N -340 -860 -340 -780 {
lab=discharge}
N -340 -950 -340 -920 {
lab=VDD}
N -340 -720 -340 -660 {
lab=cap}
N -340 -600 -340 -540 {
lab=GND}
N -340 -690 -240 -690 {
lab=cap}
N -450 -810 -450 -430 {
lab=discharge}
N -450 -810 -340 -810 {
lab=discharge}
N 380 -700 420 -700 {
lab=do_out}
N 230 -1080 230 -1050 {
lab=VDD}
N 230 -470 230 -450 {
lab=GND}
N 420 -700 480 -700 {
lab=do_out}
N -450 -430 -150 -430 {
lab=discharge}
N -150 -430 -80 -430 {
lab=discharge}
N 40 -860 80 -860 {
lab=cap}
N 40 -860 40 -840 {
lab=cap}
N 40 -840 80 -840 {
lab=cap}
N -240 -860 -240 -690 {
lab=cap}
N -240 -860 40 -860 {
lab=cap}
N -80 -820 80 -820 {
lab=discharge}
N -80 -820 -80 -430 {
lab=discharge}
C {devices/vsource.sym} -690 -770 0 0 {name=V1 value=1.8 savecurrent=true}
C {devices/vdd.sym} -690 -830 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -690 -720 0 0 {name=l5 lab=GND}
C {devices/code.sym} -930 -1030 0 0 {name=SIMULATOR only_toplevel=false value=
"

.ic v(cap) = 0
.ic v(cap_pex) = 0

.control
	tran 1u 10m

	plot v(cap) v(cap_pex)

.endc
.end
"}
C {sky130_fd_pr/corner.sym} -930 -860 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/gnd.sym} 230 380 0 0 {name=l1 lab=GND}
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
C {devices/code.sym} -930 -700 0 0 {name=SAVES only_toplevel=false value=
"
.save v(do_out) v(discharge) v(cap) v(cap_pex)
=

.savecurrents
"}
C {devices/lab_pin.sym} -340 -140 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -270 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 480 110 0 1 {name=l3}
C {devices/noconn.sym} 380 -210 0 1 {name=l6}
C {devices/noconn.sym} 380 -190 0 1 {name=l7}
C {devices/noconn.sym} 380 -170 0 1 {name=l8}
C {devices/noconn.sym} 380 -150 0 1 {name=l9}
C {devices/noconn.sym} 380 -130 0 1 {name=l10}
C {devices/noconn.sym} 380 -110 0 1 {name=l11}
C {devices/noconn.sym} 380 -90 0 1 {name=l12}
C {devices/noconn.sym} 380 -70 0 1 {name=l13}
C {devices/noconn.sym} 380 -50 0 1 {name=l14}
C {devices/noconn.sym} 380 30 0 1 {name=l25}
C {devices/noconn.sym} 380 10 0 1 {name=l29}
C {devices/noconn.sym} 380 -10 0 1 {name=l30}
C {devices/noconn.sym} 380 -30 0 1 {name=l31}
C {devices/lab_wire.sym} -340 100 3 0 {name=p6 sig_type=std_logic lab=cap_pex}
C {devices/lab_wire.sym} -230 380 0 0 {name=p3 sig_type=std_logic lab=discharge_pex}
C {devices/lab_wire.sym} 460 110 0 0 {name=p4 sig_type=std_logic lab=do_out_pex}
C {devices/noconn.sym} 380 90 0 1 {name=l45}
C {devices/noconn.sym} 380 70 0 1 {name=l46}
C {devices/noconn.sym} 380 50 0 1 {name=l47}
C {devices/noconn.sym} 380 170 0 1 {name=l50}
C {devices/noconn.sym} 380 150 0 1 {name=l51}
C {devices/noconn.sym} 380 130 0 1 {name=l52}
C {devices/noconn.sym} 380 230 0 1 {name=l53}
C {devices/noconn.sym} 380 210 0 1 {name=l54}
C {devices/noconn.sym} 380 190 0 1 {name=l55}
C {devices/noconn.sym} 380 250 0 1 {name=l56}
C {devices/noconn.sym} 80 230 0 0 {name=l57}
C {devices/noconn.sym} 80 210 0 0 {name=l58}
C {devices/noconn.sym} 80 190 0 0 {name=l59}
C {devices/noconn.sym} 80 290 0 0 {name=l60}
C {devices/noconn.sym} 80 270 0 0 {name=l61}
C {devices/noconn.sym} 80 250 0 0 {name=l62}
C {devices/noconn.sym} 80 310 0 0 {name=l63}
C {devices/noconn.sym} 80 90 0 0 {name=l64}
C {devices/noconn.sym} 80 70 0 0 {name=l65}
C {devices/noconn.sym} 80 50 0 0 {name=l66}
C {devices/noconn.sym} 80 150 0 0 {name=l67}
C {devices/noconn.sym} 80 130 0 0 {name=l68}
C {devices/noconn.sym} 80 110 0 0 {name=l69}
C {devices/noconn.sym} 80 170 0 0 {name=l70}
C {devices/noconn.sym} 80 -170 0 0 {name=l71}
C {devices/noconn.sym} 80 -190 0 0 {name=l72}
C {devices/noconn.sym} 80 -210 0 0 {name=l73}
C {devices/noconn.sym} 80 -110 0 0 {name=l74}
C {devices/noconn.sym} 80 -130 0 0 {name=l75}
C {devices/noconn.sym} 80 -150 0 0 {name=l76}
C {devices/noconn.sym} 80 -90 0 0 {name=l77}
C {devices/noconn.sym} 80 -70 0 0 {name=l78}
C {devices/noconn.sym} 80 30 0 0 {name=l79}
C {devices/noconn.sym} 80 10 0 0 {name=l80}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex.sym} 230 50 0 0 {name=x2}
C {devices/code.sym} -930 -530 0 0 {name=INCLUDES only_toplevel=false value=
"
.include ~/projects/tt06_555/xsch/ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex.spice
"}
C {devices/gnd.sym} 230 -430 0 0 {name=l15 lab=GND}
C {devices/res.sym} -340 -890 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -340 -750 0 0 {name=R4
value=47k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -340 -630 0 0 {name=C2
m=1
value=10n
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -340 -540 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -340 -950 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -1080 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 480 -700 0 1 {name=l17}
C {devices/noconn.sym} 380 -1020 0 1 {name=l18}
C {devices/noconn.sym} 380 -1000 0 1 {name=l19}
C {devices/noconn.sym} 380 -980 0 1 {name=l20}
C {devices/noconn.sym} 380 -960 0 1 {name=l21}
C {devices/noconn.sym} 380 -940 0 1 {name=l22}
C {devices/noconn.sym} 380 -920 0 1 {name=l23}
C {devices/noconn.sym} 380 -900 0 1 {name=l24}
C {devices/noconn.sym} 380 -880 0 1 {name=l26}
C {devices/noconn.sym} 380 -860 0 1 {name=l27}
C {devices/noconn.sym} 380 -780 0 1 {name=l28}
C {devices/noconn.sym} 380 -800 0 1 {name=l32}
C {devices/noconn.sym} 380 -820 0 1 {name=l33}
C {devices/noconn.sym} 380 -840 0 1 {name=l34}
C {devices/lab_wire.sym} -340 -710 3 0 {name=p8 sig_type=std_logic lab=cap}
C {devices/lab_wire.sym} -230 -430 0 0 {name=p9 sig_type=std_logic lab=discharge}
C {devices/lab_wire.sym} 460 -700 0 0 {name=p10 sig_type=std_logic lab=do_out}
C {devices/noconn.sym} 380 -720 0 1 {name=l35}
C {devices/noconn.sym} 380 -740 0 1 {name=l36}
C {devices/noconn.sym} 380 -760 0 1 {name=l37}
C {devices/noconn.sym} 380 -640 0 1 {name=l38}
C {devices/noconn.sym} 380 -660 0 1 {name=l39}
C {devices/noconn.sym} 380 -680 0 1 {name=l40}
C {devices/noconn.sym} 380 -580 0 1 {name=l41}
C {devices/noconn.sym} 380 -600 0 1 {name=l42}
C {devices/noconn.sym} 380 -620 0 1 {name=l43}
C {devices/noconn.sym} 380 -560 0 1 {name=l44}
C {devices/noconn.sym} 80 -580 0 0 {name=l48}
C {devices/noconn.sym} 80 -600 0 0 {name=l49}
C {devices/noconn.sym} 80 -620 0 0 {name=l81}
C {devices/noconn.sym} 80 -520 0 0 {name=l82}
C {devices/noconn.sym} 80 -540 0 0 {name=l83}
C {devices/noconn.sym} 80 -560 0 0 {name=l84}
C {devices/noconn.sym} 80 -500 0 0 {name=l85}
C {devices/noconn.sym} 80 -720 0 0 {name=l86}
C {devices/noconn.sym} 80 -740 0 0 {name=l87}
C {devices/noconn.sym} 80 -760 0 0 {name=l88}
C {devices/noconn.sym} 80 -660 0 0 {name=l89}
C {devices/noconn.sym} 80 -680 0 0 {name=l90}
C {devices/noconn.sym} 80 -700 0 0 {name=l91}
C {devices/noconn.sym} 80 -640 0 0 {name=l92}
C {devices/noconn.sym} 80 -980 0 0 {name=l93}
C {devices/noconn.sym} 80 -1000 0 0 {name=l94}
C {devices/noconn.sym} 80 -1020 0 0 {name=l95}
C {devices/noconn.sym} 80 -920 0 0 {name=l96}
C {devices/noconn.sym} 80 -940 0 0 {name=l97}
C {devices/noconn.sym} 80 -960 0 0 {name=l98}
C {devices/noconn.sym} 80 -900 0 0 {name=l99}
C {devices/noconn.sym} 80 -880 0 0 {name=l100}
C {devices/noconn.sym} 80 -780 0 0 {name=l101}
C {devices/noconn.sym} 80 -800 0 0 {name=l102}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer.sym} 230 -760 0 0 {name=x1}
