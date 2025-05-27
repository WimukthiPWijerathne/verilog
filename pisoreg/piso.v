module piso(
    input [3:0] data_in,
    input clk,
    input load,  // control signal to load data_in
    output reg serial_out
);

    reg [3:0] shift_reg;

    always @(posedge clk) begin
        if (load) begin
            shift_reg <= data_in;  // Load parallel data
        end else begin
            serial_out <= shift_reg[3]; // Output MSB first
            shift_reg <= {shift_reg[2:0], 1'b0}; // Shift left
        end
    end
endmodule
