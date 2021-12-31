module RegisterFile(RF_out, R_S, W_S, RF_in, CLK);
	//i/o ports
	input R_S, W_S, RF_in, CLK;
	output RF_out;
	//internal wires declaration
	wire W_S_not, out_a1, out_a2, out_o1;
	wire tri_out;
	wire Qn;
	wire FF_out;
	
	not n1(W_S_not, W_S);
	and a1(out_a1, W_S_not, FF_out);
	and a2(out_a2, W_S, RF_in);
	or o1(out_o1, out_a1, out_a2);
	D_ff Dff(FF_out, Qn, CLK, out_o1);
	Tristate tris(RF_out, R_S, FF_out);
endmodule
