onerror {quit -f}
vlib work
vlog -work work perceptron.vo
vlog -work work perceptron.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.perceptron_vlg_vec_tst
vcd file -direction perceptron.msim.vcd
vcd add -internal perceptron_vlg_vec_tst/*
vcd add -internal perceptron_vlg_vec_tst/i1/*
add wave /*
run -all
