module ring_counter(  clk,reset, count );

	 parameter WIDTH=4;
	 input clk,reset;
	 output reg [WIDTH-1:0] count;
     
	 always@(posedge clk)
        begin
            if(reset)
            count={count[0],count[WIDTH-1:1]};
            else 
            count=4'b0001;
        end
endmodule

//tb
module ring_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	parameter WIDTH=4;

	// Outputs
	wire [WIDTH-1:0] count;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
    always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		$monitor ("T=%0t out=%b", $time, count);
        #50 reset=1;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	initial
	#300 $stop;
      
endmodule