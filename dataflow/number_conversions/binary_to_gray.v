module binary_to_gray_dut (
    b,g
);
  //3bit
  input [2:0]b;  
  output [2:0]g;

  assign g[2]=b[2];  
  assign g[1]=b[2]^b[1];  
  assign g[0]=b[1]^b[0];  
endmodule

module binary_to_gray_tb (
    
);
    reg [2:0]b;
    wire [2:0]g;

    binary_to_gray_dut a1(b,g);

    initial begin
        b[2]=0;b[1]=0;b[0]=0;
    end
    always #5 b[0]=~b[0];
    always #10 b[1]=~b[1];
    always #20 b[2]=~b[2];
endmodule
