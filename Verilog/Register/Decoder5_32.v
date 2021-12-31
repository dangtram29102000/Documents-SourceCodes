module Decoder5_32(De_out, A, E);
	//i/o ports
	input [4:0] A;
	input E;
	output [31:0] De_out;
	//internal wires declaration
	wire a4_not;
	wire and1_out;
	wire and2_out;
	
	not n1(a4_not, A[4]);
	and and1(and1_out, a4_not, E);
	and and2(and2_out, A[4], E);
	Decoder4_16 De1(De_out[15:0], A[3:0], and1_out);
	Decoder4_16 De2(De_out[31:16], A[3:0], and2_out);
endmodule 