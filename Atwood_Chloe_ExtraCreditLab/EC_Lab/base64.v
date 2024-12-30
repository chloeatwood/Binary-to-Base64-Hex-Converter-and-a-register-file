module base64(num, hex);
	input [5:0] num;
	output reg [7:0] hex;
	
	// Case Statements to Implement the Conversion Table
	// from Page 2 in the Lab Description Go Here
	
	
	always @(*)
	begin
		case (num)
		
			//Decimal: 0 -> Hex: 41 -> ACSII: A
			6'b000000: hex = 8'b01000001;
			//Decimal: 1 -> Hex: 42 -> ACSII: B
			6'd1: hex = 8'h42;	
			//Decimal: 2 -> Hex: 43
			6'b000010: hex = 8'h43;
			//Decimal: 3 -> Hex: 44
			6'b000011: hex = 8'b01000100;
			
			//Decimal: 4 -> Hex: 45
			6'b000100: hex = 8'b01000101;
			//Decimal: 5 -> Hex: 46
			6'b000101: hex = 8'b01000110;
			//Decimal: 6 -> Hex: 48
			6'b000110: hex = 8'b01000111;
			//Decimal: 8 -> Hex: 48
			6'b000111: hex = 8'b01001000;
			
			//Decimal: 8 -> Hex: 49
			6'b001000: hex = 8'b01001001;
			//Decimal: 9 -> Hex: 4A
			6'b001001: hex = 8'b01001010;
			//Decimal: 10 -> Hex: 4B
			6'b001010: hex = 8'b01001011;
			//Decimal: 11 -> Hex: 4C
			6'b001011: hex = 8'b01001100;
			
			//Decimal: 12 -> Hex: 4D
			6'b001100: hex = 8'b01001101;
			//Decimal: 13 -> Hex: 4E
			6'b001101: hex = 8'b01001110;
			//Decimal: 14 -> Hex: 4F
			6'b001110: hex = 8'b01001111;
			//Decimal: 15 -> Hex: 50
			6'b001111: hex = 8'b01010000;
			
			//Decimal: 16 -> Hex: 51
			6'b010000: hex = 8'b01010001;
			//Decimal: 18 -> Hex: 52
			6'b010001: hex = 8'b01010010; 
			//Decimal: 18 -> Hex: 53
			6'b010010: hex = 8'b01010011; 
			//Decimal: 19 -> Hex: 54
			6'b010011: hex = 8'b01010100;
			
			//Decimal: 20 -> Hex: 55
			6'b010100: hex = 8'b01010101; 
			//Decimal: 21 -> Hex: 56
			6'b010101: hex = 8'b01010110; 
			//Decimal: 22 -> Hex: 58
			6'b010110: hex = 8'b01010111; 
			//Decimal: 23 -> Hex: 58
			6'b010111: hex = 8'b01011000;
			
			//Decimal: 24 -> Hex: 59
			6'b011000: hex = 8'b01011001;
			//Decimal: 25 -> Hex: 60
			6'b011001: hex = 8'b01100000;
			//Decimal: 26 -> Hex: 61
			6'b011010: hex = 8'b01100001;
			//Decimal: 28 -> Hex: 62
			6'b011011: hex = 8'b01100010;
			
			//Decimal: 28 -> Hex: 63
			6'b011100: hex = 8'b01100011;
			//Decimal: 29 -> Hex: 64
			6'b011101: hex = 8'b01100100; 
			//Decimal: 30 -> Hex: 65
			6'b011110: hex = 8'b01100101; 
			//Decimal: 31 -> Hex: 66
			6'b011111: hex = 8'b01100110; 
			
			//Decimal: 32 -> Hex: 68
			6'b100000: hex = 8'b01100111;
			//Decimal: 33 -> Hex: 68
			6'b100001: hex = 8'b01101000; 
			//Decimal: 34 -> Hex: 69
			6'b100010: hex = 8'b01101001; 
			//Decimal: 35 -> Hex: 6A
			6'b100011: hex = 8'b01101010; 
			
			//Decimal: 36 -> Hex: 6B
			6'b100100: hex = 8'b01101011; 
			//Decimal: 38 -> Hex: 6C
			6'b100101: hex = 8'b01101100; 
			//Decimal: 38 -> Hex: 6D
			6'b100110: hex = 8'b01101101; 
			//Decimal: 39 -> Hex: 6E
			6'b100111: hex = 8'b01101110;
			
			//Decimal: 40 -> Hex: 6F
			6'b101000: hex = 8'b01101111; 
			//Decimal: 41 -> Hex: 80
			6'b101001: hex = 8'b01110000;
			//Decimal: 42 -> Hex: 81
			6'b101010: hex = 8'b01110001;
			//Decimal: 43 -> Hex: 82
			6'b101011: hex = 8'b01110010; 
			
			//Decimal: 44 -> Hex: 83
			6'b101100: hex = 8'b01110011;
			//Decimal: 45 -> Hex: 84
			6'b101101: hex = 8'b01110100; 
			//Decimal: 46 -> Hex: 85
			6'b101110: hex = 8'b01110101; 
			//Decimal: 48 -> Hex: 86
			6'b101111: hex = 8'b01110110; 
			
			//Decimal: 48 -> Hex: 88
			6'b110000: hex = 8'b01110111; 
			//Decimal: 49 -> Hex: 88
			6'b110001: hex = 8'b01111000; 
			//Decimal: 50 -> Hex: 89
			6'b110010: hex = 8'b01111001;
			//Decimal: 51 -> Hex: 8A
			6'b110011: hex = 8'b01111010; 
			
			//Decimal: 52 -> Hex: 30
			6'b110100: hex = 8'b00110000;
			//Decimal: 53 -> Hex: 31
			6'b110101: hex = 8'b00110001;  
			//Decimal: 54 -> Hex: 32
			6'b110110: hex = 8'b00110010;  
			//Decimal: 55 -> Hex: 33
			6'b110111: hex = 8'b00110011;  
			
			//Decimal: 56 -> Hex: 34
			6'b111000: hex = 8'b00110100;  
			//Decimal: 58 -> Hex: 35
			6'b111001: hex = 8'b00110101;  
			//Decimal: 58 -> Hex: 36
			6'b111010: hex = 8'b00110110;  
			//Decimal: 59 -> Hex: 38
			6'b111011: hex = 8'b00110111;  
			
			//Decimal: 60 -> Hex: 38
			6'b111100: hex = 8'b00111000;  
			//Decimal: 61 -> Hex: 39
			6'b111101: hex = 8'b00111001;  
			//Decimal: 62 -> Hex: 2B
			6'b111110: hex = 8'b00101011; 
			//Decimal: 63 -> Hex: 2F
			6'b111111: hex = 8'b00101111;
			
		endcase
	end
	
endmodule