// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @i
    M=0

    @R1
    D=M

    @i
    AM=D+M
    D=M
    @R0
    M=D
    @R3
    M=D
    @R2
    M=M-1
    @LOOP
    0; JMP


(MINIMUM)
    @i
    AM=M
    D=M
    @R0
    M=D
    D=M
    @R3
    M=D
    @R2
    M=M-1
    D=M
    @END
    D; JEQ


(LOOP)
    @R0
    D=M
    @R3
    M=D
    @i
    AM = M+1
    D=M
    @R3
    D=M-D
    M=D
    @MINIMUM
    D; JGT
    @R2
    M=M-1
    D=M
    @END
    D; JEQ
    @LOOP
    0; JMP

(END)
    @END
    0; JMP
