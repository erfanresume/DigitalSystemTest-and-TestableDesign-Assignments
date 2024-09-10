`define Reset 2'b00
`define Fetch 2'b01
`define WaitState 2'b10
`define Execute 2'b11
module Controller (reset, clk, op_code, rd_mem, wr_mem, ir_on_adr,
                   pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc,
                   pass_add );
input reset, clk;
input [1:0]op_code;
output rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc;
output inc_pc, clr_pc, pass_add;
reg rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac;
reg ld_pc, inc_pc, clr_pc, pass_add;
reg [1:0] present_state = 2'b00, next_state;

always @( posedge clk )begin : registering
  if (reset )
    present_state <= `Reset;
  else
    present_state <= next_state;
  end
always @(present_state) begin : combinational
  rd_mem=1'b0; wr_mem=1'b0; ir_on_adr=1'b0; pc_on_adr=1'b0;
  ld_ir=1'b0; ld_ac=1'b0;
  ld_pc=1'b0; inc_pc=1'b0; clr_pc=1'b0; pass_add=1'b0;
case( present_state )
  `Reset : begin
    next_state = `Fetch; clr_pc = 1'b1;
   end
  `Fetch : begin
    next_state = `WaitState ; pc_on_adr=1'b1; rd_mem=1'b1;
    ld_ir=1'b1; inc_pc=1;
   end
  `WaitState : begin
    next_state = `Execute;
    end
  `Execute: begin
    next_state = `Fetch;
case( op_code )
  2'b01: begin // lda
    ir_on_adr=1'b1; rd_mem=1'b1; ld_ac=1'b1;
  end
  2'b10: begin // sta
    ir_on_adr=1'b1; pass_add = 1'b0;
    wr_mem=1'b1;
  end
  2'b11: ld_pc=1'b1; // jmp
    2'b00: begin // add
    pass_add=1'b1; ld_ac=1'b1;
  end
endcase
end
endcase
end
endmodule





