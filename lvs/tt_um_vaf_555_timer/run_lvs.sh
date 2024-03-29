cp ../../mag/tt_um_vaf_555_timer.spice ./tt_um_vaf_555_timer_layout_lvs.spice
cp ~/.xschem/simulations/tt_um_vaf_555_timer.spice ./tt_um_vaf_555_timer_schematic_lvs.spice

netgen -batch lvs "tt_um_vaf_555_timer_layout_lvs.spice tt_um_vaf_555_timer" "tt_um_vaf_555_timer_schematic_lvs.spice tt_um_vaf_555_timer" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
