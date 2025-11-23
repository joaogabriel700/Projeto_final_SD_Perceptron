library verilog;
use verilog.vl_types.all;
entity multiplicador_24bit is
    port(
        dados           : in     vl_logic_vector(15 downto 0);
        inp             : in     vl_logic_vector(7 downto 0);
        P               : out    vl_logic_vector(23 downto 0)
    );
end multiplicador_24bit;
