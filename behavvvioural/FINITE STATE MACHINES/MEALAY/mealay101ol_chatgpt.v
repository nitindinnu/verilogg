module gpt_mealy_overlap_101 (
  input clk, reset, in,
  output reg out
);

  // State register
  reg [1:0] state;

  // State encoding
  parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

  // Next state logic
  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= S0;
    else
      case (state)
        S0: state <= in ? S1 : S0;
        S1: state <= in ? S2 : S1;
        S2: state <= in ? S0 : S2;
        default: state <= S0;
      endcase
  end

  // Output logic
  always @(state) begin
    case (state)
      S0: out <= 1'b0;
      S2: out <= 1'b1;
      default: out <= 1'b0;
    endcase
  end
endmodule


// `timescale 1ns / 1ps

module gpt_mealy_overlap_101_tb;

  // Inputs
  reg clk, reset, in;

  // Output
  wire out;

  // Instantiate the design under test
  gpt_mealy_overlap_101 dut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
  );

  // Clock period definition
  parameter CLK_PERIOD = 10;

  // Initialize inputs
  initial begin
    clk = 0;
    reset = 1;
    in = 0;
  end

  // Clock generator
  always #(CLK_PERIOD/2) clk = ~clk;

  // Reset generator
  always #5 reset = 0;

  // Input generator
  always #15 in = ~in;

  // Monitor output
  always @(posedge clk) begin
    $display("Time: %d ns, clk: %d, reset: %d, in: %d, out: %d",
             $time, clk, reset, in, out);
  end
endmodule

