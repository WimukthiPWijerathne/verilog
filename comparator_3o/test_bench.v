`timescale 1ns/1ps
`include "compthree.v"


module test ;

reg [3:0] a;
reg [3:0] b;
wire a_eq_b;
wire a_ls_b;
wire a_gt_b;


complthree DUT(
    .a(a),
    .b(b),
    .a_eq_b(a_eq_b),
    .a_ls_b(a_ls_b),
    .a_gt_b(a_gt_b)
);

