library verilog;
use verilog.vl_types.all;
entity multiplicador_24bit_vlg_sample_tst is
    port(
        dados           : in     vl_logic_vector(15 downto 0);
        inp             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end multiplicador_24bit_vlg_sample_tst;
