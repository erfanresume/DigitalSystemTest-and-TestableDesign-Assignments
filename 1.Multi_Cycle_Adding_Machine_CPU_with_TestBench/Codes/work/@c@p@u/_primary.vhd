library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        adr_bus         : out    vl_logic_vector(5 downto 0);
        rd_mem          : out    vl_logic;
        wr_mem          : out    vl_logic;
        data_bus_in     : in     vl_logic_vector(7 downto 0);
        data_bus_out    : out    vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic
    );
end CPU;
