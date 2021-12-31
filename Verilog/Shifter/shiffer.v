module shiffer (In,IL,IR,S,reset,clk,out);
input [7:0]In;
input [1:0] S;
input IL,IR,reset,clk;
output [7:0]out;
wire [7:0]out_mux;
wire [7:0]out;
wire [7:0]out_not; 


//module mux4to1(out,I00,I01,I10,I11,S1,S0);
mux4to1 mux1(out_mux[0],out[0],In[0],IR    ,out[1],S[1],S[0]);
mux4to1 mux2[6:1](out_mux[6:1],out[6:1],In[6:1],out[5:0],out[7:2],S[1],S[0]);
/*
mux4to1 mux1(out_mux[0],out[0],In[0],IR    ,out[1],S1,S0);
mux4to1 mux2(out_mux[1],out[1],In[1],out[0],out[2],S1,S0);
mux4to1 mux3(out_mux[2],out[2],In[2],out[1],out[3],S1,S0);
mux4to1 mux4(out_mux[3],out[3],In[3],out[2],out[4],S1,S0);
mux4to1 mux5(out_mux[4],out[4],In[4],out[3],out[5],S1,S0);
mux4to1 mux6(out_mux[5],out[5],In[5],out[4],out[6],S1,S0);
mux4to1 mux7(out_mux[6],out[6],In[6],out[5],out[7],S1,S0);
mux4to1 mux8(out_mux[7],out[7],In[7],out[6],IL    ,S1,S0);
*/
mux4to1 mux8(out_mux[7],out[7],In[7],out[6],IL    ,S[1],S[0]);

//module d_type_ff_rst (q,q_bar,d,reset,clk);
d_type_ff_rst dff1[7:0](out[7:0],out_not[7:0],out_mux[7:0],reset,clk);

/*
d_type_ff_rst dff1(out[0],out_not[0],out_mux[0],reset,clk);
d_type_ff_rst dff2(out[1],out_not[1],out_mux[1],reset,clk);
d_type_ff_rst dff3(out[2],out_not[2],out_mux[2],reset,clk);
d_type_ff_rst dff4(out[3],out_not[3],out_mux[3],reset,clk);
d_type_ff_rst dff5(out[4],out_not[4],out_mux[4],reset,clk);
d_type_ff_rst dff6(out[5],out_not[5],out_mux[5],reset,clk);
d_type_ff_rst dff7(out[6],out_not[6],out_mux[6],reset,clk);
d_type_ff_rst dff8(out[7],out_not[7],out_mux[7],reset,clk);
*/
endmodule
