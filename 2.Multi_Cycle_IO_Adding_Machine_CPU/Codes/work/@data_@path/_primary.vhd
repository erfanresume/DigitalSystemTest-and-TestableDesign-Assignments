library verilog;
use verilog.vl_types.all;
entity Data_Path is
    port(
        clk             : in     vl_logic;
        ir_on_adr       : in     vl_logic;
        pc_on_adr       : in     vl_logic;
        ld_ir           : in     vl_logic;
        ld_ac           : in     vl_logic;
        ld_pc           : in     vl_logic;
        inc_pc          : in     vl_logic;
        clr_pc          : in     vl_logic;
        pass_add        : in     vl_logic;
        adr_bus         : out    vl_logic_vector(5 downto 0);
        op_code         : out    vl_logic_vector(1 downto 0);
        data_bus_in     : in     vl_logic_vector(7 downto 0);
        data_bus_out    : out    vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic
    );
end Data_Path;
