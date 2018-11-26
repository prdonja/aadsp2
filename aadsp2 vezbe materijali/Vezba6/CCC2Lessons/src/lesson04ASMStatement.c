//******************************************************************************
/**
** @file lesson04ASMStatement.c
**
** Module: ccc2Lessons
** Description: Illustrate ASM statement
**
*/
//******************************************************************************

#include "lesson04ASMStatement.h"

// global1 varables
__memX fract global1;

void cccLesson04ClobberList()
{
	// this will generate wrong code since compiler does not know that
	// registers a0 and a1 are actually used or as in this case changed.
	// in order to fix this one should use clobber list. Please add
	// : "a0", "a1" in asm statement as it is shown:
	//
	// asm("AnyReg(a0,%0)\n\tAnyReg(a1,%1)" : : "a"(1), "a"(2) : "a0", "a1");

	asm("AnyReg(a0,%0)\n\tAnyReg(a1,%1)" : : "a"(1), "a"(2));

}

void cccLesson04ASMStatement()
{
	fract a=0.1r,b=0.2r, out1, out2, in1=0.3r, in2=0.4r;
	accum tmp;

	// Asm statement example
	asm("%0 = %1 * (unsigned)%2" : "=a"(tmp) : "x"(a), "y"(b));


	// Modifiers
	// if modifiers are not specified out1 is made to take the value of in1 and
	// out2 value of in2. The operands 0 and 3 can be assigned to the same register
	// because one is input and the other is an output operand
	//
	// to slove this problem please change for example "=U"(out1) in "=&U"(out1) and
	// compile again
	asm("AnyReg(%0,%2)\n\tAnyReg(%1,%3)" : "=U"(out1), "=U"(out2) : "U"(in1),"U"(in2));

	// Clobber list
	 cccLesson04ClobberList();


	// dummy memory moves used to prevent dead code elimination
	global1 = tmp;
	global1 = out1;
	global1 = out2;
}

