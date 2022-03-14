/***************************************************
*	Module Name		:	uart_sdram_tft		   
*	Engineer		   :	小梅哥
*	Target Device	:	EP4CE10F17C8
*	Tool versions	:	Quartus II 13.0
*	Create Date		:	2017-3-31
*	Revision		   :	v1.0
*	Description		:  串口传图顶层文件
**************************************************/
module uart_sdram_tft_sobel(
	Clk50M,
	Rst_n,

	Uart_rx,

	Sd_Sa,
	Sd_Ba,
	Sd_Cs_n,
	Sd_Cke,
	Sd_Clk,
	Sd_Ras_n,
	Sd_Cas_n,
	Sd_We_n,
	Sd_Dq,
	Sd_Dqm,

	TFT_rgb,
	TFT_hs,
	TFT_vs,
	TFT_clk,
	TFT_de,
	TFT_pwm
);
	`include "rtl/sdram/Sdram_Params.h"

	parameter   Baud_set = 3'd5;       //波特率设置，1562500bps
	parameter   img_h    = 800;        //图片宽度
	parameter   img_v    = 480;        //图片高度
	parameter   img_data_byte = img_h*img_v;

	input               Clk50M;     //系统时钟
	input               Rst_n;      //系统复位信号
	input               Uart_rx;    //串口接收信号

	output[`ASIZE-1:0]  Sd_Sa;      //SDRAM地址总线  
	output[`BSIZE-1:0]  Sd_Ba;      //SDRAMBank地址   
	output              Sd_Cs_n;    //SDRAM片选信号        
	output              Sd_Cke;     //SDRAM时钟使能
	output              Sd_Clk;     //SDRAM时钟信号 
	output              Sd_Ras_n;   //SDRAM行地址选
	output              Sd_Cas_n;   //SDRAM列地址选
	output              Sd_We_n;    //SDRAM写使能  
	inout [`DSIZE-1:0]  Sd_Dq;      //SDRAM数据总线
	output[`DSIZE/8-1:0]Sd_Dqm;     //SDRAM数据掩码

	output [15:0]       TFT_rgb;    //TFT数据输出
	output              TFT_hs;     //TFT行同步信号
	output              TFT_vs;     //TFT场同步信号
	output              TFT_clk;    //TFT像素时钟
	output              TFT_de;     //TFT数据使能
	output              TFT_pwm;    //TFT背光控制
	
	wire                Clk;        //SDRAM控制器时钟
	wire                Wr_en;      //写SDRAM使能信号    
	wire [7:0]          Wr_data;    //写SDRAM数据
	wire                Rd_en;      //读SDRAM使能信号
	wire [`DSIZE-1:0]   Rd_data;    //读SDRAM数据
	
	wire                clk33M;      //TFT屏控制器时钟
	reg [31:0]          byte_cnt;   //图片数据计数器
	reg                 disp_state; //图片可显示状态 
	wire                tft_begin;  //TFT屏帧起始标志位
	wire                sdram_clk;  //SDRAM时钟信号
	
	//串口传图图片数据计数器
	always@(posedge Clk50M or negedge Rst_n)
	begin
		if(!Rst_n)
			byte_cnt <= 32'd0;
		else if(Wr_en)begin
			if(byte_cnt <(img_data_byte<<1))
				byte_cnt <= byte_cnt + 32'd1;
			else
				byte_cnt <= (img_data_byte<<1);
		end
		else
			byte_cnt <= byte_cnt;
	end
	
	//串口传图图片数据传输完，进入图片可显示状态
	always@(posedge Clk or negedge Rst_n)
	begin
		if(!Rst_n)
			disp_state <= 1'b0;
		else if(byte_cnt == (img_data_byte<<1))
			disp_state <= 1'b1;
		else
			disp_state <= 1'b0;
	end
	
	//SDRAM控制器读FIFO的读使能
	assign Rd_en = (disp_state && TFT_de)?1'b1:1'b0;
	//SDRAM时钟信号
	assign Sd_Clk = sdram_clk;
	
	//时钟模块PLL例化
	pll pll(
	   .areset(!Rst_n),
		.inclk0(Clk50M),
		.c0(Clk),
		.c1(sdram_clk),
		.c2(clk33M)
	);
	
	//串口接收模块例化
	uart_byte_rx uart_byte_rx(
		.Clk(Clk50M),
		.Rst_n(Rst_n),
		.Rs232_rx(Uart_rx),
		.Baud_set(Baud_set),

		.Data_byte(Wr_data),
		.Rx_done(Wr_en)
	);
	
	//SDRAM控制器模块例化
	sdram_control_top sdram(		
		.Clk(Clk),
		.Rst_n(Rst_n),
		.Sd_clk(sdram_clk),
		
		.Wr_data(Wr_data),    
		.Wr_en(Wr_en),      	
		.Wr_addr(0),    	
		.Wr_max_addr(img_data_byte),	
		.Wr_load(!Rst_n),	
		.Wr_clk(Clk50M),	
		.Wr_full(),	
		.Wr_use(),	
		
		.Rd_data(Rd_data),    	
		.Rd_en(Rd_en),				
		.Rd_addr(0),			
		.Rd_max_addr(img_data_byte),
		.Rd_load(tft_begin),	
		.Rd_clk(clk33M),	
		.Rd_empty(),	
		.Rd_use(),	
		
		.Sa(Sd_Sa),
		.Ba(Sd_Ba),
		.Cs_n(Sd_Cs_n),
		.Cke(Sd_Cke),
		.Ras_n(Sd_Ras_n),
		.Cas_n(Sd_Cas_n),
		.We_n(Sd_We_n),
		.Dq(Sd_Dq),
		.Dqm(Sd_Dqm)
	);	
	
	wire [15:0] rgb;
	wire [4:0]  video_r;
	wire [5:0]  video_g;
	wire [4:0]  video_b;

	disp_driver disp_driver(
		.ClkDisp(clk33M),
		.Rst_n(Rst_n),
		.Data({Rd_data[7:0], Rd_data[15:8]}),
		.DataReq(),
		.H_Addr(),
		.V_Addr(),
		.Disp_HS(TFT_hs),
		.Disp_VS(TFT_vs),
		.Disp_Red(video_r),
		.Disp_Green(video_g),
		.Disp_Blue(video_b),
		.frame_begin(tft_begin),
		.Disp_DE(TFT_de),
		.Disp_PCLK(TFT_clk)
	);
	
	wire[7:0] o_y_8b;
	wire[7:0] o_cb_8b;
	wire[7:0] o_cr_8b;

	assign rgb = {video_r,video_g,video_b};
	
	wire [9:0] sobel_data;
	sobel sobel_inst(
		.iCLK(TFT_clk),
		.iRST_N(Rst_n),
		.iTHRESHOLD(8'd7),
		.iDVAL(TFT_de),
		.iDATA({4'd0,rgb[10:5]}),
		.oDVAL(),
		.oDATA(sobel_data)
	);
	
	assign TFT_rgb = {sobel_data[5:1],sobel_data[5:0],sobel_data[5:1]};
	assign TFT_pwm = Rst_n;

endmodule
