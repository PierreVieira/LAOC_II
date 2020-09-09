library verilog;
use verilog.vl_types.all;
entity memoria_ram_1_porta is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end memoria_ram_1_porta;
