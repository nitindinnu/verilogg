module ALU #(parameter data_bitsize =4) (
    input [data_bitsize-1:0]a,b,
    input [data_bitsize-2:0]opcode,
    output reg [data_bitsize*2-1:0]dout
);
    parameter andd=3'b000,orr=andd+1,nandd=orr+1,norr=nandd+1,xorr=norr+1,xnorr=xorr+1 ;

    always @(a,b,opcode) begin
        case(opcode) 
            3'b000:dout=a&b;
            3'b001:dout=a|b;
            3'b010:dout=~(a&b);
            3'b011:dout=~(a|b);
            3'b100:dout=(a^b);
            3'b101:dout=~(a^b);
        endcase
    end
endmodule //ALU

module tb_ALU (
    
);
    reg[3:0]a,b;
    reg[2:0]opcode;
    wire [7:0]dout;
    initial begin
        repeat(2)begin opcode=3'd0;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd1;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd2;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd3;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd4;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd5;a=$random;b=$random;#10;end
    end
    initial begin
        $monitor(" A=%b | B=%b | Opcode = %b | dout=%b",a,b,opcode,dout);
    end
    ALU a1(a,b,opcode,dout) ; 
endmodule //ALU
