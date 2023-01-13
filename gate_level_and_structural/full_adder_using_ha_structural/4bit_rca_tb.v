module rca_tb ();
  
    reg [3:0]i,j;
    reg cin  ;
    wire [3:0]sum;
    wire cout;
  
  initial begin
    cin=0;
    i=4'd4;j=4'd4;#10;
    i=4'd5;j=4'd4;#10;
    i=4'd9;j=4'd9;#10;
  end

  rca_4bit a1(sum,cout,i,j,cin);
endmodule
