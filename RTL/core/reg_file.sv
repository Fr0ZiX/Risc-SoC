`timescale 1ns / 1ps
// SPDX-FileCopyrightText: 2026 Fr0ZiX <fallenxrenorg@gmail.com>
// SPDX-License-Identifier: CERN-OHL-S-2.0
//
// This source code is licensed under the CERN Open Hardware Licence Version 2
// - Strongly Reciprocal (CERN-OHL-S-2.0) or any later version.
// You may obtain a copy of the License at https://gitlab.com/ohwr/project/cernohl/-/wikis/uploads/819d71bea3458f71fba6cf4fb0f2de6b/cern_ohl_s_v2.txt


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
    import common_pkg::regs1;
    regs1 regsuper;
    
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
          out[j] <= regsuper[j];
        end
    end
        
    
endmodule
