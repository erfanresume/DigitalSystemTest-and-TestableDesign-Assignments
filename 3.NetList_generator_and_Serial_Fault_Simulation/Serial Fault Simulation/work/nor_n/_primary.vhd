library verilog;
use verilog.vl_types.all;
entity nor_n is
    generic(
        n               : integer := 2;
        tphl            : integer := 1;
        tplh            : integer := 1
    );
    port(
        \out\           : out    vl_logic;
        \in\            : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of tphl : constant is 1;
    attribute mti_svvh_generic_type of tplh : constant is 1;
end nor_n;
