module siso #(parameter ff =4 )(
    input si,clk,reset,output so
);
    reg [ff-1:0] qq;
    
   always @(posedge clk ) begin
        if (reset) begin
            qq <= 4'b0000;
        end else begin
            qq <= qq<<1;
            qq[0] <= si;
            so=qq[3];
        end
   end
    // assign so[3]=qq[0];
    // assign so[2]=qq[1];
    // assign so[1]=qq[2];
    // assign so[0]=qq[3];
endmodule

module SISO_tb (
);
    parameter ff=4;
    reg clk,reset;
    reg [ff-1:0]si;
    wire so;

    initial begin
        clk=1;
        forever begin
            #5 clk=~clk;
        end
    end
    
    initial begin
        reset=1;
        // #10; reset=0;sel=1;si=4'b0111;
        // #10; sel=0;si=0;
        #10; reset=0;si=1;
        #10; si=1;
        #10; si=1;
        #10; si=1;
    end

    siso A1(si,clk,reset,so);
endmodule


module siso_test(
    input clk,
    input Din,
    output Output,o0,o1,o2
    );
   
    reg [3:0]Q;

always @ (posedge clk)
begin
Q <= Q >> 1 ;
Q[3] <= Din;
end
assign Output = Q[0];
  assign o2 = Q[1];
  assign o1 = Q[2];
  assign o0 = Q[3];
endmodule
module sisotb();
      
reg clk, Din;
wire Output,o0,o1,o2;
siso_test siso1(clk, Din, Output,o0,o1,o2);

initial begin
clk = 1'b0;
 repeat(20)#5 clk = ~clk;
end

initial begin
Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
end
endmodule