module mux2x1_tb (
    
);
    reg a,b,s;
    // wire [3:1]w;
    wire y;

    mux2x1 a1(y,a,b,s);

    initial begin
        s=0;a=0;b=0; #10;
        s=0;a=0;b=1; #10;

        s=1;a=0;b=0; #10;
        s=1;a=0;b=1; #10;

    end
endmodule