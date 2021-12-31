module HAS_tttt(Cin,Qi,Q,E,D);

input D,Q,E;
output Cin,Qi;
wire n0,n1,a0,a1,o,x;

not N0(n0,Q);
not N1(n1,D);

and A0(a0,n1,Q,E);
and A1(a1,E,n0,D);

or O(Cin,a0,a1);
xor X(Qi,Q,E);

endmodule