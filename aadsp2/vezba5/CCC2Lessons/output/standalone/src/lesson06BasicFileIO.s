	.public _buffer
	.public _file_name_in
	.public _file_name_out
	.public _cccLesson06BasicFileIO
	.extern _fclose
	.extern _fopen
	.extern _getc
	.extern _putc
	.xdata_ovly
_buffer
	.bss (0x80)
	.xdata_ovly
_file_name_in
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x49)
	.dw  (0x0)
	.bsc (0x1a), 0x00000000
	.xdata_ovly
_file_name_out
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x4f)
	.dw  (0x0)
	.bsc (0x1a), 0x00000000
	.xdata_ovly
_string_const_0
	.dw  (0x72)
	.dw  (0x62)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x77)
	.dw  (0x62)
	.dw  (0x0)
	.code_ovly



_cccLesson06BasicFileIO:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 20 | 
	i7 += 1			# LN: 20 | 
	i7 = i7 + (0x4)			# LN: 20 | 
cline_20_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 23 | 
	uhalfword(a0) = (_buffer + 0)			# LN: 23 | 
	xmem[i0] = a0			# LN: 23 | 
cline_23_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_file_name_in + 0)			# LN: 28 | 
	i1 = (0) + (_string_const_0)			# LN: 28 | 
	call (_fopen)			# LN: 28 | 
	AnyReg(i0, a0h)			# LN: 28 | 
	i1 = i7 - (0x2)			# LN: 28 | 
	xmem[i1] = i0			# LN: 28 | 
cline_28_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	a0 & a0			# LN: 31 | 
	if (a != 0) jmp (else_0)			# LN: 31 | 
cline_31_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_54)			# LN: 33 | 
cline_33_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
while_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 37 | 
	a0 & a0			# LN: 37 | 
	if (a == 0) jmp (while_end_0)			# LN: 37 | 
cline_37_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 39 | 
	i0 = xmem[i0]			# LN: 39 | 
	call (_getc)			# LN: 39 | 
	i0 = i7 - (0x3)			# LN: 39 | 
	xmem[i0] = a0h			# LN: 39 | 
cline_39_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 41 | 
	i1 = i7 - (0x1)			# LN: 41 | 
	i1 = xmem[i1]			# LN: 41 | 
	a0 = xmem[i0]			# LN: 41 | 
	xmem[i1] = a0h			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 42 | 
	i0 = xmem[i0]			# LN: 42 | 
	i1 = i7 - (0x1)			# LN: 42 | 
	i0 += 1			# LN: 42 | 
	xmem[i1] = i0			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 44 | 
	a0 = xmem[i0]			# LN: 44 | 
	halfword(a1) = (0xffff)			# LN: 44 | 
	a0 - a1			# LN: 44 | 
	if (a != 0) jmp (else_1)			# LN: 44 | 
cline_44_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	jmp (_69E070)			# LN: 46 | 
cline_46_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	jmp (while_0)			# LN: 37 | 
cline_37_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
_69E070:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
while_end_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_fclose)			# LN: 51 | 
cline_51_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_file_name_out + 0)			# LN: 54 | 
	i1 = (0) + (_string_const_1)			# LN: 54 | 
	call (_fopen)			# LN: 54 | 
	AnyReg(i0, a0h)			# LN: 54 | 
	i1 = i7 - (0x4)			# LN: 54 | 
	xmem[i1] = i0			# LN: 54 | 
cline_54_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 57 | 
	a0 = xmem[i0]			# LN: 57 | 
	a0 & a0			# LN: 57 | 
	if (a != 0) jmp (else_2)			# LN: 57 | 
cline_57_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_54)			# LN: 59 | 
cline_59_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 63 | 
	uhalfword(a0) = (_buffer + 0)			# LN: 63 | 
	xmem[i0] = a0			# LN: 63 | 
cline_63_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
while_1:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 65 | 
	a0 & a0			# LN: 65 | 
	if (a == 0) jmp (while_end_1)			# LN: 65 | 
cline_65_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 67 | 
	i0 = xmem[i0]			# LN: 67 | 
	i1 = i7 - (0x3)			# LN: 67 | 
	a0 = xmem[i0]			# LN: 67 | 
	xmem[i1] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 68 | 
	i0 = xmem[i0]			# LN: 68 | 
	i1 = i7 - (0x1)			# LN: 68 | 
	i0 += 1			# LN: 68 | 
	xmem[i1] = i0			# LN: 68 | 
cline_68_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 70 | 
	a0 = xmem[i0]			# LN: 70 | 
	halfword(a1) = (0xffff)			# LN: 70 | 
	a0 - a1			# LN: 70 | 
	if (a != 0) jmp (else_3)			# LN: 70 | 
cline_70_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	jmp (_69EC48)			# LN: 72 | 
cline_72_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 75 | 
	a0 = xmem[i0]			# LN: 75 | 
	i0 = i7 - (0x4)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	call (_putc)			# LN: 75 | 
cline_75_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	jmp (while_1)			# LN: 65 | 
cline_65_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
_69EC48:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
while_end_1:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 79 | 
	i0 = xmem[i0]			# LN: 79 | 
	call (_fclose)			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_54)			# LN: 80 | 
__epilogue_54:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 80 | 
	i7 -= 1			# LN: 80 | 
	ret			# LN: 80 | 
