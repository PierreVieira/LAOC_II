library verilog;
use verilog.vl_types.all;
entity DecodDisplay is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        S               : out    vl_logic_vector(0 to 6)
    );
end DecodDisplay;
