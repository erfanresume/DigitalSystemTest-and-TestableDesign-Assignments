library verilog;
use verilog.vl_types.all;
entity MUX is
    port(
        databus_in      : in     vl_logic_vector(7 downto 0);
        databus_out     : in     vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic;
        ac_in           : out    vl_logic_vector(7 downto 0)
    );
end MUX;
