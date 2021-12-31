module FIFOh(IO, front, back, Empty, Full, CLK, Load, Down, Compare, En, RW);
	input CLK, Load, Down, Compare, En, RW;
	inout [7:0]IO;
	//testing 
	output [4:0] front;
	output [4:0] back;
	output Empty, Full;
	wire Re_not, RW_not, and1_out, and2_out, xor_out, xor_not, dau1, dau0, Equal;
	wire [4:0]Q1;
	wire [4:0]Q2;
	assign front[4:0] = Q1[4:0];
	assign back[4:0] = Q2[4:0];
	wire [4:0]mux_out;
	wire carry;
	supply1 VCC;
	//not n1(Re_not, RESET);
	not n2(RW_not, RW);
	not n3(xor_not, xor_out);
	and a1(and1_out, RW_not, En);
	and a2(and2_out, RW, En);
	xor x1(xor_out, dau1, dau0);
	and a3(Empty, Equal, xor_not);
	and a4(Full, Equal, xor_out);
	
	counterh cnt[1:0]({Q1[4:0], Q2[4:0]}, {dau1, dau0},Down, {and1_out, and2_out}, Load, CLK);
	compare_5bit com(Equal, Compare, Q1[4:0], Q2[4:0]);
	mux21_5bit mx(mux_out[4:0], Q2[4:0], Q1[4:0], and1_out);
	Ram32w_8bit ram32(IO[7:0], mux_out[4:0], VCC, and2_out, En);
endmodule 
	
	
	
	
