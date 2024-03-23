v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Ngspice Tutorial 3: Looping a sim; altering supply} -470 -420 0 0 0.4 0.4 {}
T {I modified it to alter the width of the NFET.} -420 -380 0 0 0.4 0.4 {}
N -80 0 -80 20 {
lab=in}
N -80 0 -40 0 {
lab=in}
N -80 20 -80 40 {
lab=in}
N 0 40 0 60 {
lab=GND}
N 0 -60 0 -40 {
lab=VDD}
N 80 -0 100 -0 {
lab=out}
N -80 100 -80 120 {
lab=GND}
N -300 20 -300 40 {
lab=VDD}
N -300 100 -300 120 {
lab=GND}
C {devices/vsource.sym} -80 70 0 0 {name=Vin value="pulse(0 1.8 95n 2n 2n 90n 180n)" savecurrent=false}
C {devices/vdd.sym} 0 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 0 60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 90 0 1 0 {name=p1 sig_type=analog lab=out}
C {devices/gnd.sym} -80 120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -80 0 0 0 {name=p2 sig_type=analog lab=in}
C {devices/vsource.sym} -300 70 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vdd.sym} -300 20 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -300 120 0 0 {name=l5 lab=GND}
C {devices/code.sym} -540 -190 0 0 {name=SIMULATOR only_toplevel=false value=
"

* control language script

.control
let vddd = 1.0									; create a vector vddd and assign a value of 1.2
let width_mn = 1;
repeat 5									; loop start
	;alter VDD $&vddd								; alter the voltage VDD using vector vddd
	;alter @m.x1.xmn.msky130_fd_pr__nfet_01v8[W] = $&width_mn;

	alter m.x1.xmn.msky130_fd_pr__nfet_01v8 w = $&width_mn								;

	dc Vin 0 1.8 0.01								; run the dc simulation
	let vddd = vddd + 0.2								; calculate new voltage value of Vdd by updating vector vddd
	let width_mn = width_mn + 1;
end									; loop end, jump back to loop start

set xbrushwidth=2
plot dc1.v(out) dc2.v(out) dc3.v(out) dc4.v(out) dc5.v(out) dc1.v(in)
set nounits

plot deriv(dc1.v(out)) deriv(dc2.v(out)) deriv(dc3.v(out)) deriv(dc4.v(out)) deriv(dc5.v(out)) ylabel 'Inverter gain V/V' xlabel 'vsweep V'
unset nounits

.endc

.end

"}
C {sky130_fd_pr/corner.sym} -540 -20 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {ip/logic/inv.sym} 0 0 0 0 {name=X1}
C {devices/noconn.sym} 100 0 2 0 {name=l6}
