module HAS (out, cout, d, cin, q, q_bar);
	output wire out, cout;
	input wire d, cin, q, q_bar;
	wire outand1, outand2, d_bar;
	
	not not1 (d_bar, d);
	and and1_3in (outand1, d, q_bar, cin);
	and and2_3in (outand2, q, cin, d_bar);
	xor xor1 (out, cin, q);
	or or1 (cout, outand1, outand2);
endmodule
