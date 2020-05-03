module layer (
	input clk,
	input run,
	input [15:0]inputLayer[11:0],
	output [15:0]outputLayer[63:0]
);

always @ (posedge clk) begin
	if(done[0] == 1 && done[1] == 1 && done[2] == 1 && done[3] == 1 && done[4] == 1 && 
	done[5] == 1 && done[6] == 1 && done[7] == 1 && done[8] == 1 && done[9] == 1)
		sigIn <= out;
end

wire done[63:0];
reg [15:0]out[63:0];
wire [15:0]sigIn[63:0];

genvar i;
generate
    for (i = 0; i < 64; i = i + 1) begin : mult // <-- example block name
		multAcc m1(
			.clk(clk),
			.run(run),
			.start(i * 12),
			.size(32'd12),
			.inputLayer(inputLayer),
			.done(done[i]),
			.out(out[i])
		);
	end 
	
	for( i = 0; i < 64; i = i + 1) begin : add
		sigmoid s1(
			.in(sigIn[i]),
			.out(outputLayer[i])
		);
	end
	
endgenerate



endmodule