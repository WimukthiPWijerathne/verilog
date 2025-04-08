`timescale 1ns/1ps
`include "comp.v"

module comp_test;
    reg a;
    reg b;
    wire z;


    comp uut (.a(a), .b(b), .z(z)); // Instantiate the comparator module


    initial begin 
        $dumpfile ("compdump.vcd");
        $dumpvars (0,comp_test);

        $monitor ("a=%b, b=%b, z=%b", a, b, z); // Monitor the inputs and output
        #10 a = 0; b = 0;  // Test case 1: a=0, b=0
        #10 a = 0; b = 1;  // Test case 2: a=0, b=1
        #10 a = 1; b = 0;  // Test case 3: a=1, b=0
        #10 a = 1; b = 1;  // Test case 4: a=1, b=1


    end
endmodule
