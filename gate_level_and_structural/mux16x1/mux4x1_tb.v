module mux4x1_tb ();
    reg [3:0]i;  
    reg [1:0]s;
    wire y4;
    mux4x1_dut a1(i,s,y4);
    initial begin
        i=4'b1100 ; s=2'b01;#10;
        i=4'b1101 ; s=2'b11;#10;
        i=4'b1001 ; s=2'b10;#10;

        i=4'b0001;s=2'b00;#10;
        i=4'b0010;s=2'b01;#10;
        i=4'b0100;s=2'b10;#10;
        i=4'b1000;s=2'b11;#10;
    end
endmodule
