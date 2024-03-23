v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Ngspice Tutorial 2: Using the .control statement.} -470 -420 0 0 0.4 0.4 {}
T {Running a transient simulation with the the tran command inside of a .control block.

Using this to allow multiple simulations in a single run.} -470 -380 0 0 0.4 0.4 {}
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
set wr_vecnames
set wr_singlescale

let mc_runs = 10
let run = 1

dowhile run <= mc_runs

	tran 100p 500n						; simulation command 1
	set xbrushwidth=2						; set linewidth of the graph
	write $inputdir/ngspice_tut2_mc_tran_\{$&run\}.txt v(in) v(out)
	reset

	dc vin 0 1.8 0.01						; simulation command 2
	write $inputdir/ngspice_tut2_mc_dc_\{$&run\}.txt v(out)
	reset
	let run = run + 1;
end
plot dc1.v(out) dc2.v(out) dc3.v(out) dc4.v(out) dc5.v(out) dc6.v(out) dc7.v(out) dc8.v(out) dc9.v(out) dc10.v(out)
.endc
.end

"}
C {sky130_fd_pr/corner.sym} -540 -20 0 0 {name=CORNER only_toplevel=false corner=tt_mm
*.param mc_mm_switch=1
*.param mc_pr_switch=1

*.param MC_SWITCH=1.0
*.option wnflag=1

}
C {ip/logic/inv.sym} 0 0 0 0 {name=X1}
C {devices/noconn.sym} 100 0 2 0 {name=l6}
