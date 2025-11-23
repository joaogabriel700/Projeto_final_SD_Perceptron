library verilog;
use verilog.vl_types.all;
entity decoder_7seg is
    port(
        into            : in     vl_logic;
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic
    );
end decoder_7seg;
