module ha_tb (
    
);
    reg a,b;
    wire sum,carry;
    initial begin
        a=1;b=1;#10;
    end

    half_adder_dut a1 (sum,carry,a,b);
    
endmodule
