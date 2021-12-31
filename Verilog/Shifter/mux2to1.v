module mux2to1 (Out,I0,I1,S);
input I0,I1,S;
output Out;
wire a1,a2,n1,o1;
not not1(n1,S);
and and1(a1,I0,n1);
and and2(a2,I1,S);
or or1(o1,a1,a2);
assign Out = o1;
endmodule