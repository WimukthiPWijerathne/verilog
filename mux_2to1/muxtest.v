`include "2to1mux.v"

module test;
    reg a, b, sel, en;
    wire out;

    // Instantiate the 2-to-1 multiplexer
    mux_2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .en(en),
        .y(out)
    );

    initial begin
       
        $monitor("time=%0t: a=%b, b=%b, sel=%b, en=%b, out=%b", $time, a, b, sel, en, out);

        
        a = 0; b = 0; sel = 0; en = 1'b1; #10;
        
        a = 0; b = 1; sel = 0; en = 1'b0; #10;
   
        a = 1; b = 0; sel = 1; en = 1'b1; #10;
       
        a = 1; b = 1; sel = 1; en = 1'b0; #10;

        $finish;
    end

    initial begin
        $dumpfile("muxdump.vcd");
        $dumpvars(0, test);
    end
endmodule
