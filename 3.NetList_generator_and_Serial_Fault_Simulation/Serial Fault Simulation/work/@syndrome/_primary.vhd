library verilog;
use verilog.vl_types.all;
entity Syndrome is
    generic(
        tstCount        : integer := 6
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of tstCount : constant is 1;
end Syndrome;
