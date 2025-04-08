module interm(
    input wire a,
    input wire b,
    input wire c,
    output wire p,
    output wire q
   
);
 wire t1;

 assign t1 = a & b;
 assign p = t1 & c;
 assign q = t1 & c;


endmodule

 