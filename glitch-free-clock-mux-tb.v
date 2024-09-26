`timescale 1ns / 1ps

module clock_mux_tb;
//input
reg rst_n;
reg clk0;
reg clk1;
reg select;

//output
wire clk_out;

initial
begin
    rst_n = 0;
    clk0 = 0;
    clk1 = 0;
    select = 0;

	#100;
    rst_n = 1;

	#200;
    select = 1;
	#500;
    select = 0;

end

//clock
always #5 clk0 = ~clk0;
always #22 clk1 = ~clk1;

//DUT
clock_mux DUT
(
    .rst_n(rst_n),
    .clk0(clk0),
    .clk1(clk1),
    .select(select),
    .clk_out(clk_out)
);

initial
begin
    $dumpfile("clock_mux_tb.vcd");
    $dumpvars(0,clock_mux_tb);
end

initial #1000 $finish;

endmodule
