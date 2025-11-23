library verilog;
use verilog.vl_types.all;
entity mux_4x1_24bit is
    port(
        reg_1           : in     vl_logic_vector(23 downto 0);
        reg_2           : in     vl_logic_vector(23 downto 0);
        rom_in          : in     vl_logic_vector(23 downto 0);
        select_sum      : in     vl_logic_vector(1 downto 0);
        d1              : out    vl_logic_vector(23 downto 0)
    );
end mux_4x1_24bit;
