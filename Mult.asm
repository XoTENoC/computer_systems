// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// check if the interator number is NEGITIVE
// if so make it positive and at the end flip all the bits

    @R3
    M=0
    @R4
    M=0
    @R2
    A=M
    @R4
    M=A

    @R1
    D=M
    @end
    D; JEQ
    @R2
    D=M
    @end
    D; JEQ

(LOOP)
    @R3
    D=M
    @R1
    D=D+M
    @R3
    M=D

    @R2
    D=M-1
    M=D

    @LOOP
    D; JNE

    @R4
    A=M
    @NEGITIVE
    A; JLT

    @POSITIVE
    0; JMP

(NEGITIVE)
    @R3
    D=!M
    @R0
    M=D+1
    @END
    0; JMP

(POSITIVE)
    @R3
    D=M
    @R0
    M=D

(END)
    @END
    0; JMP