library verilog;
use verilog.vl_types.all;
entity multiplicador_completo is
    port(
        in_a            : in     vl_logic_vector(15 downto 0);
        in_b            : in     vl_logic_vector(7 downto 0);
        resultado       : out    vl_logic_vector(23 downto 0)
    );
end multiplicador_completo;
