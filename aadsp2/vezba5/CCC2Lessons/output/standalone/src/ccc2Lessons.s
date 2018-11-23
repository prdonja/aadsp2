	.extern _cccLesson01Introduction
	.extern _cccLesson02FixedPointTypes
	.extern _cccLesson03VariablesAndMemory
	.extern _cccLesson06BasicFileIO
	.public _main
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 23 | 
	i7 += 1			# LN: 23 | 
cline_23_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson01Introduction)			# LN: 36 | 
cline_36_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson02FixedPointTypes)			# LN: 41 | 
cline_41_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson03VariablesAndMemory)			# LN: 46 | 
cline_46_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson06BasicFileIO)			# LN: 51 | 
cline_51_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_168)			# LN: 54 | 
__epilogue_168:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 54 | 
	ret			# LN: 54 | 
