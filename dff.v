`timescale 1ns/1ps
module dff(q,d,reset,clk);
input d,reset,clk;
output q;
reg q;

//posedge triggered D-flip flop with synchronous reset

always @ (posedge clk)
begin
if (reset) //if reset=1 (HIGH)
q=1'b0;
else
q=d;
end
endmodule

module dfftb();
reg d,reset,clk;
wire q;

dff dut (q,d,reset,clk);
initial
begin
clk<=1'b0;
d<=1'b0;
reset<=1'b0;

#10 reset=1'b1;
#15 reset=1'b0;
#25 reset=1'b1;
#35 reset=1'b0;
end
always #10 clk=~clk;
always #50 d=~d;
initial 
#200 $finish;
endmodule







