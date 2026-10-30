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
// Create Date: 10/22/2026 05:50:19 PM
// Design Name: 
// Module Name: common
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
//////////////////////////////////////////////////////////////////////////

package common_pkg;
    parameter int XLEN = 64;
    parameter logic [31:0]PVR_ISXA = 8'h00000001 ;
    parameter int MSR_SF  = (63 - 0);
    parameter int MSR_HV  = (63 - 3);
    parameter int MSR_EE  = (63 - 48);
    parameter int MSR_PR  = (63 - 49);
    parameter int MSR_FP  = (63 - 50);
    parameter int MSR_FE0 = (63 - 52);
    parameter int MSR_SE  = (63 - 53);
    parameter int MSR_BE  = (63 - 54);
    parameter int MSR_FE1 = (63 - 55);
    parameter int MSR_IR  = (63 - 58);
    parameter int MSR_DR  = (63 - 59);
    parameter int MSR_PMM = (63 - 61);
    parameter int MSR_RI  = (63 - 62);
    parameter int MSR_LE  = (63 - 63);
    typedef logic [9:0] spr_num_t;
    typedef logic [XLEN-1:0]registor1;
    typedef registor1 regs1 [0:31];
    
    function automatic spr_num_t decode_spr_num(input logic [31:0] insn);
        decode_spr_num = 10'd0; 
    endfunction

endpackage
