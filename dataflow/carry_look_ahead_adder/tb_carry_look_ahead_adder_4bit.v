module tb_carry_look_ahead_adder_4bit (
    
);
    reg [3:0]a,b;
    reg cin;
    wire [2:0]C;
    wire [3:0]g,p;
    wire cout;
    wire [3:0]s;

    dut_carry_look_ahead_adder_4bit aa1(a,b,g,p,cin,C,s,cout);
    initial begin
        #5;
        a=4'd6; b=4'd6; cin=0;#10;
        a=4'd12; b=4'd11 ;#10;
        a=4'd5; b=4'd4; #10;
    end

endmodule
