	@2 // Push constant 2
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
	@ifEQTrue
	D;JEQ
	D=0
	@ifEQFalse
	0;JMP
(ifEQTrue)
	D=-1
(ifEQFalse)
	@SP
	A=M
	M=D
	@SP
	M=M+1


(END)
	@END
	0;JMP


