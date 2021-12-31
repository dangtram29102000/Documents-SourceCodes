module Tristate (tri_out, out_e, tri_in);
	input out_e, tri_in;
	output tri_out;
	tri out;
	bufif1 b1(tri_out, tri_in, out_e);
endmodule
