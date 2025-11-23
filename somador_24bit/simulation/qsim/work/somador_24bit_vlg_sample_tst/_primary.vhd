library verilog;
use verilog.vl_types.all;
entity somador_24bit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(23 downto 0);
        B               : in     vl_logic_vector(23 downto 0);
        sampler_tx      : out    vl_logic
    );
end somador_24bit_vlg_sample_tst;
