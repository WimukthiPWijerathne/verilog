module simpcomp (
    input x,y,
    output z
);
wire t1,t2,t3,t4;


assign t1 = ~x & ~y;
assign t2 = x & y;

assign z = t1 | t2;

endmodule
