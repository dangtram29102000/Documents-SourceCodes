module Decoder4_16(De_out, A, E);
	//i/o ports
	input [3:0] A;
	input E;
	output [15:0] De_out;
	//internal wires declaration
	wire a3_not;
	wire and1_out, and2_out;
	
	not n1(a3_not, A[3]);
	and and1(and1_out, a3_not, E);
	and and2(and2_out, A[3], E);
	
	Decoder3_8 De1(De_out[7:0], A[2:0], and1_out);
	Decoder3_8 De2(De_out[15:8], A[2:0], and2_out);
endmodule
