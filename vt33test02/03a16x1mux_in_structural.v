module mux2x1 (
    i,s,y
);
    input [1:0]i;
    input s;
    // wire a,b;
    wire sbar;
    output y;
    // assign y=(s?i[1]:i[0]);

    not(sbar,s);

    and(a,sbar,i[0]); 
    and(b,s,i[1]);

    or(y,a,b) ;
endmodule

module mux4x1 (
    i,s,y
);
    input [3:0]i;
    input [1:0]s;
    wire [1:0]w;
    output y;

    mux2x1 first(i[1:0],s[0],w[0]);
    mux2x1 second(i[3:2],s[0],w[1]);
    mux2x1 third(w[1:0],s[1],y);
endmodule

module mux8x1 (
    i,s,y
);
    input [7:0]i;
    input [2:0]s;
    wire [1:0]w;
    output y;

    mux4x1 first(i[3:0],s[1:0],w[0]);
    mux4x1 second(i[7:4],s[1:0],w[1]);
    mux2x1 third(w[1:0],s[2],y);
endmodule

module mux_16x1 (
    i,s,y
);
    input [15:0]i;
    input [3:0]s;
    wire [1:0]w;
    output y;

    mux8x1 first(i[7:0],s[2:0],w[0]);
    mux8x1 second(i[15:8],s[2:0],w[1]);
    mux2x1 third(w[1:0],s[3],y);
endmodule

//tbs
module tb_16x1 (
);
    reg [15:0]i;
    reg [3:0]s;
    wire y;

    initial begin
        i=16'b10110100111101101111;
        s=4'b0000;
    end
    always #5 s=s+1'b1;
    mux_16x1 a1(
    i,s,y
);
endmodule

module tb_8x1 (
);
    reg [7:0]i;
    reg [2:0]s;
    wire y;

    initial begin
        i=8'b10111111;
        s=3'b000;
    end
    always #5 s=s+1'b1;
    mux8x1 a1(
    i,s,y
);
endmodule

module tb_2x1 (
);
    reg [1:0]i;
    reg s;
    wire y;

    initial begin
        i=2'b10;
        s=1'b0;
    end
    always #5 s=s+1'b1;
    mux2x1 a1(
    i,s,y
);
endmodule