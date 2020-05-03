module DE10_Nano_Computer (
	////////////////////////////////////
	// FPGA Pins
	////////////////////////////////////

	// Clock pins
	CLOCK1_50,
	CLOCK2_50,
	CLOCK3_50,
	CLOCK4_50,

	// ADC
	ADC_CS_N,
	ADC_DIN,
	ADC_DOUT,
	ADC_SCLK,

	// SDRAM
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_LDQM,
	DRAM_RAS_N,
	DRAM_UDQM,
	DRAM_WE_N,

	// Pushbuttons
	KEY,

	// LEDs
	LEDR,

	// Slider Switches
	SW,

	////////////////////////////////////
	// HPS Pins
	////////////////////////////////////
	
	// DDR3 SDRAM
	HPS_DDR3_ADDR,
	HPS_DDR3_BA,
	HPS_DDR3_CAS_N,
	HPS_DDR3_CKE,
	HPS_DDR3_CK_N,
	HPS_DDR3_CK_P,
	HPS_DDR3_CS_N,
	HPS_DDR3_DM,
	HPS_DDR3_DQ,
	HPS_DDR3_DQS_N,
	HPS_DDR3_DQS_P,
	HPS_DDR3_ODT,
	HPS_DDR3_RAS_N,
	HPS_DDR3_RESET_N,
	HPS_DDR3_RZQ,
	HPS_DDR3_WE_N,

	// Ethernet
	HPS_ENET_GTX_CLK,
	HPS_ENET_INT_N,
	HPS_ENET_MDC,
	HPS_ENET_MDIO,
	HPS_ENET_RX_CLK,
	HPS_ENET_RX_DATA,
	HPS_ENET_RX_DV,
	HPS_ENET_TX_DATA,
	HPS_ENET_TX_EN,

	// Flash
	HPS_FLASH_DATA,
	HPS_FLASH_DCLK,
	HPS_FLASH_NCSO,

	// Accelerometer
	HPS_GSENSOR_INT,
		
	// General Purpose I/O
	HPS_GPIO,
		
	// I2C
	HPS_I2C_CONTROL,
	HPS_I2C1_SCLK,
	HPS_I2C1_SDAT,
	HPS_I2C2_SCLK,
	HPS_I2C2_SDAT,

	// Pushbutton
	HPS_KEY,

	// LED
	HPS_LED,
		
	// SD Card
	HPS_SD_CLK,
	HPS_SD_CMD,
	HPS_SD_DATA,

	// SPI
	HPS_SPIM_CLK,
	HPS_SPIM_MISO,
	HPS_SPIM_MOSI,
	HPS_SPIM_SS,

	// UART
	HPS_UART_RX,
	HPS_UART_TX,

	// USB
	HPS_CONV_USB_N,
	HPS_USB_CLKOUT,
	HPS_USB_DATA,
	HPS_USB_DIR,
	HPS_USB_NXT,
	HPS_USB_STP
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

////////////////////////////////////
// FPGA Pins
////////////////////////////////////

// Clock pins
input						CLOCK1_50;
input						CLOCK2_50;
input						CLOCK3_50;
input						CLOCK4_50;

// ADC
inout						ADC_CS_N;
output					ADC_DIN;
input						ADC_DOUT;
output					ADC_SCLK;

// SDRAM
output 		[12: 0]	DRAM_ADDR;
output		[ 1: 0]	DRAM_BA;
output					DRAM_CAS_N;
output					DRAM_CKE;
output					DRAM_CLK;
output					DRAM_CS_N;
inout			[15: 0]	DRAM_DQ;
output					DRAM_LDQM;
output					DRAM_RAS_N;
output					DRAM_UDQM;
output					DRAM_WE_N;

// Pushbuttons
input			[ 1: 0]	KEY;

// LEDs
output		[ 7: 0]	LEDR;

// Slider Switches
input			[ 3: 0]	SW;

////////////////////////////////////
// HPS Pins
////////////////////////////////////
	
// DDR3 SDRAM
output		[14: 0]	HPS_DDR3_ADDR;
output		[ 2: 0]  HPS_DDR3_BA;
output					HPS_DDR3_CAS_N;
output					HPS_DDR3_CKE;
output					HPS_DDR3_CK_N;
output					HPS_DDR3_CK_P;
output					HPS_DDR3_CS_N;
output		[ 3: 0]	HPS_DDR3_DM;
inout			[31: 0]	HPS_DDR3_DQ;
inout			[ 3: 0]	HPS_DDR3_DQS_N;
inout			[ 3: 0]	HPS_DDR3_DQS_P;
output					HPS_DDR3_ODT;
output					HPS_DDR3_RAS_N;
output					HPS_DDR3_RESET_N;
input						HPS_DDR3_RZQ;
output					HPS_DDR3_WE_N;

// Ethernet
output					HPS_ENET_GTX_CLK;
inout						HPS_ENET_INT_N;
output					HPS_ENET_MDC;
inout						HPS_ENET_MDIO;
input						HPS_ENET_RX_CLK;
input			[ 3: 0]	HPS_ENET_RX_DATA;
input						HPS_ENET_RX_DV;
output		[ 3: 0]	HPS_ENET_TX_DATA;
output					HPS_ENET_TX_EN;

// Flash
inout			[ 3: 0]	HPS_FLASH_DATA;
output					HPS_FLASH_DCLK;
output					HPS_FLASH_NCSO;

// Accelerometer
inout						HPS_GSENSOR_INT;

// General Purpose I/O
inout			[ 1: 0]	HPS_GPIO;

// I2C
inout						HPS_I2C_CONTROL;
inout						HPS_I2C1_SCLK;
inout						HPS_I2C1_SDAT;
inout						HPS_I2C2_SCLK;
inout						HPS_I2C2_SDAT;

// Pushbutton
inout						HPS_KEY;

// LED
inout						HPS_LED;

// SD Card
output					HPS_SD_CLK;
inout						HPS_SD_CMD;
inout			[ 3: 0]	HPS_SD_DATA;

// SPI
output					HPS_SPIM_CLK;
input						HPS_SPIM_MISO;
output					HPS_SPIM_MOSI;
inout						HPS_SPIM_SS;

// UART
input						HPS_UART_RX;
output					HPS_UART_TX;

// USB
inout						HPS_CONV_USB_N;
input						HPS_USB_CLKOUT;
inout			[ 7: 0]	HPS_USB_DATA;
input						HPS_USB_DIR;
input						HPS_USB_NXT;
output					HPS_USB_STP;

//=======================================================
// PIO state machine
//=======================================================
// OUTPUTs from the FPGA, INPUT to HPS
wire [31:0] pp_in_axi, pp_in_lw_axi ;

// INPUTS to the FPGA, OUTPUT from HPS
wire [31:0] pp_out_axi, pp_out_lw_axi ;

parameter L = 784;
parameter N = 40;
parameter O = 10;
parameter delayMult = 6; //18 8
parameter delayAdd = 8; //20 10

wire we;
wire [9:0] regNum; 
wire [19:0] address;
wire [31:0] dataIn;
reg [31:0] dataOut;

assign we = pp_out_lw_axi[30];
assign regNum = pp_out_lw_axi[29:20];
assign address = pp_out_lw_axi[19:0];
assign dataIn = pp_out_axi;
assign pp_in_axi = dataOut;

reg startHidden = 1'b0;
reg startOutput = 1'b0;
reg resetHidden = 1'b0;
reg resetOutput = 1'b0;

reg [31:0] inputVector [L-1:0];
reg [31:0] hiddenVector [N-1:0];
reg [31:0] outputVector [O-1:0];
reg [31:0] inputVector2 [N-1:0];

reg [31:0] hiddenWeights0 [L-1:0];
reg [31:0] hiddenWeights1 [L-1:0];
reg [31:0] hiddenWeights2 [L-1:0];
reg [31:0] hiddenWeights3 [L-1:0];
reg [31:0] hiddenWeights4 [L-1:0];
reg [31:0] hiddenWeights5 [L-1:0];
reg [31:0] hiddenWeights6 [L-1:0];
reg [31:0] hiddenWeights7 [L-1:0];
reg [31:0] hiddenWeights8 [L-1:0];
reg [31:0] hiddenWeights9 [L-1:0];
reg [31:0] hiddenWeights10 [L-1:0];
reg [31:0] hiddenWeights11 [L-1:0];
reg [31:0] hiddenWeights12 [L-1:0];
reg [31:0] hiddenWeights13 [L-1:0];
reg [31:0] hiddenWeights14 [L-1:0];
reg [31:0] hiddenWeights15 [L-1:0];
reg [31:0] hiddenWeights16 [L-1:0];
reg [31:0] hiddenWeights17 [L-1:0];
reg [31:0] hiddenWeights18 [L-1:0];
reg [31:0] hiddenWeights19 [L-1:0];
reg [31:0] hiddenWeights20 [L-1:0];
reg [31:0] hiddenWeights21 [L-1:0];
reg [31:0] hiddenWeights22 [L-1:0];
reg [31:0] hiddenWeights23 [L-1:0];
reg [31:0] hiddenWeights24 [L-1:0];
reg [31:0] hiddenWeights25 [L-1:0];
reg [31:0] hiddenWeights26 [L-1:0];
reg [31:0] hiddenWeights27 [L-1:0];
reg [31:0] hiddenWeights28 [L-1:0];
reg [31:0] hiddenWeights29 [L-1:0];
reg [31:0] hiddenWeights30 [L-1:0];
reg [31:0] hiddenWeights31 [L-1:0];
reg [31:0] hiddenWeights32 [L-1:0];
reg [31:0] hiddenWeights33 [L-1:0];
reg [31:0] hiddenWeights34 [L-1:0];
reg [31:0] hiddenWeights35 [L-1:0];
reg [31:0] hiddenWeights36 [L-1:0];
reg [31:0] hiddenWeights37 [L-1:0];
reg [31:0] hiddenWeights38 [L-1:0];
reg [31:0] hiddenWeights39 [L-1:0];

reg [31:0] outputWeights0 [N-1:0];
reg [31:0] outputWeights1 [N-1:0];
reg [31:0] outputWeights2 [N-1:0];
reg [31:0] outputWeights3 [N-1:0];
reg [31:0] outputWeights4 [N-1:0];
reg [31:0] outputWeights5 [N-1:0];
reg [31:0] outputWeights6 [N-1:0];
reg [31:0] outputWeights7 [N-1:0];
reg [31:0] outputWeights8 [N-1:0];
reg [31:0] outputWeights9 [N-1:0];

reg clear;
reg readyHidden = 1'b0;
reg readyOutput = 1'b0;
integer delay1;
integer delay2;
integer step;
integer i = 0;
integer j = 0;
integer x = 0;

always @ (posedge CLOCK1_50) begin
	if(we == 1) begin
		if(regNum == 1)
			hiddenWeights0[address] <= dataIn;
		if(regNum == 2)
			hiddenWeights1[address] <= dataIn;
		if(regNum == 3)
			hiddenWeights2[address] <= dataIn;
		if(regNum == 4)
			hiddenWeights3[address] <= dataIn;
		if(regNum == 5)
			hiddenWeights4[address] <= dataIn;
		if(regNum == 6)
			hiddenWeights5[address] <= dataIn;
		if(regNum == 7)
			hiddenWeights6[address] <= dataIn;
		if(regNum == 8)
			hiddenWeights7[address] <= dataIn;
		if(regNum == 9)
			hiddenWeights8[address] <= dataIn;
		if(regNum == 10)
			hiddenWeights9[address] <= dataIn;
		if(regNum == 11)
			hiddenWeights10[address] <= dataIn;
		if(regNum == 12)
			hiddenWeights11[address] <= dataIn;
		if(regNum == 13)
			hiddenWeights12[address] <= dataIn;
		if(regNum == 14)
			hiddenWeights13[address] <= dataIn;
		if(regNum == 15)
			hiddenWeights14[address] <= dataIn;
		if(regNum == 16)
			hiddenWeights15[address] <= dataIn;
		if(regNum == 17)
			hiddenWeights16[address] <= dataIn;
		if(regNum == 18)
			hiddenWeights17[address] <= dataIn;
		if(regNum == 19)
			hiddenWeights18[address] <= dataIn;
		if(regNum == 20)
			hiddenWeights19[address] <= dataIn;
		if(regNum == 21)
			hiddenWeights20[address] <= dataIn;
		if(regNum == 22)
			hiddenWeights21[address] <= dataIn;
		if(regNum == 23)
			hiddenWeights22[address] <= dataIn;
		if(regNum == 24)
			hiddenWeights23[address] <= dataIn;
		if(regNum == 25)
			hiddenWeights24[address] <= dataIn;
		if(regNum == 26)
			hiddenWeights25[address] <= dataIn;
		if(regNum == 27)
			hiddenWeights26[address] <= dataIn;
		if(regNum == 28)
			hiddenWeights27[address] <= dataIn;
		if(regNum == 29)
			hiddenWeights28[address] <= dataIn;
		if(regNum == 30)
			hiddenWeights29[address] <= dataIn;
		if(regNum == 31)
			hiddenWeights30[address] <= dataIn;
		if(regNum == 32)
			hiddenWeights31[address] <= dataIn;
		if(regNum == 33)
			hiddenWeights32[address] <= dataIn;
		if(regNum == 34)
			hiddenWeights33[address] <= dataIn;
		if(regNum == 35)
			hiddenWeights34[address] <= dataIn;
		if(regNum == 36)
			hiddenWeights35[address] <= dataIn;
		if(regNum == 37)
			hiddenWeights36[address] <= dataIn;
		if(regNum == 38)
			hiddenWeights37[address] <= dataIn;
		if(regNum == 39)
			hiddenWeights38[address] <= dataIn;
		if(regNum == 40)
			hiddenWeights39[address] <= dataIn;
			
		if(regNum == 41)
			outputWeights0[address] <= dataIn;
		if(regNum == 42)
			outputWeights1[address] <= dataIn;
		if(regNum == 43)
			outputWeights2[address] <= dataIn;
		if(regNum == 44)
			outputWeights3[address] <= dataIn;
		if(regNum == 45)
			outputWeights4[address] <= dataIn;
		if(regNum == 46)
			outputWeights5[address] <= dataIn;
		if(regNum == 47)
			outputWeights6[address] <= dataIn;
		if(regNum == 48)
			outputWeights7[address] <= dataIn;
		if(regNum == 49)
			outputWeights8[address] <= dataIn;
		if(regNum == 50)
			outputWeights9[address] <= dataIn;
			
		if(regNum == 100) begin
			inputVector[address] <= dataIn;
			if(address == 0)
				resetHidden <= 1'b1;
			if(address == 783)
				startHidden <= 1'b1;
		end
		
		if(regNum == 101) begin
			inputVector2[address] <= dataIn;
			if(address == 0)
				resetOutput <= 1'b1;
			if(address == 39)
				startOutput <= 1'b1;
		end

	end
	
	if(we == 0) begin
		if(regNum == 0)
			dataOut <= inputVector[address];
			
		if(regNum == 1000)
			dataOut <= hiddenVector[address];
			
		if(regNum == 1001)
			dataOut <= outputVector[address];
			
		if(regNum == 51)
			dataOut <= readyHidden;
			
		if(regNum == 52)
			dataOut <= readyOutput;
			
		if(regNum == 101) begin
			dataOut <= inputVector2[address];
		end
	end

	if(resetHidden == 1) begin
		for(x = 0; x < N; x++) begin
			sumHidden[x] <= 32'd0;
			hiddenVector[x] <= 32'd0;
		end
		i <= 0;
		j <= 0;
		delay1 <= 0;
		delay2 <= 0;
		startOutput <= 1'b0;
		startHidden <= 1'b0;
		resetHidden <= 1'b0;
		step <= 0;
		
		readyHidden <= 1'b0;
		clear <= 1'b1;
	end else begin
		clear <= 1'b0;
	end

	if(startHidden == 1) begin
		if(step == 0) begin
			for(x = 0; x < N; x++) begin
				multin1[x] <= inputVector[i];
			end
			
			multin2[0] <= hiddenWeights0[i];
			multin2[1] <= hiddenWeights1[i];
			multin2[2] <= hiddenWeights2[i];
			multin2[3] <= hiddenWeights3[i];
			multin2[4] <= hiddenWeights4[i];
			multin2[5] <= hiddenWeights5[i];
			multin2[6] <= hiddenWeights6[i];
			multin2[7] <= hiddenWeights7[i];
			multin2[8] <= hiddenWeights8[i];
			multin2[9] <= hiddenWeights9[i];
			multin2[10] <= hiddenWeights10[i];
			multin2[11] <= hiddenWeights11[i];
			multin2[12] <= hiddenWeights12[i];
			multin2[13] <= hiddenWeights13[i];
			multin2[14] <= hiddenWeights14[i];
			multin2[15] <= hiddenWeights15[i];
			multin2[16] <= hiddenWeights16[i];
			multin2[17] <= hiddenWeights17[i];
			multin2[18] <= hiddenWeights18[i];
			multin2[19] <= hiddenWeights19[i];
			multin2[20] <= hiddenWeights20[i];
			multin2[21] <= hiddenWeights21[i];
			multin2[22] <= hiddenWeights22[i];
			multin2[23] <= hiddenWeights23[i];
			multin2[24] <= hiddenWeights24[i];
			multin2[25] <= hiddenWeights25[i];
			multin2[26] <= hiddenWeights26[i];
			multin2[27] <= hiddenWeights27[i];
			multin2[28] <= hiddenWeights28[i];
			multin2[29] <= hiddenWeights29[i];
			multin2[30] <= hiddenWeights30[i];
			multin2[31] <= hiddenWeights31[i];
			multin2[32] <= hiddenWeights32[i];
			multin2[33] <= hiddenWeights33[i];
			multin2[34] <= hiddenWeights34[i];
			multin2[35] <= hiddenWeights35[i];
			multin2[36] <= hiddenWeights36[i];
			multin2[37] <= hiddenWeights37[i];
			multin2[38] <= hiddenWeights38[i];
			multin2[39] <= hiddenWeights39[i];
			
			delay1 <= delay1 + 1;
			
			if(delay1 == delayMult) begin //18
				delay1 <= 0;
				if(i < L+1) begin
					i <= i + 1;
				end
					
				step <= 1;
				//outputVector[i] <= multout;
			end
		end
	
		if(step == 1) begin
			for(x = 0; x < N; x++) begin
				addin1[x] <= multout[x];
				addin2[x] <= sumHidden[x];
			end
			
			delay2 <= delay2 + 1;
			
			if(delay2 == delayAdd) begin //20
				delay2 <= 0;
				if(j < L+1)
					j <= j + 1;
					
				if(j == L) begin
					//for(x = 0; x < N; x++) begin
						hiddenVector <= sumHidden;
					//end
					
					readyHidden <= 1'b1;
				end
					
				step <= 0;
				
				for(x = 0; x < N; x++) begin
					sumHidden[x] <= addout[x];
				end
			end
		end
	end
	
	
	
	if(resetOutput == 1) begin
		for(x = 0; x < O; x++) begin
			sumOutput[x] <= 32'd0;
			outputVector[x] <= 32'd0;
		end
		i <= 0;
		j <= 0;
		delay1 <= 0;
		delay2 <= 0;
		startHidden <= 1'b0;
		startOutput <= 1'b0;
		resetOutput <= 1'b0;
		step <= 0;
		readyOutput <= 1'b0;
		clear <= 1'b1;
	end else begin
		clear <= 1'b0;
	end
	
	if(startOutput == 1) begin
		if(step == 0) begin
			for(x = 0; x < O; x++) begin
				multin1[x] <= inputVector2[i];
			end
			
			multin2[0] <= outputWeights0[i];
			multin2[1] <= outputWeights1[i];
			multin2[2] <= outputWeights2[i];
			multin2[3] <= outputWeights3[i];
			multin2[4] <= outputWeights4[i];
			multin2[5] <= outputWeights5[i];
			multin2[6] <= outputWeights6[i];
			multin2[7] <= outputWeights7[i];
			multin2[8] <= outputWeights8[i];
			multin2[9] <= outputWeights9[i];
			
			delay1 <= delay1 + 1;
			
			if(delay1 == delayMult) begin //18
				delay1 <= 0;
				if(i < N+1) begin
					i <= i + 1;
				end
					
				step <= 1;
				//outputVector[i] <= multout;
			end
		end
	
		if(step == 1) begin
			for(x = 0; x < O; x++) begin
				addin1[x] <= multout[x];
				addin2[x] <= sumOutput[x];
			end
			
			delay2 <= delay2 + 1;
			
			if(delay2 == delayAdd) begin //20
				delay2 <= 0;
				if(j < N+1)
					j <= j + 1;
					
				if(j == N) begin
					for(x = 0; x < O; x++) begin
						outputVector[x] <= sumOutput[x];
					end
					
					readyOutput <= 1'b1;
				end
					
				step <= 0;
				
				for(x = 0; x < O; x++) begin
					sumOutput[x] <= addout[x];
				end
			end
		end
	end
	
end

wire [31:0] multin1[N-1:0];
wire [31:0] multin2[N-1:0];
wire [31:0] multout[N-1:0];
wire [31:0] addin1[N-1:0];
wire [31:0] addin2[N-1:0];
wire [31:0] addout[N-1:0];
reg [31:0] sumHidden[N-1:0];

reg [31:0] sumOutput[O-1:0];

genvar y;
generate
	for (y = 0; y < N; y = y + 1) begin : mult // <-- example block name
		mult	mult_inst0 (
			.aclr (clear),
			.clock (CLOCK1_50),
			.dataa (multin1[y]),
			.datab (multin2[y]),
			.result (multout[y])
			);
	end
	
	for (y = 0; y < N; y = y + 1) begin : add // <-- example block name
		add	add_inst0 (
			.aclr (clear),
			.clock (CLOCK1_50),
			.dataa (addin1[y]),
			.datab (addin2[y]),
			.result (addout[y])
			);
	end
endgenerate

//=======================================================
//  Structural coding
//=======================================================
// From Qsys

Computer_System The_System (
	////////////////////////////////////
	// FPGA Side
	////////////////////////////////////

	// Global signals
	.system_pll_ref_clk_clk					(CLOCK1_50),
	.system_pll_ref_reset_reset			(1'b0),
	
	////////////////////////////////////
	// PIO ports
	////////////////////////////////////
	.pp_out_axi_export               (pp_out_axi),               
	.pp_in_axi_export                (pp_in_axi),              
	.pp_out_lw_axi_export            (pp_out_lw_axi), 
	.pp_in_lw_axi_export             (pp_in_lw_axi),  

	////////////////////////////////////
	// HPS Side
	////////////////////////////////////
	// DDR3 SDRAM
	.memory_mem_a			(HPS_DDR3_ADDR),
	.memory_mem_ba			(HPS_DDR3_BA),
	.memory_mem_ck			(HPS_DDR3_CK_P),
	.memory_mem_ck_n		(HPS_DDR3_CK_N),
	.memory_mem_cke		(HPS_DDR3_CKE),
	.memory_mem_cs_n		(HPS_DDR3_CS_N),
	.memory_mem_ras_n		(HPS_DDR3_RAS_N),
	.memory_mem_cas_n		(HPS_DDR3_CAS_N),
	.memory_mem_we_n		(HPS_DDR3_WE_N),
	.memory_mem_reset_n	(HPS_DDR3_RESET_N),
	.memory_mem_dq			(HPS_DDR3_DQ),
	.memory_mem_dqs		(HPS_DDR3_DQS_P),
	.memory_mem_dqs_n		(HPS_DDR3_DQS_N),
	.memory_mem_odt		(HPS_DDR3_ODT),
	.memory_mem_dm			(HPS_DDR3_DM),
	.memory_oct_rzqin		(HPS_DDR3_RZQ),
		  
	// Ethernet
	.hps_io_hps_io_gpio_inst_GPIO35	(HPS_ENET_INT_N),
	.hps_io_hps_io_emac1_inst_TX_CLK	(HPS_ENET_GTX_CLK),
	.hps_io_hps_io_emac1_inst_TXD0	(HPS_ENET_TX_DATA[0]),
	.hps_io_hps_io_emac1_inst_TXD1	(HPS_ENET_TX_DATA[1]),
	.hps_io_hps_io_emac1_inst_TXD2	(HPS_ENET_TX_DATA[2]),
	.hps_io_hps_io_emac1_inst_TXD3	(HPS_ENET_TX_DATA[3]),
	.hps_io_hps_io_emac1_inst_RXD0	(HPS_ENET_RX_DATA[0]),
	.hps_io_hps_io_emac1_inst_MDIO	(HPS_ENET_MDIO),
	.hps_io_hps_io_emac1_inst_MDC		(HPS_ENET_MDC),
	.hps_io_hps_io_emac1_inst_RX_CTL	(HPS_ENET_RX_DV),
	.hps_io_hps_io_emac1_inst_TX_CTL	(HPS_ENET_TX_EN),
	.hps_io_hps_io_emac1_inst_RX_CLK	(HPS_ENET_RX_CLK),
	.hps_io_hps_io_emac1_inst_RXD1	(HPS_ENET_RX_DATA[1]),
	.hps_io_hps_io_emac1_inst_RXD2	(HPS_ENET_RX_DATA[2]),
	.hps_io_hps_io_emac1_inst_RXD3	(HPS_ENET_RX_DATA[3]),

	// Flash
	.hps_io_hps_io_qspi_inst_IO0	(HPS_FLASH_DATA[0]),
	.hps_io_hps_io_qspi_inst_IO1	(HPS_FLASH_DATA[1]),
	.hps_io_hps_io_qspi_inst_IO2	(HPS_FLASH_DATA[2]),
	.hps_io_hps_io_qspi_inst_IO3	(HPS_FLASH_DATA[3]),
	.hps_io_hps_io_qspi_inst_SS0	(HPS_FLASH_NCSO),
	.hps_io_hps_io_qspi_inst_CLK	(HPS_FLASH_DCLK),

	// Accelerometer
	.hps_io_hps_io_gpio_inst_GPIO61	(HPS_GSENSOR_INT),

	//.adc_sclk                        (ADC_SCLK),
	//.adc_cs_n                        (ADC_CS_N),
	//.adc_dout                        (ADC_DOUT),
	//.adc_din                         (ADC_DIN),

	// General Purpose I/O
	.hps_io_hps_io_gpio_inst_GPIO40	(HPS_GPIO[0]),
	.hps_io_hps_io_gpio_inst_GPIO41	(HPS_GPIO[1]),

	// I2C
	.hps_io_hps_io_gpio_inst_GPIO48	(HPS_I2C_CONTROL),
	.hps_io_hps_io_i2c0_inst_SDA		(HPS_I2C1_SDAT),
	.hps_io_hps_io_i2c0_inst_SCL		(HPS_I2C1_SCLK),
	.hps_io_hps_io_i2c1_inst_SDA		(HPS_I2C2_SDAT),
	.hps_io_hps_io_i2c1_inst_SCL		(HPS_I2C2_SCLK),

	// Pushbutton
	.hps_io_hps_io_gpio_inst_GPIO54	(HPS_KEY),

	// LED
	.hps_io_hps_io_gpio_inst_GPIO53	(HPS_LED),

	// SD Card
	.hps_io_hps_io_sdio_inst_CMD	(HPS_SD_CMD),
	.hps_io_hps_io_sdio_inst_D0	(HPS_SD_DATA[0]),
	.hps_io_hps_io_sdio_inst_D1	(HPS_SD_DATA[1]),
	.hps_io_hps_io_sdio_inst_CLK	(HPS_SD_CLK),
	.hps_io_hps_io_sdio_inst_D2	(HPS_SD_DATA[2]),
	.hps_io_hps_io_sdio_inst_D3	(HPS_SD_DATA[3]),

	// SPI
	.hps_io_hps_io_spim1_inst_CLK		(HPS_SPIM_CLK),
	.hps_io_hps_io_spim1_inst_MOSI	(HPS_SPIM_MOSI),
	.hps_io_hps_io_spim1_inst_MISO	(HPS_SPIM_MISO),
	.hps_io_hps_io_spim1_inst_SS0		(HPS_SPIM_SS),

	// UART
	.hps_io_hps_io_uart0_inst_RX	(HPS_UART_RX),
	.hps_io_hps_io_uart0_inst_TX	(HPS_UART_TX),

	// USB
	.hps_io_hps_io_gpio_inst_GPIO09	(HPS_CONV_USB_N),
	.hps_io_hps_io_usb1_inst_D0		(HPS_USB_DATA[0]),
	.hps_io_hps_io_usb1_inst_D1		(HPS_USB_DATA[1]),
	.hps_io_hps_io_usb1_inst_D2		(HPS_USB_DATA[2]),
	.hps_io_hps_io_usb1_inst_D3		(HPS_USB_DATA[3]),
	.hps_io_hps_io_usb1_inst_D4		(HPS_USB_DATA[4]),
	.hps_io_hps_io_usb1_inst_D5		(HPS_USB_DATA[5]),
	.hps_io_hps_io_usb1_inst_D6		(HPS_USB_DATA[6]),
	.hps_io_hps_io_usb1_inst_D7		(HPS_USB_DATA[7]),
	.hps_io_hps_io_usb1_inst_CLK		(HPS_USB_CLKOUT),
	.hps_io_hps_io_usb1_inst_STP		(HPS_USB_STP),
	.hps_io_hps_io_usb1_inst_DIR		(HPS_USB_DIR),
	.hps_io_hps_io_usb1_inst_NXT		(HPS_USB_NXT)
);
endmodule // end top level