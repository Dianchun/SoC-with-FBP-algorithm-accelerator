module configurator #(
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        parameter  C_M_TARGET_SLAVE_BASE_ADDR   = 32'h60000000
    ) 
    (
        input clk,    // Clock
        input arstn,  // Asynchronous reset active low

        output reg  start_fbp,
        input wire  finsh_fbp,
        output reg soft_rstn,

        //读角度数据模块
        output reg angle_data_base_addr_valid,
        input wire angle_data_base_addr_ready,
        output reg [C_S_AXI_DATA_WIDTH-1:0] angle_data_base_addr,
        //滤波反投影模块
        output reg img_base_addr_valid,
        input wire img_base_addr_ready,
        output reg [C_S_AXI_DATA_WIDTH-1:0] img_base_addr,

        //AXI_LITE接口模块
        input wire  [3:0]                      slv_reg_valid,
        input wire [C_S_AXI_DATA_WIDTH-1:0]    config_reg0,
        input wire [C_S_AXI_DATA_WIDTH-1:0]    status_reg1,
        input wire [C_S_AXI_DATA_WIDTH-1:0]    angle_data_base_addr_reg2,
        input wire [C_S_AXI_DATA_WIDTH-1:0]    img_base_addr_reg3,

        output reg  [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1_update
);
    //配置角度数据地址
    always @(posedge clk or negedge arstn) begin
        if(~arstn) begin
            angle_data_base_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
            angle_data_base_addr_valid <= 1'b0;
        end 
        else if(slv_reg_valid[2] && angle_data_base_addr_ready) begin
            angle_data_base_addr <= angle_data_base_addr_reg2;
            angle_data_base_addr_valid <= 1'b1;
        end
        else begin
            angle_data_base_addr <= angle_data_base_addr;
            angle_data_base_addr_valid <= 1'b0;
        end
    end

    //配置图像数据地址
    always @(posedge clk or negedge arstn) begin
        if(~arstn) begin
            img_base_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
            img_base_addr_valid <= 1'b0;
        end 
        else if(slv_reg_valid[3] && img_base_addr_ready) begin
            img_base_addr <= img_base_addr_reg3;
            img_base_addr_valid <= 1'b1;
        end
        else begin
            img_base_addr <= img_base_addr;
            img_base_addr_valid <= 1'b0;
        end
    end

    wire acc_busy;
    assign acc_busy = (~finsh_fbp);

    //配置开始
    always @(posedge clk or negedge arstn) begin
        if(~arstn) begin
            start_fbp <= 1'b0;
        end 
        else if(slv_reg_valid[0] && finsh_fbp) begin
            if(config_reg0[0]==1'b1) begin
                start_fbp <= 1'b1;
            end
            else begin
                start_fbp <= 1'b0;
            end
        end
        else begin
            start_fbp <= 1'b0;
        end
    end

    //软复位
    always @(posedge clk or negedge arstn) begin
        if(~arstn) begin
            soft_rstn <= 1'b1;
        end 
        else if(slv_reg_valid[0]) begin
            if(config_reg0[31]==1'b1) begin
                soft_rstn <= 1'b0;
            end
            else begin
                soft_rstn <= 1'b1;
            end
        end
    end

    wire [31:0] slv_reg1_update_r;

    reg [24-1:0] cnt;
    wire add_cnt;
    wire end_cnt;
    always @(posedge clk )begin
        if(~arstn)begin
            cnt <= 0;
        end
        else if(add_cnt)begin
            if(end_cnt)
                cnt <= 0;
            else
                cnt <= cnt + 1;
        end
    end
    
    assign add_cnt = start_fbp;       
    assign end_cnt = add_cnt && cnt == 24'hffffff;

    //更新状态
    always @(posedge clk or negedge arstn) begin
        if(~arstn) begin
            slv_reg1_update <= 32'b0000_0000;
        end 
        else begin
            slv_reg1_update <= {{7{1'b0}},cnt, acc_busy};
        end
    end

endmodule
