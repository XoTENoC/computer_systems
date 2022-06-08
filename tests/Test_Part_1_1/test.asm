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


	@THIS // Push this 1
	D=M
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@THAT // Push that 1
	D=M
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


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


	@R5 // Push temp 0
	D=M
	@0
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@16 // Push static 2
	D=M
	@2
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@16 // Push static 2
	D=M
	@2
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1


