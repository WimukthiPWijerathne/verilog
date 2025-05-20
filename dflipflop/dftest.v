`include "dflipflop.v"

module dtest;
    reg d;
    reg clk;
    reg en;
    reg reset;
    wire q;

    dflipflop uut (
        .d(d),
        .clk(clk),
        .en(en),
        .reset(reset),
        .q(q)
    );
    initial begin
        clk = 0; // Initialize clock
        #5 clk = ~clk; // Toggle clock every 5 time units
    end

    initial begin
        
        #10 d = 0; clk = 0; en = 1; reset = 0; // Test case 1: d=0, clk=0, en=1, reset=0
        #10 d = 1; clk = 1; en = 1; reset = 0; // Test case 2: d=1, clk=1, en=1, reset=0
        #10 d = 0; clk = 0; en = 0; reset = 1; // Test case 3: d=0, clk=0, en=0, reset=1
        #10 d = 1; clk = 1; en = 1; reset = 0; // Test case 4: d=1, clk=1, en=1, reset=0
    end
    initial begin
        $dumpfile ("dflipflop.vcd");
        $dumpvars (0,dtest);
        $monitor ("d=%b, clk=%b, en=%b, reset=%b, q=%b", d, clk, en, reset, q); // Monitor the inputs and output
    end
    endmodule