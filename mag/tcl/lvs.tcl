set layout [readnet spice $project.lvs.spice]
set schem  [readnet verilog ../src/tt_um_tnt_gf_vco.v]
readnet spice ../xschem/simulation/vco.spice $schem
lvs "$layout $project" "$schem $project" $::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/$::env(PDK)_setup.tcl lvs.report -blackbox

