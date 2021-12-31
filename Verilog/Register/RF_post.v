module RF_post(Re_out, W_A, W_E, R_A, R_E, I, CLK);
	//i/o ports
	output [7:0]Re_out;
	input [4:0] W_A;
	input [4:0] R_A;
	input W_E, R_E, CLK;
	input [7:0] I;
	//internal wires declaration
	wire [31:0]W_out;
	wire[31:0]R_out;
	decode5to32 De1(W_out[31:0], W_A[4:0], W_E);
	decode5to32 De2(R_out[31:0], R_A[4:0], R_E);
	WORD wrd[31:0](Re_out, R_out[31:0], W_out[31:0], I[7:0], CLK);
endmodule 
	 
