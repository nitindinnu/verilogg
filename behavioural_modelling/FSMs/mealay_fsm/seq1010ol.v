module mealy_ol_1010ol (Y,clk,rst,x) ;
output reg Y;
input clk,rst,x ;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100; //non // for overlapping sequence detector moore
reg[2:0] cs,ns;
        always @(posedge clk) 
        begin
        if(!rst)  
        cs<=s0;
        else
        cs<=ns;
        end
        
    always @(cs or x)
    begin
    case(cs)
    s0: if(x==0) // 1
        begin 
        ns<=s0;
        Y<=0;
        end
        else
        begin
        ns<=s1;
        Y<=0;
        end
    s1: if(x==0) // 0
    begin
        ns<=s2;
        Y<=0;
        end
        else
        begin
        ns<=s1;
        Y<=0;
        end
    s2: if(x==1) // 1
        begin 
        ns<=s3;
        Y<=0;
        end
        else
    begin 
        ns<=s0;
        Y<=0;
    end
    s3: if(x==0) // 0
        begin 
        ns<=s4;
        Y<=0;
        end
        else
        begin 
        ns<=s1;
        Y<=0; 
        end
    s4: if(x==0) //  0
        begin 
        ns<=s0;
        Y<=1;
        end
        else
        begin 
        ns<=s3;
        Y<=0;
        end
    s5: if(x==0) //  0
        begin 
        ns<=s0;
        Y<=0;
        end
        else
        begin 
        ns<=s1;
        Y<=1;
        end
    default: 
    begin 
    ns<=s0;
    Y=0;
    end  //
endcase
end
endmodule

/*always @(cs)
begin 
	case(cs)
	s0: y<=0;
	s1: y<=0;
	s2: y<=0;
	s3: y<=0;
	s4: y<=0;
	s5: y<=1;
	endcase
end */

/*assign Y=(cs==s4)?1:0; //
endmodule*/