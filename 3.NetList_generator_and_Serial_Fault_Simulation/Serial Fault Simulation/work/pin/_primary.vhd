library verilog;
use verilog.vl_types.all;
entity pin is
    generic(
        n               : integer := 1
    );
    port(
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end pin;
