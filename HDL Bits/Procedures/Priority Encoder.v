// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always@(*)begin
        casez (in)
            8'b???????1: pos = 'd0;
            8'b??????1?: pos = 'd1;
            8'b?????1??: pos = 'd2;
            8'b????1???: pos = 'd3;
            8'b???1????: pos = 'd4;
            8'b??1?????: pos = 'd5;
            8'b?1??????: pos = 'd6;
            8'b1???????: pos = 'd7;
            default: pos = 'd0;
        endcase
    end           
endmodule
