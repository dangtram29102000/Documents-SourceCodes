module edge_dff_asyn(q, q_bar, d, pr, clr, clk);
	output q, q_bar;
	input d, pr, clr, clk;
	reg q, q_bar;
	wire outnand1, outnand2, outnand3, outnand4;
	nand nand1 (outnand1, pr, outnand4, outnand2);
	nand nand2 (outnand2, outnand1, clk, clr);
	nand nand3 (outnand3, outnand2, clk, outnand4);
	nand nand4 (outnand4, outnand3, d, clr);
	nand nand5 (q, pr, outnand2, q_bar);
	nand nand6 (q_bar, q, outnand3, clr);
endmodule
	