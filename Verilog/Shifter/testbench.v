`timescale 1ns/1ns
module testbench();
	wire [7:0] out;
	reg clk, IL, IR, reset;
	reg [7:0] In;
	reg [1:0] S;
	integer i;
	initial begin
	clk = 0;
	IL = 0;
	IR = 0;
	In = 0;
	S = 0;
	reset = 0;
	for (i = 0; i < 4;  i=i+1) begin
		#500	In = $random;
			S = 2'b01;
	end
	#1000;
	end
	always begin
	#50 clk <= ~clk;
	end
	initial begin
		repeat(30)@(negedge clk)
		begin
		#100	IL = $random;
		#100	IR = $random;
			S = $random;
		end
		$finish;
	end
	shiffer ins1(
	.clk(clk),
	.IR(IR),
	.IL(IL),
	.In(In),
	.S(S),
	.out(out),
	.reset(reset)
	);
endmodule
 