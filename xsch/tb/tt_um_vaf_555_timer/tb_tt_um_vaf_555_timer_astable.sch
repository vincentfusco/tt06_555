v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -690 -740 -690 -720 {
lab=GND}
N -690 -830 -690 -800 {
lab=VDD}
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
N -240 -860 -240 -690 {
lab=cap}
N -230 -940 50 -940 {
lab=cap}
N -80 -820 -80 -430 {
lab=discharge}
N 60 -940 80 -940 {
lab=cap}
N 60 -960 60 -940 {
lab=cap}
N 60 -960 80 -960 {
lab=cap}
N -240 -940 -240 -860 {
lab=cap}
N -240 -940 -230 -940 {
lab=cap}
N 50 -940 60 -940 {
lab=cap}
N 20 -820 20 -800 {
lab=VDD}
N 20 -800 80 -800 {
lab=VDD}
N -80 -920 -80 -820 {
lab=discharge}
N -80 -920 80 -920 {
lab=discharge}
N 230 350 230 370 {
lab=GND}
N -340 -60 -340 20 {
lab=discharge_pex}
N -340 -150 -340 -120 {
lab=VDD}
N -340 80 -340 140 {
lab=cap_pex}
N -340 200 -340 260 {
lab=GND}
N -340 110 -240 110 {
lab=cap_pex}
N -450 -10 -450 370 {
lab=discharge_pex}
N -450 -10 -340 -10 {
lab=discharge_pex}
N 380 100 420 100 {
lab=do_out_pex}
N 230 -280 230 -250 {
lab=VDD}
N 230 330 230 350 {
lab=GND}
N 420 100 480 100 {
lab=do_out_pex}
N -450 370 -150 370 {
lab=discharge_pex}
N -150 370 -80 370 {
lab=discharge_pex}
N -240 -60 -240 110 {
lab=cap_pex}
N -230 -140 50 -140 {
lab=cap_pex}
N -80 -20 -80 370 {
lab=discharge_pex}
N 60 -140 80 -140 {
lab=cap_pex}
N 60 -160 60 -140 {
lab=cap_pex}
N 60 -160 80 -160 {
lab=cap_pex}
N -240 -140 -240 -60 {
lab=cap_pex}
N -240 -140 -230 -140 {
lab=cap_pex}
N 50 -140 60 -140 {
lab=cap_pex}
N 20 -20 20 0 {
lab=VDD}
N 20 0 80 0 {
lab=VDD}
N -80 -120 -80 -20 {
lab=discharge_pex}
N -80 -120 80 -120 {
lab=discharge_pex}
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
C {devices/code.sym} -930 -700 0 0 {name=SAVES only_toplevel=false value=
"
.save v(do_out) v(discharge) v(cap) v(cap_pex)
=

.savecurrents
"}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex.sym} 230 40 0 0 {name=x2}
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
C {devices/noconn.sym} 80 -900 0 0 {name=l99}
C {devices/noconn.sym} 80 -880 0 0 {name=l100}
C {devices/noconn.sym} 80 -780 0 0 {name=l101}
C {ip/top/tt_um_vaf_555_timer/tt_um_vaf_555_timer.sym} 230 -760 0 0 {name=x1}
C {devices/lab_pin.sym} 20 -820 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 80 -860 0 0 {name=l96}
C {devices/noconn.sym} 80 -840 0 0 {name=l97}
C {devices/noconn.sym} 80 -820 0 0 {name=l98}
C {devices/gnd.sym} 230 370 0 0 {name=l1 lab=GND}
C {devices/res.sym} -340 -90 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -340 50 0 0 {name=R2
value=47k
footprint=1206
device=resistor
m=1}
C {devices/capa-2.sym} -340 170 0 0 {name=C1
m=1
value=10n
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} -340 260 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -340 -150 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -280 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 480 100 0 1 {name=l3}
C {devices/noconn.sym} 380 -220 0 1 {name=l6}
C {devices/noconn.sym} 380 -200 0 1 {name=l7}
C {devices/noconn.sym} 380 -180 0 1 {name=l8}
C {devices/noconn.sym} 380 -160 0 1 {name=l9}
C {devices/noconn.sym} 380 -140 0 1 {name=l10}
C {devices/noconn.sym} 380 -120 0 1 {name=l11}
C {devices/noconn.sym} 380 -100 0 1 {name=l12}
C {devices/noconn.sym} 380 -80 0 1 {name=l13}
C {devices/noconn.sym} 380 -60 0 1 {name=l14}
C {devices/noconn.sym} 380 20 0 1 {name=l25}
C {devices/noconn.sym} 380 0 0 1 {name=l29}
C {devices/noconn.sym} 380 -20 0 1 {name=l30}
C {devices/noconn.sym} 380 -40 0 1 {name=l31}
C {devices/lab_wire.sym} -280 110 0 0 {name=p3 sig_type=std_logic lab=cap_pex}
C {devices/lab_wire.sym} -230 370 0 0 {name=p4 sig_type=std_logic lab=discharge_pex}
C {devices/lab_wire.sym} 460 100 0 0 {name=p6 sig_type=std_logic lab=do_out_pex}
C {devices/noconn.sym} 380 80 0 1 {name=l45}
C {devices/noconn.sym} 380 60 0 1 {name=l46}
C {devices/noconn.sym} 380 40 0 1 {name=l47}
C {devices/noconn.sym} 380 160 0 1 {name=l50}
C {devices/noconn.sym} 380 140 0 1 {name=l51}
C {devices/noconn.sym} 380 120 0 1 {name=l52}
C {devices/noconn.sym} 380 220 0 1 {name=l53}
C {devices/noconn.sym} 380 200 0 1 {name=l54}
C {devices/noconn.sym} 380 180 0 1 {name=l55}
C {devices/noconn.sym} 380 240 0 1 {name=l56}
C {devices/noconn.sym} 80 220 0 0 {name=l57}
C {devices/noconn.sym} 80 200 0 0 {name=l58}
C {devices/noconn.sym} 80 180 0 0 {name=l59}
C {devices/noconn.sym} 80 280 0 0 {name=l60}
C {devices/noconn.sym} 80 260 0 0 {name=l61}
C {devices/noconn.sym} 80 240 0 0 {name=l62}
C {devices/noconn.sym} 80 300 0 0 {name=l63}
C {devices/noconn.sym} 80 80 0 0 {name=l64}
C {devices/noconn.sym} 80 60 0 0 {name=l65}
C {devices/noconn.sym} 80 40 0 0 {name=l66}
C {devices/noconn.sym} 80 140 0 0 {name=l67}
C {devices/noconn.sym} 80 120 0 0 {name=l68}
C {devices/noconn.sym} 80 100 0 0 {name=l69}
C {devices/noconn.sym} 80 160 0 0 {name=l70}
C {devices/noconn.sym} 80 -180 0 0 {name=l71}
C {devices/noconn.sym} 80 -200 0 0 {name=l72}
C {devices/noconn.sym} 80 -220 0 0 {name=l73}
C {devices/noconn.sym} 80 -100 0 0 {name=l74}
C {devices/noconn.sym} 80 -80 0 0 {name=l75}
C {devices/noconn.sym} 80 20 0 0 {name=l76}
C {devices/lab_pin.sym} 20 -20 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 80 -60 0 0 {name=l77}
C {devices/noconn.sym} 80 -40 0 0 {name=l78}
C {devices/noconn.sym} 80 -20 0 0 {name=l79}
