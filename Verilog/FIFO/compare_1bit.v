module compare_1bit(E, M, L, G, A, B);
	input A, B, G;
	output E, M, L;
	wire A_not, B_not, and1_out, and2_out, nor_out;
	not n1(A_not, A);
	not n2(B_not, B);
	and a1(and1_out, G, A, B_not);
	and a2(and2_out, G, B, A_not);
	nor nor1(nor_out, and1_out, and2_out);
	and a3(E, nor_out, G);
	assign M = and1_out;
	assign L = and2_out;
endmodule 