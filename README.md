# Binary-to-Base64-Hex-Converter-and-a-register-file
  By: Chloe Atwood 
  Date: 12/08/2024 
  ID Number: 893387514 
  Lab Section: G 
                    CPRE 281 Extra Credit Lab Write-Up 
  Purpose: 
    The purpose of this Extra Credit Lab was to take the 4-bit register created in Lab 12 and 
  turn it into a 6-bit register. This would then be used to convert a 6-bit binary input into an 8-bit 
  Base64-Hex output that would then be displayed on an LCD. The goal was to be able to display 
  the letters C and A.

  Procedure: 
    The first step in this process was to alter some files from Lab 12 so that the register 
  would be able to support 6-bits instead of just 4-bits. This was accomplished by first adding two 
  more registers to the reg4b file. All that was done for this was adding two more copies of the 
  register symbol and connecting them to the CLK, IN,  OUT, LOAD, and CLRN lines. The buses 
  for the IN and OUT ports had to be changed to 6-bit instead of 4-bit as well. Once that was done, 
  a couple of the Verilog files from Lab 12 had to be changed in order to support the new 6-bit 
  register. The Mux8_4b file needed its inputs and outputs changed from 4-bit to 6-bit values, and 
  the regfile file required the DATAP and DATAQ wires to be changed from 4-bit wires into 6-bit 
  outputs, and the original DATAP and DATAQ outputs needed to be removed. The input and 
  output bit sizes in the rest of the file also had to be changed to support 6-bits. The last thing that 
  needed to be done to the Lab 12 files was creating a symbol file for the new register so it could 
  be used in the wiring diagram. 
    The next step was to create the base64.v converter that would convert the binary input to 
  the appropriate 8-bit base64-hex output. This was done in a case statement by setting each 6-bit 
  binary value to its equivalent in hex. There are a couple of different ways this could be done. As 
  seen in the image below, a couple of different methods were tested, and all successfully worked.

  ![image](https://github.com/user-attachments/assets/3a13a657-bcda-422c-b60f-c5858600dc91)

