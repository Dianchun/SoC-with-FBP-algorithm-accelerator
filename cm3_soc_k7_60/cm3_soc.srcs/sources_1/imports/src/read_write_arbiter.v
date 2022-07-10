module read_write_arbiter #(
	parameter  C_M_TARGET_SLAVE_BASE_ADDR = 32'h40000000,
	parameter integer C_NO_BURSTS_REQ     = 5,
	parameter integer C_M_AXI_ADDR_WIDTH  = 32,
	parameter integer C_M_AXI_BURST_LEN   = 16,

	parameter integer IMG_N               = 258
 )
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low


 	input wire img_base_addr_valid,
 	input wire [31:0] img_base_addr,

	//单周期脉冲信号
	//txn_done为 1 时 start_one_new_txn 可以产生一个脉冲,开始一帧图像的传输。
	input wire			start_one_new_txn, // 用于地址重置
	input wire 			clear,             // clear为1时，表明当前传输是清零操作，clear为0时，表明是正常读图像与写图像操作。
	input wire 			clear_valid,       // clear配置有效标志位，最好在start_one_new_txn脉冲前配置好
	input wire          finsh_wr,          //只需要告诉外面写完的时间              
	output reg			txn_done,		   // 完成数据的传输

	/////////////////////策略/////////////////////////////
	//原则上有数据就要处理
	//读FIFO
	//数据为空时，需要发起一次读请求。
	//数据要为空时，需要补充数据。
	//最后一次读数据后，应当停止读策略，允许前级模块将fifo清零
	//写FIFO
	//数据要满一行时，才把数据写出。
	//最后一次写数据，应当将fifo内数据读空

	//read FIFO control   64*512 32*1024
	input wire								rd_fifo_full,
	input wire								rd_fifo_empty,
	input wire	[10:0]						rd_fifo_rd_data_count,
	input wire	[9:0]						rd_fifo_wr_data_count,
	//AXI read control
	output reg	[C_M_AXI_ADDR_WIDTH-1 : 0]	axi_txn_base_rd_addr,
	output reg	[C_NO_BURSTS_REQ : 0]		axi_txn_rd_burst_counter, //传输数量 按2KB速度传输
	output reg								axi_txn_rd_cfg_valid,
	input wire								axi_txn_rd_busy,
	output reg								init_axi_txn_rd,

    //write FIFO control 32*1024  64*512
	input wire								wr_fifo_full,
	input wire								wr_fifo_empty,
	input wire	[9:0]						wr_fifo_rd_data_count,
	input wire	[10:0]						wr_fifo_wr_data_count,
	//AXI write control
	output reg	[C_M_AXI_ADDR_WIDTH-1 : 0]	axi_txn_base_wr_addr,
	output reg	[C_NO_BURSTS_REQ : 0]		axi_txn_wr_burst_counter, //传输数量 按2KB速度传输
	output reg								axi_txn_wr_cfg_valid,
	input wire								axi_txn_wr_busy,
	output reg								init_axi_txn_wr

);
 	function integer clogb2 (input integer bit_depth);              
	begin                                                           
	  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	    bit_depth = bit_depth >> 1;                                 
	  end                                                           
	endfunction

	function integer myceil(input integer a,input integer b);              
	begin
	  for(myceil=0; a>=b; myceil=myceil+1) begin                 
	    a = a - b; 
	  end   
	  if (a==0) begin
	  	myceil = myceil;
	  end
	  else begin
	  	myceil = myceil + 1;
	  end                             
	end
	endfunction

 	parameter integer TOTAL_NUM = IMG_N*IMG_N; 		 //258*258; //图像像素总数
 	parameter integer BURST_NUM = myceil(TOTAL_NUM,512); //257
 	parameter integer BURST_COUNT_WIDTH = clogb2(BURST_NUM-1);
 	parameter integer COUNTER_NUM_2KB = 2048/(C_M_AXI_BURST_LEN*8); //2k传输


    //读传输次数计数器, 计满时表示已经传输完成一帧图像
	reg [BURST_COUNT_WIDTH-1:0] rd_burst_count;
	wire	add_rd_burst_count;
	wire	end_rd_burst_count;
    //写传输次数计数器, 计满时表示已经传输完成一帧图像
	reg [BURST_COUNT_WIDTH-1:0] wr_burst_count;
	wire	add_wr_burst_count;
	wire	end_wr_burst_count;
	//一次写传输完成标志
 	reg		axi_txn_wr_busy_ff;
 	reg		axi_txn_wr_busy_ff2;
	wire	wr_done_flag;
 	reg		wr_done_flag_r;
 	//一次读传输完成标志
 	reg		axi_txn_rd_busy_ff;
 	reg		axi_txn_rd_busy_ff2;
 	wire	rd_done_flag;
 	reg		rd_done_flag_r;

 	reg [31:0] base_addr;
 	always @(posedge clk) begin
 	    if(arstn==1'b0)begin
 	        base_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
 	    end
 	    else if(img_base_addr_valid)begin
 	        base_addr <= img_base_addr;
 	    end
 	    else begin
 	    	base_addr <= base_addr;
 	    end
 	end
 	
	//finsh 标志生成
// 	wire	finsh_wr;
// 	reg [BURST_COUNT_WIDTH-1:0] wr_busy_posedge_cnt;
// 	wire add_wr_busy_posedge_cnt;
// 	wire end_wr_busy_posedge_cnt;
// 	always @(posedge clk) begin
// 	    if(arstn==1'b0 || start_one_new_txn==1'b1)begin
// 	        wr_busy_posedge_cnt <= 0;
// 	    end
// 	    else if(add_wr_busy_posedge_cnt)begin
// 	        if(end_wr_busy_posedge_cnt)
// 	            wr_busy_posedge_cnt <= 0;
// 	        else
// 	            wr_busy_posedge_cnt <= wr_busy_posedge_cnt + 1;
// 	    end
// 	end
// 	assign add_wr_busy_posedge_cnt = axi_txn_wr_busy_ff && (!axi_txn_wr_busy_ff2); //上升沿   
// 	assign end_wr_busy_posedge_cnt = add_wr_busy_posedge_cnt && wr_busy_posedge_cnt == BURST_NUM -1;
// 	assign finsh_wr = end_wr_busy_posedge_cnt;

 	wire    finsh_rd;
 	reg [BURST_COUNT_WIDTH-1:0] rd_busy_posedge_cnt;
 	wire add_rd_busy_posedge_cnt;
 	wire end_rd_busy_posedge_cnt;
 	always @(posedge clk) begin
 	    if(arstn==1'b0 || start_one_new_txn==1'b1)begin
 	        rd_busy_posedge_cnt <= 0;
 	    end
 	    else if(add_rd_busy_posedge_cnt)begin
 	        if(end_rd_busy_posedge_cnt)
 	            rd_busy_posedge_cnt <= 0;
 	        else
 	            rd_busy_posedge_cnt <= rd_busy_posedge_cnt + 1;
 	    end
 	end
 	assign add_rd_busy_posedge_cnt = axi_txn_rd_busy_ff && (!axi_txn_rd_busy_ff2); //上升沿   
 	assign end_rd_busy_posedge_cnt = add_rd_busy_posedge_cnt && rd_busy_posedge_cnt == BURST_NUM -1;
	assign finsh_rd = end_rd_busy_posedge_cnt;

    //一次读传输完成标志
 	assign rd_done_flag = axi_txn_rd_busy_ff2 && (!axi_txn_rd_busy_ff);
 	always @(posedge clk)										      
	  begin                                                                        
	    if (arstn == 0 )                                                   
	      begin                                                                    
	        axi_txn_rd_busy_ff  <= 1'b0;                                                   
	        axi_txn_rd_busy_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        axi_txn_rd_busy_ff  <= axi_txn_rd_busy;
	        axi_txn_rd_busy_ff2 <= axi_txn_rd_busy_ff;                                                                 
	      end                                                                      
	  end
	//打一拍
	always @(posedge clk)begin
		rd_done_flag_r <= rd_done_flag;
	end
	//一次写传输完成标志
 	assign wr_done_flag = axi_txn_wr_busy_ff2 && (!axi_txn_wr_busy_ff);
 	always @(posedge clk)										      
	  begin                                                                        
	    if (arstn == 0 )                                                   
	      begin                                                                    
	        axi_txn_wr_busy_ff  <= 1'b0;                                                   
	        axi_txn_wr_busy_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        axi_txn_wr_busy_ff  <= axi_txn_wr_busy;
	        axi_txn_wr_busy_ff2 <= axi_txn_wr_busy_ff;                                                                 
	      end                                                                      
	  end
	//打一拍
	always @(posedge clk)begin
		wr_done_flag_r <= wr_done_flag;
	end

	//读传输次数计数器
	//计满时表示已经传输完成一帧图像
	always @(posedge clk)begin
	    if(arstn==1'b0 || start_one_new_txn==1'b1) begin
	        rd_burst_count <= 0;
	    end
	    else if(add_rd_burst_count) begin
	        if(end_rd_burst_count)
	            rd_burst_count <= BURST_NUM-1;
	        else
	            rd_burst_count <= rd_burst_count + 1;
	    end
	end
	assign add_rd_burst_count = rd_done_flag;
	assign end_rd_burst_count = add_rd_burst_count && rd_burst_count == BURST_NUM-1;
	//写传输次数计数器
	//计满时表示已经传输完成一帧图像
	always @(posedge clk)begin
	    if(arstn==1'b0 || start_one_new_txn==1'b1)begin
	        wr_burst_count <= 0;
	    end
	    else if(add_wr_burst_count)begin
	        if(end_wr_burst_count)
	            wr_burst_count <= BURST_NUM-1;
	        else
	            wr_burst_count <= wr_burst_count + 1;
	    end
	end
	assign add_wr_burst_count = wr_done_flag;
	assign end_wr_burst_count = add_wr_burst_count && wr_burst_count == BURST_NUM-1;

	//读地址自动配置
	always @(posedge clk)                                                      
	begin
	  if (arstn == 0)
	  	begin
	  	  axi_txn_rd_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_rd_addr     <=  base_addr;
	      axi_txn_rd_cfg_valid     <= 1'b0;
	  	end
	  else if (start_one_new_txn == 1) 
	    begin
	      axi_txn_rd_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_rd_addr     <=  base_addr;
	      axi_txn_rd_cfg_valid     <= 1'b1;
	    end
	  else if (rd_done_flag_r)
	  	begin
	  	  axi_txn_rd_burst_counter <= COUNTER_NUM_2KB;
		  axi_txn_base_rd_addr     <= base_addr + (rd_burst_count<<11);
	      axi_txn_rd_cfg_valid     <= 1'b1;
	  	end
	  else
	  	begin
	  	  axi_txn_rd_cfg_valid     <= 1'b0;
	  	end
	end
	//写地址自动配置
	always @(posedge clk)                                                      
	begin
	  if (arstn == 0)
	  	begin
	  	  axi_txn_wr_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_wr_addr     <=  base_addr;
	      axi_txn_wr_cfg_valid     <= 1'b0;
	  	end
	  else if (start_one_new_txn == 1) 
	    begin
	      axi_txn_wr_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_wr_addr     <=  base_addr;
	      axi_txn_wr_cfg_valid     <= 1'b1;
	    end
	  else if (wr_done_flag_r)
	  	begin
	  	  axi_txn_wr_burst_counter <= COUNTER_NUM_2KB;
		  axi_txn_base_wr_addr     <= base_addr + (wr_burst_count<<11);
	      axi_txn_wr_cfg_valid     <= 1'b1;
	  	end
	  else
	  	begin
	  	  axi_txn_wr_cfg_valid     <= 1'b0;
	  	end
	end

	reg clear_flag;
	reg enable_read;
	reg enable_write;
	reg end_flag;

	//捕获完成脉冲
	reg finsh_rd_r;
	reg finsh_wr_r;
	always  @(posedge clk)begin
	    if((~arstn) || (start_one_new_txn == 1'b1)) begin
	    	finsh_rd_r <= 1'b0;
	    end
	    else if(finsh_rd) begin
	    	finsh_rd_r <= 1'b1;
	    end
	    else begin
	    	finsh_rd_r <= finsh_rd_r;
	    end
	end

	always  @(posedge clk)begin
	    if((~arstn) || (start_one_new_txn == 1'b1)) begin
	    	finsh_wr_r <= 1'b0;
	    end
	    else if(finsh_wr) begin
	    	finsh_wr_r <= 1'b1;
	    end
	    else begin
	    	finsh_wr_r <= finsh_wr_r;
	    end
	end

	//获取配置
	always  @(posedge clk)begin
	    if(~arstn)begin
	    	clear_flag <= 1'b0;
	    end
	    else if(clear_valid) begin
	    	clear_flag <= clear;
	    end
	    else begin
	    	clear_flag <= clear_flag;
	    end
	end

	reg end_wr_burst_count_r;
	always  @(posedge clk)begin
	    end_wr_burst_count_r <= end_wr_burst_count;
	end

	//无论是清零DDR 还是 读数据后写回，都是以最后一次写传输完成为标志
	always  @(posedge clk)begin
	    if(~arstn) begin
	    	txn_done <= 1'b1;
	    end
	    else if (start_one_new_txn == 1'b1) begin
	    	txn_done <= 1'b0;
	    end
	    else if (end_wr_burst_count_r) begin
	    	txn_done <= 1'b1;
	    end
	    else begin
	    	txn_done <= txn_done;
	    end
	end

	//四段式状态机
	localparam STATE_W = 6;
	reg [STATE_W-1:0] state0_n;//next_state
	reg [STATE_W-1:0] state0_c;//current_state

	reg [STATE_W-1:0] state1_n;//next_state
	reg [STATE_W-1:0] state1_c;//current_state

    localparam IDLE                  = 6'b000001;
    localparam ARBITE                = 6'b000010;
    localparam READ                  = 6'b000100;
    localparam WAIT_READ             = 6'b001000;
    localparam WRITE                 = 6'b010000;
    localparam WAIT_WRITE            = 6'b100000;

	wire IDLE2ARBITE_start0;         
	wire ARBITE2WRITE_start0;    
	wire ARBITE2IDLE_start0;      
	wire WRITE2WAIT_WRITE_start0; 
	wire WAIT_WRITE2ARBITE_start0;

	//设计转移条件
	assign IDLE2ARBITE_start0       = (state0_c == IDLE       && start_one_new_txn == 1'b1);
	assign ARBITE2WRITE_start0      = (state0_c == ARBITE     && enable_write == 1'b1);
	assign ARBITE2IDLE_start0       = (state0_c == ARBITE     && end_flag     == 1'b1);
	assign WRITE2WAIT_WRITE_start0  = (state0_c == WRITE                             );
	assign WAIT_WRITE2ARBITE_start0 = (state0_c == WAIT_WRITE && wr_done_flag == 1'b1);

	wire IDLE2ARBITE_start1;      
	wire ARBITE2READ_start1;     
	wire ARBITE2IDLE_start1;      
	wire READ2WAIT_READ_start1;   
	wire WAIT_READ2ARBITE_start1; 

	//设计转移条件
	assign IDLE2ARBITE_start1       = (state1_c == IDLE       && start_one_new_txn == 1'b1);
	assign ARBITE2READ_start1       = (state1_c == ARBITE     && enable_read  == 1'b1);
	assign ARBITE2IDLE_start1       = (state1_c == ARBITE     && end_flag     == 1'b1);
	assign READ2WAIT_READ_start1    = (state1_c == READ                              );
	assign WAIT_READ2ARBITE_start1  = (state1_c == WAIT_READ  && rd_done_flag == 1'b1);

	//同步时序always模块，格式化描述寄存器输出（可有多个输出)
	always  @(posedge clk)begin
	    if((~arstn) || (start_one_new_txn == 1'b1)) begin
	    	end_flag     <= 1'b0;
	    	enable_write <= 1'b0;
	    end
	    else if(state0_c == ARBITE) begin
	    	if (clear_flag == 1'b1) begin //清零缓存
	    		if(finsh_wr_r && wr_fifo_empty) begin
	    			end_flag     <= 1'b1;
	    			enable_write <= 1'b0;
	    		end
	    		else begin
	    			if((wr_fifo_wr_data_count >= 256) || (finsh_wr_r && (~wr_fifo_empty))) begin
	    				end_flag     <= 1'b0;
	    				enable_write <= 1'b1;
	    			end
	    			else begin //等待有足够的数据在FIFO中
	    				end_flag     <= 1'b0;
	    				enable_write <= 1'b0;
	    			end
	    		end
	    	end
	    	else begin //读和写调度
	    		if(finsh_wr_r && wr_fifo_empty && finsh_rd_r) begin //读完成与写完成，确保所有数据已经读取到和写到DDR
	    			end_flag     <= 1'b1;
	    			enable_write <= 1'b0;
	    		end
	    		else begin
	    			if (wr_fifo_wr_data_count >= 256 || (finsh_wr_r && (~wr_fifo_empty))) begin
	    				end_flag     <= 1'b0;
	    				enable_write <= 1'b1;
	    			end 
	    			else begin
	    				end_flag     <= 1'b0;
	    				enable_write <= 1'b0;
	    			end
	    		end
	    	end
	    end
	    else begin
	        end_flag     <= 1'b0;
	    	enable_write <= 1'b0;
	    end
	end

	//同步时序always模块，格式化描述寄存器输出（可有多个输出)
	always  @(posedge clk)begin
	    if((~arstn) || (start_one_new_txn == 1'b1)) begin
	    	enable_read  <= 1'b0;
	    end
	    else if(state1_c == ARBITE) begin
	    	if (clear_flag == 1'b1) begin //清零缓存
	    		enable_read  <= 1'b0;
	    	end
	    	else begin //读和写调度
				if(rd_fifo_rd_data_count < 256 && (~finsh_rd_r)) begin
	    			enable_read  <= 1'b1;
	    		end
	    		else begin
	    			enable_read  <= 1'b0;
	    		end
	    	end
	    end
	    else begin
	    	enable_read  <= 1'b0;
	    end
	end

	always  @(posedge clk)begin
	    if(~arstn)begin   
	        init_axi_txn_wr <= 1'b0;    
	    end
	    else if(state0_c == WRITE)begin
	        init_axi_txn_wr <= 1'b1;   
	    end
	    else begin
	        init_axi_txn_wr <= 1'b0; 
	    end
	end
	always  @(posedge clk)begin
	    if(~arstn)begin
	        init_axi_txn_rd <= 1'b0;      
	    end
	    else if(state1_c == READ)begin
	        init_axi_txn_rd <= 1'b1; 
	    end
	    else begin
	        init_axi_txn_rd <= 1'b0;
	    end
	end

	//组合逻辑always模块，描述状态转移条件判断
	always@(*)begin
	    case(state0_c)
	        IDLE:begin
	            if (IDLE2ARBITE_start0) begin
	                state0_n = ARBITE;
	            end
	            else begin
	                state0_n = state0_c;
	            end
	        end
	        ARBITE:begin
				if (ARBITE2WRITE_start0) begin
	            	state0_n = WRITE;
	            end
	            else if (ARBITE2IDLE_start0) begin
	            	state0_n = IDLE;
	            end
	            else begin
	                state0_n = state0_c;
	            end
	        end
	        WRITE:begin
	        	if(WRITE2WAIT_WRITE_start0)begin
	                state0_n = WAIT_WRITE;
	            end
	            else begin
	                state0_n = state0_c;
	            end
	        end
	        WAIT_WRITE:begin
	        	if(WAIT_WRITE2ARBITE_start0)begin
	                state0_n = ARBITE;
	            end
	            else begin
	                state0_n = state0_c;
	            end
	        end
	        default:begin
	            state0_n = IDLE;
	        end
	    endcase
	end
	//组合逻辑always模块，描述状态转移条件判断
	always@(*)begin
	    case(state1_c)
	        IDLE:begin
	            if (IDLE2ARBITE_start1) begin
	                state1_n = ARBITE;
	            end
	            else begin
	                state1_n = state1_c;
	            end
	        end
	        ARBITE:begin
	            if (ARBITE2READ_start1) begin
	                state1_n = READ;
	            end
	            else if (ARBITE2IDLE_start1) begin
	            	state1_n = IDLE;
	            end
	            else begin
	                state1_n = state1_c;
	            end
	        end
	        READ:begin
	            if(READ2WAIT_READ_start1)begin
	                state1_n = WAIT_READ;
	            end
	            else begin
	                state1_n = state1_c;
	            end
	        end
	        WAIT_READ:begin
	        	if(WAIT_READ2ARBITE_start1)begin
	                state1_n = ARBITE;
	            end
	            else begin
	                state1_n = state1_c;
	            end
	        end
	        default:begin
	            state1_n = IDLE;
	        end
	    endcase
	end

	//同步时序always模块，格式化描述次态寄存器迁移到现态寄存器
	always@(posedge clk)begin
	    if(~arstn)begin
	        state0_c <= IDLE;
	    end
	    else begin
	        state0_c <= state0_n;
	    end
	end

	always@(posedge clk)begin
	    if(~arstn)begin
	        state1_c <= IDLE;
	    end
	    else begin
	        state1_c <= state1_n;
	    end
	end




endmodule