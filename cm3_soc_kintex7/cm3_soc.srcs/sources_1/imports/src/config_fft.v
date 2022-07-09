
module config_fft(
    input wire clk,
    input wire arstn,

    output wire [15:0] fft_config_tdata,
    input  wire fft_config_tready,
    output reg fft_config_tvalid,
    output wire [15:0] ifft_config_tdata,
    input  wire ifft_config_tready,
    output reg ifft_config_tvalid
);

assign fft_config_tdata  = 16'b0000_0000_0000_0001;
assign ifft_config_tdata = 16'b0000_0000_0000_0000;

reg [2-1:0] fft_valid_cnt;
wire add_fft_valid_cnt;
wire end_fft_valid_cnt;
always @(posedge clk or negedge arstn)begin
    if(!arstn)begin
        fft_valid_cnt <= 0;
    end
    else if(add_fft_valid_cnt)begin
        if(end_fft_valid_cnt)
            fft_valid_cnt <= 0;
        else
            fft_valid_cnt <= fft_valid_cnt + 1;
    end
end
assign add_fft_valid_cnt = fft_config_tvalid;       
assign end_fft_valid_cnt = add_fft_valid_cnt && fft_valid_cnt== 3-1;

reg [2-1:0] ifft_valid_cnt;
wire add_ifft_valid_cnt;
wire end_ifft_valid_cnt;
always @(posedge clk or negedge arstn)begin
    if(!arstn)begin
        ifft_valid_cnt <= 0;
    end
    else if(add_ifft_valid_cnt)begin
        if(end_ifft_valid_cnt)
            ifft_valid_cnt <= 0;
        else
            ifft_valid_cnt <= ifft_valid_cnt + 1;
    end
end
assign add_ifft_valid_cnt = ifft_config_tvalid;       
assign end_ifft_valid_cnt = add_ifft_valid_cnt && ifft_valid_cnt== 3-1;

always @(posedge clk or negedge arstn)begin
    if(!arstn)begin
        fft_config_tvalid <= 1'b1;
    end
    else if(end_fft_valid_cnt) begin
        fft_config_tvalid <= 1'b0;
    end
end
always @(posedge clk or negedge arstn)begin
    if(!arstn)begin
        ifft_config_tvalid <= 1'b1;
    end
    else if(end_ifft_valid_cnt) begin
        ifft_config_tvalid <= 1'b0;
    end
end


endmodule
