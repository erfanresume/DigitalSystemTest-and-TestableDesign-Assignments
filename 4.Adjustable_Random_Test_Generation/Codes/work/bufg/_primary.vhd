library verilog;
use verilog.vl_types.all;
entity bufg is
    generic(
        tphl            : integer := 1;
        tplh            : integer := 1
    );
    port(
        \out\           : out    vl_logic;
        \in\            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tphl : constant is 1;
    attribute mti_svvh_generic_type of tplh : constant is 1;
end bufg;
