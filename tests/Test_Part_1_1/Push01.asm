	@1 // Push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@LCL // Push local 1
	D=M
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


