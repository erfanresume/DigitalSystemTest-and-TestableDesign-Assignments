module IR (data_bus_in, ld_ir, clk, ir_out);

input ld_ir, clk;
input [7:0] data_bus_in;
output [7:0] ir_out;
reg [7:0] da = 8'b00000000;


always @(posedge clk) begin
if (ld_ir)
	da <= data_bus_in;

end

assign ir_out = da;
endmodule


