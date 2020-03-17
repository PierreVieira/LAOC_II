library verilog;
use verilog.vl_types.all;
entity main is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        HEX7            : out    vl_logic_vector(0 to 6);
        HEX6            : out    vl_logic_vector(0 to 6);
        HEX5            : out    vl_logic_vector(0 to 6);
        HEX4            : out    vl_logic_vector(0 to 6);
        HEX3            : out    vl_logic_vector(0 to 6);
        HEX2            : out    vl_logic_vector(0 to 6);
        HEX1            : out    vl_logic_vector(0 to 6);
        HEX0            : out    vl_logic_vector(0 to 6);
        LEDG            : out    vl_logic_vector(1 downto 0);
        LEDR            : out    vl_logic_vector(17 downto 0);
        SW              : in     vl_logic_vector(17 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0)
    );
end main;
