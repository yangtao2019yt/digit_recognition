module yt3817_BPPU(
    // clk and reset
    input                   clk,
    input                   arstn,
    // inputs
    input                   bin_data,
    input       [11:0]      H_Addr,
    input       [11:0]      V_Addr,
    // outputs
    output  reg [7:0]       red_8bits,
    output  reg [7:0]       green_8bits,
    output  reg [7:0]       blue_8bits,
    output                  countdone,
    output  reg [3:0]       digitBCD,
    // test ports
    output      [1:0]       x_cnt,
    output      [1:0]       y1_cnt,
    output      [1:0]       y2_cnt
);  
    // =======================================A-Outputing Part=======================================
    // x, W, H_Addr; y, H, V_Addr
    // ==============Params==============
    parameter picW=800, picH=480;     // the width and height for whole picture
    // Central Block
    parameter BLineW = 4;   // Block line
    parameter xmin=336, xmax=464;
    parameter ymin=112, ymax=368;
    // 3 lines
    parameter DLineW = 2;   // Detect line
    parameter xl  = 400;
    parameter yl1 = 214, yl2 = 282;

    // =============Central Block=============
    wire   blockline;
    assign blockline = (((xmin-BLineW<=H_Addr)&(H_Addr<xmin+BLineW))|
                        ((xmax-BLineW<=H_Addr)&(H_Addr<xmax+BLineW))|
                        ((ymin-BLineW<=V_Addr)&(V_Addr<ymin+BLineW))|
                        ((ymax-BLineW<=V_Addr)&(V_Addr<ymax+BLineW)))&
                        // blocklines should be within block
                        (xmin-BLineW<=H_Addr)&(H_Addr<xmax+BLineW)&
                        (ymin-BLineW<=V_Addr)&(V_Addr<ymax+BLineW);
    // ==============Detect Line==============
    wire   detectline;
    wire   x_line, y1_line, y2_line;
    assign x_line  = ((xl-DLineW<=H_Addr )&(H_Addr<xl+DLineW ));
    assign y1_line = ((yl1-DLineW<=V_Addr)&(V_Addr<yl1+DLineW));
    assign y2_line = ((yl2-DLineW<=V_Addr)&(V_Addr<yl2+DLineW));
    assign detectline = x_line|y1_line|y2_line;

    // ==============Count region=============
    // assign countdone = (xmax+BLineW<H_Addr)&(ymax+BLineW<V_Addr);
    assign countdone = (ymax+BLineW<V_Addr);

    // ===============Clock Out===============
    always @(*) begin
        if (blockline) begin        // blue line for the central block
            red_8bits   =   8'h00;
            green_8bits =   8'h00;
            blue_8bits  =   8'hff;
        end
        else if(detectline) begin   // red line for the 3 detect lines
            red_8bits   =   8'hff;
            green_8bits =   8'h00;
            blue_8bits  =   8'h00;
        end
        else if(countdone) begin    // red line for the 3 detect lines
            red_8bits   =   8'hff;
            green_8bits =   8'hff;
            blue_8bits  =   8'h00;
        end
        else begin                  // bin data for normal cases
            red_8bits   =   {8{bin_data}};
            green_8bits =   {8{bin_data}};
            blue_8bits  =   {8{bin_data}};
        end
    end

    // =======================================B-Detecting Part=======================================
    // ==============Counting==============
    wire x_data, y1_data, y2_data;
    assign x_data  = x_line  & bin_data;
    assign y1_data = y1_line & bin_data;
    assign y2_data = y2_line & bin_data;

    // delay for 1 cycle    
    reg x_data_d, y1_data_d, y2_data_d;
    always @(posedge clk or negedge arstn) begin
        if (~arstn) begin
            x_data_d  <= 1'b0;
            y1_data_d <= 1'b0;
            y2_data_d <= 1'b0;
        end
        else begin
            x_data_d  <= x_data;
            y1_data_d <= y1_data;
            y2_data_d <= y2_data;
        end
    end
    reg [3:0] xx_cnt, yy1_cnt, yy2_cnt;
    always @(posedge clk or negedge arstn or negedge countdone) begin
        if ((~arstn)|(~countdone))
            xx_cnt <= 4'd0;
        else if (x_data_d&x_data)           // posedge detection
            xx_cnt <= xx_cnt + 1;
        else
            xx_cnt <= xx_cnt;
    end
    always @(posedge clk or negedge arstn or negedge countdone) begin
        if ((~arstn)|(~countdone))
            yy1_cnt <= 4'd0;
        else if (~y1_data_d&y1_data)     // posedge detection
            yy1_cnt <= yy1_cnt + 1;
        else
            yy1_cnt <= yy1_cnt;
        // else
        //     yy1_cnt <= yy1_cnt + 1;
    end
    always @(posedge clk or negedge arstn or negedge countdone) begin
        if ((~arstn)|(~countdone))
            yy2_cnt <= 4'd0;
        else if (~y2_data_d&y2_data)     // posedge detection
            yy2_cnt <= yy2_cnt + 1;
        else
            yy2_cnt <= yy2_cnt;
    end

    assign x_cnt  = xx_cnt/(2*DLineW);
    assign y1_cnt = yy1_cnt/(2*DLineW);
    assign y2_cnt = yy2_cnt/(2*DLineW);
    // assign x_cnt   = 2'b01;
    // assign y1_cnt  = 2'b01;
    // assign y2_cnt  = 2'b01;

    // ==============Settlement==============
    reg  [3:0] digitBCD_next;
    always @(*) begin
        case ({y1_cnt, y2_cnt, x_cnt})
            6'b101010: digitBCD_next = 4'h0; // 0: 222
            6'b010101: digitBCD_next = 4'h1; // 1: 111
            6'b010111: digitBCD_next = 4'hC; // 2, 3, 5: 113
            6'b100110: digitBCD_next = 4'h4; // 4: 212
            6'b011011: digitBCD_next = 4'h6; // 6: 123
            6'b010110: digitBCD_next = 4'h7; // 7: 112
            6'b101011: digitBCD_next = 4'h8; // 8: 223
            6'b100111: digitBCD_next = 4'h9; // 9: 213
            default:   digitBCD_next = 4'hE; // ERROR
        endcase
    end
    always @(posedge countdone or negedge arstn) begin
        if(~arstn)
            digitBCD <= 4'hF;
        else
            digitBCD <= digitBCD_next;
    end

endmodule