module FS_5bit(SUB,sub_OVF,A,B,Cin);

input [4:0] A;
input [4:0] B;
input Cin;
output [4:0] SUB;
output sub_OVF; 

wire [3:0] C;
// FS_1bit(SUB, ovf, A, B, Cin)
FS_1bit fs[4:0] (SUB[4:0], {sub_OVF, C[3:0]}, A[4:0], B[4:0], {C[3:0], Cin});
endmodule