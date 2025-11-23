library verilog;
use verilog.vl_types.all;
entity register_36 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        load            : in     vl_logic;
        D               : in     vl_logic_vector(35 downto 0);
        Q               : out    vl_logic_vector(35 downto 0)
    );
end register_36;
