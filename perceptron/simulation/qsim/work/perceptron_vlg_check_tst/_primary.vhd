library verilog;
use verilog.vl_types.all;
entity perceptron_vlg_check_tst is
    port(
        led_saida       : in     vl_logic;
        seg_0           : in     vl_logic;
        seg_1           : in     vl_logic;
        seg_2           : in     vl_logic;
        seg_3           : in     vl_logic;
        seg_4           : in     vl_logic;
        seg_5           : in     vl_logic;
        seg_6           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end perceptron_vlg_check_tst;
