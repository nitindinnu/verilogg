module moore_1x01_overlap (
    input din,clk,reset,output y1,y2
);
    parameter s1=4'b0000,s2=s1+1'b1,s3=s2+1'b1,s4=s3+1'b1,s5=s4+1'b1,s6=s5+1'b1,s7=s6+1'b1,s8=s7+1'b1; 
    reg [3:0]cs,ns;

    always @(posedge clk ) begin
        if (reset) begin
            cs<=0;
        end else begin
            cs<=ns;
        end
    end

    always @(cs,din) begin
        case(cs) 
            s1: if(din==1) ns<=s2; else ns<=s1;
            s2: if(din==0) ns<=s3; else ns<=s6;
            //1001
            s3: if(din==0) ns<=s4; else ns<=s2;
            s4: if(din==1) ns<=s5; else ns<=s1;
            s5: if(din==1) ns<=s1; else ns<=s3;
            //1101
            s6: if(din==0) ns<=s7; else ns<=s6; 
            s7: if(din==1) ns<=s8; else ns<=s2; 
            s8: if(din==1) ns<=s6; else ns<=s1;
            default : ns<=s1;
                 
        endcase
    end
assign y1=(cs==s8)?1:0;
assign y2=(cs==s5)?1:0;
endmodule //moore_1x01_overlap

module tb_moore_1x01_overlap (
    
);
    reg din,clk,reset;
    wire y1,y2 ;
    initial begin
        {clk,reset}<=0;
        repeat(2) begin
        din=0;#10;
        din=1;#10;
        din=0;#10;
        din=0;#10;
        din=1;#10;
        din=1;#10;
        din=0;#10;
        din=1;#10;
        din=1;#10;
        din=0;#10;
        din=1;
        end
    end
    always #5 clk=~clk;

    moore_1x01_overlap a1(din,clk,reset,y1,y2);
endmodule //moore_1x01_overlap
