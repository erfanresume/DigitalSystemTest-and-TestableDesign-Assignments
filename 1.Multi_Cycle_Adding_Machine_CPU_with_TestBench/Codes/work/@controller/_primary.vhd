library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        op_code         : in     vl_logic_vector(1 downto 0);
        rd_mem          : out    vl_logic;
        wr_mem          : out    vl_logic;
        ir_on_adr       : out    vl_logic;
        pc_on_adr       : out    vl_logic;
        ld_ir           : out    vl_logic;
        ld_ac           : out    vl_logic;
        ld_pc           : out    vl_logic;
        inc_pc          : out    vl_logic;
        clr_pc          : out    vl_logic;
        pass_add        : out    vl_logic
    );
end Controller;
