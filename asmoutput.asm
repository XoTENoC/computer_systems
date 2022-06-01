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
	@ifEQTrue
	D;JQE
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
	@ifGTTrue
	D;JQE
	D=0
	@ifGTFalse
	0;JGT
(ifGTTrue)
	D=-1
(ifGTFalse)
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


	@SP
	A=M
	A=A-1
	M=-M


