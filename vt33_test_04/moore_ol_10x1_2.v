module moore_ol_10x1_a ( 
    input clk,reset,x,output reg y1,y2
);
    parameter s1=3'b000,
    s2=s1+1,
    s3=s2+1,
    s4=s3+1,
    s5=s4+1,
    s6=s5+1,
    s7=s6+1;
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
            s1:if(x==0) begin ns<=s1; end else begin ns<=s2; end
            s2:if(x==0) begin ns<=s3; end else begin ns<=s2; end
            //1001,1011
            s3:if(x==0) begin ns<=s6; end else begin ns<=s4; end
            
            s4:if(x==0) begin ns<=s3; end else begin ns<=s5; end
            s5:if(x==0) begin ns<=s3; end else begin ns<=s2; end

            s6:if(x==0) begin ns<=s1; end else begin ns<=s7; end
            s7:if(x==0) begin ns<=s3; end else begin ns<=s2; end
            default : ns<=s1;
        endcase
        assign y1=(cs==s7)?1:0;
        assign y2=(cs==s5)?1:0;
    end
endmodule //moore_ol_10x1

module tb_moore_ol_10x1_a (
    
);
    reg clk,reset,x;
    wire y1,y2;

    initial begin
    clk=0;reset=0;x=0;#10;
    x=1;#5;
    reset=1;
    #10; x=0;
    reset=0;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
 
    x=0;#10;
    x=1;#10;
    x=1;#10;

    end
    always#5 clk=~clk;
    always#10 reset=0;
    moore_ol_10x1_a a1(clk,reset,x,y1,y2);
endmodule //moore_ol_10x1

