cp ../../mag/nand.spice ./nand_layout_lvs.spice
cp ~/.xschem/simulations/nand.spice ./nand_schematic_lvs.spice

netgen -batch lvs "nand_layout_lvs.spice nand" "nand_schematic_lvs.spice nand" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
