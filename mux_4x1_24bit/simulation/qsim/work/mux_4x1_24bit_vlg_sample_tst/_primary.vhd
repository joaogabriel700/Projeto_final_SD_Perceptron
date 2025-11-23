library verilog;
use verilog.vl_types.all;
entity mux_4x1_24bit_vlg_sample_tst is
    port(
        reg_1           : in     vl_logic_vector(23 downto 0);
        reg_2           : in     vl_logic_vector(23 downto 0);
        rom_in          : in     vl_logic_vector(23 downto 0);
        select_sum      : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_4x1_24bit_vlg_sample_tst;
