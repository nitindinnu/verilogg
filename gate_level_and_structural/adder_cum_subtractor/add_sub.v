//4bit adder cum subtractor
module add_sub_dut (a,b,sel,out,c4);
    input [3:0]a,b;
    input sel;
    wire p,q,r,s;   
    wire [3:1]c;
    output c4;
    output [3:0]out;

    //xor of b inputs
    xor x1(p,b[0],sel);
    xor x2(q,b[1],sel);
    xor x3(r,b[2],sel);
    xor x4(s,b[3],sel);

    // assign p =b[0]^sel;
    // assign q =b[1]^sel;
    // assign r =b[2]^sel;
    // assign s =b[3]^sel;

    // // calling a full adder into this by structural
    full_adder_dut first(out[0],c[1],  a[0],p,sel);
    full_adder_dut second(out[1],c[2],  a[1],q,c[1]);
    full_adder_dut third(out[2],c[3],   a[2],r,c[2]);
    full_adder_dut fourth(out[3],c4,    a[3],s,c[3]);

    //
    // full_adder_dut first(out[0],c[1],a[0],~b[0],sel);
    // full_adder_dut second(out[1],c[2],a[1],~b[1],c[1]);
    // full_adder_dut third(out[2],c[3],a[2],~b[2],c[2]);
    // full_adder_dut fourth(out[3],c4,a[3],~b[3],c[3]);
endmodule

//tb
module add_sub_tb (
);
    reg [3:0]a,b;
    reg sel;
    // wire [4:1]c;
    wire c4;
    wire [3:0]out;

    initial begin
        #5;
        sel=0;
        a=4'd6;b=4'd3;#10;
        a=4'd7;b=4'd2;#10;
        sel=1;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
    end
    // initial begin
    //     a=4'b0000;
    //     b=4'b0000;
    // end
    // always #10 b=b + 1'b1;
    // always #20 a=a + 1'b1;

    add_sub_dut kk(a,b,sel,out,c4);
endmodule
