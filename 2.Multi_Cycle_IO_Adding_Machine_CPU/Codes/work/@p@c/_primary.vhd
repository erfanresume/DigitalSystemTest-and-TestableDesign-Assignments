library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        ir_out          : in     vl_logic_vector(5 downto 0);
        ld_pc           : in     vl_logic;
        inc_pc          : in     vl_logic;
        clr_pc          : in     vl_logic;
        clk             : in     vl_logic;
        pc_out          : out    vl_logic_vector(5 downto 0)
    );
end PC;
