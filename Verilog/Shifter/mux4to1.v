module mux4to1(out,I00,I01,I10,I11,S1,S0);
input I00,I01,I10,I11,S1,S0;
output out;
wire m1,m2,m3;
//module mux2to1 (Out,I0,I1,S);
mux2to1 mux1(m1,I00,I01,S0);
mux2to1 mux2(m2,I10,I11,S0);
mux2to1 mux3(m3,m1,m2,S1);
assign out= m3;

endmodule
