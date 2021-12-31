module mux2to1_5bit(F,G1,G0,sel);

input [4:0] G1;
input sel;
input [4:0] G0;
output [4:0] F;

//module mux2to1(Y,I1,I0,sel);

mux2to1 m21_5bit [4:0] (F[4:0],G1[4:0],G0[4:0],sel);
endmodule