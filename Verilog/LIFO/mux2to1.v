module mux2to1(Y,I1,I0,sel);

input I1,I0,sel;
output Y;

wire n,A1,A2;

not N(n,sel);
and a1(A1,I0,n);
and a2(A2,I1,sel);
or O(Y,A1,A2);

endmodule