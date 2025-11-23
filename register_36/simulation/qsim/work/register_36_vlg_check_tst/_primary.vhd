library verilog;
use verilog.vl_types.all;
entity register_36_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(35 downto 0);
        sampler_rx      : in     vl_logic
    );
end register_36_vlg_check_tst;
