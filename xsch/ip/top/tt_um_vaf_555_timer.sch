v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {V_THRESH_I} -330 -70 0 0 0.4 0.4 {}
T {V_TRIG_B_I} -330 10 0 0 0.4 0.4 {}
T {DO_OUT} 260 -70 0 0 0.4 0.4 {}
T {V_DISCH_O} 260 10 0 0 0.4 0.4 {}
T {Top Level Cell for TinyTapeout06} -780 -490 0 0 1 1 {}
N 0 -140 0 -110 {
lab=VPWR}
N 0 130 0 160 {
lab=VGND}
N -230 50 -200 50 {
lab=ua[6]}
N -230 -30 -200 -30 {
lab=ua[5]}
N 200 -30 230 -30 {
lab=uo[0]}
N 200 50 230 50 {
lab=ua[7]}
C {devices/iopin.sym} 0 -140 3 0 {name=p1 lab=VPWR}
C {devices/iopin.sym} 0 160 1 0 {name=p2 lab=VGND}
C {devices/opin.sym} 230 -30 0 0 {name=p3 lab=uo[0]}
C {devices/ipin.sym} -230 -30 0 0 {name=p4 lab=ua[5]}
C {devices/ipin.sym} -230 50 0 0 {name=p5 lab=ua[6]}
C {devices/opin.sym} 230 50 0 0 {name=p6 lab=ua[7]}
C {borders/border_s.sym} 370 350 0 0 {}
C {ip/timers/timer_core.sym} 0 10 0 0 {name=X_TIMER}
