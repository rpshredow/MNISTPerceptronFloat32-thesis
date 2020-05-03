module layer #(
	parameter D = 16,
	parameter L = 784,
	parameter N = 2
	) 
	(
	input clk,
	input start,
	input signed [D-1:0] inputLayer [L-1:0],
	output signed [D-1:0] outputLayer [N-1:0]
);

integer step;
integer i;
integer j;

wire wren [N-1:0];
wire [19:0] addrin [N-1:0];
wire signed [D-1:0] datain [N-1:0];

wire signed [D-1:0] memout [N-1:0];
reg signed [D*2-1:0] result [N-1:0];
wire signed [D-1:0] a [N-1:0];
wire signed [D-1:0] b [N-1:0];

always @ (posedge clk) begin
	if(start == 1) begin
		if(step == 0) begin
		
			addrin[0] <= i;
			addrin[1] <= i;


			step <= 1;
			
			a[0] <= 0;
			b[0] <= 0;
		end
		if(step == 1) begin
			a[0] <= inputLayer[i];
			b[0] <= memout[0];
			
			a[1] <= inputLayer[i];
			b[1] <= memout[1];

			step <= 0;
			
			if(i < L) begin
				i <= i + 1;
			end
			
			if(i >= L) begin
				a[0] <= 0;
				b[0] <= 0;
				
				a[1] <= 0;
				b[1] <= 0;
			end
				

			outputLayer[0] <= result[0];
			outputLayer[1] <= result[1];
		end
	end
end

genvar x;
generate
	for (x = 0; x < N; x = x + 1) begin : mult // <-- example block name
		mac m1(
			.result(result[x]),
			.dataa_0(a[x]),
			.datab_0(b[x]),
			.clock0(clk)
		);
	end
endgenerate

	hiddenWeights0	hiddenWeights0_inst (
		.address (addrin[0]),
		.clock (clk),
		.data (datain[0]),
		.wren (1'b0),
		.q (memout[0])
	);
	
	hiddenWeights1	hiddenWeights1_inst (
		.address (addrin[1]),
		.clock (clk),
		.data (datain[1]),
		.wren (1'b0),
		.q (memout[1])
	);

endmodule