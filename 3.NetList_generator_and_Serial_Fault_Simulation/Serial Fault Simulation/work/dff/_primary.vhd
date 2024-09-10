library verilog;
use verilog.vl_types.all;
entity dff is
    generic(
        tphl            : integer := 0;
        tplh            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        C               : in     vl_logic;
        CLR             : in     vl_logic;
        PRE             : in     vl_logic;
        CE              : in     vl_logic;
        NbarT           : in     vl_logic;
        Si              : in     vl_logic;
        global_reset    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tphl : constant is 1;
    attribute mti_svvh_generic_type of tplh : constant is 1;
end dff;
