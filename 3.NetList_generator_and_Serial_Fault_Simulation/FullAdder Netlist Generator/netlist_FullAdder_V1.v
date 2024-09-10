
//Verilog file of module FullAdder


`timescale 1 ns / 1ns

module FullAdder_net(a,
b,
Cin,
sum,
Cout);
input a;
input b;
input Cin;

output sum;
output Cout;

wire
FullAdder_wire_1,
FullAdder_wire_2,
FullAdder_wire_3,
FullAdder_wire_4,
FullAdder_wire_5,
FullAdder_wire_6,
FullAdder_wire_7,
FullAdder_wire_8,
FullAdder_wire_3_0,
FullAdder_wire_3_1,
FullAdder_wire_2_0,
FullAdder_wire_2_1,
FullAdder_wire_5_0,
FullAdder_wire_5_1,
FullAdder_wire_4_0,
FullAdder_wire_4_1,
a_net_0,
b_net_0,
Cin_net_0,
sum_net_0,
Cout_net_0;

pin #(3) pin_0 ({a, b, Cin}, {a_net_0, b_net_0, Cin_net_0});

pout #(2) pout_0 ({sum_net_0, Cout_net_0}, {sum, Cout});

fanout_n #(2, 0, 0) FANOUT_1 (FullAdder_wire_3, {FullAdder_wire_3_0, FullAdder_wire_3_1});
fanout_n #(2, 0, 0) FANOUT_2 (FullAdder_wire_2, {FullAdder_wire_2_0, FullAdder_wire_2_1});
fanout_n #(2, 0, 0) FANOUT_3 (FullAdder_wire_5, {FullAdder_wire_5_0, FullAdder_wire_5_1});
fanout_n #(2, 0, 0) FANOUT_4 (FullAdder_wire_4, {FullAdder_wire_4_0, FullAdder_wire_4_1});


xor_n #(2, 0, 0) XOR_1 (FullAdder_wire_1, {FullAdder_wire_2_0, FullAdder_wire_3_0});
xor_n #(2, 0, 0) XOR_2 (FullAdder_wire_3, {FullAdder_wire_4_0, FullAdder_wire_5_0});
bufg #(0, 0) BUF_1 (FullAdder_wire_2, Cin_net_0);
and_n #(2, 0, 0) AND_1 (FullAdder_wire_6, {FullAdder_wire_2_1, FullAdder_wire_3_1});
bufg #(0, 0) BUF_2 (Cout_net_0, FullAdder_wire_7);
or_n #(2, 0, 0) OR_1 (FullAdder_wire_7, {FullAdder_wire_8, FullAdder_wire_6});
bufg #(0, 0) BUF_3 (FullAdder_wire_5, a_net_0);
and_n #(2, 0, 0) AND_2 (FullAdder_wire_8, {FullAdder_wire_5_1, FullAdder_wire_4_1});
bufg #(0, 0) BUF_4 (FullAdder_wire_4, b_net_0);
bufg #(0, 0) BUF_5 (sum_net_0, FullAdder_wire_1);

endmodule
