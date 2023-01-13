module MUX4x1 ( a, b, c, d, s0, s1, out);
    input a, b, c, d;
    input s0, s1;
    output reg out;
    always @ (a,b,c,d, s0, s1)
    begin
        case ({s0, s1})
        2'b00 : out <= a;
        2'b01 : out <= b;
        2'b10 : out <= c;
        2'b11: out <= d;
        endcase
    end
endmodule 

module tbMUX4x1 (
    
);
    reg a, b, c, d;
    reg s0, s1;
    wire out;
    initial begin
        a=1;b=0;c=0;d=0;s0=0;s1=0;#10;
        a=0;b=1;c=0;d=0;s0=0;s1=1;#10;
        a=0;b=0;c=1;d=0;s0=1;s1=0;#10;
        a=0;b=0;c=0;d=1;s0=1;s1=1;#10;
    end
    MUX4x1 a1( a, b, c, d, s0, s1, out);
endmodule
