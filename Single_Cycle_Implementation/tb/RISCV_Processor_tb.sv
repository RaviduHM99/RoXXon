`timescale 1ns / 1ps

module RISCV_Processor_tb();
    timeunit 1ns;
    timeprecision 1ps;
    
    localparam CLK_PERIOD = 10;
    logic clk;
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk <= ~clk;
    end
    
    logic reset;
    logic [31:0] ALU_Output;
    logic [31:0] PC_out;

    RISCV_Processor RV32I(.*);
    
    initial begin
        $dumpfile("Wave_Files/RISCV_Processor_tb.vcd");
        $dumpvars(0, RISCV_Processor_tb);
        @(posedge clk);
            reset <= 1'b1;

        @(posedge clk);
            reset <= 1'b0;

        $display("******* Test Completed *******");
    end
endmodule
