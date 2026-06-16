module alu_tb();
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] sel;
    wire [3:0] y;

    alu uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, alu_tb);
        
        a = 4'b0001; b = 4'b0010; sel = 3'b000; #10; 
        a = 4'b0100; b = 4'b0011; sel = 3'b001; #10; 
        a = 4'b0011; b = 4'b0101; sel = 3'b010; #10; 
        a = 4'b0110; b = 4'b0011; sel = 3'b011; #10; 
        a = 4'b1001; b = 4'b0100; sel = 3'b100; #10; 
        a = 4'b1010; b = 4'b0011; sel = 3'b101; #10; 
        a = 4'b1100; b = 4'b0000; sel = 3'b110; #10; 
        a = 4'b1111; b = 4'b0000; sel = 3'b111; #10; 
        
        $finish;
    end
endmodule
