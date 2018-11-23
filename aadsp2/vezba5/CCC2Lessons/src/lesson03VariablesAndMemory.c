//******************************************************************************
/**
** @file lesson03VariablesAndMemory.c
**
** Module: ccc2Lessons
** Description: Working with memory and variables
**
*/
//******************************************************************************

#include "lesson03VariablesAndMemory.h"

// Global varables
       int global;						// Without memory zone qualifiers
__memY int global_y; 					// With memory zone qualifier
__memY int * __memY pglobal = &global;	// defining pointer to memory location

__memY int data1 = 1;
__memY int data2 = 2;

__memXY long fract whole = 0.27192006lr;
__memX 		 fract high;
__memY 		 fract low;

__memX fract __attribute__((__aligned__(16))) a[16];
__memY fract __attribute__((__aligned__(32))) b[16] = {0.0r, 0.1r, 0.2r, 0.3r, 0.4r, 0.5r, 0.6r, 0.7r, 0.8r, 0.9r};


void cccLesson03DefiningLocalvariables()
{
	int result;						// local variable

	// memory zone qualifier for local variables can be used when defining
	__memY int * localP1 = &data1;

	// If this line gets uncommented CCC will return error because memory zone
	// can not be specified for local variables - all local variables will be placed
	// on stack or in accumulator.
	//__memY int * __memY localP2 = &data2;

	result = *localP1 + data2;
	data2 = result;
}

void cccLesson03MemoryZoneChange()
{
	long accum accumulator;
	__memXY long fract *pointer;

	pointer = &whole;
	accumulator = *pointer;
	whole = accumulator;
	high = *(__memX fract*)pointer;
	low = *(__memY fract*)pointer;
}


void cccLesson03CircularBuffer(__memX fract *p2, __memY fract *p3)
{
	int i;
	fract y0 ;
	for (i=0;i<16;i++) {
		y0 = *p3; p3 = CIRC_INC(p3, MOD_16 + 4);
		*p2++ = y0;
	}

}

void cccLesson03VariablesAndMemory()
{
	// defining local variables
	cccLesson03DefiningLocalvariables();

	// memory zone change
	cccLesson03MemoryZoneChange();

	// circular buffers
	cccLesson03CircularBuffer(a, b);

}

