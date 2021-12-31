module mux21_5bit(mux_out, g_0, g_1, s);
	//i/o ports
	input [4:0] g_0;
	input [4:0] g_1;
	input s;
	output [4:0] mux_out;
	
	MUX2_1 mux5[4:0](mux_out[4:0], g_0[4:0], g_1[4:0], s);
endmodule
	
