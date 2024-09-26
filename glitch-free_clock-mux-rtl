`timescale 1ns / 1ps
module clock_mux(
    input rst_n,
    input clk0,
    input clk1,
	//async select
	input select,
	output clk_out
);

wire DFF0_in;
wire DFF1_in;
reg [2:0] DFF0_out;
reg [2:0] DFF1_out;

assign DFF0_in = ~DFF1_out[2] & ~select;
assign DFF1_in = ~DFF0_out[2] & select;

always @(posedge clk0 or negedge rst_n)
    if(!rst_n)
        DFF0_out[1:0] <= 2'b00;
    else
        DFF0_out[1:0] <= {
    
    DFF0_out[0],DFF0_in};

always @(negedge clk0 or negedge rst_n)
    if(!rst_n)
        DFF0_out[2] <= 1'b0;
    else
        DFF0_out[2] <= DFF0_out[1];

always @(posedge clk1 or negedge rst_n)
    if(!rst_n)
        DFF1_out[1:0] <= 2'b00;
    else
        DFF1_out[1:0] <= {
    
    DFF1_out[0],DFF1_in};

always @(negedge clk1 or negedge rst_n)
    if(!rst_n)
        DFF1_out[2] <= 1'b0;
    else
        DFF1_out[2] <= DFF1_out[1];

wire clk_out0;
wire clk_out1;

assign clk_out0 = clk0 & DFF0_out[2];
assign clk_out1 = clk1 & DFF1_out[2];
assign clk_out = clk_out0 | clk_out1;

endmodule
