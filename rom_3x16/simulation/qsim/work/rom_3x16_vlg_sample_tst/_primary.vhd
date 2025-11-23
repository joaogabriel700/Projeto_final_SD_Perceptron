library verilog;
use verilog.vl_types.all;
entity rom_3x16_vlg_sample_tst is
    port(
        adress          : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end rom_3x16_vlg_sample_tst;
