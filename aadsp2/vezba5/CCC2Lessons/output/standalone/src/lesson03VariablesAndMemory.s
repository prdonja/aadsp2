	.public _a
	.public _b
	.public _data1
	.public _data2
	.public _global
	.public _global_y
	.public _high
	.public _low
	.public _pglobal
	.public _whole
	.public _cccLesson03CircularBuffer
	.public _cccLesson03DefiningLocalvariables
	.public _cccLesson03MemoryZoneChange
	.public _cccLesson03VariablesAndMemory
	.xdata_ovly align 16
_a
	.bss (0x10)
	.ydata_ovly align 32
_b
	.dw  (0x0)
	.dw  (0xccccccd)
	.dw  (0x1999999a)
	.dw  (0x26666666)
	.dw  (0x33333333)
	.dw  (0x40000000)
	.dw  (0x4ccccccd)
	.dw  (0x5999999a)
	.dw  (0x66666666)
	.dw  (0x73333333)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_data1
	.dw  (0x1)
	.ydata_ovly
_data2
	.dw  (0x2)
	.xdata_ovly
_global
	.bss (0x1)
	.ydata_ovly
_global_y
	.bss (0x1)
	.xdata_ovly
_high
	.bss (0x1)
	.ydata_ovly
_low
	.bss (0x1)
	.ydata_ovly
_pglobal
	.dw _global
	.data_ovly
_whole
	.dw  (0x22ce46ca),(0x69c61751)
	.code_ovly



_cccLesson03CircularBuffer:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 58 | 
	i7 += 1			# LN: 58 | 
	i7 = i7 + (0x4)			# LN: 58 | 
	i4 = i7 - (0x1)			# LN: 58 | 
	xmem[i4] = i0			# LN: 58 | 
	i0 = i7 - (0x2)			# LN: 58 | 
	xmem[i0] = i1			# LN: 58 | 
cline_58_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 62 | 
	a0 = 0			# LN: 62 | 
	xmem[i0] = a0h			# LN: 62 | 
	do (0x10), label_end_92			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 63 | 
	i0 = xmem[i0]			# LN: 63 | 
	i1 = i7 - (0x4)			# LN: 63 | 
	a0 = ymem[i0]			# LN: 63 | 
	xmem[i1] = a0h			# LN: 63 | 
	i0 = i7 - (0x2)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	AnyReg(i0, a0h)			# LN: 63 | 
	nm0 = (0x3004)			# LN: -1 | 
	i1 = i7 - (0x2)			# LN: 63 | 
	i0 += n			# LN: 63 | 
	nm0 = (0x0)			# LN: -1 | 
	xmem[i1] = i0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x4)			# LN: 64 | 
	a0 = xmem[i1]			# LN: 64 | 
	xmem[i0] = a0h			# LN: 64 | 
	i0 = i7 - (0x1)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x1)			# LN: 64 | 
	i0 += 1			# LN: 64 | 
	xmem[i1] = i0			# LN: 64 | 
cline_64_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	uhalfword(a1) = (0x1)			# LN: 62 | 
	a0 = a0 + a1			# LN: 62 | 
	i0 = i7 - (0x3)			# LN: 62 | 
label_end_92:			# LN: 62 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 62 | 
cline_62_1:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_110)			# LN: 67 | 
__epilogue_110:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 67 | 
	i7 -= 1			# LN: 67 | 
	ret			# LN: 67 | 



_cccLesson03DefiningLocalvariables:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 29 | 
	i7 += 1			# LN: 29 | 
	i7 = i7 + (0x2)			# LN: 29 | 
cline_29_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 34 | 
	uhalfword(a0) = (_data1 + 0)			# LN: 34 | 
	xmem[i0] = a0			# LN: 34 | 
cline_34_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_data1 + 0]			# LN: 41 | 
	a1 = ymem[_data2 + 0]			# LN: 41 | 
	a0 = a0 + a1			# LN: 41 | 
	i0 = i7 - (0x2)			# LN: 41 | 
	xmem[i0] = a0h			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	ymem[_data2 + 0] = a0h			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 43 | 
__epilogue_106:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 43 | 
	i7 -= 1			# LN: 43 | 
	ret			# LN: 43 | 



_cccLesson03MemoryZoneChange:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 45 | 
	i7 += 1			# LN: 45 | 
	i7 = i7 + (0x4)			# LN: 45 | 
cline_45_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 50 | 
	uhalfword(a0) = (_whole + 0)			# LN: 50 | 
	xmem[i0] = a0			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	a0 = xymem[_whole + 0]			# LN: 51 | 
	i0 = i7 - (0x4)			# LN: 51 | 
	xmem[i0] = a0g; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0h; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0l			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 52 | 
	a0g = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	a0h = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	a0l = xmem[i0]			# LN: 52 | 
	a0 = long(a0)			# LN: 52 | 
	xymem[_whole + 0] = a0			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_whole + 0]			# LN: 53 | 
	xmem[_high + 0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_whole + 0]			# LN: 54 | 
	ymem[_low + 0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 55 | 
__epilogue_108:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 55 | 
	i7 -= 1			# LN: 55 | 
	ret			# LN: 55 | 



_cccLesson03VariablesAndMemory:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 69 | 
	i7 += 1			# LN: 69 | 
cline_69_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson03DefiningLocalvariables)			# LN: 72 | 
cline_72_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	call (_cccLesson03MemoryZoneChange)			# LN: 75 | 
cline_75_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_a)			# LN: 78 | 
	i1 = (0) + (_b)			# LN: 78 | 
	call (_cccLesson03CircularBuffer)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_112)			# LN: 80 | 
__epilogue_112:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 80 | 
	ret			# LN: 80 | 
