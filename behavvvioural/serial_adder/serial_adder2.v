module serial_adder2 (
  input clk,reset,
  input [7:0] a,b,
  output reg [7:0] sum
);
  
  reg [7:0] carry;
  
  always @(posedge clk) begin
    if (reset) begin
      sum <= 8'b0;
      carry <= 8'b0;
    end else begin
      sum <= carry + a + b;
      carry <= sum[8];
    end
  end

endmodule
module serial_adder_2tb;
  
  reg clk, reset;
  reg [7:0] a, b;
  wire [7:0] sum;
  
  serial_adder2 SA (
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .sum(sum)
  );
  
  initial begin
    clk = 0;
    reset = 1;
    a = 8'b10101010;
    b = 8'b11001100;
    #10;
    reset = 0;
    a = 8'b10101010;
    b = 8'b11001100;
    #10;
  end
  always #5 clk = ~clk; 
  
//   always @(posedge clk) begin
//     if (reset) begin
//       $display("Reset");
//     end else begin
//       $display("Sum: %d", sum);
//     end
//   end

endmodule

