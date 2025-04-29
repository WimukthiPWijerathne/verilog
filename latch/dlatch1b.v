module onebdlatch(
    input wire d,
    input wire en,
    output reg q
);

    always @(en or d)
    begin
        if(en)
        begin
            q <= d;
        end
    end
    endmodule