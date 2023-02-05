module ALU (
    input[3:0]a,b,
    input[2:0]opcode,
    output reg [7:0] result
);

parameter add_op = 3'b000,
sub_op = 3'b001,
mul_op = 3'b010,
and_op = 3'b011,
or_op = 3'b100,
not_op = 3'b101, //negation
xor_op = 3'b110,
xnor_op = 3'b111;

always @(a,b,opcode) begin
  case (opcode)
    add_op: result = a + b;
    sub_op: result = a - b;
    mul_op: result = a * b;
    and_op: result = a & b; //also ab
    or_op: result = a | b;
    not_op: result = ~a; //also ~b
    xor_op: result = a ^ b;
    xnor_op: result = ~(a ^ b);
  endcase  
end
endmodule //ALU_8bit

module tb_ALU (
    
);
    reg[3:0]a,b;
    reg[2:0]opcode;
    wire [7:0]result;
    initial begin
        repeat(2)begin opcode=3'd0;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd1;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd2;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd3;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd4;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd5;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd6;a=$random;b=$random;#10;end
        repeat(2)begin opcode=3'd7;a=$random;b=$random;#10;end
    end
    initial begin
        $monitor(" A=%b | B=%b | Opcode = %b | Result=%b",a,b,opcode,result);
    end
    ALU a1(a,b,opcode,result) ; 
endmodule //ALU_8bit
