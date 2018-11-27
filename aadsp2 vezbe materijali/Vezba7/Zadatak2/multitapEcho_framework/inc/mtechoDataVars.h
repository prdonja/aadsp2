################################################################################
##*/**
##** @file mtechoDataVars.h
##**
##** Module:
##** Description:
##** $Source: $
##** $Revision: $
##** $Date: $
##** $Author: $
##**
##**/
################################################################################
  .list -cond
  .if !defined(_mtechoDataVars_h_)
_mtechoDataVars_h_


#	Public/Extern Macro:
#-----------------------------------------------
	.if defined(_mtechoDataVars_a_)
	   .macro
		_mtechoDataVars_import_export:		%var
		.public %var
		.endm
	.else
		.macro
		_mtechoDataVars_import_export:		%var
		.extern %var
		.endm
	.endif
#-----------------------------------------------
#	INCLUDES:
################################################################################
	.if defined(_mtechoDataVars_a_)
		#TODO: Insert aditional includes here: these will only be included into mtechoDataVars.a
		.include "dsplib/os_asm.h" # include the definition of ROM functions and OS global variables
		.include	("mtechoGlobalConsts.h")
	.endif
################################################################################

# STRUCTURE DEFINITIONS:
################################################################################
#TO_DO: Copy state structure definition
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
_n_tap	.dw (0x0)
	.endstruct
################################################################################


#	PUBLIC/EXTERN:
################################################################################

		#TODO: Type public/extern definitions here: function_or_variable visible to others
		_mtechoDataVars_import_export:		_echo_buffer
		_mtechoDataVars_import_export:		_echoState
		_mtechoDataVars_import_export:	 	_initial_delay
		_mtechoDataVars_import_export:	 	_initial_gain
		_mtechoDataVars_import_export:	 	_initial_input_gain
		

################################################################################
  .endif
