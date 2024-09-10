library verilog;
use verilog.vl_types.all;
entity IR is
    port(
        data_bus_in     : in     vl_logic_vector(7 downto 0);
        ld_ir           : in     vl_logic;
        clk             : in     vl_logic;
        ir_out          : out    vl_logic_vector(7 downto 0)
    );
end IR;
