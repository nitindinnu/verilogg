module swap1 (clk);
  	input clk;
	integer a,b;
  always @(posedge clk) begin
    a<=b;  
end
  always @(posedge clk) begin
    b<=a;
  end
    
endmodule

module tb_swap1 (
    
);
    reg a,b;
//     wire b;
    initial begin
        a=1;
        b=0;
      clk=0;
        $monitor("a=%0a,b=%0b",a,b);
    end
  always clk=~clk;
  swap1 a1(clk);
endmodule