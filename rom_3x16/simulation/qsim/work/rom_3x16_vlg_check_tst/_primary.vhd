library verilog;
use verilog.vl_types.all;
entity rom_3x16_vlg_check_tst is
    port(
        dado_out        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end rom_3x16_vlg_check_tst;
