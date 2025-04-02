module sipo(
  input clk,rst,in,
  output [3:0] out);
  reg [3:0] shift_reg;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      shift_reg <= 4'b0000;
    end else begin
      shift_reg = shift_reg>>1;
      shift_reg <= {in,shift_reg[2:0]};
    end
  end
  assign out = shift_reg;
endmodule
