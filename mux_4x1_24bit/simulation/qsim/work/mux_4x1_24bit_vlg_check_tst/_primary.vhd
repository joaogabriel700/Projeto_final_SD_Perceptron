library verilog;
use verilog.vl_types.all;
entity mux_4x1_24bit_vlg_check_tst is
    port(
        d1              : in     vl_logic_vector(23 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_4x1_24bit_vlg_check_tst;
