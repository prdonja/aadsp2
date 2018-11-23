//******************************************************************************
/**
** @file lesson05Optimizations.c
**
** Module: ccc2Lessons
** Description: Optimizing C Code Targeted for Coyote 32-based DSPs
**
*/
//******************************************************************************

#include "lesson05Optimizations.h"

#define WIN_SIZE 512

// Structures
typedef struct dummyStruct{
	int x;
	int y;
	int z;
	int w;
	int a;
	int b;
	int c;
	int d;
}TDummyStruct;

// Global varables
TDummyStruct g_Struct;
int g_arg1 = 1, g_arg2, g_arg3, g_arg4;

__memX fract array1 [256];
__memY fract array2 [256];
__memY fract sum_array [256];


// Function Prototypes
int funcWithArguments(int arg1, int arg2, int arg3, int arg4);
int funcWithArgumentsAsGlobals();
int funcWithStructAsArgument(TDummyStruct a_Struct);
int funcWithStructAsGlobalVariable();
void optimizedLoops();
int comparisonOptimization();

void cccLesson05Optimizations()
{
	TDummyStruct a_Struct;


	//--------------------------------------------------------------------------
	// Reducing number of arguments which are passed to functions.
	//
	// These two functions are doing same thing (some dummy processing), but
	// one without parameters (they are turned in to global variables) is much
	// shorter - it use less program memory and it is faster.
	funcWithArguments(1, 2, 3, 4);
	funcWithArgumentsAsGlobals();
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	// Do not use structures as function arguments
	//
	// These two functions are doing same thing (some dummy processing), but
	// one without structure as parameter (it is turned in to global variables) is much
	// shorter - it use less program memory and it is faster.
	funcWithStructAsArgument(a_Struct);
	funcWithStructAsGlobalVariable();
	//--------------------------------------------------------------------------


	//--------------------------------------------------------------------------
	// Example of loops optimization
	optimizedLoops();
	//--------------------------------------------------------------------------

}



int funcWithArguments(int arg1, int arg2, int arg3, int arg4)
{
	int x, y, z, w;

	x = arg1 + arg2;
	y = x + arg3;
	z = x+y;
	w = arg1 + arg3;

	return x+y+z+w+arg4;
}

int funcWithArgumentsAsGlobals()
{
	int x, y, z, w;

	x = g_arg1 + g_arg2;
	y = x + g_arg3;
	z = x+y;
	w = g_arg1 + g_arg3;

	return x+y+z+w+g_arg4;
}


int funcWithStructAsArgument(TDummyStruct a_Struct)
{
	a_Struct.x = a_Struct.y+a_Struct.w+a_Struct.z+a_Struct.a+a_Struct.b+a_Struct.c+a_Struct.d;

	return a_Struct.x;
}

int funcWithStructAsGlobalVariable()
{
	g_Struct.x = g_Struct.y+g_Struct.w+g_Struct.z+g_Struct.a+g_Struct.b+g_Struct.c+g_Struct.d;

	return g_Struct.x;
}


//******************************************************************************
// HW loop demonstration functions
fract examplesThatGenertesHWLoop()
{
	fract retVal = 0;
	int i;
	int n = 5;


	for (i = 0 ; i < 10 ; i++)
		retVal = retVal + array1[i] + array2[i];

	for (i = -5 ; i < 5 ; i+=2)
		retVal += array1[i] + array2[i];

	for (i = 0 ; i < WIN_SIZE ; i++)
		retVal += array1[i] + array2[i];

	i = 0;
	for ( ; i < 10 ; i++)
		retVal += array1[i] + array2[i];


	for (i = 0 ; i < 10 ; )
	{
		retVal += array1[i] + array2[i];
		i++;
	}

	for (i = 0 ; i < 10 ; i++)
	{
		retVal += array1[i] + array2[i];
		i = i + 1;
	}

	for(i = 0; i < n; i++)
	{
		retVal = retVal + array1[i] + array2[i];
	}


	return retVal;
}

fract examplesThatGenertesSWLoop()
{
	fract retVal = 0;
	int i, x;

	for ( ; i < 10 ; i++)
		retVal += array1[i] + array2[i];

	i = 0;
	while (1)
	{
		if (i < 10) break;
		retVal += array1[i] + array2[i];
		i++;
	}

	i = 0;
	x = g_arg1;
	while (i < 10)
	{
		retVal += array1[i] + array2[i];
		i += x;
	}

	return retVal;
}


void optimizedLoops()
{
	// examples that will generate HW loop
	examplesThatGenertesHWLoop();


	// examples that will not generate HW loop
	examplesThatGenertesSWLoop();

}

