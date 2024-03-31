v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Top Level Cell for TinyTapeout06} -730 -600 0 0 1 1 {}
N 230 -180 230 -150 {
lab=VPWR}
N 230 90 230 120 {
lab=VGND}
N 0 10 30 10 {
lab=ua[1]}
N 0 -70 30 -70 {
lab=ua[0]}
N 430 -70 460 -70 {
lab=uo_out[0]}
N 430 10 460 10 {
lab=ua[2]}
N 0 40 30 40 {
lab=ui_in[0]}
C {devices/iopin.sym} 230 -180 3 0 {name=p43 lab=VPWR}
C {devices/iopin.sym} 230 120 1 0 {name=p44 lab=VGND}
C {borders/border_s.sym} 440 290 0 0 {
lab=uio_out[5]}
C {devices/ipin.sym} -540 -380 0 0 {name=p0 lab=clk}
C {devices/ipin.sym} -540 -360 0 0 {name=p1 lab=ena}
C {devices/ipin.sym} -540 -340 0 0 {name=p2 lab=rst_n}
C {devices/ipin.sym} 0 -70 0 0 {name=p3 lab=ua[0]}
C {devices/ipin.sym} 0 10 0 0 {name=p4 lab=ua[1]}
C {devices/ipin.sym} -540 -260 0 0 {name=p6 lab=ua[3]}
C {devices/ipin.sym} -540 -240 0 0 {name=p7 lab=ua[4]}
C {devices/ipin.sym} -540 -220 0 0 {name=p14 lab=ua[5]}
C {devices/ipin.sym} -540 -200 0 0 {name=p9 lab=ua[6]}
C {devices/ipin.sym} -540 -180 0 0 {name=p10 lab=ua[7]}
C {devices/ipin.sym} 0 40 0 0 {name=p11 lab=ui_in[0]}
C {devices/ipin.sym} -540 -140 0 0 {name=p12 lab=ui_in[1]}
C {devices/ipin.sym} -540 -120 0 0 {name=p13 lab=ui_in[2]}
C {devices/ipin.sym} -540 -100 0 0 {name=p8 lab=ui_in[3]}
C {devices/ipin.sym} -540 -80 0 0 {name=p15 lab=ui_in[4]}
C {devices/ipin.sym} -540 -60 0 0 {name=p16 lab=ui_in[5]}
C {devices/ipin.sym} -540 -40 0 0 {name=p17 lab=ui_in[6]}
C {devices/ipin.sym} -540 -20 0 0 {name=p18 lab=ui_in[7]}
C {devices/ipin.sym} -540 0 0 0 {name=p19 lab=uio_in[0]}
C {devices/ipin.sym} -540 20 0 0 {name=p20 lab=uio_in[1]}
C {devices/ipin.sym} -540 40 0 0 {name=p21 lab=uio_in[2]}
C {devices/ipin.sym} -540 60 0 0 {name=p22 lab=uio_in[3]}
C {devices/ipin.sym} -540 80 0 0 {name=p23 lab=uio_in[4]}
C {devices/ipin.sym} -540 100 0 0 {name=p24 lab=uio_in[5]}
C {devices/ipin.sym} -540 120 0 0 {name=p25 lab=uio_in[6]}
C {devices/ipin.sym} -540 140 0 0 {name=p26 lab=uio_in[7]}
C {devices/opin.sym} -420 -380 0 0 {name=p27 lab=uio_oe[0]}
C {devices/opin.sym} -420 -360 0 0 {name=p28 lab=uio_oe[1]}
C {devices/opin.sym} -420 -340 0 0 {name=p29 lab=uio_oe[2]}
C {devices/opin.sym} -420 -320 0 0 {name=p30 lab=uio_oe[3]}
C {devices/opin.sym} -420 -300 0 0 {name=p31 lab=uio_oe[4]}
C {devices/opin.sym} -420 -280 0 0 {name=p32 lab=uio_oe[5]}
C {devices/opin.sym} -420 -260 0 0 {name=p33 lab=uio_oe[6]}
C {devices/opin.sym} -420 -240 0 0 {name=p34 lab=uio_oe[7]}
C {devices/opin.sym} 460 -70 0 0 {name=p35 lab=uo_out[0]}
C {devices/opin.sym} -420 -200 0 0 {name=p36 lab=uo_out[1]}
C {devices/opin.sym} -420 -180 0 0 {name=p37 lab=uo_out[2]}
C {devices/opin.sym} -420 -160 0 0 {name=p38 lab=uo_out[3]}
C {devices/opin.sym} -420 -140 0 0 {name=p39 lab=uo_out[4]}
C {devices/opin.sym} -420 -120 0 0 {name=p40 lab=uo_out[5]}
C {devices/opin.sym} -420 -100 0 0 {name=p41 lab=uo_out[6]}
C {devices/opin.sym} -420 -80 0 0 {name=p42 lab=uo_out[7]}
C {devices/noconn.sym} -540 -380 0 1 {name=l1}
C {devices/noconn.sym} -540 -360 0 1 {name=l2}
C {devices/noconn.sym} -540 -340 0 1 {name=l3}
C {devices/noconn.sym} -540 -260 0 1 {name=l7}
C {devices/noconn.sym} -540 -200 0 1 {name=l8}
C {devices/noconn.sym} -540 -160 0 1 {name=l25}
C {devices/noconn.sym} -540 -140 0 1 {name=l26}
C {devices/noconn.sym} -540 -120 0 1 {name=l27}
C {devices/noconn.sym} -540 -100 0 1 {name=l28}
C {devices/noconn.sym} -540 -80 0 1 {name=l29}
C {devices/noconn.sym} -540 -60 0 1 {name=l30}
C {devices/noconn.sym} -540 -40 0 1 {name=l31}
C {devices/noconn.sym} -540 -20 0 1 {name=l32}
C {devices/noconn.sym} -540 0 0 1 {name=l33}
C {devices/noconn.sym} -540 20 0 1 {name=l34}
C {devices/noconn.sym} -540 40 0 1 {name=l35}
C {devices/noconn.sym} -540 60 0 1 {name=l36}
C {devices/noconn.sym} -540 80 0 1 {name=l37}
C {devices/noconn.sym} -540 100 0 1 {name=l38}
C {devices/noconn.sym} -540 120 0 1 {name=l39}
C {devices/noconn.sym} -540 140 0 1 {name=l40}
C {devices/noconn.sym} -420 -380 0 0 {name=l41}
C {devices/noconn.sym} -420 -360 0 0 {name=l42}
C {devices/noconn.sym} -420 -340 0 0 {name=l43}
C {devices/noconn.sym} -420 -320 0 0 {name=l44}
C {devices/noconn.sym} -420 -300 0 0 {name=l45}
C {devices/noconn.sym} -420 -280 0 0 {name=l46}
C {devices/noconn.sym} -420 -260 0 0 {name=l47}
C {devices/noconn.sym} -420 -240 0 0 {name=l48}
C {devices/noconn.sym} -420 -200 0 0 {name=l50}
C {devices/noconn.sym} -420 -180 0 0 {name=l51}
C {devices/noconn.sym} -420 -160 0 0 {name=l52}
C {devices/noconn.sym} -420 -140 0 0 {name=l53}
C {devices/noconn.sym} -420 -120 0 0 {name=l54}
C {devices/noconn.sym} -420 -100 0 0 {name=l55}
C {devices/noconn.sym} -420 -80 0 0 {name=l56}
C {devices/iopin.sym} -410 -40 0 0 {name=p45 lab=uio_out[0]}
C {devices/noconn.sym} -410 -40 0 0 {name=l9}
C {devices/iopin.sym} -410 -20 0 0 {name=p46 lab=uio_out[1]}
C {devices/noconn.sym} -410 -20 0 0 {name=l10}
C {devices/iopin.sym} -410 0 0 0 {name=p47 lab=uio_out[2]}
C {devices/noconn.sym} -410 0 0 0 {name=l11}
C {devices/iopin.sym} -410 20 0 0 {name=p48 lab=uio_out[3]}
C {devices/noconn.sym} -410 20 0 0 {name=l12}
C {devices/iopin.sym} -410 40 0 0 {name=p49 lab=uio_out[4]}
C {devices/noconn.sym} -410 40 0 0 {name=l13}
C {devices/iopin.sym} -410 60 0 0 {name=p50 lab=uio_out[5]}
C {devices/noconn.sym} -410 60 0 0 {name=l14}
C {devices/iopin.sym} -410 80 0 0 {name=p51 lab=uio_out[6]}
C {devices/noconn.sym} -410 80 0 0 {name=l15}
C {devices/iopin.sym} -410 100 0 0 {name=p52 lab=uio_out[7]}
C {devices/noconn.sym} -410 100 0 0 {name=l16}
C {ip/timers/timer_core/timer_core.sym} 230 -30 0 0 {name=X_TIMER_CORE

name=V_THRESH_I dir=in sim_pinnumber=0
name=V_DISCH_O dir=out sim_pinnumber=1
name=DO_OUT dir=out sim_pinnumber=2
name=VSS dir=inout sim_pinnumber=3
name=VDD dir=inout sim_pinnumber=4
name=V_TRIG_B_I dir=inout sim_pinnumber=5
}
C {devices/noconn.sym} -540 -220 0 1 {name=l17}
C {devices/noconn.sym} -540 -240 0 1 {name=l18}
C {devices/noconn.sym} -540 -180 0 1 {name=l4}
C {devices/opin.sym} 460 10 0 0 {name=p5 lab=ua[2]}
