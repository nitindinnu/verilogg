module mux8x1_using_4x1_dut (
    i,s,y
);
  input [0:7]i;  
  input [2:0]s;  
  output [2:0]y;

  assign y[0]=s[0]? (s[1]?i[3]:i[2]) : (s[1]?i[1]:i[0]);
  assign y[1]=s[0]? (s[1]?i[7]:i[6]) : (s[1]?i[5]:i[4]);
  
  assign y[2]=s[2]?y[1]:y[0];

endmodule
