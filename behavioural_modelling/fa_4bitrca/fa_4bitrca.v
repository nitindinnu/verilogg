
//dut - always
module fulladdalways (  input [3:0] a,
                  input [3:0] b,
                  input c_in,
                  output reg c_out,
                  output reg [3:0] sum);

	always @ (a or b or c_in) 
    begin
  	{c_out, sum} = a + b + c_in; 	
    end
endmodule


//tb - always
module tb_fulladdalways;
	// 1. Declare testbench variables
   reg [3:0] a;
   reg [3:0] b;
   reg c_in;
   wire [3:0] sum;
   integer i;

	// 2. Instantiate the design and connect to testbench variables
   fulladdalways  fa0 ( .a (a),
                  .b (b),
                  .c_in (c_in),
                  .c_out (c_out),
                  .sum (sum));

	// 3. Provide stimulus to test the design
   initial begin
      a <= 0;
      b <= 0;
      c_in <= 0;
      
      $monitor ("a=0x%0h b=0x%0h c_in=0x%0h c_out=0x%0h sum=0x%0h", a, b, c_in, c_out, sum);

		// Use a for loop to apply random values to the input
      for (i = 0; i < 5; i = i+1) begin
         #10 a <= $random;
             b <= $random;
         	c_in <= $random;
      end
   end
endmodule

//----------------------------------------------------------

//dut - using assign
module fulladdassign (  input [3:0] a,
                  input [3:0] b,
                  input c_in,
                  output c_out,
                  output [3:0] sum);

   assign {c_out, sum} = a + b + c_in;
endmodule

//tb -assign
module tb_fulladdassign;
	// 1. Declare testbench variables
   reg [3:0] a;
   reg [3:0] b;
   reg c_in;
   wire [3:0] sum;
   integer i;

	// 2. Instantiate the design and connect to testbench variables
   fulladdassign  fa0 ( .a (a),
                  .b (b),
                  .c_in (c_in),
                  .c_out (c_out),
                  .sum (sum));

	// 3. Provide stimulus to test the design
   initial begin
      a <= 0;
      b <= 0;
      c_in <= 0;
      
      $monitor ("a=0x%0h b=0x%0h c_in=0x%0h c_out=0x%0h sum=0x%0h", a, b, c_in, c_out, sum);

	// Use a for loop to apply random values to the input
      for (i = 0; i < 5; i = i+1) 
      begin
         #10 a <= $random;
             b <= $random;
         	c_in <= $random;
      end
   end
endmodule

