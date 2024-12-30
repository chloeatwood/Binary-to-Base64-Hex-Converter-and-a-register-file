module regfile(DATAP, DATAQ, RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, LD_DATA, WR, CLRN, CLK);
	
	//address and control ports
	input WR, CLRN, CLK, RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0;
	
	//input data port
	input [5:0] LD_DATA;
	
	//output data ports
	//output DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0;
	output [5:0] DATAP, DATAQ;
	
	//wire declarations
	wire [5:0] VALUE0, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, VALUE6, VALUE7;
	//wire [3:0] DATAP, DATAQ;

	
	//Adding a decoder
	Decoder3to8 my_decoder(.EN(WR), .W2(WA2), .W1(WA1), .W0(WA0), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3), .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7));
	
	//Adding a register. This connects the decoder to register 0. Output is placed as VALUE0
	//Adding all the registers and connecting them to the correct Y's of the decoder and Values
	//8 4-bit registers
	reg4b my_reg0(.CLK(CLK), .LD(Y0),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE0));
	reg4b my_reg1(.CLK(CLK), .LD(Y1),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE1));
	reg4b my_reg2(.CLK(CLK), .LD(Y2),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE2));
	reg4b my_reg3(.CLK(CLK), .LD(Y3),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE3));
	reg4b my_reg4(.CLK(CLK), .LD(Y4),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE4));
	reg4b my_reg5(.CLK(CLK), .LD(Y5),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE5));
	reg4b my_reg6(.CLK(CLK), .LD(Y6),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE6));
	reg4b my_reg7(.CLK(CLK), .LD(Y7),.CLRN(CLRN),.IN(LD_DATA),.OUT(VALUE7));

	
	//Selecting 1 of 8 with the RP and RQ values
	Mux8_4b my_muxP(.S2(RP2), .S1(RP1), .S0(RP0), .W0(VALUE0), .W1(VALUE1), .W2(VALUE2), .W3(VALUE3), .W4(VALUE4), .W5(VALUE5), .W6(VALUE6), .W7(VALUE7), .F(DATAP));
	
	Mux8_4b my_muxQ(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(VALUE0), .W1(VALUE1), .W2(VALUE2), .W3(VALUE3), .W4(VALUE4), .W5(VALUE5), .W6(VALUE6), .W7(VALUE7), .F(DATAQ));
	
	
//	assign DATAP3 = DATAP[3];
//	assign DATAP2 = DATAP[2];
//	assign DATAP1 = DATAP[1];
//	assign DATAP0 = DATAP[0];
	
//	assign DATAQ3 = DATAQ[3];
//	assign DATAQ2 = DATAQ[2];
//	assign DATAQ1 = DATAQ[1];
//	assign DATAQ0 = DATAQ[0];

	
endmodule