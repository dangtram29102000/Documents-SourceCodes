module Ram32w_8bit(IO, W_S, W_EN, RWS, CS);
	inout [7:0]IO;
	input [4:0]W_S;
	input W_EN, RWS, CS;
	
	wire [31:0]De_out;
	wire [7:0]tri_in;
	wire and1_out, and2_out, RWS_not;
	
	not n1(RWS_not, RWS);
	and a1(and1_out, RWS, CS);
	and a2(and2_out, RWS_not, CS);
	decode5to32 De(De_out[31:0], W_S[4:0], W_EN);
	WORD_Ram wrd[31:0](tri_in[7:0], De_out[31:0], and1_out, IO[7:0]);
	tri_8bit tri8(IO[7:0], tri_in[7:0], and2_out);
endmodule
	
	
	