// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// set product to 0
@R2
M=0

// result is 0 if R1 or R2 is 0
@R0
D=M
@END
D;JEQ
@R1
D=M
@END
D;JEQ

// compute product
(LOOP)
@R0
D=M
@R2
M=M+D
@R1
MD=M-1
@END
D;JLE
@LOOP
0;JMP
(END)
