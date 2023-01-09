module mux4x1_dut (
    i,s,y4
);
  input [3:0]i;  
  input [1:0]s; 
  wire [2:1]w; 
  output y4;

  mux2x1 first( w[1],i[0],i[1],s[0]); 

  mux2x1 second( w[2],i[2],i[3],s[0]);

  mux2x1 third( y4,w[1],w[2],s[1]); 
endmodule
