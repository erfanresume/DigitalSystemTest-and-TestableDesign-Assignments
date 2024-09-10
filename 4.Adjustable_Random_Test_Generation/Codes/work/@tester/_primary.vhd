library verilog;
use verilog.vl_types.all;
entity Tester is
    generic(
        numOfFaults     : integer := 16;
        initialExpFCount: integer := 5;
        utLimit         : integer := 13;
        desiredCoverage : integer := 95
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfFaults : constant is 1;
    attribute mti_svvh_generic_type of initialExpFCount : constant is 1;
    attribute mti_svvh_generic_type of utLimit : constant is 1;
    attribute mti_svvh_generic_type of desiredCoverage : constant is 1;
end Tester;
