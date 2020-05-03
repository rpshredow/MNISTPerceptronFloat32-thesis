module multAcc1(
	input clk,
	input start,
	input [15:0] in1,
	input [15:0] in2,
	output [15:0] out
);

reg [15:0] sum;
reg [15:0] product;
wire [15:0] multiplicand;
wire [15:0] multiplier;
wire [15:0] addin1;
wire [15:0] addin2;
integer step;

always @ (posedge clk) begin
	if(start == 1) begin
		step <= 0;
	end
	if(step == 0) begin
		multiplicand <= in1;
		multiplier <= in2;
		step <= 1;
	end
	if(step == 1) begin
		addin1 <= product;
		addin2 <= sum;
		step <= 2;
	end
	if(step == 2) begin
		out <= sum;
	end
end

qmult #(12,16) uut1 (
	.i_multiplicand(multiplicand), 
	.i_multiplier(multiplier), 
	.o_result(product),
	.ovr(ovr)
);

qadd #(12,16) uut2 (
	.a(addin1), 
	.b(addin2), 
	.c(sum)
);


endmodule