module format_conversion (
    input wire clk,    // Clock
    input wire arstn,  // Asynchronous reset active low
    input wire [63:0] filter_dout_tdata,
    input wire filter_dout_tvalid,
    output wire filter_dout_tready,

    output wire [63:0] ifft_input_tdata,
    output wire ifft_input_tvalid,
    input wire ifft_input_tready
);
    assign filter_dout_tready = ifft_input_tready;
    assign ifft_input_tvalid  = filter_dout_tvalid;
    assign ifft_input_tdata[63:32] = filter_dout_tdata[31:0];
    assign ifft_input_tdata[31:0]  = filter_dout_tdata[63:32];
    
endmodule