module SR_Latch(Q, Qn, G, S, R);
	output wire Q, Qn;
	input wire G, S, R;
	
	wire S1, R1;
	and and3(S1, G, S);
	and and4(R1, G, R);
	nor nor3(Qn, S1, Q);
	nor nor4(Q, R1, Qn);
endmodule