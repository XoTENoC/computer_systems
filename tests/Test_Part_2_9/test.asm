	@2 // Push constant 2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1


	@SP
	A=M
	A=A-1
	M=!M


(END)
	@END
	0;JMP


