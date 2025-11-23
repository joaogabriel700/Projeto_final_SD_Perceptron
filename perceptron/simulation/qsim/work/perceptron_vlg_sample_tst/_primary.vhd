library verilog;
use verilog.vl_types.all;
entity perceptron_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        switch_in_x     : in     vl_logic_vector(7 downto 0);
        switch_in_y     : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end perceptron_vlg_sample_tst;
