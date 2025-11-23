library verilog;
use verilog.vl_types.all;
entity register_32_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        load            : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end register_32_vlg_sample_tst;
