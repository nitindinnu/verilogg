module Decoder2x4 (
    i,y
);
    input [1:0]i;
    output reg [3:0]y;
    always @(i) begin
        if(i==3) begin y= 4'b1000; end
        else if( i==2) begin y= 4'b0100; end
        else if( i==1) begin y= 4'b0010; end
        else 
            y= 4'b0001;
    end
endmodule

module decoder2x4_tb (
    
);
    reg [1:0]i;
    wire [3:0]y;
    initial begin
        i=2'b00;#10;
        i=2'b01;#10;
        i=2'b10;#10;
        i=2'b11;#10;
    end

    Decoder2x4 a1(i,y);
endmodule