module memory(
	input clk,
	input [31:0] address,
	input [31:0] data,
	input [15:0] inputlayer [1023:0],
	output [15:0] outputlayer
);

reg we;
reg [9:0] regnum;
reg [19:0] addr;

assign we = address[30];
assign regnum = address[29:20];
assign addr = address[19:0];

reg wren [1:0];
reg [19:0] addr_in [1:0];
reg [15:0] data_in [1:0];

always @ (posedge clk) begin
	if(we == 1) begin
		if(regnum == 0) begin
			wren[0] <= 1'b1;
			addr_in[0] <= addr;
			data_in[0] <= data[15:0];
		end else
			wren[0] <= 1'b0;
		
		if(regnum == 1) begin
			wren[1] <= 1'b1;
			addr_in[1] <= addr;
			data_in[1] <= data[15:0];
		end else
			wren[1] <= 1'b0;
	end
	
	if(we == 0) begin
		if(regnum == 0) begin
			wren[0] <= 1'b0;
			addr_in[0] <= addr;
			data_in[0] <= data[15:0];
		end
		
		if(regnum == 1) begin
			wren[1] <= 1'b0;
			addr_in[1] <= addr;
			data_in[1] <= data[15:0];
		end
	end
end

genvar x;
generate
	for (x = 0; x < 2; x = x + 1) begin : mult // <-- example block name
		ram	ram_inst (
			.address ( addr_in[x] ),
			.clock ( clk ),
			.data ( data_in[x] ),
			.wren ( wren[x] ),
			.q ( outputlayer )
		);
	end
endgenerate

endmodule