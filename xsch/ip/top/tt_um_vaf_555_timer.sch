v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {ua[0]} -330 -70 0 0 0.4 0.4 {}
T {ua[1]} -330 10 0 0 0.4 0.4 {}
T {uo[0]} 260 -70 0 0 0.4 0.4 {}
T {ua[1]} 260 10 0 0 0.4 0.4 {}
T {Top Level Cell for TinyTapeout06} -780 -490 0 0 1 1 {}
N 0 -140 0 -110 {
lab=VPWR}
N 0 130 0 160 {
lab=VGND}
N -230 50 -200 50 {
lab=V_TRIG_B_I}
N -230 -30 -200 -30 {
lab=V_THRESH_I}
N 200 -30 230 -30 {
lab=DO_OUT}
N 200 50 230 50 {
lab=V_DISCH_O}
C {devices/iopin.sym} 0 -140 3 0 {name=p1 lab=VPWR}
C {devices/iopin.sym} 0 160 1 0 {name=p2 lab=VGND}
C {devices/opin.sym} 230 -30 0 0 {name=p3 lab=DO_OUT}
C {devices/ipin.sym} -230 -30 0 0 {name=p4 lab=V_THRESH_I}
C {devices/ipin.sym} -230 50 0 0 {name=p5 lab=V_TRIG_B_I}
C {devices/opin.sym} 230 50 0 0 {name=p6 lab=V_DISCH_O}
C {borders/border_s.sym} 370 350 0 0 {}
C {ip/timers/timer_core.sym} 0 10 0 0 {name=X_TIMER}
