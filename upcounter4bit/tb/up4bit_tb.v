module up4bit_tb();
    reg clk;
    reg rst;
    wire [3:0] q;

    up4bit uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, up4bit_tb);
        
        rst = 1; #10;
        rst = 0;#160;
        $finish;
    end
endmodule
