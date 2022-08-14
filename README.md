# 32bit-MIPS-processor

This is a simple 32-bit MIPs assembly processor. The code and design are written in VHDL.

## Schematic Diagram

<img src="https://user-images.githubusercontent.com/70542819/184554549-36b94b31-724a-4e9c-ba8a-0285890ad256.png" height="400"/>

## Example MIPS assembly code being run

<img src="https://user-images.githubusercontent.com/70542819/184554550-a2774d5e-cc29-4578-a152-0024e2060e3b.png" height="400"/>
This is some sample MIPS assembly code for the processor to run, it calculates the 10th fibonacci number.

## Waveform for program output

<img src="https://user-images.githubusercontent.com/70542819/184554551-db8059c1-752b-437b-adce-3ca8cf49ddb6.png" height="300"/>
According to the instructions from the assembly code given to the processor, the result will be stored in the $t3 register which corresponds to register #11(reg_buf[11]) in the design. At the end of the program, we can see the 10th fibonnaci number stored in this register written in hexadecimal form "00000037" - or simply 55 in base 10.
