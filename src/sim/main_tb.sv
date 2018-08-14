`timescale 1ns / 1ps

module main_tb();

    logic clk = 0;
    logic [3:0] sw = 4'b0000;
    logic [3:0] led;

    main main_dut(
        .clk(clk),
        .sw(sw),
        .led(led)
    );

    always begin
        clk = #5 ~clk;
    end

    initial begin
        #100;
        sw <= 4'b1010;
        #100;
        sw <= 4'b0101;
        #100;
        sw <= 4'b1111;
        #100;
        $finish;
    end

endmodule
