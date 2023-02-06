module serial_adder #(parameter data_bitsize=4)(
  input clk,reset,
  input [data_bitsize-1:0] a,b,
  output reg [data_bitsize-1:0] sum
);
  
  reg [data_bitsize-1:0] carry;
  
  always @(posedge clk) begin
    if (reset) begin
      sum <= 8'b0;
      carry <= 8'b0;
    end else begin
      sum <= carry + a + b;
      carry <= sum[4];
    end
  end

endmodule
module serial_adder_tb;
  parameter data_bitsize=4;
  reg clk, reset;
  reg [data_bitsize-1:0] a, b;
  wire [data_bitsize-1:0] sum;
  
  serial_adder SA (
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .sum(sum)
  );
  
  initial begin
    clk = 0;
    reset = 1;
    a = 4'd5;
    b = 4'd5;
    #10;
    reset = 0;
    repeat(10) begin
    a = $random;b = $random;#10; end
  end
  always #5 clk = ~clk; 
  initial #90 reset=1;
  
  // always @(posedge clk) begin
  //   if (reset) begin
  //     $display("Reset");
  //   end else begin
  //     $display("Sum: %d", sum);
  //   end
  // end

endmodule


