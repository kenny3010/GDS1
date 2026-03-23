module zelda_theme_tb;
    reg  clk, rst;
    wire speaker;

    zelda_theme dut (
        .clk(clk),
        .rst(rst),
        .speaker(speaker)
    );

    // 50 MHz clock → 20ns period
    initial clk = 0;
    always #10 clk = ~clk;

    initial begin
        $dumpfile("zelda.vcd");
        $dumpvars(0, zelda_theme_tb);
        rst = 1;
        #100;
        rst = 0;
    end
endmodule

