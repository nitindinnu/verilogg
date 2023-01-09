module mux8x1_tb (
    
);
    reg [7:0]i;
    reg [2:0]s;
    // wire [5:0]w;
    wire y8;

    mux8x1_dut a1(i,s,y8);
    initial begin
        i=8'd8;s=3'b101; #10;
        i=8'd8;s=3'd3; #10;
    end
endmodule
