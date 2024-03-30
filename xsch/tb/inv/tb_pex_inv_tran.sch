v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N -80 300 -40 300 {
lab=in}
N 0 340 0 360 {
lab=GND}
N 0 240 0 260 {
lab=VDD}
N 80 300 100 300 {
lab=out_pex}
C {devices/vsource.sym} -80 70 0 0 {name=Vin value="pulse(0 1.8 95n 2n 2n 90n 180n)" savecurrent=false}
C {devices/vdd.sym} 0 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 0 60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 90 0 1 0 {name=p1 sig_type=analog lab=out}
C {devices/gnd.sym} -80 120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -80 0 0 0 {name=p2 sig_type=analog lab=in}
C {devices/vsource.sym} -300 70 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vdd.sym} -300 20 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -300 120 0 0 {name=l5 lab=GND}
C {devices/code.sym} -540 -180 0 0 {name=SIMULATOR only_toplevel=false value=
"

* control language script

.control
set xbrushwidth=2

tran 100p 500n               ; simulation command 1

plot v(in) v(out) v(out_pex)

reset

dc vin 0 2 0.01              ; simulation command 2

plot v(out) v(out_pex)               

.endc
.end

"}
C {sky130_fd_pr/corner.sym} -540 -20 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/noconn.sym} 100 0 2 0 {name=l6}
C {ip/logic/inv/inv.sym} 0 0 0 0 {name=X1_SCHEM}
C {devices/vdd.sym} 0 240 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 0 360 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 90 300 1 0 {name=p3 sig_type=analog lab=out_pex}
C {devices/lab_pin.sym} -80 300 0 0 {name=p4 sig_type=analog lab=in}
C {devices/noconn.sym} 100 300 2 0 {name=l10}
C {devices/code.sym} -540 140 0 0 {name=INCLUDES only_toplevel=false value=
"
.include ~/projects/tt06_555/xsch/ip/logic/inv/inv_pex.spice
"}
C {ip/logic/inv/inv_pex.sym} 0 300 0 0 {name=X1_PEX}
