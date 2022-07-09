 //状态控制
module control_unit #(
	parameter integer ANGLE_NUM_DIV_10 = 180/10,
	parameter integer IMG_N = 256
)
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low
	//控制单元控制信号
	input wire start_fbp,
	output reg finsh_fbp,
	///////////读角度数据///////////////
	//单周期脉冲信号
	//txn_done为 1 时 start_one_new_txn 可以产生一个脉冲,开始一帧图像的传输
	//接着等待one_angle_txn_done为 1 ，当one_angle_txn_done == 1 时 表示已经传输完一个角度的数据
	//这个时候get_next_angle 可以产生一个脉冲 开始传输下一个角度的数据
	output reg			start_one_new_txn_angle_data,
	output reg			get_next_angle,
	input wire			one_angle_txn_done,
	input wire			angle_data_txn_done,

	////////////仲裁器控制//////////////
	//txn_done为 1 时 start_one_new_txn 可以产生一个脉冲,开始一帧图像的传输。
	output reg	start_one_new_txn_arbiter, // 用于地址重置
	output reg	clear,                     // clear为1时，表明当前传输是清零操作，clear为0时，表明是正常读图像与写图像操作。
	output reg	clear_valid,               // clear配置有效标志位，最好在start_one_new_txn脉冲前配置好
	output wire finsh_wr,
	input wire	arbiter_txn_done,		   // 完成数据的传输

	///////////////RAM接口//////////////
    //完成一行数据写入信号,高电平脉冲信号
    input wire          complete_wr, 
    //读写数据控制，由状态机控制
    output reg			odd_ram_wea,
    output reg			even_ram_wea,

    //////////计算单元控制接口///////////
    output reg start_calc,
    input wire finsh_calc,
    output wire [31:0] rd_data,
    output wire rd_data_valid,
    input wire rd_data_ready,
    input wire [31:0] wr_data,
    input wire wr_data_valid,
    output wire wr_data_ready,

    /////////////FIFO接口////////////////
	//read FIFO control   64*512 32*1024 
	input wire			rd_fifo_full,
	input wire			rd_fifo_empty,
	output wire			rd_fifo_rd_en,
	input wire	[31:0]	rd_fifo_dout,
	//write FIFO control 32*1024  64*512
	input wire			wr_fifo_full,
	input wire			wr_fifo_empty,
	output wire			wr_fifo_wr_en,
	output wire	[31:0]	wr_fifo_din
);
	//无用信号
	reg finsh_rd;

	function integer clogb2 (input integer bit_depth);              
	begin                                                           
	  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	    bit_depth = bit_depth >> 1;                                 
	  end                                                           
	endfunction

	parameter integer TOTAL_NUM = IMG_N*IMG_N; 		 //258*258; //图像像素总数	
	parameter integer LOOP0_N_W = clogb2(ANGLE_NUM_DIV_10-1);
	parameter integer TOTAL_NUM_W = clogb2(TOTAL_NUM-1);

	reg [LOOP0_N_W-1:0] loop0_cnt;

	reg [TOTAL_NUM_W-1:0] wr_fifo_cnt;
	wire add_wr_fifo_cnt;
	wire end_wr_fifo_cnt;

	always @(posedge clk)begin
	    if(arstn == 0 || start_one_new_txn_arbiter == 1'b1)begin
	        wr_fifo_cnt <= 0;
	    end
	    else if(add_wr_fifo_cnt)begin
	        if(end_wr_fifo_cnt)
	            wr_fifo_cnt <= TOTAL_NUM-1;
	        else
	            wr_fifo_cnt <= wr_fifo_cnt + 1;
	    end
	end
	assign add_wr_fifo_cnt = wr_fifo_wr_en;       
	assign end_wr_fifo_cnt = add_wr_fifo_cnt && wr_fifo_cnt== TOTAL_NUM-1;

	reg [TOTAL_NUM_W-1:0] rd_fifo_cnt;
	wire add_rd_fifo_cnt;
	wire end_rd_fifo_cnt;
	always @(posedge clk)begin
	    if(arstn == 0 || start_one_new_txn_arbiter == 1'b1)begin
	        rd_fifo_cnt <= 0;
	    end
	    else if(add_rd_fifo_cnt)begin
	        if(end_rd_fifo_cnt)
	            rd_fifo_cnt <= TOTAL_NUM-1;
	        else
	            rd_fifo_cnt <= rd_fifo_cnt + 1;
	    end
	end
	assign add_rd_fifo_cnt = rd_fifo_rd_en;       
	assign end_rd_fifo_cnt = add_rd_fifo_cnt && rd_fifo_cnt== TOTAL_NUM-1;

	reg start_calc_mst;
	reg finsh_calc_mst;

	reg switch_en;
	reg wr_fifo_wr_en_clean;
	reg [31:0] wr_fifo_din_clean;
	reg rd_fifo_rd_en_clean;
	wire wr_fifo_wr_en_calc;
	wire [31:0] wr_fifo_din_calc;
	wire rd_fifo_rd_en_calc;
	reg finsh_wr_clean;
	reg finsh_wr_calc;

	assign wr_fifo_wr_en = switch_en == 0 ? wr_fifo_wr_en_clean : wr_fifo_wr_en_calc;
	assign wr_fifo_din   = switch_en == 0 ? wr_fifo_din_clean   : wr_fifo_din_calc;
	assign rd_fifo_rd_en = switch_en == 0 ? rd_fifo_rd_en_clean : rd_fifo_rd_en_calc;
	assign finsh_wr      = switch_en == 0 ? finsh_wr_clean      : finsh_wr_calc;

	//状态机0
	reg	[11-1:0]	mst_state0;
    localparam IDLE                  = 11'b000_0000_0001;
    localparam START_TXN_ANGLE_DATA  = 11'b000_0000_0010;
    localparam CONFIG_CLEAN          = 11'b000_0000_0100;
    localparam START_CLEAN           = 11'b000_0000_1000;
    localparam WAIT_CLEAN            = 11'b000_0001_0000;
    localparam CONFIG_NO_CLEAN       = 11'b000_0010_0000;
    localparam INIT_LOOP             = 11'b000_0100_0000;
    localparam WAIT_CALC             = 11'b000_1000_0000;
    localparam UPDATE_LOOP           = 11'b001_0000_0000;
    localparam JUDGEMENT_BRANCH      = 11'b010_0000_0000;
    localparam CLEAN_RD_FIFO         = 11'b100_0000_0000;

    always @ (posedge clk)    
	  begin                                                                                                     
	    if (arstn == 1'b0 )                                                                             
	      begin
	      	switch_en <= 1'b0;
	      	wr_fifo_wr_en_clean <= 1'b0;
	      	wr_fifo_din_clean   <= 32'd0;     
	      	finsh_wr_clean <= 1'b0;
	      	rd_fifo_rd_en_clean <= 1'b0;
	        finsh_fbp <= 1'b1;
	        start_one_new_txn_angle_data <= 1'b0;
	        start_one_new_txn_arbiter <= 1'b0;
	        clear <= 1'b1;
			clear_valid <= 1'b0;
			start_calc_mst <= 1'b0;
			loop0_cnt <= 0;    
			mst_state0 <= IDLE;                             
	      end                                                                                                   
	    else                                                                                                    
	      begin
	      	case (mst_state0)
	      	  IDLE:
	      	    begin
	      	    	switch_en <= 1'b0;
	      	    	if(start_fbp == 1'b1) begin
	      	    		finsh_fbp <= 1'b0;
	      	    		mst_state0 <= START_TXN_ANGLE_DATA;
	      	    	end
	      	    	else begin
	      	    		finsh_fbp <= 1'b1;
	      	    		mst_state0 <= IDLE;
	      	    	end
				end
	          START_TXN_ANGLE_DATA:
	            begin
	            	if(angle_data_txn_done) begin
	            		start_one_new_txn_angle_data <= 1'b1;
	            		mst_state0 <= CONFIG_CLEAN;
	            	end 
	            	else begin
	            		mst_state0 <= START_TXN_ANGLE_DATA;
	            	end
				end
			  CONFIG_CLEAN:
	            begin
				  start_one_new_txn_angle_data <= 1'b0;
				  clear <= 1'b1;
				  clear_valid <= 1'b1;
				  mst_state0 <= START_CLEAN;
				end
	          START_CLEAN:
	            begin
	              clear <= 1'b0;
				  clear_valid <= 1'b0;
	              if (arbiter_txn_done) begin //确保传输已经完成
	              	start_one_new_txn_arbiter <= 1'b1;
				  	mst_state0 <= WAIT_CLEAN;
	              end 
	              else begin
	              	mst_state0 <= START_CLEAN;
	              end
				end
			  WAIT_CLEAN:
	            begin
	              start_one_new_txn_arbiter <= 1'b0;
	              if (end_wr_fifo_cnt) begin
	              	wr_fifo_wr_en_clean <= 1'b0;
	              	wr_fifo_din_clean <= 32'd0;
	              	finsh_wr_clean <= 1'b1;
	              	mst_state0 <= CONFIG_NO_CLEAN;
	              end
	              else begin
	              	finsh_wr_clean <= 1'b0;
	              	if (wr_fifo_full) begin
	              		wr_fifo_wr_en_clean <= 1'b0;
	              		wr_fifo_din_clean   <= 32'd0;
	              	end
	              	else begin
	              		wr_fifo_wr_en_clean <= 1'b1;
	              		wr_fifo_din_clean   <= 32'd0;
	              	end
	              	mst_state0 <= WAIT_CLEAN;
	              end
				end
			  CONFIG_NO_CLEAN:
			    begin
			    	finsh_wr_clean <= 1'b0;
			        if (arbiter_txn_done) begin //确保传输已经完成
			        	clear <= 1'b0;
				  		clear_valid <= 1'b1;
				  		mst_state0 <= INIT_LOOP;
			        end
			        else begin
			        	clear <= 1'b0;
			        	clear_valid <= 1'b0;
			        	mst_state0 <= CONFIG_NO_CLEAN;
			        end
			    end
			  INIT_LOOP:
	            begin
	              loop0_cnt <= 0;
	              clear <= 1'b0;
				  clear_valid <= 1'b0;
				  if(rd_fifo_empty) begin 
				  	switch_en <= 1'b1;
				  	mst_state0 <= JUDGEMENT_BRANCH;
				  end
				  else begin
				  	switch_en <= 1'b0;
				  	mst_state0 <= CLEAN_RD_FIFO;
				  end
				end
			  JUDGEMENT_BRANCH:
			    begin
	              if(rd_fifo_empty) begin
	              	if (loop0_cnt == ANGLE_NUM_DIV_10) begin
	              		start_calc_mst <= 1'b0;
		              	start_one_new_txn_arbiter <= 1'b0;
		              	switch_en  <= 1'b0;
	              		mst_state0 <= IDLE;
	              	end
	              	else begin 
	              		switch_en <= 1'b1;
		              	if (arbiter_txn_done) begin //确保传输已经完成
		              		start_calc_mst <= 1'b1;
		              		start_one_new_txn_arbiter <= 1'b1;
					  		mst_state0 <= WAIT_CALC;
		              	end 
		              	else begin
		              		start_calc_mst <= 1'b0;
		              		start_one_new_txn_arbiter <= 1'b0;
		              		mst_state0 <= JUDGEMENT_BRANCH;
		              	end
		            end
	              end else begin
	              	switch_en  <= 1'b0;
	                mst_state0 <= CLEAN_RD_FIFO;
	              end
				end
			  WAIT_CALC:
	            begin
	              start_calc_mst <= 1'b0;
	              start_one_new_txn_arbiter <= 1'b0;
	              if (finsh_calc_mst == 1'b1) begin
	              	mst_state0 <= UPDATE_LOOP;
	              end
	              else begin
	              	mst_state0 <= WAIT_CALC;
	              end
				end
			  UPDATE_LOOP:
			    begin
			      loop0_cnt <= loop0_cnt + 1'b1;
			      mst_state0 <= JUDGEMENT_BRANCH;
				end
			  CLEAN_RD_FIFO:
			    begin
			      if (rd_fifo_empty) begin
			      	rd_fifo_rd_en_clean = 1'b0;
			      	mst_state0 <= JUDGEMENT_BRANCH;
			      end 
			      else begin
			      	rd_fifo_rd_en_clean = 1'b1;
			      	mst_state0 <= CLEAN_RD_FIFO;
			      end
				end
	          default :                                                                                         
	            begin                                                                               
	              mst_state0  <= IDLE;                                                              
	            end
	        endcase
	      end
	  end
	//捕获完成信号
	reg angle_data_complete_flag;
	reg clean_complete_flag;
	always @ (posedge clk)  begin  
		if (arstn == 1'b0 || start_one_new_txn_angle_data == 1'b1) begin
		  	angle_data_complete_flag <= 1'b0;                      
		end
		else if (get_next_angle == 1'b1 || clean_complete_flag == 1'b1) begin
			angle_data_complete_flag <= 1'b0;
		end                                                                                                 
		else if (complete_wr) begin    
		  	angle_data_complete_flag <= 1'b1;
		end
		else begin
		  	angle_data_complete_flag <= angle_data_complete_flag;
		end
	end


	//状态机1
	reg	[4-1:0]	mst_state1;

	localparam IDLE_MST1           = 4'b0001;
    localparam WAIT_ANGLE_DATA 	   = 4'b0010;
    localparam START_CALC          = 4'b0100;
    localparam GET_NEXT_ANGLE_DATA = 4'b1000;

	always @ (posedge clk)                                                                            
	begin                            
		if (arstn == 1'b0 )                                                                             
	    begin
	        odd_ram_wea         <= 1'b1;
			even_ram_wea        <= 1'b1;
			clean_complete_flag <= 1'b0;
			finsh_calc_mst      <= 1'b0;//脉冲信号
			start_calc          <= 1'b0;
			get_next_angle      <= 1'b0;
			mst_state1          <= IDLE_MST1;                             
	      end                                                                                                   
	    else                                                                                                    
	    begin
	    	case (mst_state1)
	      	  IDLE_MST1:
	      	    begin
	                odd_ram_wea    <= 1'b1;
					even_ram_wea   <= 1'b1;
					get_next_angle <= 1'b0;
					finsh_calc_mst <= 1'b0;
					start_calc     <= 1'b0;
	      	    	if(start_calc_mst == 1'b1) begin
	      	    		mst_state1 <= WAIT_ANGLE_DATA;
	      	    	end
	      	    	else begin
	      	    		mst_state1 <= IDLE;
	      	    	end
				end
			  WAIT_ANGLE_DATA:
			    begin
			    	if(angle_data_complete_flag == 1'b1) begin
	                    odd_ram_wea         <= 1'b0;
						even_ram_wea        <= 1'b0;
						clean_complete_flag <= 1'b1;
						start_calc          <= 1'b1;
	                    mst_state1          <= START_CALC;
	      	    	end
	      	    	else begin
	                    odd_ram_wea         <= 1'b1;
						even_ram_wea        <= 1'b1;
	                    mst_state1          <= WAIT_ANGLE_DATA;
	      	    	end
			    end
			  START_CALC:
			    begin
			        start_calc          <= 1'b0;
			        clean_complete_flag <= 1'b0;
			        if(finsh_calc == 1'b1) begin
			        	mst_state1 <= GET_NEXT_ANGLE_DATA;
			        end
			        else begin
			        	mst_state1 <= START_CALC;
			        end
			    end
			  GET_NEXT_ANGLE_DATA:
			    begin
					if (loop0_cnt == ANGLE_NUM_DIV_10 - 1) begin //最后一次不需要再获取角度数据
						get_next_angle <= 1'b0;
			    		finsh_calc_mst <= 1'b1;
			    		mst_state1 <= IDLE_MST1;
					end
					else if(one_angle_txn_done) begin //确保没有在传输数据
			    		get_next_angle <= 1'b1;
			    		finsh_calc_mst <= 1'b1;
			    		mst_state1 <= IDLE_MST1;
			    	end
			    	else begin
			    		mst_state1 <= GET_NEXT_ANGLE_DATA;
			    	end
			    end
			  default :                                                                                         
	            begin                                                                               
	              mst_state1  <= IDLE_MST1;                                                              
	            end
	        endcase
	    end
	end

	always @(posedge clk) begin
		if(~arstn) begin
			finsh_wr_calc     <= 1'b0;
		end 
		else if(mst_state1 == START_CALC) begin
			if(end_wr_fifo_cnt && (~finsh_wr_calc)) begin
				finsh_wr_calc <= 1'b1;
			end
			else begin
				finsh_wr_calc <= 1'b0;
			end		
		end
		else begin
			finsh_wr_calc     <= 1'b0;
		end
	end

	always @(posedge clk) begin
		if(~arstn) begin
			finsh_rd          <= 1'b0;
		end 
		else if(mst_state1 == START_CALC) begin
			if(end_rd_fifo_cnt && (~finsh_rd)) begin
				finsh_rd      <= 1'b1;
			end
			else begin
				finsh_rd      <= 1'b0;
			end
		end
		else begin
			finsh_rd          <= 1'b0;
		end
	end

	//握手时序
	assign wr_data_ready  = (~wr_fifo_full);
	assign wr_fifo_wr_en_calc = wr_data_valid;
	assign wr_fifo_din_calc = wr_data;
	
	//确保拉高一帧图像数量次数 valid
	reg en_rd_fifo_flag;
	assign rd_data = rd_fifo_dout;
	assign rd_fifo_rd_en_calc = en_rd_fifo_flag == 1'b1 ? 
								(rd_fifo_empty || (~rd_data_ready)) ? 1'b0 : 1'b1
								: 1'b0;
	assign rd_data_valid      = rd_fifo_rd_en_calc;

	always @(posedge clk) begin
		if(~arstn) begin
			en_rd_fifo_flag    <= 1'b0;
		end 
		else if (start_calc == 1'b1) begin
			en_rd_fifo_flag    <= 1'b1;
		end
		else if (en_rd_fifo_flag == 1'b1) begin
			if (end_rd_fifo_cnt) begin
				en_rd_fifo_flag    <= 1'b0;
			end
			else begin
				en_rd_fifo_flag    <= 1'b1;
			end
		end
		else begin
			en_rd_fifo_flag    <= 1'b0;
		end
	end

//	always @(posedge clk) begin
//		if(~arstn) begin
//			rd_fifo_rd_en_calc <= 1'b0;
//			rd_data_valid      <= 1'b0;
//			en_rd_fifo_flag    <= 1'b0;
//		end 
//		else if (start_calc == 1'b1) begin
//			rd_fifo_rd_en_calc <= 1'b0;
//			rd_data_valid      <= 1'b0;
//			en_rd_fifo_flag    <= 1'b1;
//		end
//		else if (en_rd_fifo_flag == 1'b1) begin
//			if (end_rd_fifo_cnt) begin
//				rd_fifo_rd_en_calc <= 1'b0;
//				rd_data_valid      <= 1'b0;
//				en_rd_fifo_flag    <= 1'b0;
//			end
//			else begin
//				en_rd_fifo_flag    <= 1'b1;
//				if (rd_fifo_empty || (~rd_data_ready)) begin
//					rd_fifo_rd_en_calc <= 1'b0;
//					rd_data_valid      <= 1'b0;
//				end
//				else begin
//					rd_fifo_rd_en_calc <= 1'b1;
//					rd_data_valid      <= 1'b1;
//				end
//			end
//		end
//		else begin
//			rd_fifo_rd_en_calc <= 1'b0;
//			rd_data_valid      <= 1'b0;
//			en_rd_fifo_flag    <= 1'b0;
//		end
//	end

//	//组合逻辑
//	always @(*) begin
//		if (mst_state1 == START_CALC) begin
//			if (rd_fifo_cnt == TOTAL_NUM-1 || rd_fifo_empty || (~rd_data_ready)) begin
//				rd_fifo_rd_en_calc = 1'b0;
//				rd_data_valid      = 1'b0;
//			end 
//			else begin
//				rd_fifo_rd_en_calc = 1'b1;
//				rd_data_valid      = 1'b1;
//			end
//		end
//		else begin
//			rd_fifo_rd_en_calc <= 1'b0;
//			rd_data_valid      <= 1'b0;
//		end
//	end

endmodule
