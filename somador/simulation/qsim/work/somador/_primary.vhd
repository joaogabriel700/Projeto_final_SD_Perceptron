library verilog;
use verilog.vl_types.all;
entity somador is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic;
        co              : out    vl_logic;
        s               : out    vl_logic
    );
end somador;
