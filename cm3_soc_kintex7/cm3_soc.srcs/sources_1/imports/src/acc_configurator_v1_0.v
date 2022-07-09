
`timescale 1 ns / 1 ps

	module acc_configurator_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h60000000,
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		output wire  start_fbp,
		input wire  finsh_fbp,
		output wire soft_rstn,
		//读角度数据模块
	    output wire angle_data_base_addr_valid,
	    //input wire angle_data_base_addr_ready,
	    output wire [C_S00_AXI_DATA_WIDTH-1:0] angle_data_base_addr,
	    //滤波反投影模块
	    output wire img_base_addr_valid,
	    //input wire img_base_addr_ready,
	    output wire [C_S00_AXI_DATA_WIDTH-1:0] img_base_addr,
		// User ports ends
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI

	wire [3:0]						slv_reg_valid;
	wire [C_S00_AXI_DATA_WIDTH-1:0]	config_reg0;
	wire [C_S00_AXI_DATA_WIDTH-1:0]	status_reg1;
	wire [C_S00_AXI_DATA_WIDTH-1:0]	angle_data_base_addr_reg2;
	wire [C_S00_AXI_DATA_WIDTH-1:0]	img_base_addr_reg3;

	wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg1_update;
	acc_configurator_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) acc_configurator_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),

		.slv_reg_valid             (slv_reg_valid),
		.config_reg0               (config_reg0),
		.status_reg1               (status_reg1),
		.angle_data_base_addr_reg2 (angle_data_base_addr_reg2),
		.img_base_addr_reg3        (img_base_addr_reg3),

		.slv_reg1_update           (slv_reg1_update),

		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	configurator #(
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M_TARGET_SLAVE_BASE_ADDR)
	) inst_configurator (
		.clk                        (s00_axi_aclk),
		.arstn                      (s00_axi_aresetn),
		
		.start_fbp                  (start_fbp),
		.finsh_fbp                  (finsh_fbp),
		.soft_rstn                  (soft_rstn),
		.angle_data_base_addr_valid (angle_data_base_addr_valid),
		.angle_data_base_addr_ready (1'b1),
		.angle_data_base_addr       (angle_data_base_addr),
		.img_base_addr_valid        (img_base_addr_valid),
		.img_base_addr_ready        (1'b1),
		.img_base_addr              (img_base_addr),
		.slv_reg_valid              (slv_reg_valid),
		.config_reg0                (config_reg0),
		.status_reg1                (status_reg1),
		.angle_data_base_addr_reg2  (angle_data_base_addr_reg2),
		.img_base_addr_reg3         (img_base_addr_reg3),

		.slv_reg1_update            (slv_reg1_update)
	);


	endmodule
