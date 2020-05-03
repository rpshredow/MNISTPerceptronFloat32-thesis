module multAcc(
	input clk,
	input start,
	output [31:0] out
);

integer i = 0;
integer address = 0;
integer step = 0;
reg [31:0] multiplicand;
reg [31:0] multiplier;
reg [31:0] memOut1;
reg [31:0] memOut2;
reg [31:0] multOut;
reg [31:0] product;
reg [31:0] addIn1;
reg [31:0] addIn2;
reg [31:0] sum;
reg [31:0] addOut;

assign out = sum;

always @ (posedge clk) begin
	if(start == 1) begin
		if(i < 10) begin
			if(step == 0) begin
				address <= i;
				step <= 1;
			end
			
			if(step == 1) begin
				multiplicand <= memOut1;
				multiplier <= memOut2;
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
				
				i <= i + 1;
			end
		end
	end
end


weights	weights_inst1 (
	.address (address),
	.clock (clk),
	.q (memOut1)
);
	
weights	weights_inst2 (
	.address (address),
	.clock (clk),
	.q (memOut2)
);

qmult #(19,32) uut1 (
	.i_multiplicand(multiplicand), 
	.i_multiplier(multiplier), 
	.o_result(multOut),
	.ovr(ovr)
);

qadd #(19,32) uut2 (
	.a(addIn1), 
	.b(addIn2), 
	.c(addOut)
);


endmodule