	.public _globalX
	.public _cccLesson02FixedPointTypes
	.public _cccLessonsBitwiseConversionBetweenTypes
	.public _cccLessonsFixedConstant
	.public _cccLessonsMul
	.public _cccLessonsRoundingAndShifting
	.extern __laccum_sat_accum
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x2d916873)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x66b851ec)
	.xdata_ovly
_globalX
	.bss (0x1)
	.code_ovly



_cccLesson02FixedPointTypes:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 57 | 
	i7 += 1			# LN: 57 | 
	i7 = i7 + (0x4)			# LN: 57 | 
cline_57_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 59 | 
	ufixed16(a0) = (0x8000)			# LN: 59 | 
	xmem[i0] = a0g; i0 += 1			# LN: 59, 59 | 
	xmem[i0] = a0h			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 60 | 
	a0 = (0x4000)			# LN: 60 | 
	xmem[i0] = a0h			# LN: 60 | 
	i0 = i7 - (0x4)			# LN: 60 | 
	xmem[i0] = a0h			# LN: 60 | 
cline_60_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	i0 = i7 - (0x4)			# LN: 100 | 
	a1 = xmem[i0]			# LN: 100 | 
	call (_cccLessonsMul)			# LN: 100 | 
	i0 = i7 - (0x2)			# LN: 100 | 
	xmem[i0] = a0g; i0 += 1			# LN: 100, 100 | 
	xmem[i0] = a0h			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	call (_cccLessonsFixedConstant)			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	call (_cccLessonsBitwiseConversionBetweenTypes)			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	call (_cccLessonsRoundingAndShifting)			# LN: 103 | 
cline_103_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 105 | 
	a0g = xmem[i0]; i0 += 1			# LN: 105, 105 | 
	a0h = xmem[i0]			# LN: 105 | 
	uhalfword(a0l) = (0x0)			# LN: 105 | 
	jmp (__epilogue_112)			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
__epilogue_112:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 106 | 
	i7 -= 1			# LN: 106 | 
	ret			# LN: 106 | 



_cccLessonsBitwiseConversionBetweenTypes:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 36 | 
	i7 += 1			# LN: 36 | 
	i7 = i7 + (0x2)			# LN: 36 | 
cline_36_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 39 | 
	i0 = i7 - (0x1)			# LN: 39 | 
	xmem[i0] = a0h			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 40 | 
	a0 = xmem[i0]			# LN: 40 | 
	i0 = i7 - (0x2)			# LN: 40 | 
	xmem[i0] = a0h			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 41 | 
__epilogue_108:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 41 | 
	i7 -= 1			# LN: 41 | 
	ret			# LN: 41 | 



_cccLessonsFixedConstant:			/* LN: 21 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 21 | 
	i7 += 1			# LN: 21 | 
	i7 = i7 + (0x1)			# LN: 21 | 
cline_21_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 31 | 
	i0 = i7 - (0x1)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 33 | 
	a0 = xmem[i0]			# LN: 33 | 
	xmem[_globalX + 0] = a0h			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 34 | 
__epilogue_106:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 34 | 
	i7 -= 1			# LN: 34 | 
	ret			# LN: 34 | 



_cccLessonsMul:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 16 | 
	i7 += 1			# LN: 16 | 
	i7 = i7 + (0x2)			# LN: 16 | 
	i0 = i7 - (0x1)			# LN: 16 | 
	xmem[i0] = a0h			# LN: 16 | 
	i0 = i7 - (0x2)			# LN: 16 | 
	xmem[i0] = a1h			# LN: 16 | 
cline_16_0:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 18 | 
	x0 = xmem[i0]			# LN: 18 | 
	i0 = i7 - (0x2)			# LN: 18 | 
	x1 = xmem[i0]			# LN: 18 | 
	a0 = x0 * x1			# LN: 18 | 
	call (__laccum_sat_accum)			# LN: 18 | 
	jmp (__epilogue_104)			# LN: 18 | 
cline_18_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
__epilogue_104:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 19 | 
	i7 -= 1			# LN: 19 | 
	ret			# LN: 19 | 



_cccLessonsRoundingAndShifting:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 43 | 
	i7 += 1			# LN: 43 | 
cline_43_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	mr_sr = (0x0)			# LN: 46 | 
cline_46_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	mr_sr = (0x8)			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	mr_sr = (0xb)			# LN: 50 | 
cline_50_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	mr_r = (0x4)			# LN: 52 | 
cline_52_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	mr_s = (0x1)			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_110)			# LN: 55 | 
__epilogue_110:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 55 | 
	ret			# LN: 55 | 
