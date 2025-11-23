library verilog;
use verilog.vl_types.all;
entity multiplicador_completo_vlg_sample_tst is
    port(
        in_a            : in     vl_logic_vector(15 downto 0);
        in_b            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end multiplicador_completo_vlg_sample_tst;
