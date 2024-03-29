# Important: before running this script, download the the .def file from
# https://github.com/TinyTapeout/tt-support-tools/blob/tt06/def/analog/tt_block_1x2_pg_ana.def

def read tt_block_1x2_pg_ana.def
cellname rename tt_um_template tt_um_vaf_555_timer

# VPWR
box 100 500 250 22076
paint met4
label VPWR FreeSans met4
port VPWR make n
port VPWR use power
port VPWR class bidirectional
port conn n s e w

# VGND
box 4900 500 5050 22076
paint met4
label VGND FreeSans met4
port VGND make n
port VGND use ground
port VGND class bidirectional
port conn n s e w

# Export
gds write ../gds/tt_um_vaf_555_timer.gds
lef write ../lef/tt_um_vaf_555_timer.lef -pinonly
