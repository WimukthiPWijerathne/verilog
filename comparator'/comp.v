module  comp
(
    input a,
    input b,
    output z
    
);

assign z = (~a & ~b) | (a & b); // z = a ^ b

endmodule