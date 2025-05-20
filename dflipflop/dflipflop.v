module dflipflop(
    input wire d,
    input wire clk,
    input wire en,
    input wire reset,
    output reg q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0; // Reset the output to 0
        else if (en)begin
          
        
        q <= d;
        end
    end

endmodule