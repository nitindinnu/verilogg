module mealy_overlap_10010 (input clk, reset, in, output reg out);
  reg [3:0] state;

  // State machine implementation
  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= 4'b0000;
    else
      case (state)
        4'b0000: if (in) state <= 4'b0001;
        4'b0001: if (in) state <= 4'b0010;
        4'b0010: if (!in) state <= 4'b0011;
        4'b0011: if (!in) state <= 4'b0100;
        4'b0100: if (in) state <= 4'b0001;
        default: state <= 4'b0000;
      endcase
  end

  // Output logic
  always @(posedge clk or posedge reset) begin
    if (reset)
      out <= 0;
    else
      case (state)
        4'b0010: out <= 1;
        4'b0100: out <= 1;
        default: out <= 0;
      endcase
  end
endmodule

module mealy_overlap_10010_tb;
  reg clk, reset, in;
  wire out;

  // Instantiate the DUT
  mealy_overlap_10010 dut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Test case
  initial begin
    // Reset the DUT
    clk=0;
    reset <= 1;
    #10 reset <= 0;

    // Apply input stimuli
    in <= 0;
    #10 in <= 1;
    #10 in <= 0;
    #10 in <= 1;
    #10 in <= 0;
    #10 in <= 0;
    #10 in <= 0;
    #10 in <= 0;

    // End the simulation
    $finish;
  end
endmodule

