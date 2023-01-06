module tb_comp_4bit_u_2bit (
    
);
    reg [3:0]a,b;
    // inout [1:0]L,G,E;
    wire Lesser,Greater,Equal;

    dut_comp_4bit_u_2bit a1(a,b,Lesser,Greater,Equal,L,G,E);

    initial begin
    #10;
    a=4'd15; b=4'd15;#10;
    a=4'd6; b=4'd3;#10;
    a=4'd9; b=4'd8;#10;
    a=4'd4; b=4'd8;#10;
    $stop;

    end
endmodule
