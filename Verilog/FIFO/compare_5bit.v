module compare_5bit(E, G, A, B);
	input [4:0] A;
	input [4:0] B;
	input G;
	output E;
	wire [4:0] More;
	wire [4:0] G_in;
	wire [4:0] Equal;
	wire [4:0] Less;
	
	compare_1bit com[4:0]({G_in[4:1], E}, More[4:0], Less[4:0], {G, G_in[4:1]}, A[4:0], B[4:0]);
endmodule
	