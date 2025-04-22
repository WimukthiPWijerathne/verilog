module mux_2to1 (
    input wire a,
    input wire b,
    input wire en,
    input wire sel,
    output reg y
);

always @(*) begin
    if (en == 1'b1) begin
        if (sel == 1'b0)
            y = a;
        else
            y = b;
    end else begin
        y = 1'bz; // High impedance when not enabled
    end
end

endmodule
