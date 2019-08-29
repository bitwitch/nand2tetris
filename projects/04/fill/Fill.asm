// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(INPUT)
@KBD
D=M
@BLACK
D;JNE
@WHITE
0;JMP

(BLACK)
@SCREEN
D=A
(BLACKLOOP)
A=D
M=-1
D=D+1
// test if mem is at keyboard
@R0
M=D
@KBD
D=D-A
@INPUT
D;JEQ
// else keep drawing
@R0
D=M
@BLACKLOOP
0;JMP

(WHITE)
@SCREEN
D=A
(WHITELOOP)
A=D
M=0
D=D+1
// test if mem is at keyboard
@R0
M=D
@KBD
D=D-A
@INPUT
D;JEQ
// else keep drawing
@R0
D=M
@WHITELOOP
0;JMP
