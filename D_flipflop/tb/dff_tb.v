module dff_tb();

    reg d;
    reg clk;
    wire q;

    dff uut (
        .d(d),
        .clk(clk),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, dff_tb);
        
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        $finish;
    end
endmodule
