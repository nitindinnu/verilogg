module moore_10100ol(
     input x,clk,rst,
     output  y
);
//parameter s1=1'd0,s2=1'd1,s3=1'd2,s4=1'd3,s5=1'd4,s6=1'd5;
parameter s1=3'b000;
          s2=3'b001;
          s3=3'b010;
          s4=3'b011;
          s5=3'b100;
          s6=3'b101;

     reg [2:0]cs,ns; // no of states
     always@(posedge clk) //present state logic
          begin
          if(!rst)
               cs<=s1;
          else
               cs<=ns;
          end

     always@(cs or x) 
          begin
          case(cs)
          s1 : if(x==0)
                    ns<=s1;
               else
                    ns<=s2;
          s2 : if(x==0)
                    ns<=s3;
               else
                    ns<=s2;
          s3 : if(x==0)
                    ns<=s1;
               else 
                    ns<=s4;
          s4 : if(x==0)
                    ns<=s5;
               else
                    ns<=s2;
          s5 : if(x==0)
                    ns<=s6;
               else
                    ns<=s4;
          s6 : if(x==0)
                    ns<=s1;
               else
                    ns<=s2;
          default : ns=s1; //default state
          endcase
          end
assign y=(cs==s6)?1:0;
endmodule
     
