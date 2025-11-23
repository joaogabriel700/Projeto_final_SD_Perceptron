library verilog;
use verilog.vl_types.all;
entity mux_2x1_8bit_vlg_sample_tst is
    port(
        reg_x           : in     vl_logic_vector(7 downto 0);
        reg_y           : in     vl_logic_vector(7 downto 0);
        select_m        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_2x1_8bit_vlg_sample_tst;
