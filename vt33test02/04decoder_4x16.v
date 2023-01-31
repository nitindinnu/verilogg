module decoder3x8 (
    i,d,en
);
    input [2:0]i;
    input en;
    output [7:0]d;
    wire i0bar,i1bar,i2bar;

    // assign d = 8'b00000001<<i;
    not n1(i0bar,i[0]);
    not n2(i1bar,i[1]);
    not n3(i2bar,i[2]);

    and a1(d[0],en,i0bar,i1bar,i2bar);
    and a2(d[1],en,i0bar,i1bar,i[2]);
    and a3(d[2],en,i0bar,i[1],i2bar);
    and a4(d[3],en,i0bar,i[1],i[2]);
    and a5(d[4],en,i[0],i1bar,i2bar);
    and a6(d[5],en,i[0],i1bar,i[2]);
    and a7(d[6],en,i[0],i[1],i2bar);
    and a8(d[7],en,i[0],i[1],i[2]);

    
endmodule

module tb_decoder3to8 (

);
    reg [2:0]i;
    reg en;
    wire [7:0]d;

    initial begin
        en=1;
        i=3'b000;#50;
        en=0;
        i=3'b000;
    end
    always #5 i=i+1'b1;

    decoder3x8 a1(
    i,d,en
);
endmodule

module decoder4x16 (
    i,d,en
);
    input [3:0]i;
    input en;
    output [15:0]d;
    wire p,q;    
    assign p=en;
    not an(q,en);


    // assign  w[0]=en;
    // assign  w[1]=~en;
    
    decoder3x8 one(i,d[7:0],q);
    decoder3x8 two(i,d[15:8],p);
    // assign d = {a,b};
endmodule

module tb_decoder4x16 (
);
    reg [2:0]i;
    reg en;
    wire [15:0]d;

    initial begin
        en=0;
        i=3'b000;#40;
        en=1;
        i=3'b000;
    end
    // always #5 i= i+1'b1;
    always #5 i[2]=~i[2];
    always #10 i[1]=~i[1];
    always #20 i[0]=~i[0];


    decoder4x16 a1(
    i,d,en
);
endmodule
