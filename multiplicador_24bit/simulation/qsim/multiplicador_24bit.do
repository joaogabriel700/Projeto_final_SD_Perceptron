onerror {quit -f}
vlib work
vlog -work work multiplicador_24bit.vo
vlog -work work multiplicador_24bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplicador_24bit_vlg_vec_tst
vcd file -direction multiplicador_24bit.msim.vcd
vcd add -internal multiplicador_24bit_vlg_vec_tst/*
vcd add -internal multiplicador_24bit_vlg_vec_tst/i1/*
add wave /*
run -all
