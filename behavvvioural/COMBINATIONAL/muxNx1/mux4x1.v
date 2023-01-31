module mux4x1 (
    i,s,y
);
    input [3:0]i;
    input [1:0]s;
    output reg y;

    always @(i,s) begin
        if(s==2'b11)
            y=i[3];
        else if(s==2'b10)
            y=i[2];
        else if(s==2'b01)
            y=i[1];
            else if(s==2'b00)
            y=i[0];
        else if(s==2'bxx)
            y=2'bxx;
    end
endmodule

module mux4x1_tb (
    
);
    reg [3:0]i;
    reg [1:0]s;
    wire y;

    initial begin
        i=4'b1010;
       s=2'd3;#10; 
       s=2'd2;#10; 
       s=2'd1;#10; 
       s=2'd0;#10; 


       s=2'dx;#10; 
    end
    mux4x1 a1(i,s,y);
endmodule
