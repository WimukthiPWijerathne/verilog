//four bit comparator that supports cascading for multibit comparisons

//this is the first comparator that compares the most significant bits of two 4 bit numbers
module compfl(
    input wire [7:4] a,
    input wire [7:4] b,
    output wire a_eq_b,
    output wire a_ls_b,
    output wire a_gt_b
    

);
    reg [3:0] aa = [3:0] a;
    reg [3:0] bb = [3:0] b;
  
    wire t1,t2,t3;
    always @(*) begin

        if(a==b)begin
            assign t1=1'b1;
            assign t2=1'b0;    
            assign t3=1'b0;
        end
        else if(a>b)begin
            assign t1=1'b0;
            assign t2=1'b0;    
            assign t3=1'b1;
        end
        else begin
            assign t1=1'b0;
            assign t2=1'b1;    
            assign t3=1'b0;
        end        
    end
    
    always @(t1,t2,t3) begin
        if (t1==1'b1)begin
            if(aa == bb)begin
            assign a_eq_b=1'b1;
            assign a_ls_b=1'b0;    
            assign a_gt_b=1'b0;
            end
        end
        else if(t2==1'b1)begin
            if(aa< bb)begin
            assign a_eq_b=1'b0;
            assign a_ls_b=1'b0;    
            assign a_gt_b=1'b1;
            end
        end
        else begin
            if(aa> bb)begin
            assign a_eq_b=1'b0;
            assign a_ls_b=1'b1;    
            assign a_gt_b=1'b0;
            end
        end
    end

endmodule

//now goes to the next ic


