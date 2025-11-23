library verilog;
use verilog.vl_types.all;
entity multiplicador_completo_vlg_check_tst is
    port(
        resultado       : in     vl_logic_vector(23 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplicador_completo_vlg_check_tst;
