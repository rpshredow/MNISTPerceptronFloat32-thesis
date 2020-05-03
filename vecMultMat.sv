module vecMultMat(
	input clk,
	input start,
	input reset,
	input [31:0] vector [3:0],
	input [31:0] matrix [15:0],
	output [31:0] out [15:0]
);

reg done;

wire [31:0] pwire [3:0];
reg [31:0] product [15:0];

wire [31:0] mat [3:0];
reg [31:0] add0 [3:0];
wire [31:0] add1 [3:0];
wire [31:0] addOut [3:0];

reg [31:0] sum [3:0];

integer i, j;

always @ (posedge clk) begin
	if(start == 1) begin
		if( i < 4 ) begin
			mat[0] <= matrix[i];
			mat[1] <= matrix[i + 3];
			mat[2] <= matrix[i + 7];
			mat[3] <= matrix[i + 11];
			
			product[i] <= pwire[0];
			product[i+3] <= pwire[1];
			product[i+7] <= pwire[2];
			product[i+11] <= pwire[3];
		end
		if(i == 10) begin
			out <= product;
			done <= 1'b1;
		end
		
		i = i + 1;
	end
end


endmodule