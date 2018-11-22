	.public _FS
	.public _SplitLoPassCoeff
	.public _pcm
	.public _sampleBuffer
	.public _state
	.extern _fclose
	.extern _fconfig
	.extern _fopen
	.extern _fread
	.extern _fwrite
	.public _lowpass_rt
	.public _main
	.xdata_ovly
_FS
	.bsc (0x1), 0x00000000
	.xdata_ovly
_SplitLoPassCoeff
	.dw  (0x888a7b)
	.dw  (0x0)
	.dw  (0x3a006b5c)
	.dw  (0x0)
	.dw  (0x211dabd8)
	.dw  (0xcacadb6c)
	.dw  (0x74a4ac4f)
	.dw  (0x436ea16a)
	.dw  (0x41ad76ca)
	.dw  (0xc8efde8c)
	.dw  (0x767d7816)
	.dw  (0x40bad0de)
	.dw  (0x4053d5f5)
	.dw  (0xc5fb3e43)
	.dw  (0x796e55f2)
	.dw  (0x3dd73cdd)
	.dw  (0x3ee25ccc)
	.dw  (0xc22463c6)
	.dw  (0x7d407528)
	.dw  (0x3c0f6f2b)
	.dw  (0x3dfeaa9d)
	.dw  (0x4dcc5b)
	.dw  (0x0)
	.dw  (0x3b86f7ed)
	.dw  (0x0)
	.dw  (0x211dabd8)
	.dw  (0xc7fdd974)
	.dw  (0x77b41689)
	.dw  (0x436ea16a)
	.dw  (0x41ad76ca)
	.dw  (0xc690360b)
	.dw  (0x79224bf4)
	.dw  (0x40bad0de)
	.dw  (0x4053d5f5)
	.dw  (0xc46bf56c)
	.dw  (0x7b43cae6)
	.dw  (0x3dd73cdd)
	.dw  (0x3ee25ccc)
	.dw  (0xc190432e)
	.dw  (0x7e1d8dc7)
	.dw  (0x3c0f6f2b)
	.dw  (0x3dfeaa9d)
	.dw  (0x430672)
	.dw  (0x0)
	.dw  (0x3bc4f06e)
	.dw  (0x0)
	.dw  (0x211dabd8)
	.dw  (0xc75a0214)
	.dw  (0x7862d818)
	.dw  (0x436ea16a)
	.dw  (0x41ad76ca)
	.dw  (0xc5eec41f)
	.dw  (0x79d2194a)
	.dw  (0x40bad0de)
	.dw  (0x4053d5f5)
	.dw  (0xc41f0db8)
	.dw  (0x7b9cf6de)
	.dw  (0x3dd73cdd)
	.dw  (0x3ee25ccc)
	.dw  (0xc1707648)
	.dw  (0x7e49f119)
	.dw  (0x3c0f6f2b)
	.dw  (0x3dfeaa9d)
	.xdata_ovly
_pcm
	.bsc (0x40), 0x00000000
	.xdata_ovly
_sampleBuffer
	.bsc (0x80), 0x00000000
	.xdata_ovly
_state
	.bsc (0x100), 0x00000000
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x6c)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x2e)
	.dw  (0x70)
	.dw  (0x63)
	.dw  (0x6d)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x77)
	.dw  (0x2b)
	.dw  (0x62)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2f)
	.dw  (0x70)
	.dw  (0x63)
	.dw  (0x6d)
	.dw  (0x2f)
	.dw  (0x2f)
	.dw  (0x77)
	.dw  (0x68)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x4e)
	.dw  (0x6f)
	.dw  (0x69)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x2e)
	.dw  (0x70)
	.dw  (0x63)
	.dw  (0x6d)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x72)
	.dw  (0x2b)
	.dw  (0x62)
	.dw  (0x0)
	.code_ovly



_lowpass_rt:
	xmem[i7] = i7
	i7 += 1
	xmem[i7] = i2
	i7 = i7 + (0x17)
	i2 = i7 - (0x1)
	xmem[i2] = i0
	i0 = i7 - (0x2)
	xmem[i0] = i1
	i0 = i7 - (0x3)
	xmem[i0] = i4
	i0 = i7 - (0x4)
	xmem[i0] = i5
cline_53_0:
	i0 = i7 - (0x4)
	i0 = xmem[i0]
	i1 = i7 - (0x5)
	a0 = xmem[i0]
	xmem[i1] = a0h
cline_61_0:
	i0 = i7 - (0x4)
	i0 = xmem[i0]
	i1 = i7 - (0x6)
	i0 += 1
	xmem[i1] = i0
cline_62_0:
	i0 = i7 - (0x3)
	a0 = xmem[i0]
	i0 = i7 - (0x7)
	xmem[i0] = a0
cline_63_0:
	i0 = i7 - (0x8)
	a0 = 0
	xmem[i0] = a0h
	do (0x5), label_end_93
cline_65_0:
label_begin_93:
	i0 = i7 - (0x7)
	a0 = xmem[i0]
	i0 = i7 - (0x9)
	xmem[i0] = a0
cline_67_0:
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0xa)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0x6)
	i0 += 1
	xmem[i1] = i0
cline_69_0:
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0xb)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0x6)
	i0 += 1
	xmem[i1] = i0
cline_70_0:
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0xc)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0x6)
	i0 += 1
	xmem[i1] = i0
cline_71_0:
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0xd)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x6)
	i0 = xmem[i0]
	i1 = i7 - (0x6)
	i0 += 1
	xmem[i1] = i0
cline_72_0:
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0xe)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0x9)
	i0 += 1
	xmem[i1] = i0
cline_75_0:
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0xf)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0x9)
	i0 += 1
	xmem[i1] = i0
cline_76_0:
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0x10)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0x9)
	i0 += 1
	xmem[i1] = i0
cline_77_0:
	i0 = i7 - (0x9)
	i0 = xmem[i0]
	i1 = i7 - (0x11)
	a0 = xmem[i0]
	xmem[i1] = a0h
cline_78_0:
	i0 = i7 - (0x8)
	a0 = xmem[i0]
	a0 & a0
	if (a <= 0) jmp (elsecondition_0)
	i0 = i7 - (0x2)
	i0 = xmem[i0]
	jmp (endcondition_0)
elsecondition_0:
	i0 = i7 - (0x1)
	i0 = xmem[i0]
endcondition_0:
	i1 = i7 - (0x12)
	xmem[i1] = i0
cline_83_0:
	i0 = i7 - (0x2)
	a0 = xmem[i0]
	i0 = i7 - (0x13)
	xmem[i0] = a0
cline_84_0:
	i0 = i7 - (0x14)
	a0 = 0
	xmem[i0] = a0h
	do (0x20), label_end_92
cline_86_0:
label_begin_92:
	i0 = i7 - (0xe)
	x0 = xmem[i0]
	i0 = i7 - (0xd)
	x1 = xmem[i0]
	a0 = x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_88_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 = a0 << 1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_89_0:
	i0 = i7 - (0xf)
	x0 = xmem[i0]
	i0 = i7 - (0xc)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_90_0:
	i0 = i7 - (0x10)
	x0 = xmem[i0]
	i0 = i7 - (0xb)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_91_0:
	i0 = i7 - (0x11)
	x0 = xmem[i0]
	i0 = i7 - (0xa)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_92_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 = a0 << 1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_93_0:
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0x17)
	a0 = xmem[i0]
	a1g = xmem[i1]; i1 += 1
	a1h = xmem[i1]; i1 += 1
	a1l = xmem[i1]
	a0 = a0 + a1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_94_0:
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0xf)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0x12)
	i0 += 1
	xmem[i1] = i0
cline_96_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	i0 = i7 - (0x11)
	xmem[i0] = a0
cline_97_0:
	i0 = i7 - (0x13)
	i0 = xmem[i0]
	i1 = i7 - (0x17)
	a0g = xmem[i1]; i1 += 1
	a0h = xmem[i1]; i1 += 1
	a0l = xmem[i1]
	i1 = i7 - (0x5)
	x1 = xmem[i1]; x0 = a0
	a0 = x0 * x1
	xmem[i0] = a0
	i0 = i7 - (0x13)
	i0 = xmem[i0]
	i1 = i7 - (0x13)
	i0 += 1
	xmem[i1] = i0
cline_102_0:
	i0 = i7 - (0xf)
	x0 = xmem[i0]
	i0 = i7 - (0xd)
	x1 = xmem[i0]
	a0 = x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_104_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 = a0 << 1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_105_0:
	i0 = i7 - (0xe)
	x0 = xmem[i0]
	i0 = i7 - (0xc)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_106_0:
	i0 = i7 - (0x11)
	x0 = xmem[i0]
	i0 = i7 - (0xb)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_107_0:
	i0 = i7 - (0x10)
	x0 = xmem[i0]
	i0 = i7 - (0xa)
	x1 = xmem[i0]
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 += x0 * x1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_108_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	a0 = a0 << 1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_109_0:
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0x17)
	a0 = xmem[i0]
	a1g = xmem[i1]; i1 += 1
	a1h = xmem[i1]; i1 += 1
	a1l = xmem[i1]
	a0 = a0 + a1
	i0 = i7 - (0x17)
	xmem[i0] = a0g; i0 += 1
	xmem[i0] = a0h; i0 += 1
	xmem[i0] = a0l
cline_110_0:
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0xe)
	a0 = xmem[i0]
	xmem[i1] = a0h
	i0 = i7 - (0x12)
	i0 = xmem[i0]
	i1 = i7 - (0x12)
	i0 += 1
	xmem[i1] = i0
cline_112_0:
	i0 = i7 - (0x17)
	a0g = xmem[i0]; i0 += 1
	a0h = xmem[i0]; i0 += 1
	a0l = xmem[i0]
	i0 = i7 - (0x10)
	xmem[i0] = a0
cline_113_0:
	i0 = i7 - (0x13)
	i0 = xmem[i0]
	i1 = i7 - (0x17)
	a0g = xmem[i1]; i1 += 1
	a0h = xmem[i1]; i1 += 1
	a0l = xmem[i1]
	i1 = i7 - (0x5)
	x1 = xmem[i1]; x0 = a0
	a0 = x0 * x1
	xmem[i0] = a0
	i0 = i7 - (0x13)
	i0 = xmem[i0]
	i1 = i7 - (0x13)
	i0 += 1
	xmem[i1] = i0
cline_118_0:
init_latch_label_0:
	i0 = i7 - (0x14)
	a0 = xmem[i0]
	uhalfword(a1) = (0x2)
	a0 = a0 + a1
	i0 = i7 - (0x14)
label_end_92:
	xmem[i0] = a0h
cline_86_1:
for_end_1:
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0xe)
	a0 = xmem[i1]
	xmem[i0] = a0h
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x7)
	i0 += 1
	xmem[i1] = i0
cline_122_0:
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0xf)
	a0 = xmem[i1]
	xmem[i0] = a0h
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x7)
	i0 += 1
	xmem[i1] = i0
cline_123_0:
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x10)
	a0 = xmem[i1]
	xmem[i0] = a0h
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x7)
	i0 += 1
	xmem[i1] = i0
cline_124_0:
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x11)
	a0 = xmem[i1]
	xmem[i0] = a0h
	i0 = i7 - (0x7)
	i0 = xmem[i0]
	i1 = i7 - (0x7)
	i0 += 1
	xmem[i1] = i0
cline_125_0:
init_latch_label_1:
	i0 = i7 - (0x8)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x8)
label_end_93:
	xmem[i0] = a0h
cline_65_1:
for_end_0:
	jmp (__epilogue_158)
__epilogue_158:
	i7 = i7 - (0x17)
	i2 = xmem[i7]; i7 -= 1
	ret



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

_main:
	xmem[i7] = i7
	i7 += 1
	i7 = i7 + (0x7)
cline_130_0:
	i0 = i7 - (0x1)
	uhalfword(a0) = (0x1)
	xmem[i0] = a0h
cline_150_0:
	i0 = (0) + (_string_const_0)
	i1 = (0) + (_string_const_1)
	call (_fopen)
	AnyReg(i0, a0h)
	i1 = i7 - (0x2)
	xmem[i1] = i0
cline_152_0:
	i0 = (0) + (_string_const_2)
	i1 = (0) + (_string_const_3)
	call (_fopen)
	AnyReg(i0, a0h)
	i1 = i7 - (0x3)
	xmem[i1] = i0
cline_153_0:
	uhalfword(a0) = (0x13)
	i0 = i7 - (0x2)
	i0 = xmem[i0]
	call (_fconfig)
cline_155_0:
	uhalfword(a0) = (0x13)
	i0 = i7 - (0x3)
	i0 = xmem[i0]
	call (_fconfig)
cline_156_0:
	i0 = i7 - (0x4)
	a0 = 0
	xmem[i0] = a0h
	i0 = (0) + (_state + 0)
	do (0x100), label_end_94
cline_161_0:
label_begin_94:
	a0 = 0
	xmem[i0] = a0h
cline_162_0:
init_latch_label_2:
	i1 = i7 - (0x4)
	a0 = xmem[i1]
	uhalfword(a1) = (0x1)
	i0 += 1; a0 = a0 + a1
	i1 = i7 - (0x4)
label_end_94:
	xmem[i1] = a0h
cline_161_1:
for_end_2:
	i0 = i7 - (0x5)
	a0 = 0
	xmem[i0] = a0h
	do (0x2ee), label_end_99
cline_164_0:
label_begin_99:
	i0 = i7 - (0x4)
	a0 = 0
	xmem[i0] = a0h
	do (0x40), label_end_96
cline_166_0:
label_begin_96:
	i1 = i7 - (0x1)
	a0 = xmem[i1]
	a1 =+ a0
	uhalfword(a0) = (0x1)
	i1 = i7 - (0x3)
	i1 = xmem[i1]
	i0 = i7 - (0x6)
	call (_fread)
cline_168_0:
	i0 = i7 - (0x4)
	a0 = xmem[i0]
	i0 = a0
	i1 = i7 - (0x6)
	i0 = i0 + (_pcm + 0)
	a0 = xmem[i1]
	xmem[i0] = a0h
cline_172_0:
	i0 = i7 - (0x7)
	a0 = 0
	xmem[i0] = a0h
	do (0x6), label_end_95
cline_173_0:
label_begin_95:
	i0 = i7 - (0x4)
	a0 = xmem[i0]
	i0 = a0
	i1 = i7 - (0x4)
	a0 = xmem[i1]
	i1 = a0
	i0 = i0 + (_pcm + 0)
	i1 = i1 + (_pcm + 0)
	a0 = xmem[i1]
	a0 = a0 >> 1
	xmem[i0] = a0h
cline_174_0:
init_latch_label_3:
	i0 = i7 - (0x7)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x7)
label_end_95:
	xmem[i0] = a0h
cline_173_1:
init_latch_label_4:
for_end_5:
	i0 = i7 - (0x4)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x4)
label_end_96:
	xmem[i0] = a0h
cline_166_1:
for_end_4:
	i0 = (0) + (_pcm)
	i1 = (0) + (_pcm)
	i4 = (0) + (_state)
	i5 = (0) + (_SplitLoPassCoeff + 42)
	call (_lowpass_rt)
cline_179_0:
	i0 = i7 - (0x4)
	a0 = 0
	xmem[i0] = a0h
	do (0x40), label_end_98
cline_181_0:
label_begin_98:
	i0 = i7 - (0x4)
	a0 = xmem[i0]
	i0 = a0
	i1 = i7 - (0x6)
	i0 = i0 + (_pcm + 0)
	a0 = xmem[i0]
	xmem[i1] = a0h
cline_190_0:
	i0 = i7 - (0x7)
	a0 = 0
	xmem[i0] = a0h
	do (0x6), label_end_97
cline_191_0:
label_begin_97:
	i0 = i7 - (0x6)
	a0 = xmem[i0]
	a0 = a0 << 1
	i0 = i7 - (0x6)
	xmem[i0] = a0h
cline_192_0:
init_latch_label_5:
	i0 = i7 - (0x7)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x7)
label_end_97:
	xmem[i0] = a0h
cline_191_1:
for_end_7:
	i1 = i7 - (0x1)
	a0 = xmem[i1]
	a1 =+ a0
	uhalfword(a0) = (0x1)
	i1 = i7 - (0x2)
	i1 = xmem[i1]
	i0 = i7 - (0x6)
	call (_fwrite)
cline_194_0:
init_latch_label_6:
	i0 = i7 - (0x4)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x4)
label_end_98:
	xmem[i0] = a0h
cline_181_1:
init_latch_label_7:
for_end_6:
	i0 = i7 - (0x5)
	a0 = xmem[i0]
	uhalfword(a1) = (0x1)
	a0 = a0 + a1
	i0 = i7 - (0x5)
label_end_99:
	xmem[i0] = a0h
cline_164_1:
for_end_3:
	a0 = (0x4000)
	xmem[_sampleBuffer + 0] = a0h
cline_197_0:
	i0 = i7 - (0x3)
	i0 = xmem[i0]
	call (_fclose)
cline_198_0:
	i0 = i7 - (0x2)
	i0 = xmem[i0]
	call (_fclose)
cline_199_0:
	jmp (__epilogue_160)
__epilogue_160:
	i7 = i7 - (0x7)
	i7 -= 1
	ret
