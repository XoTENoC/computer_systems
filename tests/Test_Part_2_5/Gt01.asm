	@3 // Push constant 3
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
	@ifGTTrue
	D;JGT
	D=0
	@ifGTFalse
	0;JMP
(ifGTTrue)
	D=-1
(ifGTFalse)
	@SP
	A=M
	M=D
	@SP
	M=M+1


(END)
	@END
	0;JMP


