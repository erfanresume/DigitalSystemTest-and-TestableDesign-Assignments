module AC (data_bus_in, ld_ac, clk, a_side);

input ld_ac, clk;
input [7:0] data_bus_in;
output [7:0] a_side;
reg [7:0] dr = 8'b00000000;


always @(posedge clk) begin
if (ld_ac)
	dr <= data_bus_in;

end

assign a_side = dr;
endmodule




