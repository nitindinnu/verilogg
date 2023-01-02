module mux4x1_dut_vectors (y,s,i
    
);
input [3:0]i;
input [1:0]s;
output y;

assign y= s[0]?(s[1]?i[3]:i[2]):(s[1]?i[1]:i[0]);
    
endmodule

