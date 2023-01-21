module decoder3x8 (
    i,d
);
    input [2:0]i;
    output [7:0]d;

    assign d = 8'b00000001<<i;
endmodule

module tb_decoder3to8 (

);
    reg [2:0]i;
    wire [7:0]d;

    initial begin
        i=3'b000;
    end
    always #5 i=i+1'b1;

    decoder3x8 a1(
    i,d
);
endmodule

module decoder4x16 (
    i,d
);
    input [3:0]i;
    output [15:0]d;
    // wire [1:0]w;
    wire [7:0]a,b;
    // wire en;


    // assign  w[0]=en;
    // assign  w[1]=~en;
    
    decoder3x8 one(i[2:0],a);
    decoder3x8 two(i[2:0],b);
    assign d = {a,b};
endmodule

module tb_decoder4x16 (
);
    reg [3:0]i;
    wire [15 :0]d;

    initial begin
        i=4'b0000;
    end
    always #5 i=i+1'b1;
    decoder4x16 a1(
    i,d
);
endmodule
