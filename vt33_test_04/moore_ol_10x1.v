module moore_ol_10x1 ( //code is of mealay
    input clk,reset,x,output reg y
);
    parameter s1=3'b000,
    s2=s1+1,
    s3=s2+1,
    s4=s3+1,
    s5=s4+1;
    reg [2:0]cs,ns;

    always @(posedge clk ) begin
       if (reset) begin
        cs<=0;
       end else begin
        cs<=ns;
       end 
    end

    always @(cs,x) begin
        case (cs)
            s1:if(x==1) begin ns<=s2;y<=0; end else begin ns<=s1;y<=0; end
            s2:if(x==0) begin ns<=s3;y<=0; end else begin ns<=s2;y<=0; end
            //1001,1011
            s3:if(x==1) begin ns<=s4;y<=0; end else begin ns<=s5;y<=0; end
            //1011
            s4:if(x==1) begin ns<=s2;y<=1; end else begin ns<=s3;y<=0; end
            //1001
            s5:if(x==1) begin ns<=s2;y<=1; end else begin ns<=s1;y<=0; end
        endcase
    end
endmodule //moore_ol_10x1

module tb_moore_ol_10x1 (
    
);
    reg clk,reset,x;
    wire y;

    initial begin
        clk=0;
        forever #5 clk=~clk;
    end

    initial begin
        reset=1;
        x=0 ;#7;
        x=1 ;#7;
        x=0 ;#7;
        reset=0;
        x=0 ;#7;
        x=1 ;#7;
        x=0 ;#7;
        x=1 ;#7;
        x=0 ;#7;
        x=0 ;#7;
        x=1 ;#7;
        x=0 ;#7;
        x=0 ;#7;
        x=1 ;#7;
        x=0 ;#7;
        x=1 ;#7;
        x=1 ;#7;

    end
    moore_ol_10x1 a1(clk,reset,x,y);
endmodule //moore_ol_10x1
