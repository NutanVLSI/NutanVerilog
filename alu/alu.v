module alu(Y,A,B,F);
input [31:0] A,B;
input[2:0] F;
output reg [31:0] Y;
always @(*)
begin
case(F)
3'b000 : Y=A+B;
3'b001 : Y=A+1;
3'b010 : Y=A-B;
3'b011 : Y=A-1;
3'b10x : Y=A*B;
	default : Y=32'b0;
 
endcase 
end
endmodule
