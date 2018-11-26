//******************************************************************************
/**
** @file ccc2Lessons.c
**
** Module: ccc2Lessons
** Description: Main function
** $Source: $
** $Revision: $
** $Date: $
** $Author: $
**
*/
//******************************************************************************

#include "lesson01Introduction.h"
#include "lesson02FixedPointTypes.h"
#include "lesson03VariablesAndMemory.h"
#include "lesson04ASMStatement.h"
#include "lesson05Optimizations.h"
#include "lesson06BasicFileIO.h"

/*******************************************************************************
 *                       Coyote32 CCC Lessons                                  *
 *******************************************************************************/
void main()
{
	//--------------------------------------------------------------------------
	// 									Note
	//
	//	If you want to debug by going through C code Emit Debug Info (-g)
	// option must be selected in project properties.
	// 	If you want to translate code optimally disable this option bit then you
	// will be able to debug by going through assembler code only
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
    // Lesson 1 - Introduction
	cccLesson01Introduction();
    //--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Lesson 2 - Fixed Point Types
	cccLesson02FixedPointTypes();
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Lesson 3 - Variables and Memory
	cccLesson03VariablesAndMemory();
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Lesson 4 - ASM Statement
	cccLesson04ASMStatement();
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Lesson 5 - Optimizing C Code Targeted for Coyote 32-based DSPs
	cccLesson05Optimizations();
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Lesson 6 - Basic file IO functionality.
	cccLesson06BasicFileIO();
	//--------------------------------------------------------------------------

}
