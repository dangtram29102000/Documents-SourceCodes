module Decoder2_4(De_out, A, E);
	//i/o ports
	input [1:0] A;
	input E;
	output [3:0] De_out;
	//internal wire declaration
	wire [1:0] A;
	wire A0_not, A1_not;
	
	not n1(A0_not, A[0]);
	not n2(A1_not, A[1]);
	and a1(De_out[0], A0_not, A1_not, E);
	and a2(De_out[1], A1_not, A[0], E);
	and a3(De_out[2], A[1], A0_not, E);
	and a4(De_out[3], A[1], A[0], E);
endmodule

	
