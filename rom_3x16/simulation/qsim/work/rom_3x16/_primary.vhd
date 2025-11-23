library verilog;
use verilog.vl_types.all;
entity rom_3x16 is
    port(
        adress          : in     vl_logic_vector(1 downto 0);
        dado_out        : out    vl_logic_vector(15 downto 0)
    );
end rom_3x16;
