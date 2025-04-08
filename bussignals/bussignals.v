module bussignals(
    input wire [3:0] a,
    input wire [3:0] b,
    input c,
    output wire [3:0] p
);
wire [3:0] cbus;

assign cbus = {{c}};

assign p = (a & (~cbus) | (b & cbus));

endmodule

