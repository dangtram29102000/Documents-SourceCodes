module Decoder3_8(De_out, A, E);
	//i/o ports
	input [2:0] A;
	input E;
	output [7:0] De_out;
	//internal wire declaration
	wire a1_out, a2_out, a2_not;
	
	not n1(a2_not, A[2]);
	and a1(a1_out, a2_not, E);
	and a2(a2_out, A[2], E);
	Decoder2_4 De1(De_out[3:0], A[1:0], a1_out);
	Decoder2_4 De2(De_out[7:4], A[1:0], a2_out);
endmodule 