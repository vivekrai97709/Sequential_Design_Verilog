module reg4bit_tb ();
    reg clk;
    reg rst;
    reg d;
    wire [3:0] q;

    reg4bit uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, reg4bit_tb);
        
        rst = 1; 
        d = 0; 
        #10;
        rst = 0; 
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 1; #10;
        $finish;
    end
endmodule
