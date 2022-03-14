`timescale 1ns/1ns
`define CLK_PERIOD 10

module tb_yt3817_BPPU;
    reg clk;
    reg arstn;
    reg bin_data;
    reg [11:0] H_Addr;
    reg [11:0] V_Addr;

    wire [7:0] red_8bits;
    wire [7:0] green_8bits;
    wire [7:0] blue_8bits;
    wire countdone;
    wire digitBCD;
    wire [1:0] x_cnt;
    wire [1:0] y1_cnt;
    wire [1:0] y2_cnt;
    
    yt3817_BPPU BPPU(
        // clk and reset
        .clk(clk),
        .arstn(arstn),
        // inputs
        .bin_data(bin_data),
        .H_Addr(H_Addr),
        .V_Addr(V_Addr),
        // outputs
        .red_8bits(red_8bits),
        .green_8bits(green_8bits),
        .blue_8bits(blue_8bits),
        .countdone(countdone),
        .digitBCD(digitBCD),
        // test ports
        .x_cnt(x_cnt),
        .y1_cnt(y1_cnt),
        .y2_cnt(y2_cnt)
    );

    initial begin
        clk = 0; arstn = 0;
        #(2*`CLK_PERIOD) arstn = 1;
        forever #(`CLK_PERIOD/2) clk=~clk;
    end

    integer vx;
    integer vy;
    initial begin
        H_Addr = 0; V_Addr = 0; bin_data = 0;
        #400
        for (vy=0;vy<480;vy=vy+1) begin
            V_Addr = vy;
            for (vx=0;vx<800;vx=vx+1) begin
                H_Addr = vx;
                if ((390<=vx)&(vx<410)&(114<=vy)&(vy<366)) begin
                    bin_data = 1;
                end
                else begin
                    bin_data = 0;
                end
            end  
        end
    end

endmodule
`default_nettype wire