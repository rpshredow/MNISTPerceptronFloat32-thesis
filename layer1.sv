module layer1 (
	input clk,
	input run,
	input [15:0] inputLayer [15:0],
	output [15:0] outputLayer
);

integer i;
integer step;
integer address;
wire [15:0] memOut;
reg [15:0] total;
wire [15:0] maIn1;
wire [15:0] maIn2;
wire [15:0] maOut;

assign outputLayer = total;

always @ (posedge clk) begin
	if(run == 1) begin
		if(i < 16) begin
			if(step == 0) begin
				address <= i;
				step <= 1;
			end
			if(step == 1) begin
				maIn1 <= memOut;
				maIn2 <= inputLayer[address];
				step <= 2;
			end
			if(step == 2) begin
				i = i + 1;
				step <= 0;
			end
			
			if(i == 15) begin
				total <= memOut;
			end
		end
	end
end

weights	weights_inst1 (
	.address (address),
	.clock (clk),
	.q (memOut)
);

multAcc1(
	.in1(maIn1),
	.in2(maIn2),
	.out(maOut)
);

/*
genvar i;
generate
	for (i = 0; i < 63; i = i + 1) begin : mult // <-- example block name

	end
endgenerate
*/


endmodule