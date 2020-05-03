module multAcc(
	input clk,
	input run,
	input signed [31:0] start,
	input signed [31:0] size,
	input [15:0] inputLayer [11:0],
	output done,
	output [15:0] out
);

integer i = 0;
integer j = 0;
integer address = 0;
integer step = 0;
reg [15:0] multiplicand;
reg [15:0] multiplier;
reg [15:0] memOut1;
reg [15:0] multOut;
reg [15:0] addIn1;
reg [15:0] addIn2;
reg [15:0] sum;
reg [15:0] addOut;
integer endLoop;

assign out = sum;

assign endLoop = start + size;

always @ (posedge clk) begin
	if(run == 0) begin
		i <= start;
		j <= 0;
	end

	if(run == 1) begin
		if(i < endLoop) begin
			if(step == 0) begin
				address <= i;
				step <= 1;
			end
			
			if(step == 1) begin
				multiplicand <= memOut1;
				multiplier <= inputLayer[j];
				step <= 2;
			end
			
			if(step == 2) begin
				addIn1 <= multOut;
				addIn2 <= sum;
				step <= 3;
			end
			
			if(step == 3) begin
				sum <= addOut;
				step <= 0;
				j <= j + 1;
				i <= i + 1;
			end
			
			if(i == endLoop)
				done <= 1;
		end
	end
end


weights	weights_inst1 (
	.address (address),
	.clock (clk),
	.q (memOut1)
);

qmult #(12,16) uut1 (
	.i_multiplicand(multiplicand), 
	.i_multiplier(multiplier), 
	.o_result(multOut),
	.ovr(ovr)
);

qadd #(12,16) uut2 (
	.a(addIn1), 
	.b(addIn2), 
	.c(addOut)
);


endmodule