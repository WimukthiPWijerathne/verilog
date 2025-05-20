module siso_reg #(parameter N=8)(
    input clk,
    input reset,
    input data_in,
    output reg data_out
);


//internal 4bit register
reg [N-1:0] shift_reg;

always @(posedge clk or posedge reset) begin
  if(reset)begin
    shift_reg <= {N{1'b0}}; // Reset the output to 0
  end
  else begin
    shift_reg <= {shift_reg[N-2:0], data_in}; // Shift left and insert new data
    data_out <= shift_reg[N-1]; // Output the last bit of the shift register
    
  end
end
endmodule
