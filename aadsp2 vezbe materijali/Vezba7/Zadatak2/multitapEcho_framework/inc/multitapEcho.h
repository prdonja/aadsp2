###############################################################################
##*/**
##** @file multitapEcho.h
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
  .if !defined(_multitapEcho_h_)
_multitapEcho_h_


#	Public/Extern Macro:
#-----------------------------------------------
	.if defined(_multitapEcho_a_)
	   .macro
		_multitapEcho_import_export:		%var
		.public %var
		.endm
	.else
		.macro
		_multitapEcho_import_export:		%var
		.extern %var
		.endm
	.endif
#-----------------------------------------------

#	INCLUDES:
################################################################################
	.if defined(_multitapEcho_a_)
		#TODO: Insert aditional includes here: these will only be included into multitapEcho.a
		.include	("mtechoGlobalConsts.h")
		.include	("mtechoDataVars.h")
	.endif
################################################################################


#	PUBLIC/EXTERN:
################################################################################

		#TODO: Type public/extern definitions here: function_or_variable visible to others
#		_multitapEcho_import_export:		function_or_variable_name
		_multitapEcho_import_export:		X_S_multitapEchoInit
		_multitapEcho_import_export:		X_S_multitapEcho

################################################################################
  .endif
