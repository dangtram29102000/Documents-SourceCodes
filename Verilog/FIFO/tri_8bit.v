module tri_8bit(Z,I, EN);

input [7:0] I;
input EN;
output [7:0] Z;

bufif1 buf1[7:0](Z[7:0], I[7:0], EN);
endmodule