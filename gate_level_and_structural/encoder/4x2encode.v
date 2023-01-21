//gate level
module encoder4x2_dut (
    i,y
);
    input [3:0]i;
    output [1:0]y;

    or(y[0],i[3],i[1]);
    or(y[1],i[3],i[2]);
endmodule

module encoder4x2_tb (
    
);
    reg [3:0]i;
    wire [1:0]y;

    initial begin
        i=4'd1;#10;
        i=4'd2;#10;
        i=4'd4;#10;
        i=4'd8;#10;
        i=4'd7;#10;
        i=4'd3;#10;
    end

    encoder4x2_dut a1(
    i,y
);
endmodule