`include "fsm.v"

module fsmt();

    reg clk,reset;
    wire y;

    devidedby3FSM uut (
        .reset(reset),
        .clk(clk),
        .y(y)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Generate clock signal with a period of 10 time units
    end
    initial
    begin
        $dumpfile ("fsm.vcd");
        $dumpvars (0,fsmt);
        reset = 1; // Start with reset high
        #10 reset = 0; // Release reset after 10 time units
        #100; // Run the simulation for 100 time units
        $finish; // End the simulation
    end
    endmodule