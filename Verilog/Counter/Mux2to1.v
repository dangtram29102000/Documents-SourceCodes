module Mux2to1 (Y, I0, I1, S);
	output wire Y;
	input wire I0, I1, S;
	wire S_bar, outand1, outand2;
	not notS (S_bar, S);
	and and1 (outand1, S_bar, I0);
	and and2 (outand2, S, I1);
	or or1 (Y, outand1, outand2);
endmodule
	