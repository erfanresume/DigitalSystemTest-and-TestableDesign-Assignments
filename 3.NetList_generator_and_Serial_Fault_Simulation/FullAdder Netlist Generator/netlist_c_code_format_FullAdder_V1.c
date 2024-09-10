
//ccode file of module FullAdder


// module FullAdder_net // ccode format(//a,
//b,
//Cin,
//sum,
//Cout )

wires : begin 

input a 1 
input b 1 
input Cin 1 

output sum 1 
output Cout 1 

wire FullAdder_wire_1 1

wire FullAdder_wire_2 1

wire FullAdder_wire_3 1

wire FullAdder_wire_4 1

wire FullAdder_wire_5 1

wire FullAdder_wire_6 1

wire FullAdder_wire_7 1

wire FullAdder_wire_8 1

wire FullAdder_wire_3_0 1

wire FullAdder_wire_3_1 1

wire FullAdder_wire_2_0 1

wire FullAdder_wire_2_1 1

wire FullAdder_wire_5_0 1

wire FullAdder_wire_5_1 1

wire FullAdder_wire_4_0 1

wire FullAdder_wire_4_1 1

wire a_net_0 1

wire b_net_0 1

wire Cin_net_0 1

wire sum_net_0 1

wire Cout_net_0 1

wire a_net_0 1

wire b_net_0 1

wire Cin_net_0 1

wire sum_net_0 1

wire Cout_net_0 1



end
gates : begin
pin #(3) (a, b, Cin,  a_net_0, b_net_0, Cin_net_0 )

pout #(2) ( sum_net_0, Cout_net_0 ,  sum, Cout )

fanout #(2, 0, 0)  (FullAdder_wire_3, FullAdder_wire_3_0, FullAdder_wire_3_1 )
fanout #(2, 0, 0)  (FullAdder_wire_2, FullAdder_wire_2_0, FullAdder_wire_2_1 )
fanout #(2, 0, 0)  (FullAdder_wire_5, FullAdder_wire_5_0, FullAdder_wire_5_1 )
fanout #(2, 0, 0)  (FullAdder_wire_4, FullAdder_wire_4_0, FullAdder_wire_4_1 )


xor #(2, 0, 0)  (FullAdder_wire_1,  FullAdder_wire_2_0, FullAdder_wire_3_0 )
xor #(2, 0, 0)  (FullAdder_wire_3,  FullAdder_wire_4_0, FullAdder_wire_5_0 )
buf #(0, 0)  (FullAdder_wire_2, Cin_net_0)
and #(2, 0, 0)  (FullAdder_wire_6,  FullAdder_wire_2_1, FullAdder_wire_3_1 )
buf #(0, 0)  (Cout_net_0, FullAdder_wire_7)
or #(2, 0, 0)  (FullAdder_wire_7,  FullAdder_wire_8, FullAdder_wire_6 )
buf #(0, 0)  (FullAdder_wire_5, a_net_0)
and #(2, 0, 0)  (FullAdder_wire_8,  FullAdder_wire_5_1, FullAdder_wire_4_1 )
buf #(0, 0)  (FullAdder_wire_4, b_net_0)
buf #(0, 0)  (sum_net_0, FullAdder_wire_1)

end
