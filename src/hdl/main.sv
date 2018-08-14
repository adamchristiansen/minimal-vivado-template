`timescale 1ns / 1ps

module main(
    input logic clk,
    input logic [3:0] sw,
    output logic [3:0] led);

    always_ff @(posedge clk) begin
        led <= sw;
    end

endmodule
