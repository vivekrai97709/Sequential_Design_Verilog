module reg4bit(
    input [3:0] d,
    input clk,
    output reg [3:0] q
);
    always @(posedge clk)
    begin 
        q[3:0] <= d[3:0];
    end
endmodule   
