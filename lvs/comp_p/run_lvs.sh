cp ../../mag/comp_p.spice ./comp_p_layout_lvs.spice
cp ~/.xschem/simulations/comp_p.spice ./comp_p_schematic.spice

netgen -batch lvs "comp_p_layout_lvs.spice comp_p" "comp_p_schematic.spice comp_p" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
