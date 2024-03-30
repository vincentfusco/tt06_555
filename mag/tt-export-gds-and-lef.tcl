# Important: before running this script, download the the .def file from
# https://github.com/TinyTapeout/tt-support-tools/blob/tt06/def/analog/tt_block_1x2_pg_ana.def

# Export
gds write ../gds/tt_um_vaf_555_timer.gds
lef write ../lef/tt_um_vaf_555_timer.lef -pinonly
