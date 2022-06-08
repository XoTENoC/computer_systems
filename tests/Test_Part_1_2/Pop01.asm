	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@16 // Push static 0
	D=M
	@0
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@LCL // Pop local1
	D=M
	@1
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D


	@THIS // Pop this1
	D=M
	@1
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D


	@THAT // Pop that1
	D=M
	@1
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D


	@ARG // Pop argument0
	D=M
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D


	@R5 // Pop temp0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D


	@16 // Pop static0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D



(END)
	@END
	0;JMP


