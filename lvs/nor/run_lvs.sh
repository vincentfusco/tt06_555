cp ../../mag/nor.spice ./nor_layout_lvs.spice
cp ~/.xschem/simulations/nor.spice ./nor_schematic_lvs.spice

netgen -batch lvs "nor_layout_lvs.spice nor" "nor_schematic_lvs.spice nor" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
