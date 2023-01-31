module T_FF_SYNC (
    input  t,clk,sync_reset,output reg q,qb //https://ranger.uta.edu/~carroll/cse2341/summer99/html%20files/chapter_6/img060.GIF
);
  always @(posedge clk) begin
    if (sync_reset) begin
      q <= 0;qb<=1;
    end
    else begin
        case (t)
            1'b1: begin q<=0;qb<=1; end
            1'b0: begin q<=1;qb<=0; end
            // default: 
        endcase
    end
    // begin
    // 	if (t) begin
    //         q<=0;qb<=1;
    //     end
    // 	else begin
    //   		q<=1;qb<=0;
    //     end
    // end
  end
endmodule //T_FF_SYNC

module T_FF_SYNC_tb (
    
);  reg t,clk,sync_reset;
    wire q,qb;

    initial begin
        {sync_reset,t,clk}=0;
        // for (integer i =0 ;i<=20 ;i=i+1 ) begin
        //     reg [4:0] delay = $random;
        //     #(delay) t <= $random;
        // end
    end
    initial #150 sync_reset=1;
    always #2 t=~t;
    always #5 clk=~clk;

    T_FF_SYNC a1(t,clk,sync_reset,q,qb);
endmodule //T_FF_SYNC


