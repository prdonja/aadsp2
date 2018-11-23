	.public _echoState
	.public _echo_buffer
	.public _initial_delay
	.public _initial_gain
	.public _initial_input_gain
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
	.ydata_ovly align 4096
_echo_buffer
	.bss (0x1000)
	.ydata_ovly
_initial_delay
	.dw  (0x400)
	.dw  (0x600)
	.dw  (0xa00)
	.dw  (0xc00)
	.ydata_ovly
_initial_gain
	.dw  (0x20000000)
	.dw  (0x10000000)
	.dw  (0x8000000)
	.dw  (0x8000000)
	.ydata_ovly
_initial_input_gain
	.dw  (0x40000000)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x73)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x65)
	.dw  (0x63)
	.dw  (0x68)
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
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x4f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x73)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x65)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x33)
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

_main:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 165 | 
	i7 += 1			# LN: 165 | 
	i7 = i7 + (0x20d)			# LN: 165 | 
	i1 = i7 - (0x1)			# LN: 165 | 
	xmem[i1] = a0h			# LN: 165 | 
	i1 = i7 - (0x2)			# LN: 165 | 
	xmem[i1] = i0			# LN: 165 | 
cline_165_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 180 | 
	i1 = (0) + (_string_const_0)			# LN: 180 | 
	call (_strcpy)			# LN: 180 | 
cline_180_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 181 | 
	call (_cl_wavread_open)			# LN: 181 | 
	AnyReg(i0, a0h)			# LN: 181 | 
	i1 = i7 - (0x103)			# LN: 181 | 
	xmem[i1] = i0			# LN: 181 | 
cline_181_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 182 | 
	a0 = xmem[i0]			# LN: 182 | 
	a0 & a0			# LN: 182 | 
	if (a != 0) jmp (else_0)			# LN: 182 | 
cline_182_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 184 | 
	call (_printf)			# LN: 184 | 
cline_184_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 185 | 
	jmp (__epilogue_226)			# LN: 185 | 
cline_185_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	call (_cl_wavread_getnchannels)			# LN: 191 | 
	i0 = i7 - (0x104)			# LN: 191 | 
	xmem[i0] = a0h			# LN: 191 | 
cline_191_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	call (_cl_wavread_bits_per_sample)			# LN: 192 | 
	i0 = i7 - (0x105)			# LN: 192 | 
	xmem[i0] = a0h			# LN: 192 | 
cline_192_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 193 | 
	i0 = xmem[i0]			# LN: 193 | 
	call (_cl_wavread_frame_rate)			# LN: 193 | 
	i0 = i7 - (0x106)			# LN: 193 | 
	xmem[i0] = a0h			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 194 | 
	i0 = xmem[i0]			# LN: 194 | 
	call (_cl_wavread_number_of_frames)			# LN: 194 | 
	i0 = i7 - (0x107)			# LN: 194 | 
	xmem[i0] = a0h			# LN: 194 | 
cline_194_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 199 | 
	i1 = (0) + (_string_const_2)			# LN: 199 | 
	call (_strcpy)			# LN: 199 | 
cline_199_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x105)			# LN: 200 | 
	a0 = xmem[i1]			# LN: 200 | 
	i1 = i7 - (0x104)			# LN: 200 | 
	a1 = xmem[i1]			# LN: 200 | 
	i1 = i7 - (0x106)			# LN: 200 | 
	b0 = xmem[i1]			# LN: 200 | 
	i0 = i7 - (519 - 0)			# LN: 200 | 
	call (_cl_wavwrite_open)			# LN: 200 | 
	AnyReg(i0, a0h)			# LN: 200 | 
	i1 = i7 - (0x208)			# LN: 200 | 
	xmem[i1] = i0			# LN: 200 | 
cline_200_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 201 | 
	a0 = xmem[i0]			# LN: 201 | 
	a0 & a0			# LN: 201 | 
	if (a != 0) jmp (else_1)			# LN: 201 | 
cline_201_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 203 | 
	call (_printf)			# LN: 203 | 
cline_203_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 204 | 
	jmp (__epilogue_226)			# LN: 204 | 
cline_204_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	call (_multitap_echo_init)			# LN: 211 | 
cline_211_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 222 | 
	a0 = xmem[i0]			# LN: 222 | 
	uhalfword(a1) = (0x10)			# LN: 222 | 
	call (__div)			# LN: 222 | 
	i0 = i7 - (0x209)			# LN: 222 | 
	xmem[i0] = a0h			# LN: 222 | 
cline_222_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 224 | 
	a0 = 0			# LN: 224 | 
	xmem[i0] = a0h			# LN: 224 | 
for_3:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 224 | 
	a0 = xmem[i0]			# LN: 224 | 
	i0 = i7 - (0x209)			# LN: 224 | 
	a1 = xmem[i0]			# LN: 224 | 
	a0 - a1			# LN: 224 | 
	if (a >= 0) jmp (for_end_3)			# LN: 224 | 
cline_224_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 226 | 
	a0 = 0			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
	do (0x10), label_end_94			# LN: 226 | 
cline_226_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 228 | 
	a0 = 0			# LN: 228 | 
	xmem[i0] = a0h			# LN: 228 | 
for_5:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 228 | 
	a0 = xmem[i0]			# LN: 228 | 
	i0 = i7 - (0x104)			# LN: 228 | 
	a1 = xmem[i0]			# LN: 228 | 
	a0 - a1			# LN: 228 | 
	if (a >= 0) jmp (for_end_5)			# LN: 228 | 
cline_228_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 230 | 
	i0 = xmem[i0]			# LN: 230 | 
	call (_cl_wavread_recvsample)			# LN: 230 | 
	i0 = i7 - (0x20d)			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
cline_230_0:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 231 | 
	a0 = xmem[i0]			# LN: 231 | 
	a0 = a0 << 4			# LN: 231 | 
	i0 = a0			# LN: 231 | 
	i1 = i7 - (0x20b)			# LN: 231 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 231 | 
	a0 = xmem[i1]			# LN: 231 | 
	a1 = i0			# LN: 231 | 
	a0 = a1 + a0			# LN: 231 | 
	AnyReg(i0, a0h)			# LN: 231 | 
	i1 = i7 - (0x20d)			# LN: 231 | 
	a0 = xmem[i1]			# LN: 231 | 
	ymem[i0] = a0h			# LN: 231 | 
cline_231_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 228 | 
	a0 = xmem[i0]			# LN: 228 | 
	uhalfword(a1) = (0x1)			# LN: 228 | 
	a0 = a0 + a1			# LN: 228 | 
	i0 = i7 - (0x20c)			# LN: 228 | 
	xmem[i0] = a0h			# LN: 228 | 
	jmp (for_5)			# LN: 228 | 
cline_228_1:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 226 | 
	a0 = xmem[i0]			# LN: 226 | 
	uhalfword(a1) = (0x1)			# LN: 226 | 
	a0 = a0 + a1			# LN: 226 | 
	i0 = i7 - (0x20b)			# LN: 226 | 
label_end_94:			# LN: 226 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 226 | 
cline_226_1:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 239 | 
	i1 = (0) + (_sampleBuffer + 0)			# LN: 239 | 
	call (_multitap_echo)			# LN: 239 | 
cline_239_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 242 | 
	a0 = 0			# LN: 242 | 
	xmem[i0] = a0h			# LN: 242 | 
	do (0x10), label_end_95			# LN: 242 | 
cline_242_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = 0			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
for_7:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = xmem[i0]			# LN: 244 | 
	i0 = i7 - (0x104)			# LN: 244 | 
	a1 = xmem[i0]			# LN: 244 | 
	a0 - a1			# LN: 244 | 
	if (a >= 0) jmp (for_end_7)			# LN: 244 | 
cline_244_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 246 | 
	a0 = xmem[i0]			# LN: 246 | 
	a0 = a0 << 4			# LN: 246 | 
	i0 = a0			# LN: 246 | 
	i1 = i7 - (0x20b)			# LN: 246 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 246 | 
	a0 = xmem[i1]			# LN: 246 | 
	a1 = i0			# LN: 246 | 
	a0 = a1 + a0			# LN: 246 | 
	AnyReg(i0, a0h)			# LN: 246 | 
	i1 = i7 - (0x20d)			# LN: 246 | 
	a0 = ymem[i0]			# LN: 246 | 
	xmem[i1] = a0h			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	i1 = i7 - (0x20d)			# LN: 247 | 
	a0 = xmem[i1]			# LN: 247 | 
	call (_cl_wavwrite_sendsample)			# LN: 247 | 
cline_247_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 244 | 
	a0 = xmem[i0]			# LN: 244 | 
	uhalfword(a1) = (0x1)			# LN: 244 | 
	a0 = a0 + a1			# LN: 244 | 
	i0 = i7 - (0x20c)			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
	jmp (for_7)			# LN: 244 | 
cline_244_1:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 242 | 
	a0 = xmem[i0]			# LN: 242 | 
	uhalfword(a1) = (0x1)			# LN: 242 | 
	a0 = a0 + a1			# LN: 242 | 
	i0 = i7 - (0x20b)			# LN: 242 | 
label_end_95:			# LN: 242 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 242 | 
cline_242_1:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 224 | 
	a0 = xmem[i0]			# LN: 224 | 
	uhalfword(a1) = (0x1)			# LN: 224 | 
	a0 = a0 + a1			# LN: 224 | 
	i0 = i7 - (0x20a)			# LN: 224 | 
	xmem[i0] = a0h			# LN: 224 | 
	jmp (for_3)			# LN: 224 | 
cline_224_1:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	call (_cl_wavread_close)			# LN: 255 | 
cline_255_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	call (_cl_wavwrite_close)			# LN: 256 | 
cline_256_0:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 259 | 
	jmp (__epilogue_226)			# LN: 259 | 
cline_259_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
__epilogue_226:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 260 | 
	i7 -= 1			# LN: 260 | 
	ret			# LN: 260 | 



_multitap_echo:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 113 | 
	i7 += 1			# LN: 113 | 
	i7 = i7 + (0xb)			# LN: 113 | 
	i4 = i7 - (0x1)			# LN: 113 | 
	xmem[i4] = i0			# LN: 113 | 
	i0 = i7 - (0x2)			# LN: 113 | 
	xmem[i0] = i1			# LN: 113 | 
cline_113_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 116 | 
	i0 = xmem[i0]			# LN: 116 | 
	i1 = i7 - (0x3)			# LN: 116 | 
	i0 = i0 + (0x10)			# LN: 116 | 
	xmem[i1] = i0			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	i1 = i7 - (0x4)			# LN: 117 | 
	i0 = i0 + (0x10)			# LN: 117 | 
	xmem[i1] = i0			# LN: 117 | 
cline_117_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 2]			# LN: 118 | 
	i1 = i7 - (0x5)			# LN: 118 | 
	xmem[i1] = i0			# LN: 118 | 
cline_118_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 0]			# LN: 119 | 
	a0 = xmem[_echoState + 1]			# LN: 119 | 
	a1 = i0			# LN: 119 | 
	a0 = a1 + a0			# LN: 119 | 
	AnyReg(i0, a0h)			# LN: 119 | 
	i1 = i7 - (0x6)			# LN: 119 | 
	i0 -= 1			# LN: 119 | 
	xmem[i1] = i0			# LN: 119 | 
cline_119_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
while_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 121 | 
	a0 = xmem[i0]			# LN: 121 | 
	i0 = i7 - (0x3)			# LN: 121 | 
	a1 = xmem[i0]			# LN: 121 | 
	a0 = a0 - a1			# LN: 121 | 
	if (a < 0) jmp (cline_121_0)			# LN: 121 | 
	i0 = i7 - (0x2)			# LN: 121 | 
	a0 = xmem[i0]			# LN: 121 | 
	i0 = i7 - (0x4)			# LN: 121 | 
	a1 = xmem[i0]			# LN: 121 | 
	a0 = a0 - a1			# LN: 121 | 
	if (a >= 0) jmp (while_end_0)			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 123 | 
	i0 = xmem[i0]			# LN: 123 | 
	x0 = xmem[_echoState + 11]			# LN: 123 | 
	x1 = ymem[i0]			# LN: 123 | 
	a0 = x1 * x0			# LN: 123 | 
	i0 = i7 - (0x7)			# LN: 123 | 
	xmem[i0] = a0			# LN: 123 | 
cline_123_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 124 | 
	uhalfword(a0) = (_echoState + 12)			# LN: 124 | 
	xmem[i0] = a0			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 125 | 
	uhalfword(a0) = (_echoState + 3)			# LN: 125 | 
	xmem[i0] = a0			# LN: 125 | 
cline_125_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	i1 = i7 - (0x5)			# LN: 127 | 
	i1 = xmem[i1]			# LN: 127 | 
	a0 = ymem[i0]			# LN: 127 | 
	xmem[i1] = a0h			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 128 | 
	i0 = xmem[i0]			# LN: 128 | 
	i1 = i7 - (0x5)			# LN: 128 | 
	i0 += 1			# LN: 128 | 
	xmem[i1] = i0			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	i0 = i7 - (0x6)			# LN: 129 | 
	a1 = xmem[i0]			# LN: 129 | 
	a0 = a0 - a1			# LN: 129 | 
	if (a <= 0) jmp (elsecondition_0)			# LN: 129 | 
	i0 = xmem[_echoState + 0]			# LN: 129 | 
	jmp (endcondition_0)			# LN: 129 | 
elsecondition_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
endcondition_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x5)			# LN: 129 | 
	xmem[i1] = i0			# LN: 129 | 
cline_129_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 131 | 
	a0 = 0			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
	do (0x4), label_end_92			# LN: 131 | 
cline_131_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	i1 = i7 - (0xb)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	xmem[i1] = i0			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 134 | 
	i0 = xmem[i0]			# LN: 134 | 
	i1 = i7 - (0xb)			# LN: 134 | 
	x0 = xmem[i0]			# LN: 134 | 
	i0 = xmem[i1]			# LN: 134 | 
	i1 = i7 - (0x7)			# LN: 134 | 
	a0 = xmem[i1]			# LN: 134 | 
	x1 = xmem[i0]			# LN: 134 | 
	a0 += x0 * x1			# LN: 134 | 
	i0 = i7 - (0x7)			# LN: 134 | 
	xmem[i0] = a0h			# LN: 134 | 
	i0 = i7 - (0x8)			# LN: 134 | 
	i0 = xmem[i0]			# LN: 134 | 
	i1 = i7 - (0x8)			# LN: 134 | 
	i0 += 1			# LN: 134 | 
	xmem[i1] = i0			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 135 | 
	i0 = xmem[i0]			# LN: 135 | 
	i1 = i7 - (0xb)			# LN: 135 | 
	i0 += 1			# LN: 135 | 
	xmem[i1] = i0			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 136 | 
	a0 = xmem[i0]			# LN: 136 | 
	i0 = i7 - (0x6)			# LN: 136 | 
	a1 = xmem[i0]			# LN: 136 | 
	a0 - a1			# LN: 136 | 
	if (a <= 0) jmp (elsecondition_1)			# LN: 136 | 
	i0 = xmem[_echoState + 0]			# LN: 136 | 
	jmp (endcondition_1)			# LN: 136 | 
elsecondition_1:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 136 | 
	i0 = xmem[i0]			# LN: 136 | 
endcondition_1:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0xb)			# LN: 136 | 
	xmem[i1] = i0			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 137 | 
	a0 = xmem[i0]			# LN: 137 | 
	i0 = i7 - (0x9)			# LN: 137 | 
	i0 = xmem[i0]			# LN: 137 | 
	AnyReg(i1, a0h)			# LN: 137 | 
	xmem[i0] = i1			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 138 | 
	i0 = xmem[i0]			# LN: 138 | 
	i1 = i7 - (0x9)			# LN: 138 | 
	i0 += 1			# LN: 138 | 
	xmem[i1] = i0			# LN: 138 | 
cline_138_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 131 | 
	a0 = xmem[i0]			# LN: 131 | 
	uhalfword(a1) = (0x1)			# LN: 131 | 
	a0 = a0 + a1			# LN: 131 | 
	i0 = i7 - (0xa)			# LN: 131 | 
label_end_92:			# LN: 131 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 131 | 
cline_131_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 141 | 
	i1 = i7 - (0x2)			# LN: 141 | 
	i1 = xmem[i1]			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	ymem[i1] = a0h			# LN: 141 | 
cline_141_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 142 | 
	i0 = xmem[i0]			# LN: 142 | 
	i1 = i7 - (0x2)			# LN: 142 | 
	i0 += 1			# LN: 142 | 
	xmem[i1] = i0			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 143 | 
	i0 = xmem[i0]			# LN: 143 | 
	i1 = i7 - (0x1)			# LN: 143 | 
	i0 += 1			# LN: 143 | 
	xmem[i1] = i0			# LN: 143 | 
cline_143_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	jmp (while_0)			# LN: 121 | 
cline_121_1:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
while_end_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	xmem[_echoState + 2] = i0			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 149 | 
__epilogue_224:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xb)			# LN: 149 | 
	i7 -= 1			# LN: 149 | 
	ret			# LN: 149 | 



_multitap_echo_init:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 66 | 
	i7 += 1			# LN: 66 | 
	i7 = i7 + (0x8)			# LN: 66 | 
cline_66_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 69 | 
	uhalfword(a0) = (_echo_buffer + 0)			# LN: 69 | 
	xmem[i0] = a0			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 71 | 
	uhalfword(a0) = (_echoState + 7)			# LN: 71 | 
	xmem[i0] = a0			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 72 | 
	uhalfword(a0) = (_initial_delay + 0)			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 73 | 
	uhalfword(a0) = (_echoState + 12)			# LN: 73 | 
	xmem[i0] = a0			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 74 | 
	uhalfword(a0) = (_initial_gain + 0)			# LN: 74 | 
	xmem[i0] = a0			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 75 | 
	uhalfword(a0) = (_echoState + 3)			# LN: 75 | 
	xmem[i0] = a0			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 76 | 
	uhalfword(a0) = (_echo_buffer + 4095)			# LN: 76 | 
	xmem[i0] = a0			# LN: 76 | 
cline_76_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_0)			# LN: 78 | 
for_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
dummy_init_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 78 | 
	a0 = xmem[i0]			# LN: 78 | 
	AnyReg(i0, a0h)			# LN: 78 | 
	a0 = i0			# LN: 78 | 
	uhalfword(a1) = (_echo_buffer + 4095)			# LN: 78 | 
	a0 - a1			# LN: 78 | 
	if (a > 0) jmp (for_end_0)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 78 | 
	i0 = xmem[i0]			# LN: 78 | 
	i1 = i7 - (0x1)			# LN: 78 | 
	i0 += 1			# LN: 78 | 
	xmem[i1] = i0			# LN: 78 | 
	jmp (for_0)			# LN: 78 | 
cline_78_1:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echo_buffer + 0)			# LN: 83 | 
	xmem[_echoState + 0] = i0			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1000)			# LN: 84 | 
	xmem[_echoState + 1] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_echoState + 0]			# LN: 85 | 
	nop #empty cycle
	i0 = i0 + (0x1000)			# LN: 85 | 
	i0 -= 1			# LN: 85 | 
	xmem[_echoState + 2] = i0			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 86 | 
	xmem[_echoState + 11] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 87 | 
	xmem[_echoState + 16] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 89 | 
	a0 = 0			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
	do (0x4), label_end_93			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 91 | 
	i1 = i7 - (0x3)			# LN: 91 | 
	i1 = xmem[i1]			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	a0 = xmem[i1]			# LN: 91 | 
	uhalfword(a1) = (_echo_buffer + 4095)			# LN: 91 | 
	a0 = a1 - a0			# LN: 91 | 
	AnyReg(i1, a0h)			# LN: 91 | 
	xmem[i0] = i1			# LN: 91 | 
	i0 = i7 - (0x6)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0x6)			# LN: 91 | 
	i0 += 1			# LN: 91 | 
	xmem[i1] = i0			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 92 | 
	i0 = xmem[i0]			# LN: 92 | 
	i1 = i7 - (0x3)			# LN: 92 | 
	i1 = xmem[i1]			# LN: 92 | 
	i4 = i7 - (0x2)			# LN: 92 | 
	i4 = xmem[i4]			# LN: 92 | 
	a0 = xmem[i1]			# LN: 92 | 
	i4 += 1			# LN: 92 | 
	i1 = i7 - (0x2)			# LN: 92 | 
	xmem[i1] = i4			# LN: 92 | 
	i1 = i7 - (0x3)			# LN: 92 | 
	i1 = xmem[i1]			# LN: 92 | 
	ymem[i0] = a0h			# LN: 92 | 
	i1 += 1			# LN: 92 | 
	i0 = i7 - (0x3)			# LN: 92 | 
	xmem[i0] = i1			# LN: 92 | 
cline_92_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	i1 = i7 - (0x5)			# LN: 93 | 
	i1 = xmem[i1]			# LN: 93 | 
	i4 = i7 - (0x4)			# LN: 93 | 
	i4 = xmem[i4]			# LN: 93 | 
	a0 = ymem[i1]			# LN: 93 | 
	i4 += 1			# LN: 93 | 
	i1 = i7 - (0x4)			# LN: 93 | 
	xmem[i1] = i4			# LN: 93 | 
	i1 = i7 - (0x5)			# LN: 93 | 
	i1 = xmem[i1]			# LN: 93 | 
	ymem[i0] = a0h			# LN: 93 | 
	i1 += 1			# LN: 93 | 
	i0 = i7 - (0x5)			# LN: 93 | 
	xmem[i0] = i1			# LN: 93 | 
cline_93_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	uhalfword(a1) = (0x1)			# LN: 89 | 
	a0 = a0 + a1			# LN: 89 | 
	i0 = i7 - (0x8)			# LN: 89 | 
label_end_93:			# LN: 89 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 89 | 
cline_89_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 95 | 
__epilogue_222:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 95 | 
	i7 -= 1			# LN: 95 | 
	ret			# LN: 95 | 
