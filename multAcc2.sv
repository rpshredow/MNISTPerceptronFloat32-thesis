module multAcc2 (dataout, dataa, datab, clk, aclr, clken);
	input [7:0] dataa, datab;
	input clk, aclr, clken;
	output reg[16:0] dataout;
 
	reg [7:0] dataa_reg, datab_reg;
	reg [15:0] multa_reg;
	wire [15:0] multa;
	wire [16:0] adder_out;
	assign multa = dataa_reg * datab_reg;
	assign adder_out = multa_reg + dataout;
	always @ (posedge clk or posedge aclr) begin
		if (aclr) begin
			dataa_reg <= 8'b0;
			datab_reg <= 8'b0;
			multa_reg <= 16'b0;
			dataout <= 17'b0;
		end
		else if (clken) begin
			dataa_reg <= dataa;
			datab_reg <= datab;
			multa_reg <= multa;
			dataout <= adder_out;
		end
	end
endmodule