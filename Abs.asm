// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.

@R1
D=M

@POSITIVE
D; JGE

@NEGITIVE
D; JLT

(POSITIVE)
@R0
M=D
@END
0; JMP

(NEGITIVE)
@R1
D=!M
@R0
M=D+1

(END)
@END
0; JMP