module mx4to1 (
    input wire [2:0] a,
    input wire [3:0] b,
    input wire [3:0] c,
    input wire [3:0] d,
    input wire [1:0] sel,
    input wire en,
    output reg [3:0] out

);

always @(*) begin
    if (en) begin
        case (sel)
            2'b00: out = a;
            2'b01: out = b;
            2'b10: out = c;
            2'b11: out = d;
            default: out = 4'b0000; 
        endcase
    end else begin
        out = 4'bzzzz; // Output is zero when enable is low
    end
end
endmodule