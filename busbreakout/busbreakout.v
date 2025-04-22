module bsbreakout (
    input wire [3:0] a,
    input wire [3:0] b,
    output wire  [5:0] p

);
assign p = {
    a[1:0],               // bits 5:4
    (a[2] & b[0]),        // bit 3
    (a[3] & b[1]),        // bit 2
    b[3:2]                // bits 1:0
};


endmodule
