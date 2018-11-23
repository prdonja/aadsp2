	.public _array1
	.public _array2
	.public _g_Struct
	.public _g_arg1
	.public _g_arg2
	.public _g_arg3
	.public _g_arg4
	.public _sum_array
	.public _cccLesson05Optimizations
	.public _examplesThatGenertesHWLoop
	.public _examplesThatGenertesSWLoop
	.public _funcWithArguments
	.public _funcWithArgumentsAsGlobals
	.public _funcWithStructAsArgument
	.public _funcWithStructAsGlobalVariable
	.public _optimizedLoops
	.xdata_ovly
_array1
	.bss (0x100)
	.ydata_ovly
_array2
	.bss (0x100)
	.xdata_ovly
_g_Struct
	.bss (0x8)
	.xdata_ovly
_g_arg1
	.dw  (0x1)
	.xdata_ovly
_g_arg2
	.bss (0x1)
	.xdata_ovly
_g_arg3
	.bss (0x1)
	.xdata_ovly
_g_arg4
	.bss (0x1)
	.ydata_ovly
_sum_array
	.bss (0x100)
	.code_ovly



_cccLesson05Optimizations:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 44 | 
	i7 += 1			# LN: 44 | 
	i7 = i7 + (0x8)			# LN: 44 | 
cline_44_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 55 | 
	uhalfword(a1) = (0x2)			# LN: 55 | 
	uhalfword(b0) = (0x3)			# LN: 55 | 
	uhalfword(b1) = (0x4)			# LN: 55 | 
	call (_funcWithArguments)			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	call (_funcWithArgumentsAsGlobals)			# LN: 56 | 
cline_56_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 65 | 
	i1 = i7 - (0x0)			# LN: 65 | 
	do (0x8), label_end_11_1			# LN: 65 | 
label_begin_11_1:			/* LN: 65 | CYCLE: 0 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32) */ 
	x0 = xmem[i0]; i0 += 1			# LN: 65, 65 | 
label_end_11_1:			# LN: 65 | CYCLE: 1 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32)
	xmem[i1] = x0; i1 += 1			# LN: 65, 65 | 
	i7 = i7 + (0x8)			# LN: 65 | 
	call (_funcWithStructAsArgument)			# LN: 65 | 
	i7 = i7 - (0x8)			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	call (_funcWithStructAsGlobalVariable)			# LN: 66 | 
cline_66_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	call (_optimizedLoops)			# LN: 72 | 
cline_72_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 75 | 
__epilogue_106:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 75 | 
	i7 -= 1			# LN: 75 | 
	ret			# LN: 75 | 



_examplesThatGenertesHWLoop:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 121 | 
	i7 += 1			# LN: 121 | 
	i7 = i7 + (0x3)			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 123 | 
	a0 = 0			# LN: 123 | 
	xmem[i0] = a0h			# LN: 123 | 
cline_123_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 125 | 
	uhalfword(a0) = (0x5)			# LN: 125 | 
	xmem[i0] = a0h			# LN: 125 | 
cline_125_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 128 | 
	a0 = 0			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	do (0xa), label_end_92			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	i0 = a0			# LN: 129 | 
	i1 = i7 - (0x1)			# LN: 129 | 
	i0 = i0 + (_array1 + 0)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	i0 = i7 - (0x3)			# LN: 129 | 
	a1 = xmem[i0]			# LN: 129 | 
	i0 = a1			# LN: 129 | 
	a1 = xmem[i1]			# LN: 129 | 
	i0 = i0 + (_array2 + 0)			# LN: 129 | 
	a1 = ymem[i0]; a0 = a1 + a0			# LN: 129, 129 | 
	a0 = a0 + a1			# LN: 129 | 
	i0 = i7 - (0x1)			# LN: 129 | 
	xmem[i0] = a0h			# LN: 129 | 
cline_129_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	uhalfword(a1) = (0x1)			# LN: 128 | 
	a0 = a0 + a1			# LN: 128 | 
	i0 = i7 - (0x3)			# LN: 128 | 
label_end_92:			# LN: 128 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 128 | 
cline_128_1:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 131 | 
	halfword(a0) = (0xfffb)			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
	do (0x5), label_end_93			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 132 | 
	a0 = xmem[i0]			# LN: 132 | 
	i0 = a0			# LN: 132 | 
	i1 = i7 - (0x3)			# LN: 132 | 
	i0 = i0 + (_array1 + 0)			# LN: 132 | 
	a0 = xmem[i1]			# LN: 132 | 
	i1 = a0			# LN: 132 | 
	a0 = xmem[i0]			# LN: 132 | 
	i0 = i1 + (_array2 + 0)			# LN: 132 | 
	a1 = ymem[i0]			# LN: 132 | 
	i0 = i7 - (0x1)			# LN: 132 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 132, 132 | 
	a0 = a1 + a0			# LN: 132 | 
	i0 = i7 - (0x1)			# LN: 132 | 
	xmem[i0] = a0h			# LN: 132 | 
cline_132_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 131 | 
	a0 = xmem[i0]			# LN: 131 | 
	uhalfword(a1) = (0x2)			# LN: 131 | 
	a0 = a0 + a1			# LN: 131 | 
	i0 = i7 - (0x3)			# LN: 131 | 
label_end_93:			# LN: 131 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 131 | 
cline_131_1:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 134 | 
	a0 = 0			# LN: 134 | 
	xmem[i0] = a0h			# LN: 134 | 
	do (0x200), label_end_94			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	i0 = a0			# LN: 135 | 
	i1 = i7 - (0x3)			# LN: 135 | 
	i0 = i0 + (_array1 + 0)			# LN: 135 | 
	a0 = xmem[i1]			# LN: 135 | 
	i1 = a0			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	i0 = i1 + (_array2 + 0)			# LN: 135 | 
	a1 = ymem[i0]			# LN: 135 | 
	i0 = i7 - (0x1)			# LN: 135 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 135, 135 | 
	a0 = a1 + a0			# LN: 135 | 
	i0 = i7 - (0x1)			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
cline_135_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 134 | 
	a0 = xmem[i0]			# LN: 134 | 
	uhalfword(a1) = (0x1)			# LN: 134 | 
	a0 = a0 + a1			# LN: 134 | 
	i0 = i7 - (0x3)			# LN: 134 | 
label_end_94:			# LN: 134 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 134 | 
cline_134_1:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 137 | 
	a0 = 0			# LN: 137 | 
	xmem[i0] = a0h			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_0)			# LN: 138 | 
dummy_init_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	do (0xa), label_end_95			# LN: 138 | 
cline_138_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	i0 = a0			# LN: 139 | 
	i1 = i7 - (0x3)			# LN: 139 | 
	i0 = i0 + (_array1 + 0)			# LN: 139 | 
	a0 = xmem[i1]			# LN: 139 | 
	i1 = a0			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	i0 = i1 + (_array2 + 0)			# LN: 139 | 
	a1 = ymem[i0]			# LN: 139 | 
	i0 = i7 - (0x1)			# LN: 139 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 139, 139 | 
	a0 = a1 + a0			# LN: 139 | 
	i0 = i7 - (0x1)			# LN: 139 | 
	xmem[i0] = a0h			# LN: 139 | 
cline_139_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 138 | 
	a0 = xmem[i0]			# LN: 138 | 
	uhalfword(a1) = (0x1)			# LN: 138 | 
	a0 = a0 + a1			# LN: 138 | 
	i0 = i7 - (0x3)			# LN: 138 | 
label_end_95:			# LN: 138 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 138 | 
cline_138_1:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 142 | 
	a0 = 0			# LN: 142 | 
	xmem[i0] = a0h			# LN: 142 | 
	do (0xa), label_end_96			# LN: 142 | 
cline_142_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	i0 = a0			# LN: 144 | 
	i1 = i7 - (0x3)			# LN: 144 | 
	i0 = i0 + (_array1 + 0)			# LN: 144 | 
	a0 = xmem[i1]			# LN: 144 | 
	i1 = a0			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	i0 = i1 + (_array2 + 0)			# LN: 144 | 
	a1 = ymem[i0]			# LN: 144 | 
	i0 = i7 - (0x1)			# LN: 144 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 144, 144 | 
	a0 = a1 + a0			# LN: 144 | 
	i0 = i7 - (0x1)			# LN: 144 | 
	xmem[i0] = a0h			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 145 | 
	a0 = xmem[i0]			# LN: 145 | 
	uhalfword(a1) = (0x1)			# LN: 145 | 
	a0 = a0 + a1			# LN: 145 | 
	i0 = i7 - (0x3)			# LN: 145 | 
	xmem[i0] = a0h			# LN: 145 | 
cline_145_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
label_end_96:			# LN: 142 | CYCLE: 0 | RULES: ()
	nop #empty cycle
cline_142_1:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 148 | 
	a0 = 0			# LN: 148 | 
	xmem[i0] = a0h			# LN: 148 | 
	do (0x5), label_end_97			# LN: 148 | 
cline_148_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 150 | 
	a0 = xmem[i0]			# LN: 150 | 
	i0 = a0			# LN: 150 | 
	i1 = i7 - (0x3)			# LN: 150 | 
	i0 = i0 + (_array1 + 0)			# LN: 150 | 
	a0 = xmem[i1]			# LN: 150 | 
	i1 = a0			# LN: 150 | 
	a0 = xmem[i0]			# LN: 150 | 
	i0 = i1 + (_array2 + 0)			# LN: 150 | 
	a1 = ymem[i0]			# LN: 150 | 
	i0 = i7 - (0x1)			# LN: 150 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 150, 150 | 
	a0 = a1 + a0			# LN: 150 | 
	i0 = i7 - (0x1)			# LN: 150 | 
	xmem[i0] = a0h			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 151 | 
	a0 = xmem[i0]			# LN: 151 | 
	uhalfword(a1) = (0x1)			# LN: 151 | 
	a0 = a0 + a1			# LN: 151 | 
	i0 = i7 - (0x3)			# LN: 151 | 
	xmem[i0] = a0h			# LN: 151 | 
cline_151_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 148 | 
	a0 = xmem[i0]			# LN: 148 | 
	uhalfword(a1) = (0x1)			# LN: 148 | 
	a0 = a0 + a1			# LN: 148 | 
	i0 = i7 - (0x3)			# LN: 148 | 
label_end_97:			# LN: 148 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 148 | 
cline_148_1:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 154 | 
	a0 = 0			# LN: 154 | 
	xmem[i0] = a0h			# LN: 154 | 
for_6:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 154 | 
	a0 = xmem[i0]			# LN: 154 | 
	i0 = i7 - (0x2)			# LN: 154 | 
	a1 = xmem[i0]			# LN: 154 | 
	a0 - a1			# LN: 154 | 
	if (a >= 0) jmp (for_end_6)			# LN: 154 | 
cline_154_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 156 | 
	a0 = xmem[i0]			# LN: 156 | 
	i0 = a0			# LN: 156 | 
	i1 = i7 - (0x1)			# LN: 156 | 
	i0 = i0 + (_array1 + 0)			# LN: 156 | 
	a0 = xmem[i0]			# LN: 156 | 
	i0 = i7 - (0x3)			# LN: 156 | 
	a1 = xmem[i0]			# LN: 156 | 
	i0 = a1			# LN: 156 | 
	a1 = xmem[i1]			# LN: 156 | 
	i0 = i0 + (_array2 + 0)			# LN: 156 | 
	a1 = ymem[i0]; a0 = a1 + a0			# LN: 156, 156 | 
	a0 = a0 + a1			# LN: 156 | 
	i0 = i7 - (0x1)			# LN: 156 | 
	xmem[i0] = a0h			# LN: 156 | 
cline_156_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 154 | 
	a0 = xmem[i0]			# LN: 154 | 
	uhalfword(a1) = (0x1)			# LN: 154 | 
	a0 = a0 + a1			# LN: 154 | 
	i0 = i7 - (0x3)			# LN: 154 | 
	xmem[i0] = a0h			# LN: 154 | 
	jmp (for_6)			# LN: 154 | 
cline_154_1:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 160 | 
	a0 = xmem[i0]			# LN: 160 | 
	jmp (__epilogue_116)			# LN: 160 | 
cline_160_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
__epilogue_116:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 161 | 
	i7 -= 1			# LN: 161 | 
	ret			# LN: 161 | 



_examplesThatGenertesSWLoop:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 163 | 
	i7 += 1			# LN: 163 | 
	i7 = i7 + (0x3)			# LN: 163 | 
cline_163_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 165 | 
	a0 = 0			# LN: 165 | 
	xmem[i0] = a0h			# LN: 165 | 
cline_165_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_1)			# LN: 168 | 
for_7:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
dummy_init_1:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 168 | 
	a0 = xmem[i0]			# LN: 168 | 
	uhalfword(a1) = (0xa)			# LN: 168 | 
	a0 - a1			# LN: 168 | 
	if (a >= 0) jmp (for_end_7)			# LN: 168 | 
cline_168_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 169 | 
	a0 = xmem[i0]			# LN: 169 | 
	i0 = a0			# LN: 169 | 
	i1 = i7 - (0x2)			# LN: 169 | 
	i0 = i0 + (_array1 + 0)			# LN: 169 | 
	a0 = xmem[i1]			# LN: 169 | 
	i1 = a0			# LN: 169 | 
	a0 = xmem[i0]			# LN: 169 | 
	i0 = i1 + (_array2 + 0)			# LN: 169 | 
	a1 = ymem[i0]			# LN: 169 | 
	i0 = i7 - (0x1)			# LN: 169 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 169, 169 | 
	a0 = a1 + a0			# LN: 169 | 
	i0 = i7 - (0x1)			# LN: 169 | 
	xmem[i0] = a0h			# LN: 169 | 
cline_169_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 168 | 
	a0 = xmem[i0]			# LN: 168 | 
	uhalfword(a1) = (0x1)			# LN: 168 | 
	a0 = a0 + a1			# LN: 168 | 
	i0 = i7 - (0x2)			# LN: 168 | 
	xmem[i0] = a0h			# LN: 168 | 
	jmp (for_7)			# LN: 168 | 
cline_168_1:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 171 | 
	a0 = 0			# LN: 171 | 
	xmem[i0] = a0h			# LN: 171 | 
cline_171_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
while_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 172 | 
	a0 & a0			# LN: 172 | 
	if (a == 0) jmp (while_end_0)			# LN: 172 | 
cline_172_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 174 | 
	a0 = xmem[i0]			# LN: 174 | 
	uhalfword(a1) = (0xa)			# LN: 174 | 
	a0 - a1			# LN: 174 | 
	if (a >= 0) jmp (else_0)			# LN: 174 | 
	jmp (_6B1228)			# LN: 174 | 
cline_174_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 175 | 
	a0 = xmem[i0]			# LN: 175 | 
	i0 = a0			# LN: 175 | 
	i1 = i7 - (0x2)			# LN: 175 | 
	i0 = i0 + (_array1 + 0)			# LN: 175 | 
	a0 = xmem[i1]			# LN: 175 | 
	i1 = a0			# LN: 175 | 
	a0 = xmem[i0]			# LN: 175 | 
	i0 = i1 + (_array2 + 0)			# LN: 175 | 
	a1 = ymem[i0]			# LN: 175 | 
	i0 = i7 - (0x1)			# LN: 175 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 175, 175 | 
	a0 = a1 + a0			# LN: 175 | 
	i0 = i7 - (0x1)			# LN: 175 | 
	xmem[i0] = a0h			# LN: 175 | 
cline_175_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 176 | 
	a0 = xmem[i0]			# LN: 176 | 
	uhalfword(a1) = (0x1)			# LN: 176 | 
	a0 = a0 + a1			# LN: 176 | 
	i0 = i7 - (0x2)			# LN: 176 | 
	xmem[i0] = a0h			# LN: 176 | 
cline_176_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	jmp (while_0)			# LN: 172 | 
cline_172_1:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
_6B1228:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
while_end_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 179 | 
	a0 = 0			# LN: 179 | 
	xmem[i0] = a0h			# LN: 179 | 
cline_179_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_g_arg1 + 0]			# LN: 180 | 
	i0 = i7 - (0x3)			# LN: 180 | 
	xmem[i0] = a0h			# LN: 180 | 
cline_180_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
while_1:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 181 | 
	a0 = xmem[i0]			# LN: 181 | 
	uhalfword(a1) = (0xa)			# LN: 181 | 
	a0 - a1			# LN: 181 | 
	if (a >= 0) jmp (while_end_1)			# LN: 181 | 
cline_181_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 183 | 
	a0 = xmem[i0]			# LN: 183 | 
	i0 = a0			# LN: 183 | 
	i1 = i7 - (0x2)			# LN: 183 | 
	i0 = i0 + (_array1 + 0)			# LN: 183 | 
	a0 = xmem[i1]			# LN: 183 | 
	i1 = a0			# LN: 183 | 
	a0 = xmem[i0]			# LN: 183 | 
	i0 = i1 + (_array2 + 0)			# LN: 183 | 
	a1 = ymem[i0]			# LN: 183 | 
	i0 = i7 - (0x1)			# LN: 183 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 183, 183 | 
	a0 = a1 + a0			# LN: 183 | 
	i0 = i7 - (0x1)			# LN: 183 | 
	xmem[i0] = a0h			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 184 | 
	a0 = xmem[i0]			# LN: 184 | 
	i0 = i7 - (0x3)			# LN: 184 | 
	a1 = xmem[i0]			# LN: 184 | 
	a0 = a0 + a1			# LN: 184 | 
	i0 = i7 - (0x2)			# LN: 184 | 
	xmem[i0] = a0h			# LN: 184 | 
cline_184_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	jmp (while_1)			# LN: 181 | 
cline_181_1:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
while_end_1:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 187 | 
	a0 = xmem[i0]			# LN: 187 | 
	jmp (__epilogue_118)			# LN: 187 | 
cline_187_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
__epilogue_118:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 188 | 
	i7 -= 1			# LN: 188 | 
	ret			# LN: 188 | 



_funcWithArguments:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 79 | 
	i7 += 1			# LN: 79 | 
	i7 = i7 + (0x8)			# LN: 79 | 
	i0 = i7 - (0x1)			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
	i0 = i7 - (0x2)			# LN: 79 | 
	xmem[i0] = a1h			# LN: 79 | 
	i0 = i7 - (0x3)			# LN: 79 | 
	xmem[i0] = b0h			# LN: 79 | 
	i0 = i7 - (0x4)			# LN: 79 | 
	xmem[i0] = b1h			# LN: 79 | 
cline_79_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	i0 = i7 - (0x2)			# LN: 83 | 
	a1 = xmem[i0]			# LN: 83 | 
	a0 = a0 + a1			# LN: 83 | 
	i0 = i7 - (0x5)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	i0 = i7 - (0x3)			# LN: 84 | 
	a1 = xmem[i0]			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x6)			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	i0 = i7 - (0x6)			# LN: 85 | 
	a1 = xmem[i0]			# LN: 85 | 
	a0 = a0 + a1			# LN: 85 | 
	i0 = i7 - (0x7)			# LN: 85 | 
	xmem[i0] = a0h			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	i0 = i7 - (0x3)			# LN: 86 | 
	a1 = xmem[i0]			# LN: 86 | 
	a0 = a0 + a1			# LN: 86 | 
	i0 = i7 - (0x8)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	i0 = i7 - (0x6)			# LN: 88 | 
	a1 = xmem[i0]			# LN: 88 | 
	i0 = i7 - (0x7)			# LN: 88 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 88, 88 | 
	i0 = i7 - (0x8)			# LN: 88 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 88, 88 | 
	i0 = i7 - (0x4)			# LN: 88 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 88, 88 | 
	a0 = a0 + a1			# LN: 88 | 
	jmp (__epilogue_108)			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
__epilogue_108:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 89 | 
	i7 -= 1			# LN: 89 | 
	ret			# LN: 89 | 



_funcWithArgumentsAsGlobals:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 91 | 
	i7 += 1			# LN: 91 | 
	i7 = i7 + (0x4)			# LN: 91 | 
cline_91_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_g_arg1 + 0]			# LN: 95 | 
	a1 = xmem[_g_arg2 + 0]			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x1)			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	a1 = xmem[_g_arg3 + 0]			# LN: 96 | 
	a0 = a0 + a1			# LN: 96 | 
	i0 = i7 - (0x2)			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	i0 = i7 - (0x2)			# LN: 97 | 
	a1 = xmem[i0]			# LN: 97 | 
	a0 = a0 + a1			# LN: 97 | 
	i0 = i7 - (0x3)			# LN: 97 | 
	xmem[i0] = a0h			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_g_arg1 + 0]			# LN: 98 | 
	a1 = xmem[_g_arg3 + 0]			# LN: 98 | 
	a0 = a0 + a1			# LN: 98 | 
	i0 = i7 - (0x4)			# LN: 98 | 
	xmem[i0] = a0h			# LN: 98 | 
cline_98_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	i0 = i7 - (0x2)			# LN: 100 | 
	a1 = xmem[i0]			# LN: 100 | 
	i0 = i7 - (0x3)			# LN: 100 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 100, 100 | 
	i0 = i7 - (0x4)			# LN: 100 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 100, 100 | 
	a0 = a0 + a1			# LN: 100 | 
	a1 = xmem[_g_arg4 + 0]			# LN: 100 | 
	a0 = a0 + a1			# LN: 100 | 
	jmp (__epilogue_110)			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
__epilogue_110:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 101 | 
	i7 -= 1			# LN: 101 | 
	ret			# LN: 101 | 



_funcWithStructAsArgument:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 104 | 
	i7 += 1			# LN: 104 | 
	i7 = i7 + (0x8)			# LN: 104 | 
	i0 = i7 - (0x11)			# LN: 104 | 
	i1 = i7 - (0x8)			# LN: 104 | 
	do (0x8), label_end_11_0			# LN: 104 | 
label_begin_11_0:			/* LN: 104 | CYCLE: 0 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32) */ 
	x0 = xmem[i0]; i0 += 1			# LN: 104, 104 | 
label_end_11_0:			# LN: 104 | CYCLE: 1 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32)
	xmem[i1] = x0; i1 += 1			# LN: 104, 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (8 - 1)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	i0 = i7 - (8 - 3)			# LN: 106 | 
	a1 = xmem[i0]			# LN: 106 | 
	i0 = i7 - (8 - 2)			# LN: 106 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 106, 106 | 
	i0 = i7 - (8 - 4)			# LN: 106 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 106, 106 | 
	i0 = i7 - (8 - 5)			# LN: 106 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 106, 106 | 
	i0 = i7 - (8 - 6)			# LN: 106 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 106, 106 | 
	i0 = i7 - (8 - 7)			# LN: 106 | 
	a1 = xmem[i0]; a0 = a0 + a1			# LN: 106, 106 | 
	a0 = a0 + a1			# LN: 106 | 
	i0 = i7 - (8 - 0)			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
cline_106_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (8 - 0)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	jmp (__epilogue_112)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
__epilogue_112:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 109 | 
	i7 -= 1			# LN: 109 | 
	ret			# LN: 109 | 



_funcWithStructAsGlobalVariable:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 111 | 
	i7 += 1			# LN: 111 | 
cline_111_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_g_Struct + 1]			# LN: 113 | 
	a1 = xmem[_g_Struct + 3]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	a1 = xmem[_g_Struct + 2]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	a1 = xmem[_g_Struct + 4]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	a1 = xmem[_g_Struct + 5]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	a1 = xmem[_g_Struct + 6]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	a1 = xmem[_g_Struct + 7]			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	xmem[_g_Struct + 0] = a0h			# LN: 113 | 
cline_113_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_g_Struct + 0]			# LN: 115 | 
	jmp (__epilogue_114)			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
__epilogue_114:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 116 | 
	ret			# LN: 116 | 



_optimizedLoops:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 191 | 
	i7 += 1			# LN: 191 | 
cline_191_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	call (_examplesThatGenertesHWLoop)			# LN: 194 | 
cline_194_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	call (_examplesThatGenertesSWLoop)			# LN: 198 | 
cline_198_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_120)			# LN: 200 | 
__epilogue_120:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 200 | 
	ret			# LN: 200 | 
