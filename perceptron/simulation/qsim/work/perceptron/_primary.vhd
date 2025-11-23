library verilog;
use verilog.vl_types.all;
entity perceptron is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        switch_in_x     : in     vl_logic_vector(7 downto 0);
        switch_in_y     : in     vl_logic_vector(7 downto 0);
        led_saida       : out    vl_logic;
        seg_0           : out    vl_logic;
        seg_1           : out    vl_logic;
        seg_2           : out    vl_logic;
        seg_3           : out    vl_logic;
        seg_4           : out    vl_logic;
        seg_5           : out    vl_logic;
        seg_6           : out    vl_logic
    );
end perceptron;
