v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This testbench sweeps the common-mode voltage of the switch from 0 to VDD.

It plots Ron vs. common-mode by looking at the (very low frequency) input impedance of the switch in an .AC simulation at each DC operating point.} -1080 -640 0 0 0.4 0.4 {}
N -1040 -320 -1040 -310 {
lab=vss}
N -930 -320 -930 -310 {
lab=vdd}
N -1040 -250 -1040 -240 {
lab=GND}
N -930 -250 -930 -240 {
lab=GND}
N -100 -410 -90 -410 {
lab=vdd}
N 30 -480 30 -460 {
lab=vdd}
N 30 -270 30 -250 {
lab=vss}
N -110 -360 -90 -360 {
lab=vtest}
N 170 -360 190 -360 {
lab=vcm}
N -270 -70 -270 -60 {
lab=vcm}
N -270 0 -270 10 {
lab=GND}
N -270 -360 -110 -360 {
lab=vtest}
N -270 -100 330 -100 {
lab=vcm}
N 330 -360 330 -100 {
lab=vcm}
N 190 -360 330 -360 {
lab=vcm}
N -270 -200 -270 -100 {
lab=vcm}
N -270 -100 -270 -70 {
lab=vcm}
N -270 -360 -270 -260 {
lab=vtest}
N -110 -410 -100 -410 {
lab=vdd}
N -110 -440 -110 -410 {
lab=vdd}
C {devices/code.sym} -850 -320 0 0 {name=SIMULATOR only_toplevel=false value=

"
.option method = gear
*.param TEMPGAUSS = agauss(40, 30, 1)
*.option temp = 'TEMPGAUSS'

.control

	let loops = 1000
	let vecvcm = vector(loops)
	let Ron = vector(loops);
	let vcmm = 0
	let index = 0

	repeat $&loops
		alter V_CM_SOURCE $&vcmm;
		ac dec 1 0.1 1
		let index = index+1;

		meas ac itest find i(v_test) at=0.1

		let Ron[index] = 1/mag(itest);
		let vecvcm[index] = vcmm;
		let vcmm = vcmm + 0.0018;
	end

set nolegend
plot Ron vs vecvcm xlabel 'Common-Mode Voltage [V]' ylabel 'Switch Resistance [Ohms]' xlimit 0 1.6

rusage
.endc

.end
"}
C {devices/vsource.sym} -930 -280 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -930 -240 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -930 -320 2 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} -1040 -280 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -1040 -240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1040 -320 2 1 {name=p7 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 30 -480 3 1 {name=p15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 30 -250 1 1 {name=p19 sig_type=std_logic lab=vss}
C {devices/vsource.sym} -270 -30 0 0 {name=V_CM_SOURCE value=0 savecurrent=false}
C {devices/gnd.sym} -270 10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -270 -230 0 0 {name=V_TEST value="0 AC 1" savecurrent=true}
C {devices/lab_pin.sym} -270 -80 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -110 -440 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -270 -360 0 0 {name=p1 sig_type=std_logic lab=vtest}
C {sky130_fd_pr/corner.sym} -690 -320 0 0 {name=CORNER only_toplevel=false corner=TT
}
C {ip/tgates/tgate_1/tgate_1.sym} 30 -360 0 0 {name=x1}
