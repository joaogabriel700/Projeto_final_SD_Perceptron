library verilog;
use verilog.vl_types.all;
entity mux_2x1_8bit is
    port(
        reg_x           : in     vl_logic_vector(7 downto 0);
        reg_y           : in     vl_logic_vector(7 downto 0);
        select_m        : in     vl_logic;
        d               : out    vl_logic_vector(7 downto 0)
    );
end mux_2x1_8bit;
