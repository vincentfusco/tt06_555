cp ../../mag/sr_latch_rb.spice ./sr_latch_rb_layout_lvs.spice
cp ~/.xschem/simulations/sr_latch_rb.spice ./sr_latch_rb_schematic_lvs.spice

netgen -batch lvs "sr_latch_rb_layout_lvs.spice sr_latch_rb" "sr_latch_rb_schematic_lvs.spice sr_latch_rb" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
