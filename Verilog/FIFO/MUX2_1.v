module MUX2_1(out, gate_0, gate_1, s);
	input gate_0, gate_1, s;
	output out;
	//wire out;
	//wire gate_0, gate_1, s;
	wire not_s, out_a1, out_a2;
	
	not n1(not_s, s);
	and a1(out_a1, gate_0, not_s);
	and a2(out_a2, gate_1, s);
	or o2(out, out_a1, out_a2);
endmodule
