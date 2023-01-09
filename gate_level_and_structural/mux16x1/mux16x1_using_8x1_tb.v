module mux16x1_using_8x1_tb (
    
);
    reg [15:0]i;
    reg [3:0]s;
    // wire [13:0]w;
    wire y16;  

    mux16x1_using_8x1_dut a1(i,s,y16);

    initial begin
        i=16'h9;s=4'h5;#10;
        i=16'b0000000001000000;s=4'h6;#10;
        i=16'h5;s=4'h7;#10;
        i=16'h3;s=4'h8;#10;
    end
endmodule

