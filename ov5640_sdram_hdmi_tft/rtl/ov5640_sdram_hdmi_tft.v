module ov5640_sdram_hdmi_tft(
	input 			clk,
	input 			rst_n,
	
	//sdram control
	output			sdram_clk,
	output			sdram_cke,
	output			sdram_cs_n,
	output			sdram_we_n,
	output			sdram_cas_n,
	output			sdram_ras_n,
	output  [1:0]	sdram_dqm,
	output  [1:0]	sdram_ba,
	output  [12:0]	sdram_addr,
	inout   [15:0]	sdram_dq,
	
	//cmos interface
	output			camera_sclk,
	inout				camera_sdat,
	input				camera_vsync,
	input				camera_href,
	input				camera_pclk,
	output			camera_xclk,
	input 	[7:0]	camera_data,
	output			camera_rst_n,
	output			camera_pwdn,
	
	//tft output
	output  [15:0]  tft_rgb,  //TFT数据输出
	output          tft_hs,   //TFT行同步信号
	output          tft_vs,   //TFT场同步信号
	output          tft_clk,  //TFT像素时钟
	output          tft_de,   //TFT数据使能
	output          tft_pwm,  //TFT背光控制
	
	//hdmi output
	output       	tmds_clk_p,
	output       	tmds_clk_n,
	output 	[2:0] tmds_data_p,    //rgb
	output 	[2:0] tmds_data_n     //rgb
);
	wire clk_sdr_ctrl;
	wire clk_50m;
	wire clk_24m;
	assign camera_xclk = clk_24m;
	pll pll_inst (
		.inclk0(clk),
		.c0(clk_sdr_ctrl),
		.c1(sdram_clk),
		.c2(clk_50m),
		.c3(clk_24m)
	);
	
	wire clk_vga;//33m
	wire clk_vgax5;//165m
	pll_hdmi pll_hdmi_inst(
		.inclk0(clk),
		.c0(clk_vga),
		.c1(clk_vgax5)
	);
	
	localparam RGB = 0;
	localparam JPEG = 1;
	
	parameter IMAGE_WIDTH  = 800; //图片宽度
	parameter IMAGE_HEIGHT = 480; //图片高度(≤720)
	parameter IMAGE_FLIP   = 0;   //0：不翻转，1：上下翻转
	parameter IMAGE_MIRROR = 0;   //0：不镜像，1：左右镜像

	//摄像头初始化配置
	wire Init_Done;
	camera_init
	#(
		.IMAGE_TYPE(RGB),
		.IMAGE_WIDTH(IMAGE_WIDTH),
		.IMAGE_HEIGHT(IMAGE_HEIGHT),
		.IMAGE_FLIP(IMAGE_FLIP),
		.IMAGE_MIRROR(IMAGE_MIRROR)
	)
	camera_init(
		.Clk(clk_50m),
		.Rst_n(rst_n),
		.Init_Done(Init_Done),
		.camera_rst_n(camera_rst_n),
		.camera_pwdn(camera_pwdn),
		.i2c_sclk(camera_sclk),
		.i2c_sdat(camera_sdat)
	);
	
	//-----------------------------------------------
	//摄像头1,摄像头2图像输出
	wire fifo_aclr;
	wire fifo_wrreq;
	wire [15:0] fifo_wrdata;
	DVP_Capture DVP_Capture(
		.Rst_n(Init_Done),
		.PCLK(camera_pclk),
		.Vsync(camera_vsync),
		.Href(camera_href),
		.Data(camera_data),
		.ImageState(fifo_aclr),
		.DataValid(fifo_wrreq),
		.DataPixel(fifo_wrdata),
		.Xaddr(),
		.Yaddr()
	);
	
	wire [15:0] RGB_DATA;
	wire DataReq;
	sdram_control_top sdram_control_top(
		.Clk(clk_sdr_ctrl),
		.Rst_n(rst_n),
		.Wr_data(fifo_wrdata),
		.Wr_en(fifo_wrreq),
		.Wr_addr(0),
		.Wr_max_addr(IMAGE_WIDTH*IMAGE_HEIGHT),
		.Wr_load(!rst_n),
		.Wr_clk(camera_pclk),
		.Wr_full(),
		.Wr_use(),
		.Rd_data(RGB_DATA),
		.Rd_en(DataReq),
		.Rd_addr(0),
		.Rd_max_addr(IMAGE_WIDTH*IMAGE_HEIGHT),
		.Rd_load(!rst_n),
		.Rd_clk(clk_vga),
		.Rd_empty(),
		.Rd_use(),
		.Sa(sdram_addr),
		.Ba(sdram_ba),
		.Cs_n(sdram_cs_n),
		.Cke(sdram_cke),
		.Ras_n(sdram_ras_n),
		.Cas_n(sdram_cas_n),
		.We_n(sdram_we_n),
		.Dq(sdram_dq),
		.Dqm(sdram_dqm)
	);
	
	wire        video_hs;
	wire        video_vs;
	wire        video_de;
	wire        video_clk;
	wire [7:0]  video_r;
	wire [7:0]  video_g;
	wire [7:0]  video_b;
	wire [11:0] H_Addr;
	wire [11:0] V_Addr;
	disp_driver disp_driver(
		.ClkDisp(clk_vga),
		.Rst_n(rst_n),
		.Data({RGB_DATA[15:11],3'd0,RGB_DATA[10:5],2'd0,RGB_DATA[4:0],3'd0}),
		.DataReq(DataReq),
		.H_Addr(H_Addr),
		.V_Addr(V_Addr),
		.Disp_HS(video_hs),
		.Disp_VS(video_vs),
		.Disp_Red(video_r),
		.Disp_Green(video_g),
		.Disp_Blue(video_b),
		.Disp_DE(video_de),
		.Disp_PCLK(video_clk)
	);
	
	wire [9:0] sobel_data;
	sobel sobel_inst(
		.iCLK(clk_vga),
		.iRST_N(rst_n),
		.iTHRESHOLD(8'd7),
		.iDVAL(video_de),
		.iDATA({2'd0,video_g}),
		.oDVAL(),
		.oDATA(sobel_data)
	);

	dvi_encoder u_dvi_encoder(
		.pixelclk      	(clk_vga            	),// system clock
		.pixelclk5x    	(clk_vgax5           ),// system clock x5
		.rst_n         	(rst_n             	),// reset
		.blue_din      	(sobel_data[7:0]    	),// Blue data in
		.green_din     	(sobel_data[7:0]    	),// Green data in
		.red_din       	(sobel_data[7:0]    	),// Red data in
		.hsync         	(video_hs           	),// hsync data
		.vsync         	(video_vs           	),// vsync data
		.de            	(video_de           	),// data enable
		.tmds_clk_p    	(tmds_clk_p         	),
		.tmds_clk_n    	(tmds_clk_n         	),
		.tmds_data_p   	(tmds_data_p        	),//rgb
		.tmds_data_n   	(tmds_data_n        	) //rgb
	);
	
	//tft display
	assign tft_rgb = {sobel_data[5:1],sobel_data[5:0],sobel_data[5:1]};  //TFT数据输出
	assign tft_hs = video_hs;
	assign tft_vs = video_vs;
	assign tft_clk = video_clk;
	assign tft_de = video_de;
	assign tft_pwm = rst_n;
	
endmodule
