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
   // input logic we[7],
   // input logic re[7],
    input logic [4:0]readdr[7],
    input logic [4:0]weaddr[7], 
    output logic [XLEN-1:0]out[7],
    input logic [XLEN-1:0]inp[7]
    );
    import common_pkg::regs1 regsuper;
    
    initial  begin
      foreach (regsuper[i]) begin
        regsuper[i] = '0;
      end
    end
    always_ff @(posedge clk) begin : reg1fs
      if (rst == 1'b1) begin
        regsuper <='{default:'0};
      end else begin
            for (int za =0 ; za< 7 ; za++) begin
              //if(we[i]) пока так проверю если нет идем по пути ифов
              regsuper[weaddr[za]] <= inp[za];
              //end1
            end
      end
    end
    always_comb begin : reder 
      for(int j; j<7; j++) begin
        if (weaddr==readdr[j]) begin
          out[j]<= inp[j];
        end 
        out[j] <= regsuper[j];
      end
    end
        
    
endmodule
