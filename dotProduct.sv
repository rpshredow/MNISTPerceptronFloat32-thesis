module dotProduct(
	input [31:0] vector1 [3:0],
	input [31:0] vector2 [3:0],
	output [31:0] out
);

reg [31:0] vec1 [3:0];
reg [31:0] vec2 [3:0];
wire [31:0] add0 [3:0];
wire [31:0] add1 [1:0];

reg [31:0] sum [3:0];

integer i, j;

always @ (vector1, vector2) begin
	vec1[0] <= vector1[0];
	vec1[1] <= vector1[1];
	vec1[2] <= vector1[2];
	vec1[3] <= vector1[3];
	
	vec2[0] <= vector2[0];
	vec2[1] <= vector2[1];
	vec2[2] <= vector2[2];
	vec2[3] <= vector2[3];
end

qmult #(19,32) mult0 (
	.i_multiplicand(vec1[0]), 
	.i_multiplier(vec2[0]), 
	.o_result(add0[0]),
	.ovr(ovr)
);

qmult #(19,32) mult1 (
	.i_multiplicand(vec1[1]), 
	.i_multiplier(vec2[1]), 
	.o_result(add0[1]),
	.ovr(ovr)
);

qmult #(19,32) mult2 (
	.i_multiplicand(vec1[2]), 
	.i_multiplier(vec2[2]), 
	.o_result(add0[2]),
	.ovr(ovr)
);

qmult #(19,32) mult3 (
	.i_multiplicand(vec1[3]), 
	.i_multiplier(vec2[3]), 
	.o_result(add0[3]),
	.ovr(ovr)
);

qadd #(19,32) ad0 (
	.a(add0[0]), 
	.b(add0[1]), 
	.c(add1[0])
);

qadd #(19,32) ad1 (
	.a(add0[2]), 
	.b(add0[3]), 
	.c(add1[1])
);

qadd #(19,32) ad2 (
	.a(add1[0]), 
	.b(add1[1]), 
	.c(out)
);

endmodule