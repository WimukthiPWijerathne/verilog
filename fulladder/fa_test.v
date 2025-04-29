`include "full_adder.v"

module ftest;
    reg a;
    reg b;
    reg cin;
    wire cout;
    wire sum;

    fulladder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .sum(sum)
    );

    initial begin
        
        $monitor ("a=%b, b=%b, cin=%b, cout=%b, sum=%b", a, b, cin, cout, sum);
        #10 a = 0; b = 0; cin = 0; // Test case 1: a=0, b=0, cin=0
        #10 a = 0; b = 1; cin = 0; // Test case 2: a=0, b=1, cin=0
        #10 a = 1; b = 0; cin = 0; // Test case 3: a=1, b=0, cin=0
        #10 a = 1; b = 1; cin = 0; // Test case 4: a=1, b=1, cin=0
        #10 a = 0; b = 0; cin = 1; // Test case 5: a=0, b=0, cin=1
        #10 a = 0; b = 1; cin = 1; // Test case 6: a=0, b=1, cin=1
        #10 a = 1; b = 0; cin = 1; // Test case 7: a=1, b=0, cin=1
        #10 a = 1; b = 1; cin = 1; // Test case 8: a=1, b=1, cin=1

    end
    initial
    begin
        $dumpfile ("full_adder.vcd");
        $dumpvars (0,ftest);
    end

    endmodule