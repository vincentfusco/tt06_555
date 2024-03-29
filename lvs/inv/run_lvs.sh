cp ../../mag/inv.spice ./inv_layout_lvs.spice
cp ~/.xschem/simulations/inv.spice ./inv_schematic.spice

netgen -batch lvs "inv_layout_lvs.spice inv" "inv_schematic.spice inv" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
