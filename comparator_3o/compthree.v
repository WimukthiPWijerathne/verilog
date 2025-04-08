module complthree
(
    input wire a,
    input wire b,
    output reg a_eq_b,
    output reg a_ls_b,
    output reg a_gt_b
);


    always @(*) begin

        if(a==b)begin
            a_eq_b=1'b1;
            a_ls_b=1'b0;    
            a_gt_b=1'b0;
        end
        else if(a>b)begin
            a_eq_b=1'b0;
            a_ls_b=1'b0;    
            a_gt_b=1'b1;
        end
        else begin
            a_eq_b=1'b0;
            a_ls_b=1'b1;    
            a_gt_b=1'b0;
        end        
    end
endmodule