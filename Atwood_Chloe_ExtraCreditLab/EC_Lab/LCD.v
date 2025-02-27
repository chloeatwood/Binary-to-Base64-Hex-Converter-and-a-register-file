//code adapted from https://johnloomis.org/digitallab/lcdlab/lcdlab3/lcdlab3.qdoc.html#lcdlab3.v
module LCD(
  input CLOCK_50,    //    50 MHz clock
  input [5:0] SW1, //    Toggle Switch[5:0]
  input [5:0] SW2,
//    LCD Module 16X2
  output LCD_ON,    // LCD Power ON/OFF
  output LCD_RW,    // LCD Read/Write Select, 0 = Write, 1 = Read
  output LCD_EN,    // LCD Enable
  output LCD_RS,    // LCD Command/Data Select, 0 = Command, 1 = Data
  inout [7:0] LCD_DATA    // LCD Data bus 8 bits
);
// reset delay gives some time for peripherals to initialize
wire DLY_RST;
Reset_Delay r0(.iCLK(CLOCK_50),.oRESET(DLY_RST) );

// turn LCD ON
assign LCD_ON = 1'b1;

wire [5:0] hex1, hex2;
assign hex1 = SW1[5:0];
assign hex2 = SW2[5:0];


LCD_Display u1(
// Host Side
   .iCLK_50MHZ(CLOCK_50),
   .iRST_N(DLY_RST),
   .hex1(hex1),
	.hex2(hex2),
// LCD Side
   .DATA_BUS(LCD_DATA),
   .LCD_RW(LCD_RW),
   .LCD_E(LCD_EN),
   .LCD_RS(LCD_RS)
);

endmodule