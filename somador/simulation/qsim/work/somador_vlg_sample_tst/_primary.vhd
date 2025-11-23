library verilog;
use verilog.vl_types.all;
entity somador_vlg_sample_tst is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end somador_vlg_sample_tst;
