module mux16x1_dut (y,i,s
);

input [15:0]i,
input [4:0]s;
output y;

// assign y= s[0]?(s[1]?(s[2]?(s[3]?i[15]:i[14]):(s[3]?i[13]:i[12]):(s[2]?s[3](i[11]:i[10]):s[3](i[9]:i[8])):(s[1]?(s[2]?(s[3]?i[7]:i[6]):s3?(i[5]:i[4])):(s[2]?s[3](i[3]:i[2]):s[3](i[1]:i[0]))));
    
endmodule
