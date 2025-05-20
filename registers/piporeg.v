module pipo_reg #(parameter WIDTH = 8)(
    input wire clk,
    input wire reset,
    input wire load,
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
);

always @(posedge clk or posedge reset) begin
    if(reset)begin
        data_out <= {WIDTH{1'b0}}; // Reset the output to 0
    end
    else if(load) begin
        data_out <= data_in;
    end
end
endmodule

