library verilog;
use verilog.vl_types.all;
entity AC is
    port(
        data_bus_in     : in     vl_logic_vector(7 downto 0);
        ld_ac           : in     vl_logic;
        clk             : in     vl_logic;
        a_side          : out    vl_logic_vector(7 downto 0)
    );
end AC;
