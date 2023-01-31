module mux4x1 (i,sel,y);
    input [3:0]i;
    input [1:0]sel;
    output y;
    function mux2x1;
        // input [1:0]i;
        // input sel;
        input i0,i1,sel;
        reg y;
        begin
        //>>>>functions not supporting vectors,conditional stmnts
            // mux2x1 = sel?i[1]:i[0]y;
            case (sel)
                0: mux2x1=i0;
                1: mux2x1=i1;
                // default: 
            endcase
        end
    endfunction
    wire [1:0]qq;
    assign qq[0]=mux2x1(i[0],i[1],sel[0]),qq[1]=mux2x1(i[2],i[3],sel[0]),y = mux2x1(qq[0],qq[1],sel[1]);
endmodule
 
//tb
module mux4x1_tb (
    
);
    reg [3:0]i;
    reg [1:0]sel;
    wire y;

    initial begin
        i=0;
        sel=0;
        forever begin
            #6 i=i+1; 
            #3 sel=sel+1;
        end
    end
   mux4x1 aa(i,sel,y);
endmodule

