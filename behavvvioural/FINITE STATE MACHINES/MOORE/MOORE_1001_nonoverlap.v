module MOORE_1001_nonoverlap (
    input din,clk,reset,output  y  
);
    parameter s1=3'b000,s2=s1+1'b1,s3=s2+1'b1,s4=s3+1'b1,s5=s4+1'b1;
    reg [2:0]cs,ns;

    always @(posedge clk ) begin
        if(reset)begin
            cs<=0;
        end
        else begin
            cs<=ns;
        end
    end

    always @(cs,din) begin
        case(cs) 
            s1: if(din==1) ns<=s2; else ns<=s1;
            s2: if(din==0) ns<=s3; else ns<=s2;
            s3: if(din==0) ns<=s4; else ns<=s2;
            s4: if(din==1) ns<=s5; else ns<=s1;
            s5: if(din==1) ns<=s1; else ns<=s1;
            default:ns<=s1;
        endcase
    end
    assign y=(cs==s5)?1:0;
endmodule //MOORE_1001_nonoverlap

module tb_MOORE_1001_nonoverlap (
    
);
    reg din,clk,reset;
    wire y ;
    initial begin
        {clk,reset}=00;
        din=0;#10;
        din=1;#10;
        din=0;#10;
        din=0;#10;
        din=1;#10;
        din=0;#10;
        din=0;#10;
        din=1;#10;
        din=1;#10;
    end
    always #5 clk=~clk;
    MOORE_1001_nonoverlap a1(din,clk,reset,y);
endmodule //MOORE_1001_nonoverlap
