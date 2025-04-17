module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w0;
    wire [15:0] w1, w2;
    add16 add0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(w0));
    add16 add1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(w1), .cout(1'bz));
    add16 add2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(w2), .cout(1'bz));
    assign sum[31:16] = (w0) ? w2 : w1;

endmodule
