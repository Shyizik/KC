module demux_Yukhymchuk (
  input [3:0] D, // 4 bit input
  input [2:0] S, // 3 bit address bus for 5 outputs
  output reg [3:0] Q0, Q1, Q2, Q3, Q4
);
  
  always @(*) begin
    Q0 = 4'b0000;
    Q1 = 4'b0000;
    Q2 = 4'b0000;
    Q3 = 4'b0000;
    Q4 = 4'b0000;
    
    // selecting output by address
    
    case (S)
      3'b000: Q0 = D;
      3'b001: Q1 = D;
      3'b010: Q2 = D;
      3'b011: Q3 = D;
      3'b100: Q4 = D;
      default: ; // else nothing to transmit 
    endcase
    
  end
endmodule
