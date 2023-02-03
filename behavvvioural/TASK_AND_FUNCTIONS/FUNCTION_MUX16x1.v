module FUNCTION_MUXnx1 (
    i,sel,y
);
parameter n =3 ;
input [(2**n)-1:0]i;
input [n-1]sel;
output y; 

function  mux8x1;
    input [7:0]i;
    input [2:0]sel;
    reg y;
    reg [1:0]a;
    begin
        a[0]=mux4x1(i[3:0],sel[1:0]);
        a[1]=mux2x1(i[7:4],sel[1:0]);
        y=mux2x1(a[0],a[1],sel[2]);
    end
endfunction

function  mux4x1;
    input [3:0]i;
    input [1:0]sel;
    reg y;
    reg [1:0]a;
    begin
        a[0]=mux2x1(i[0],i[1],sel[0]);
        a[1]=mux2x1(i[2],i[3],sel[0]);
        y=mux2x1(a[0],a[1],sel[1]);
    end
endfunction

function  mux2x1;
    input [1:0]a;
    input sel;
    mux2x1=sel?a[1]:a[0];
endfunction
endmodule //FUNCTION_MUX16x1

module tb_FUNCTION_MUXnx1 (
    
);

endmodule //FUNCTION_MUX16x1


