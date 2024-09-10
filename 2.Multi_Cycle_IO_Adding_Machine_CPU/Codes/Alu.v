module ALU (a_side, ir_side_in, pass_add, data_bus_out);
input pass_add;
input [7:0] a_side;
input [7:0] ir_side_in;
output [7:0] data_bus_out;
reg [7:0] res;

always @(pass_add, a_side, ir_side_in) begin
if (pass_add)
	res <= a_side + ir_side_in;
else
	res <= a_side;	
end

assign data_bus_out = res;
endmodule

