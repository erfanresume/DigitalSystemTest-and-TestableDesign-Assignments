module CPU( reset, clk, adr_bus, rd_mem, wr_mem, data_bus_in, data_bus_out, select );

input reset;
input clk;
input select;
input [7:0]data_bus_in;
output [5:0]adr_bus;
output rd_mem;
output wr_mem;
output [7:0]data_bus_out;
wire ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc,pass_add;
wire [1:0] op_code;

Controller cu ( reset, clk, op_code, rd_mem, wr_mem, ir_on_adr, 
                pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, 
                pass_add );
                
Data_Path dp ( clk, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, 
              clr_pc, pass_add, adr_bus, op_code, data_bus_in, 
              data_bus_out,select );
   
endmodule






