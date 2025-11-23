library verilog;
use verilog.vl_types.all;
entity somador_36_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(35 downto 0);
        sampler_rx      : in     vl_logic
    );
end somador_36_vlg_check_tst;
