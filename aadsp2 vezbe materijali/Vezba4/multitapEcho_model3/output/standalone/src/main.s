	.public _echoState
	.public _echo_buffer
	.public _initial_delay
	.public _initial_gain
	.public _initial_input_gain
	.public _pDelay
	.public _pGain
	.public _pInitDelay
	.public _pInitGain
	.public _readPtrOffset
	.public _readPtrPtr
	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.public _multitap_echo
	.public _multitap_echo_init
	.extern _printf
	.extern _strcpy
	.extern __div
	.xdata_ovly
_echoState
	.bss (0x11)
	.xdata_ovly align 4096
_echo_buffer
	.bss (0x1000)
	.xdata_ovly
_initial_delay
	.dw  (0x400)
	.dw  (0x600)
	.dw  (0xa00)
	.dw  (0xc00)
	.xdata_ovly
_initial_gain
	.dw  (0x20000000)
	.dw  (0x10000000)
	.dw  (0x8000000)
	.dw  (0x8000000)
	.xdata_ovly
_initial_input_gain
	.dw  (0x40000000)
	.xdata_ovly
_pDelay
	.bss (0x1)
	.xdata_ovly
_pGain
	.bss (0x1)
	.xdata_ovly
_pInitDelay
	.bss (0x1)
	.xdata_ovly
_pInitGain
	.bss (0x1)
	.xdata_ovly
_readPtrOffset
	.bss (0x1)
	.xdata_ovly
_readPtrPtr
	.bss (0x1)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
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

_main:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 181 | 
	i7 += 1			# LN: 181 | 
	i7 = i7 + (0x20d)			# LN: 181 | 
	i1 = i7 - (0x1)			# LN: 181 | 
	xmem[i1] = a0h			# LN: 181 | 
	i1 = i7 - (0x2)			# LN: 181 | 
	xmem[i1] = i0			# LN: 181 | 
cline_181_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 196 | 
	i1 = (0) + (_string_const_0)			# LN: 196 | 
	call (_strcpy)			# LN: 196 | 
cline_196_0:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 197 | 
	call (_cl_wavread_open)			# LN: 197 | 
	AnyReg(i0, a0h)			# LN: 197 | 
	i1 = i7 - (0x103)			# LN: 197 | 
	xmem[i1] = i0			# LN: 197 | 
cline_197_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 198 | 
	a0 = xmem[i0]			# LN: 198 | 
	a0 & a0			# LN: 198 | 
	if (a != 0) jmp (else_0)			# LN: 198 | 
cline_198_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 200 | 
	call (_printf)			# LN: 200 | 
cline_200_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 201 | 
	jmp (__epilogue_226)			# LN: 201 | 
cline_201_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 207 | 
	i0 = xmem[i0]			# LN: 207 | 
	call (_cl_wavread_getnchannels)			# LN: 207 | 
	i0 = i7 - (0x104)			# LN: 207 | 
	xmem[i0] = a0h			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 208 | 
	i0 = xmem[i0]			# LN: 208 | 
	call (_cl_wavread_bits_per_sample)			# LN: 208 | 
	i0 = i7 - (0x105)			# LN: 208 | 
	xmem[i0] = a0h			# LN: 208 | 
cline_208_0:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 209 | 
	i0 = xmem[i0]			# LN: 209 | 
	call (_cl_wavread_frame_rate)			# LN: 209 | 
	i0 = i7 - (0x106)			# LN: 209 | 
	xmem[i0] = a0h			# LN: 209 | 
cline_209_0:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 210 | 
	i0 = xmem[i0]			# LN: 210 | 
	call (_cl_wavread_number_of_frames)			# LN: 210 | 
	i0 = i7 - (0x107)			# LN: 210 | 
	xmem[i0] = a0h			# LN: 210 | 
cline_210_0:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 215 | 
	i1 = (0) + (_string_const_2)			# LN: 215 | 
	call (_strcpy)			# LN: 215 | 
cline_215_0:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 216 | 
	i1 = i7 - (0x105)			# LN: 216 | 
	a0 = xmem[i1]			# LN: 216 | 
	i1 = i7 - (0x104)			# LN: 216 | 
	a1 = xmem[i1]			# LN: 216 | 
	i1 = i7 - (0x106)			# LN: 216 | 
	b0 = xmem[i1]			# LN: 216 | 
	call (_cl_wavwrite_open)			# LN: 216 | 
	AnyReg(i0, a0h)			# LN: 216 | 
	i1 = i7 - (0x208)			# LN: 216 | 
	xmem[i1] = i0			# LN: 216 | 
cline_216_0:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 217 | 
	a0 = xmem[i0]			# LN: 217 | 
	a0 & a0			# LN: 217 | 
	if (a != 0) jmp (else_1)			# LN: 217 | 
cline_217_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 219 | 
	call (_printf)			# LN: 219 | 
cline_219_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 220 | 
	jmp (__epilogue_226)			# LN: 220 | 
cline_220_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	call (_multitap_echo_init)			# LN: 227 | 
cline_227_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 238 | 
	a0 = xmem[i0]			# LN: 238 | 
	uhalfword(a1) = (0x10)			# LN: 238 | 
	call (__div)			# LN: 238 | 
	i0 = i7 - (0x209)			# LN: 238 | 
	xmem[i0] = a0h			# LN: 238 | 
cline_238_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 240 | 
	a0 = 0			# LN: 240 | 
	xmem[i0] = a0h			# LN: 240 | 
for_4:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 240 | 
	a0 = xmem[i0]			# LN: 240 | 
	i0 = i7 - (0x209)			# LN: 240 | 
	a1 = xmem[i0]			# LN: 240 | 
	a0 - a1			# LN: 240 | 
	if (a >= 0) jmp (for_end_4)			# LN: 240 | 
cline_240_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 242 | 
	a0 = 0			# LN: 242 | 
	xmem[i0] = a0h			# LN: 242 | 
	do (0x10), label_end_95			# LN: 242 | 
cline_242_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = 0			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
for_6:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = xmem[i0]			# LN: 244 | 
	i0 = i7 - (0x104)			# LN: 244 | 
	a1 = xmem[i0]			# LN: 244 | 
	a0 - a1			# LN: 244 | 
	if (a >= 0) jmp (for_end_6)			# LN: 244 | 
cline_244_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	call (_cl_wavread_recvsample)			# LN: 246 | 
	i0 = i7 - (0x20d)			# LN: 246 | 
	xmem[i0] = a0h			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 247 | 
	a0 = xmem[i0]			# LN: 247 | 
	a0 = a0 << 4			# LN: 247 | 
	i0 = a0			# LN: 247 | 
	i1 = i7 - (0x20b)			# LN: 247 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 247 | 
	a0 = xmem[i1]			# LN: 247 | 
	a1 = i0			# LN: 247 | 
	a0 = a1 + a0			# LN: 247 | 
	AnyReg(i0, a0h)			# LN: 247 | 
	i1 = i7 - (0x20d)			# LN: 247 | 
	a0 = xmem[i1]			# LN: 247 | 
	xmem[i0] = a0h			# LN: 247 | 
cline_247_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = xmem[i0]			# LN: 244 | 
	uhalfword(a1) = (0x1)			# LN: 244 | 
	a0 = a0 + a1			# LN: 244 | 
	i0 = i7 - (0x20c)			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
	jmp (for_6)			# LN: 244 | 
cline_244_1:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 242 | 
	a0 = xmem[i0]			# LN: 242 | 
	uhalfword(a1) = (0x1)			# LN: 242 | 
	a0 = a0 + a1			# LN: 242 | 
	i0 = i7 - (0x20b)			# LN: 242 | 
label_end_95:			# LN: 242 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 242 | 
cline_242_1:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 255 | 
	i1 = (0) + (_sampleBuffer + 0)			# LN: 255 | 
	call (_multitap_echo)			# LN: 255 | 
cline_255_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 258 | 
	a0 = 0			# LN: 258 | 
	xmem[i0] = a0h			# LN: 258 | 
	do (0x10), label_end_96			# LN: 258 | 
cline_258_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 260 | 
	a0 = 0			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
for_8:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	i0 = i7 - (0x104)			# LN: 260 | 
	a1 = xmem[i0]			# LN: 260 | 
	a0 - a1			# LN: 260 | 
	if (a >= 0) jmp (for_end_8)			# LN: 260 | 
cline_260_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 262 | 
	a0 = xmem[i0]			# LN: 262 | 
	a0 = a0 << 4			# LN: 262 | 
	i0 = a0			# LN: 262 | 
	i1 = i7 - (0x20b)			# LN: 262 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 262 | 
	a0 = xmem[i1]			# LN: 262 | 
	a1 = i0			# LN: 262 | 
	a0 = a1 + a0			# LN: 262 | 
	AnyReg(i0, a0h)			# LN: 262 | 
	i1 = i7 - (0x20d)			# LN: 262 | 
	a0 = xmem[i0]			# LN: 262 | 
	xmem[i1] = a0h			# LN: 262 | 
cline_262_0:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 263 | 
	a0 = xmem[i0]			# LN: 263 | 
	AnyReg(i0, a0h)			# LN: 263 | 
	i1 = i7 - (0x20d)			# LN: 263 | 
	a0 = xmem[i1]			# LN: 263 | 
	call (_cl_wavwrite_sendsample)			# LN: 263 | 
cline_263_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 260 | 
	a0 = xmem[i0]			# LN: 260 | 
	uhalfword(a1) = (0x1)			# LN: 260 | 
	a0 = a0 + a1			# LN: 260 | 
	i0 = i7 - (0x20c)			# LN: 260 | 
	xmem[i0] = a0h			# LN: 260 | 
	jmp (for_8)			# LN: 260 | 
cline_260_1:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 258 | 
	a0 = xmem[i0]			# LN: 258 | 
	uhalfword(a1) = (0x1)			# LN: 258 | 
	a0 = a0 + a1			# LN: 258 | 
	i0 = i7 - (0x20b)			# LN: 258 | 
label_end_96:			# LN: 258 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 258 | 
cline_258_1:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 240 | 
	a0 = xmem[i0]			# LN: 240 | 
	uhalfword(a1) = (0x1)			# LN: 240 | 
	a0 = a0 + a1			# LN: 240 | 
	i0 = i7 - (0x20a)			# LN: 240 | 
	xmem[i0] = a0h			# LN: 240 | 
	jmp (for_4)			# LN: 240 | 
cline_240_1:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	call (_cl_wavread_close)			# LN: 271 | 
cline_271_0:			/* LN: 272 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 272 | 
	a0 = xmem[i0]			# LN: 272 | 
	AnyReg(i0, a0h)			# LN: 272 | 
	call (_cl_wavwrite_close)			# LN: 272 | 
cline_272_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 275 | 
	jmp (__epilogue_226)			# LN: 275 | 
cline_275_0:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
__epilogue_226:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 276 | 
	i7 -= 1			# LN: 276 | 
	ret			# LN: 276 | 



_multitap_echo:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 125 | 
	i7 += 1			# LN: 125 | 
	i7 = i7 + (0xa)			# LN: 125 | 
	i4 = i7 - (0x1)			# LN: 125 | 
	xmem[i4] = i0			# LN: 125 | 
	i0 = i7 - (0x2)			# LN: 125 | 
	xmem[i0] = i1			# LN: 125 | 
cline_125_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 2]			# LN: 129 | 
	i1 = i7 - (0x3)			# LN: 129 | 
	xmem[i1] = i0			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 0]			# LN: 130 | 
	a0 = xmem[_echoState + 1]			# LN: 130 | 
	a1 = i0			# LN: 130 | 
	a0 = a1 + a0			# LN: 130 | 
	AnyReg(i0, a0h)			# LN: 130 | 
	i1 = i7 - (0x4)			# LN: 130 | 
	i0 -= 1			# LN: 130 | 
	xmem[i1] = i0			# LN: 130 | 
cline_130_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 135 | 
	a0 = 0			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
	do (0x10), label_end_92			# LN: 135 | 
cline_135_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 137 | 
	i0 = xmem[i0]			# LN: 137 | 
	i1 = i7 - (0x3)			# LN: 137 | 
	i1 = xmem[i1]			# LN: 137 | 
	a0 = xmem[i0]			# LN: 137 | 
	xmem[i1] = a0h			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 138 | 
	i0 = xmem[i0]			# LN: 138 | 
	i1 = i7 - (0x3)			# LN: 138 | 
	i0 += 1			# LN: 138 | 
	xmem[i1] = i0			# LN: 138 | 
cline_138_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	nm0 = (0xb000)			# LN: -1 | 
	i0 = (0) + (_echo_buffer)			# LN: 140 | 
	i0 += n			# LN: 140 | 
	nm0 = (0x0)			# LN: -1 | 
	i1 = i7 - (0x3)			# LN: 140 | 
	xmem[i1] = i0			# LN: 140 | 
cline_140_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 142 | 
	i0 = xmem[i0]			# LN: 142 | 
	x0 = xmem[_echoState + 11]			# LN: 142 | 
	x1 = xmem[i0]			# LN: 142 | 
	a0 = x1 * x0			# LN: 142 | 
	i0 = i7 - (0x6)			# LN: 142 | 
	xmem[i0] = a0			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 143 | 
	uhalfword(a0) = (_echoState + 12)			# LN: 143 | 
	xmem[i0] = a0			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 144 | 
	uhalfword(a0) = (_echoState + 3)			# LN: 144 | 
	xmem[i0] = a0			# LN: 144 | 
cline_144_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 146 | 
	a0 = 0			# LN: 146 | 
	xmem[i0] = a0h			# LN: 146 | 
for_3:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_echoState + 16]			# LN: 146 | 
	i0 = i7 - (0x9)			# LN: 146 | 
	a1 = xmem[i0]			# LN: 146 | 
	a1 - a0			# LN: 146 | 
	if (a >= 0) jmp (for_end_3)			# LN: 146 | 
cline_146_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	i1 = i7 - (0xa)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	xmem[i1] = i0			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 149 | 
	i0 = xmem[i0]			# LN: 149 | 
	i1 = i7 - (0xa)			# LN: 149 | 
	x0 = xmem[i0]			# LN: 149 | 
	i0 = xmem[i1]			# LN: 149 | 
	i1 = i7 - (0x6)			# LN: 149 | 
	a0 = xmem[i1]			# LN: 149 | 
	x1 = xmem[i0]			# LN: 149 | 
	a0 += x0 * x1			# LN: 149 | 
	i0 = i7 - (0x6)			# LN: 149 | 
	xmem[i0] = a0h			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 150 | 
	i0 = xmem[i0]			# LN: 150 | 
	i1 = i7 - (0x7)			# LN: 150 | 
	i0 += 1			# LN: 150 | 
	xmem[i1] = i0			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 151 | 
	i0 = xmem[i0]			# LN: 151 | 
	i1 = i7 - (0xa)			# LN: 151 | 
	i0 += 1			# LN: 151 | 
	xmem[i1] = i0			# LN: 151 | 
cline_151_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	nm0 = (0xb000)			# LN: -1 | 
	i0 = (0) + (_echo_buffer)			# LN: 153 | 
	i0 += n			# LN: 153 | 
	nm0 = (0x0)			# LN: -1 | 
	i1 = i7 - (0xa)			# LN: 153 | 
	xmem[i1] = i0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 154 | 
	i1 = i7 - (0x8)			# LN: 154 | 
	i1 = xmem[i1]			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	i1 = i7 - (0x8)			# LN: 155 | 
	i0 += 1			# LN: 155 | 
	xmem[i1] = i0			# LN: 155 | 
cline_155_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	uhalfword(a1) = (0x1)			# LN: 146 | 
	a0 = a0 + a1			# LN: 146 | 
	i0 = i7 - (0x9)			# LN: 146 | 
	xmem[i0] = a0h			# LN: 146 | 
	jmp (for_3)			# LN: 146 | 
cline_146_1:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 158 | 
	i1 = i7 - (0x2)			# LN: 158 | 
	i1 = xmem[i1]			# LN: 158 | 
	a0 = xmem[i0]			# LN: 158 | 
	xmem[i1] = a0h			# LN: 158 | 
cline_158_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 159 | 
	i0 = xmem[i0]			# LN: 159 | 
	i1 = i7 - (0x2)			# LN: 159 | 
	i0 += 1			# LN: 159 | 
	xmem[i1] = i0			# LN: 159 | 
cline_159_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 160 | 
	i0 = xmem[i0]			# LN: 160 | 
	i1 = i7 - (0x1)			# LN: 160 | 
	i0 += 1			# LN: 160 | 
	xmem[i1] = i0			# LN: 160 | 
cline_160_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	uhalfword(a1) = (0x1)			# LN: 135 | 
	a0 = a0 + a1			# LN: 135 | 
	i0 = i7 - (0x5)			# LN: 135 | 
label_end_92:			# LN: 135 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 135 | 
cline_135_1:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 163 | 
	i0 = xmem[i0]			# LN: 163 | 
	xmem[_echoState + 2] = i0			# LN: 163 | 
cline_163_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 165 | 
__epilogue_224:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xa)			# LN: 165 | 
	i7 -= 1			# LN: 165 | 
	ret			# LN: 165 | 



_multitap_echo_init:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 73 | 
	i7 += 1			# LN: 73 | 
	i7 = i7 + (0x2)			# LN: 73 | 
cline_73_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 77 | 
	uhalfword(a0) = (_echo_buffer + 0)			# LN: 77 | 
	xmem[i0] = a0			# LN: 77 | 
cline_77_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	i0 = (0x1000)			# LN: 80 | 
	nop #empty cycle
label_start_do_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	do (i0), label_end_93			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	i1 = i7 - (0x1)			# LN: 83 | 
	i0 += 1			# LN: 83 | 
	xmem[i1] = i0			# LN: 83 | 
cline_83_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0x2)			# LN: 80 | 
label_end_93:			# LN: 80 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 80 | 
cline_80_1:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echo_buffer + 0)			# LN: 86 | 
	xmem[_echoState + 0] = i0			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1000)			# LN: 87 | 
	xmem[_echoState + 1] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 0]			# LN: 88 | 
	nop #empty cycle
	i0 = i0 + (0x1000)			# LN: 88 | 
	i0 -= 1			# LN: 88 | 
	xmem[_echoState + 2] = i0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 89 | 
	xmem[_echoState + 11] = a0h			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 90 | 
	xmem[_echoState + 16] = a0h			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echoState + 7)			# LN: 92 | 
	xmem[_pDelay + 0] = i0			# LN: 92 | 
cline_92_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_initial_delay + 0)			# LN: 93 | 
	xmem[_pInitDelay + 0] = i0			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echoState + 12)			# LN: 94 | 
	xmem[_pGain + 0] = i0			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_initial_gain + 0)			# LN: 95 | 
	xmem[_pInitGain + 0] = i0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echoState + 3)			# LN: 96 | 
	xmem[_readPtrPtr + 0] = i0			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 0]			# LN: 97 | 
	nop #empty cycle
	i0 = i0 + (0x1000)			# LN: 97 | 
	i0 -= 1			# LN: 97 | 
	xmem[_readPtrOffset + 0] = i0			# LN: 97 | 
cline_97_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 100 | 
	a0 = 0			# LN: 100 | 
	xmem[i0] = a0h			# LN: 100 | 
	do (0x4), label_end_94			# LN: 100 | 
cline_100_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_pInitDelay + 0]			# LN: 102 | 
	i1 = xmem[_readPtrPtr + 0]			# LN: 102 | 
	a0 = ymem[i0]			# LN: 102 | 
	a1 = xmem[_readPtrOffset + 0]			# LN: 102 | 
	a0 = a1 - a0			# LN: 102 | 
	AnyReg(i0, a0h)			# LN: 102 | 
	xmem[i1] = i0			# LN: 102 | 
	i0 = xmem[_readPtrPtr + 0]			# LN: 102 | 
	nop #empty cycle
	i0 += 1			# LN: 102 | 
	xmem[_readPtrPtr + 0] = i0			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_pInitDelay + 0]			# LN: 103 | 
	i1 = xmem[_pDelay + 0]			# LN: 103 | 
	a0 = ymem[i0]			# LN: 103 | 
	xmem[i1] = a0h			# LN: 103 | 
	i0 = xmem[_pDelay + 0]			# LN: 103 | 
	nop #empty cycle
	i0 += 1			# LN: 103 | 
	xmem[_pDelay + 0] = i0			# LN: 103 | 
	i0 = xmem[_pInitDelay + 0]			# LN: 103 | 
	nop #empty cycle
	i0 += 1			# LN: 103 | 
	xmem[_pInitDelay + 0] = i0			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_pGain + 0]			# LN: 104 | 
	i1 = xmem[_pInitGain + 0]			# LN: 104 | 
	i4 = xmem[_pGain + 0]			# LN: 104 | 
	a0 = xmem[i1]			# LN: 104 | 
	i4 += 1			# LN: 104 | 
	xmem[_pGain + 0] = i4			# LN: 104 | 
	i1 = xmem[_pInitGain + 0]			# LN: 104 | 
	ymem[i0] = a0h			# LN: 104 | 
	i1 += 1			# LN: 104 | 
	xmem[_pInitGain + 0] = i1			# LN: 104 | 
cline_104_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	uhalfword(a1) = (0x1)			# LN: 100 | 
	a0 = a0 + a1			# LN: 100 | 
	i0 = i7 - (0x2)			# LN: 100 | 
label_end_94:			# LN: 100 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 100 | 
cline_100_1:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 107 | 
__epilogue_222:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 107 | 
	i7 -= 1			# LN: 107 | 
	ret			# LN: 107 | 
