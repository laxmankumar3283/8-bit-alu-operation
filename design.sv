// Code your design here
module alu_8_bit(
  input [3:0] sel,
  input [7:0]a,b,
  output [7:0]out);
  
  reg [7:0]out;
  
  always@(*)begin // you also write always@(a,b,sel)
    case(sel)
      4'h0:out=a+b;
      4'h1:out=a-b;
      //4'h2:out=a*b multiplication is not possible because 4bit multiply by 4bit become 16 bits
      4'h3:out=a/b;
      4'h4:out=a<<1;
      4'h5:out=a>>1;
      4'h6:out={a[6:0],a[7]};
      4'h7:out={a[0],a[7:1]};
      4'h8:out=a&b;
      4'h9:out=a|b;
      4'ha:out=a^b;
      4'hb:out=~(a|b);
      4'hc:out=~(a&b);
      4'hd:out=~(a^b);
      4'he:out=(a>b)?8'd1:8'd0;
      4'hf:out=(a==b)?8'd1:8'd0;
      default:out=8'bx;
    endcase
  end
endmodule
      