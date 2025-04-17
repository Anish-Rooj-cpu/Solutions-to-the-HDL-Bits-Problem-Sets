module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w0;
    add16 add0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(w0));
    add16 add1(.a(a[31:16]), .b(b[31:16]), .cin(w0), .sum(sum[31:16]), .cout(1'bz));

endmodule

module add1 (input a, input b, input cin, output sum, output cout);
    assign {cout, sum} = a + b + cin;
endmodule
