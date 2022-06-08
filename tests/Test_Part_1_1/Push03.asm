	@R4 // Push pointer 1
	D=M
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@ARG // Push argument 0
	D=M
	@0
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


