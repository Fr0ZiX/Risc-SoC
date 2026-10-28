`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2026 08:01:32 PM
// Design Name: 
// Module Name: reg_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import common_pkg::XLEN;
module reg_file(
    input logic clk,
    input logic rst,
    input logic we [7], 
    input logic [4:0]readdr [7],
    input logic [4:0]weaddr [7], 
    output logic [XLEN-1:0]out [7],
    input logic [XLEN-1:0]inp [7]
    );
    initial  begin
      foreach (mem[i]) begin
        mem[i] = '0;
      end




    end
    typedef logic [XLEN-1:0]registor1;
    typedef registor1 regs1 [31:0];
    regs1 mem;
    always_ff @(posedge clk) begin : reg1fs
      if (rst == 1'b1) begin
        mem <='{default:'0};
      end
      else begin
        
      end
    end
    
    
    
endmodule
