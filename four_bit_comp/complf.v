//four bit comparator that supports cascading for multibit comparisons

//this is the first comparator that compares the most significant bits of two 4 bit numbers
module compfl(
    input wire [7:4] a,
    input wire [7:4] b,
    output wire a_eq_b,
    output wire a_ls_b,
    output wire a_gt_b
    

);
  

  
    reg t1,t2,t3;
    always @(*) begin

        if(a[7:4]==b[7:4])begin
            t1=1'b1;
            t2=1'b0;    
            t3=1'b0;
        end
        else if(a[7:4]>b[7:4])begin
            t1=1'b0;
            t2=1'b0;    
            t3=1'b1;
        end
        else begin
            t1=1'b0;
            t2=1'b1;    
            t3=1'b0;
        end        
    end
    
    always @(t1,t2,t3) begin
        
        if (t1==1'b1)begin
            if(a[3:0] == b[3:0])begin
            assign a_eq_b=1'b1;
            assign a_ls_b=1'b0;    
            assign a_gt_b=1'b0;
            end
        end
        else if(t2==1'b1)begin
            if(a[3:0]< b[3:0])begin
            assign a_eq_b=1'b0;
            assign a_ls_b=1'b0;    
            assign a_gt_b=1'b1;
            end
        end
        else begin
            if(a[3:0]>b[3:0])begin
            assign a_eq_b=1'b0;
            assign a_ls_b=1'b1;    
            assign a_gt_b=1'b0;
            end
        end
    end

endmodule

//now goes to the next ic


