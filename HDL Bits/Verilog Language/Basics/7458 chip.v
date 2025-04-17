module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    //Using wires:
    wire w0, w1, w2, w3;
    assign w0 = p1a & p1c & p1b;
    assign w1 = p1f & p1e & p1d;
    assign p1y = w0 | w1;
    assign w2 = p2a & p2b;
    assign w3 = p2c & p2d;
    assign p2y = w2 | w3;
    // Without using wires:
    // assign p1y = (p1a & p1c & p1b) | (p1f & p1e & p1d); 
    // assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule
