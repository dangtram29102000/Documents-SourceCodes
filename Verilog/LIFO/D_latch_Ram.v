
module D_latch_Ram(Q,Qn,D,En);

output Q,Qn;
input D,En;

wire Dn, and1_not, and2_not;
not not1(Dn, D);
nand n1(and1_not, D, En);
nand n2(and2_not, Dn, En);
nand n3(Q, and1_not, Qn);
nand n4(Qn, and2_not, Q);
endmodule 
