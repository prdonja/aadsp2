	.public _cccLesson01Introduction
	.code_ovly



_cccLesson01Introduction:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 13 | 
	i7 += 1			# LN: 13 | 
cline_13_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_0)			# LN: 90 | 
__epilogue_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 90 | 
	ret			# LN: 90 | 
