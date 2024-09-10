library verilog;
use verilog.vl_types.all;
entity fanout_n is
    generic(
        n               : integer := 2;
        tphl            : integer := 3;
        tplh            : integer := 5
    );
    port(
        \in\            : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of tphl : constant is 1;
    attribute mti_svvh_generic_type of tplh : constant is 1;
end fanout_n;
