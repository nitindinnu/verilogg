module PISO #(parameter ff=4) (
    input clk,reset,sel,input [ff-1:0]data,output reg v
);
    reg [ff-1:0] qq; //4 flipflops
    
    always @(posedge clk ) begin
        if(reset)begin
            qq=4'b0000;
        end
        else if(sel)begin //data in parallely
            qq <= data;
        end
        else begin
            v = qq[0];
            qq <= qq>>1;
            //xx
            // v = qq[0];
            // qq <= {1'b0,qq[3:1]};
        end
    end
endmodule

module PISO_tb (
);
    parameter ff=4;
    reg clk,reset,sel;
    reg [ff-1:0]data;
    wire v;

    initial begin
        clk=1;
        forever begin
            #5 clk=~clk;
        end
    end
    
    initial begin
        reset=1;
        // #10; reset=0;sel=1;data=4'b0111;
        // #10; sel=0;data=0;
        #10; reset=0;sel=1;data=4'b1111;
        #10; sel=0;data=0;
    end

    PISO A1(clk,reset,sel,data,v);
endmodule
