cp ../../mag/timer_core.spice ./timer_core_layout_lvs.spice
cp ~/.xschem/simulations/timer_core.spice ./timer_core_schematic_lvs.spice

netgen -batch lvs "timer_core_layout_lvs.spice timer_core" "timer_core_schematic_lvs.spice timer_core" /opt/pdk/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl | tee netgen_run_log.txt
