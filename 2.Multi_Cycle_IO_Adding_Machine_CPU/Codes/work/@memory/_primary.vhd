library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        RdReg1          : in     vl_logic_vector(5 downto 0);
        WrReg           : in     vl_logic_vector(5 downto 0);
        WrData          : in     vl_logic_vector(7 downto 0);
        WrRegControl    : in     vl_logic;
        Data1           : out    vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic
    );
end Memory;
