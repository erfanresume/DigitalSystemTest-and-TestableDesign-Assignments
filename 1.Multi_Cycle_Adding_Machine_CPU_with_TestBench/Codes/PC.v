module PC (
    input [5:0] ir_out, 
    input ld_pc,       
    input inc_pc,       
    input clr_pc,      
    input clk,         
    output [5:0] pc_out 
);

reg [5:0] pc; // Program Counter (6 bits)

always @(posedge clk) begin
    if (clr_pc) begin
        pc <= 6'b0;
    end else if (ld_pc) begin
        pc <= ir_out;
    end else if (inc_pc) begin
        pc <= pc + 1;
    end
end

assign pc_out = pc;

endmodule


