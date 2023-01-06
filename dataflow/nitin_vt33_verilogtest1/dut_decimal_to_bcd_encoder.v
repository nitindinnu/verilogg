module dut_decimal_to_bcd_encoder (
    d,D,C,B,A
);
  input [9:0]d;
  output D,B,C,A;

  assign A= d[1]+d[3]+d[5]+d[7]+d[9];  
  assign B= d[2]+d[3]+d[6]+d[7];  
  assign C= d[4]+d[5]+d[6]+d[7];  
  assign D= d[8]+d[9]; 

endmodule
