module binary_to_gray_4bit_dut (
    b,g
);
  //4bit
  input [3:0]b;  
  output [3:0]g;

  assign g[3]= b[3];  
  assign g[2]=b[3]^b[2];  
  assign g[1]=b[2]^b[1];  
  assign g[0]=b[1]^b[0];  
endmodule

module binary_to_gray_4bit_tb (
    
);
    reg [3:0]b;
    wire [3:0]g;

    binary_to_gray_4bit_dut a1(b,g);

    initial begin
        b[3]=0;b[2]=0;b[1]=0;b[0]=0;
    end
    always #2 b[0]=~b[0];
    always #4 b[1]=~b[1];
    always #8 b[2]=~b[2];
    always #16 b[3]=~b[3];
endmodule




