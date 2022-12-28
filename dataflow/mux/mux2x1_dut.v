// module mux2x1 (i0,i1,s,y);
module mux2x1 (input i0,i1,s,output y);

// assign y=(((~s)&i0)|(s&i1));

assign y=(s?i0:i1);
// assign y=(s==1?i0:i1);
// assign y=(s==0?i0:i1);
    
endmodule
