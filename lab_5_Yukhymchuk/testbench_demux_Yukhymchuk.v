`timescale 1ns / 1ps

module testbench_demux_Yukhymchuk;

  // Input signals
  reg [3:0] D;
  reg [2:0] S;

  // Output signals
  wire [3:0] Q0, Q1, Q2, Q3, Q4;

  // Instantiate the Design Under Test (DUT)
  demux_Yukhymchuk dut (
    .D(D),
    .S(S),
    .Q0(Q0),
    .Q1(Q1),
    .Q2(Q2),
    .Q3(Q3),
    .Q4(Q4)
  );

  // Test sequence
  initial begin
    $display("Starting testbench for demux_Yukhymchuk...");
    $monitor("Time=%0t | S=%b | D=%b | Q0=%b Q1=%b Q2=%b Q3=%b Q4=%b", 
              $time, S, D, Q0, Q1, Q2, Q3, Q4);

    // Test valid selector values (0 to 4)
    D = 4'b1010;

    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    
    // Test invalid selector values (5 to 7)
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    $display("Testbench completed.");
    $finish;
  end
endmodule
