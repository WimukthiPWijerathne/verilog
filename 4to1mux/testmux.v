`include "4to1mux.v"

module testm;

    reg [3:0] a,b,c,d,e;
    reg [1:0] sel;
    reg en;
    wire [3:0] out;

    mx4to1 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .en(en),
        .out(out)
    );

    initial
    begin
        $monitor("time=%0t: a=%b, b=%b, c=%b, d=%b, sel=%b, en=%b, out=%b", $time, a, b, c, d, sel, en, out);

        a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000; sel = 2'b00; en = 1'b1; #10;
        a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000; sel = 2'b01; en = 1'b1; #10;
        a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000; sel = 2'b10; en = 1'b1; #10;
        a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000; sel = 2'b11; en = 1'b1; #10;
        a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000; sel = 2'b00; en = 1'b0; #10;

        $finish;
    end

    initial
    begin
        
        $dumpfile("muxdump.vcd");
        $dumpvars(0,testm);

    end
endmodule