onerror {quit -f}
vlib work
vlog -work work somador_36.vo
vlog -work work somador_36.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.somador_36_vlg_vec_tst
vcd file -direction somador_36.msim.vcd
vcd add -internal somador_36_vlg_vec_tst/*
vcd add -internal somador_36_vlg_vec_tst/i1/*
add wave /*
run -all
