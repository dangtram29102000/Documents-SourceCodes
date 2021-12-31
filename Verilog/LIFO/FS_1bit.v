module FS_1bit(SUB,COUT,A,B,CIN);

input A,B,CIN;
output SUB,COUT;

wire X1,N1,A1,N2,A2;

xor x1(X1,A,B);
xor x2(SUB,X1,CIN);
not n1(N1,X1);
and a1(A1,CIN,N1);
not n2(N2,A);
and a2(A2,N2,B);
or o(COUT,A1,A2);
endmodule