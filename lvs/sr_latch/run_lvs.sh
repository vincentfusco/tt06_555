cp ../../mag/sr_latch.spice ./sr_latch_layout_lvs.spice
cp ~/.xschem/simulations/sr_latch.spice ./sr_latch_schematic_lvs.spice

netgen -batch lvs "sr_latch_layout_lvs.spice sr_latch" "sr_latch_schematic_lvs.spice sr_latch" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
