module devidedby3FSM(
    input reset,clk,
    output y
);

    reg [1:0] state;
    reg [1:0] next_state;

    parameter S0 = 2'b00; // State 0
    parameter S1 = 2'b01; // State 1
    parameter S2 = 2'b10; // State 2

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0; // Reset to state 0
        else
            state <= next_state; // Transition to next state
    end

    always @(*) begin
        case (state)
            S0: begin
                next_state = S1; // From S0 to S1
            end
            S1: begin
                next_state = S2; // From S1 to S2
            end
            S2: begin
                next_state = S0; // From S2 back to S0
            end
            default: begin
                next_state = S0; // Default case to avoid latches
            end
        endcase

        
        
    end
    assign y = (state == S0); // Output y is high when in state S0

    endmodule