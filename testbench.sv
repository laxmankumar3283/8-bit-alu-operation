// Code your testbench here
// or browse Examples
module alu_tb;
  reg [7:0]a,b;
  reg [3:0]sel;
  wire [7:0]out;
  
  alu_8_bit a1(a,b,sel,out);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial begin
    sel=4'h0;
    a=8'h0_0;b=8'hf_f;
    #50 a=8'hf_f;b=8'h0_f;
    #50 a=8'hf_f;b=8'hf_f;
  end
endmodule