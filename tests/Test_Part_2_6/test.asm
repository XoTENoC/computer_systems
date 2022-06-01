	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@2 // Push constant 2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@SP
	AM=M-1
	D=M
	@SP
	AM=M-1
	D=M-D
	@ifLTTrue
	D;JLT
	D=0
	@ifLTFalse
	0;JMP
(ifLTTrue)
	D=-1
(ifLTFalse)
	@SP
	A=M
	M=D
	@SP
	M=M+1


(END)
	@END
	0;JMP


