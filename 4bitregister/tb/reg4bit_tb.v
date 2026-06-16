module reg4bit_tb();
    
    reg [3:0] d;
    reg clk;
    wire [3:0] q;

    reg4bit uut (
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
        $dumpvars(0, reg4bit_tb);
        
        d = 4'b0000; #10;
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0011; #10;
        d = 4'b0100; #10;
        d = 4'b0101; #10;
        d = 4'b0110; #10;
        d = 4'b0111; #10;
        d = 4'b1000; #10;
        d = 4'b1001; #10;
        d = 4'b1010; #10;
        d = 4'b1011; #10;
        d = 4'b1100; #10;
        d = 4'b1101; #10;
        d = 4'b1110; #10;
        d = 4'b1111; #10;
        $finish;
    end
endmodule
