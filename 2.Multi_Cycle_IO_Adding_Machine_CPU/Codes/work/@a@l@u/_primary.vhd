library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        a_side          : in     vl_logic_vector(7 downto 0);
        ir_side_in      : in     vl_logic_vector(7 downto 0);
        pass_add        : in     vl_logic;
        data_bus_out    : out    vl_logic_vector(7 downto 0)
    );
end ALU;
