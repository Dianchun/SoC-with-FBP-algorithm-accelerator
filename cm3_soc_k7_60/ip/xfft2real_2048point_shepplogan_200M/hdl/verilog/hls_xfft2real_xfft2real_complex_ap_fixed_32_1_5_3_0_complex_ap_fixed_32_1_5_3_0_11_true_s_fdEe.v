// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "block" *) module hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 23;
parameter AWIDTH = 10;
parameter MEM_SIZE = 1024;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd23;
parameter AddressRange = 32'd1024;
parameter AddressWidth = 32'd10;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe_rom hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

