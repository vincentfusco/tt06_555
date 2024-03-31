# This script copies the extracted netlist from the Magic directory.
# It puts it in this directory, then it adds _pex to all extracted subcircuits.
# This is necessary because otherwise if you want to run simulations that contain both the schematic
# and the extracted netlists, their names will collide.
# 
# If you add any more blocks, make sure to add their name to the string formatting list below.
#

cp ../../../../mag/tt_um_vaf_555_timer.spice ./tt_um_vaf_555_timer_pex.spice

sed -i 's/comp_p/comp_p_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/inv/inv_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/nor/nor_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/nand/nand_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/sr_latch_rb/sr_latch_rb_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/tt_um_vaf_555_timer/tt_um_vaf_555_timer_pex/g' tt_um_vaf_555_timer_pex.spice
sed -i 's/timer_core/timer_core_pex/g' tt_um_vaf_555_timer_pex.spice

