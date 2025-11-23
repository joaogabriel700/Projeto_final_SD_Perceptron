onerror {quit -f}
vlib work
vlog -work work mux_4x1_24bit.vo
vlog -work work mux_4x1_24bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_4x1_24bit_vlg_vec_tst
vcd file -direction mux_4x1_24bit.msim.vcd
vcd add -internal mux_4x1_24bit_vlg_vec_tst/*
vcd add -internal mux_4x1_24bit_vlg_vec_tst/i1/*
add wave /*
run -all
