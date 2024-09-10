module MUX (databus_in, databus_out,select, ac_in);
input select;
input [7:0] databus_in;
input [7:0] databus_out;
output [7:0] ac_in;

reg [7 :0] ac_out;

always @(databus_in, databus_out,select) begin
  if (select)
    ac_out = databus_out;
  else
    ac_out = databus_in;
  end
assign ac_in = ac_out;
endmodule



