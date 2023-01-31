module mux2x1_using_if (
    input a,b,sel,output reg y
);
    // integer a=1;b=0;
    always @(a,b,sel) begin
        if(sel) begin
            y = b;
        end
        else begin
            y = a;
        end
    end
endmodule

module mux4x1 (
    input a,b,c,d,sel0,sel1,output  y
);
    wire y0,y1;
    mux2x1_using_if a1(a,b,sel1,y0);
    mux2x1_using_if a2(c,d,sel1,y1);
    mux2x1_using_if a3(y0,y1,sel0,y);
endmodule

//mux2x1 tb
module mux2x1_using_if_tb (
    
);
    reg a,b,sel;
    wire y;

    initial begin
        a=1'b1;b=1'b0;
        sel=0;
        #10;
        sel=1;
    end

    mux2x1_using_if a1(a,b,sel,y);
endmodule

module mux4x1_if_tb (
    
);
    reg a,b,c,d,sel0,sel1;
    wire y;
    initial begin
        {a,b,c,d}= 4'b0101;//>>> concatination doesnt work like this
        // a=1'b0;b=1'b1;c=1'b0;d=1'b1;
        sel0=0;sel1=0;#10;
        sel0=0;sel1=1;#10;
        sel0=1;sel1=0;#10;
        sel0=1;sel1=1;#10;
    end
    mux4x1 a1(a,b,c,d,sel0,sel1, y);
endmodule
