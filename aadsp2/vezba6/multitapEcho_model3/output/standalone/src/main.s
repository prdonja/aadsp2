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
	.extern _multitap_echo
	.public _multitap_echo_init
	.extern _printf
	.extern _strcpy
	.extern __div
	.xdata_ovly
S_echoState_0	.struct
_pEchoBuff	.dw (0x0)
_bufferLength	.dw (0x0)
_writePointer	.dw (0x0)
_readPointer	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
_delay	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
_input_gain	.dw (0x0)
_tap_gain	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
	.dw (0x0)
_n_tap	.dw (0x0)
	.endstruct

	.xdata_ovly
_echoState S_echoState_0

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

_main:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i2; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a2g; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a2h; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a2l; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a3g; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a3h; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = a3l; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b2g; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b2h; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b2l; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b3g; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b3h; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = b3l; i7 += 1			# LN: 158, 158 | 
	xmem[i7] = i3; i7 += 1			# LN: 158, 158 | 
	i7 = i7 + (0x200)			# LN: 158 | 
	i0 = i7 - (256 - 0)			# LN: 173 | 
	i1 = (0) + (_string_const_0)			# LN: 173 | 
	call (_strcpy)			# LN: 173 | 
	i0 = i7 - (256 - 0)			# LN: 174 | 
	call (_cl_wavread_open)			# LN: 174 | 
	AnyReg(i2, a0h)			# LN: 174 | 
	a0 = i2			# LN: 175 | 
	a0 & a0			# LN: 175 | 
	if (a != 0) jmp (else_0)			# LN: 175 | 
	i0 = (0) + (_string_const_1)			# LN: 177 | 
	call (_printf)			# LN: 177 | 
	halfword(a0) = (0xffff)			# LN: 178 | 
	jmp (__epilogue_226)			# LN: 178 | 
endif_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 184 | 
	call (_cl_wavread_getnchannels)			# LN: 184 | 
	i0 = i2			# LN: 185 | 
	a2 =+ a0			# LN: 184 | 
	call (_cl_wavread_bits_per_sample)			# LN: 185 | 
	i0 = i2			# LN: 186 | 
	a3 =+ a0			# LN: 185 | 
	call (_cl_wavread_frame_rate)			# LN: 186 | 
	i0 = i2			# LN: 187 | 
	b2 =+ a0			# LN: 186 | 
	call (_cl_wavread_number_of_frames)			# LN: 187 | 
	i0 = i7 - (512 - 0)			# LN: 192 | 
	i1 = (0) + (_string_const_2)			# LN: 192 | 
	b3 =+ a0			# LN: 187 | 
	call (_strcpy)			# LN: 192 | 
	a0 =+ a3			# LN: 193 | 
	a1 =+ a2			# LN: 193 | 
	b0 =+ b2			# LN: 193 | 
	i0 = i7 - (512 - 0)			# LN: 193 | 
	call (_cl_wavwrite_open)			# LN: 193 | 
	AnyReg(i3, a0h)			# LN: 193 | 
	a0 = i3			# LN: 194 | 
	a0 & a0			# LN: 194 | 
	if (a != 0) jmp (else_1)			# LN: 194 | 
	i0 = (0) + (_string_const_3)			# LN: 196 | 
	call (_printf)			# LN: 196 | 
	halfword(a0) = (0xffff)			# LN: 197 | 
	jmp (__epilogue_226)			# LN: 197 | 
endif_1:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	call (_multitap_echo_init)			# LN: 204 | 
	uhalfword(a1) = (0x10)			# LN: 215 | 
	a0 =+ b3			# LN: 215 | 
	call (__div)			# LN: 215 | 
	AnyReg(i0, a0h)			# LN: 217 | 
	nop #empty cycle
	do (i0), label_end_98			# LN: 217 | 
label_begin_98:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	a3 = 0			# LN: 219 | 
	do (0x10), label_end_95			# LN: 219 | 
label_begin_95:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 221 | 
	b2 = 0			# LN: 221 | 
	do (i0), label_end_94			# LN: 221 | 
label_begin_94:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 223 | 
	call (_cl_wavread_recvsample)			# LN: 223 | 
	a1 =+ b2			# LN: 224 | 
	a1 = a1 << 4			# LN: 224 | 
	i0 = a1			# LN: 224 | 
	nop #empty cycle
	i0 = i0 + (_sampleBuffer + 0)			# LN: 224 | 
	a1 = i0			# LN: 224 | 
	a1 = a1 + a3			# LN: 224 | 
	AnyReg(i0, a1h)			# LN: 224 | 
	uhalfword(a1) = (0x1)			# LN: 221 | 
	ymem[i0] = a0h			# LN: 224 | 
label_end_94:			# LN: 221 | CYCLE: 12 | RULES: ()
	b2 = b2 + a1			# LN: 221 | 
init_latch_label_3:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 219 | 
label_end_95:			# LN: 219 | CYCLE: 1 | RULES: ()
	a3 = a3 + a0			# LN: 219 | 
for_end_3:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 232 | 
	i1 = (0) + (_sampleBuffer + 0)			# LN: 232 | 
	call (_multitap_echo)			# LN: 232 | 
	a3 = 0			# LN: 235 | 
	do (0x10), label_end_97			# LN: 235 | 
label_begin_97:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 237 | 
	b2 = 0			# LN: 237 | 
	do (i0), label_end_96			# LN: 237 | 
label_begin_96:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	a0 =+ b2			# LN: 239 | 
	a0 = a0 << 4			# LN: 239 | 
	i1 = a0			# LN: 239 | 
	i0 = i3			# LN: 240 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 239 | 
	a0 = i1			# LN: 239 | 
	a0 = a0 + a3			# LN: 239 | 
	AnyReg(i1, a0h)			# LN: 239 | 
	uhalfword(a0) = (0x1)			# LN: 237 | 
	a1 = ymem[i1]; b2 = b2 + a0			# LN: 239, 237 | 
	a0 =+ a1			# LN: 239 | 
label_end_96:			# LN: 237 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 240 | 
init_latch_label_5:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 235 | 
label_end_97:			# LN: 235 | CYCLE: 1 | RULES: ()
	a3 = a3 + a0			# LN: 235 | 
init_latch_label_6:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
label_end_98:			# LN: 217 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_2:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 248 | 
	call (_cl_wavread_close)			# LN: 248 | 
	i0 = i3			# LN: 249 | 
	call (_cl_wavwrite_close)			# LN: 249 | 
	a0 = 0			# LN: 252 | 
__epilogue_226:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x200)			# LN: 253 | 
	i7 -= 1			# LN: 253 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b3l = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b3h = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b3g = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	a2g = xmem[i7]; i7 -= 1			# LN: 253, 253 | 
	i2 = xmem[i7]			# LN: 253 | 
	ret			# LN: 253 | 



_multitap_echo_init:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i2; i7 += 1			# LN: 67, 67 | 
	xmem[i7] = i3; i7 += 1			# LN: 67, 67 | 
	xmem[i7] = i6			# LN: 67 | 
	i0 = (0) + (_echo_buffer + 0)			# LN: 70 | 
	i1 = (0) + (_echoState + 7)			# LN: 72 | 
	i4 = (0) + (_initial_delay + 0)			# LN: 73 | 
	i5 = (0) + (_echoState + 12)			# LN: 74 | 
	i2 = (0) + (_initial_gain + 0)			# LN: 75 | 
	i3 = (0x1000)			# LN: 79 | 
	i6 = (0) + (_echoState + 3)			# LN: 76 | 
	do (i3), label_end_92			# LN: 79 | 
label_begin_92:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 81 | 
label_end_92:			# LN: 79 | CYCLE: 1 | RULES: ()
	xmem[i0] = a0h; i0 += 1			# LN: 81, 81 | 
for_end_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_echo_buffer + 0)			# LN: 84 | 
	xmem[_echoState + 0] = i0			# LN: 84 | 
	uhalfword(a0) = (0x1000)			# LN: 85 | 
	xmem[_echoState + 1] = a0h			# LN: 85 | 
	i0 = xmem[_echoState + 0]			# LN: 86 | 
	a0 = (0x4000)			# LN: 87 | 
	i0 = i0 + (0x1000)			# LN: 86 | 
	i0 -= 1			# LN: 86 | 
	xmem[_echoState + 2] = i0			# LN: 86 | 
	xmem[_echoState + 11] = a0h			# LN: 87 | 
	uhalfword(a0) = (0x4)			# LN: 88 | 
	xmem[_echoState + 16] = a0h			# LN: 88 | 
	do (0x4), label_end_93			# LN: 90 | 
label_begin_93:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[i4]			# LN: 92 | 
	uhalfword(a1) = (_echo_buffer + 4095)			# LN: 92 | 
	a0 = a1 - a0			# LN: 92 | 
	AnyReg(i0, a0h)			# LN: 92 | 
	xmem[i6] = i0; i6 += 1			# LN: 92, 92 | 
	a0 = xmem[i4]; i4 += 1			# LN: 93, 93 | 
	xmem[i1] = a0h; i1 += 1			# LN: 93, 93 | 
	a0 = xmem[i2]; i2 += 1			# LN: 94, 94 | 
label_end_93:			# LN: 90 | CYCLE: 8 | RULES: ()
	xmem[i5] = a0h; i5 += 1			# LN: 94, 94 | 
for_end_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i6 = xmem[i7]; i7 -= 1			# LN: 96, 96 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 96, 96 | 
	i2 = xmem[i7]			# LN: 96 | 
	ret			# LN: 96 | 
