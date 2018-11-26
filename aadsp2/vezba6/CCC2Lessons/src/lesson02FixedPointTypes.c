//******************************************************************************
/**                                
** @file lesson01Introduction.c
**                                 
** Module: ccc2Lessons
** Description: Illustrate fixed point types of CCC
**                                 
*/                                
//******************************************************************************

#include "lesson02FixedPointTypes.h"

// Global variable
fract globalX;

accum cccLessonsMul(fract a, fract b)
{
	return a*b;
}

void cccLessonsFixedConstant()
{
	/*
	 In stdfix.h two macro definitions can be found that  allow _Fract constant to be initialized with
	 scaled float values:
	 FRACT_NUM_SCALE_Q(value,q) - scale float value from the q.r format to_Fract format
	    (q represent the number of bits before dot).
	 FRACT_NUM_SCALE_R(value,r) - scale float value from the q.r format to_Fract format
	   (r represent the number of bits after dot).
	*/
	fract x = FRACT_NUM_SCALE_Q(3.21,3);

	globalX = x;
}

void cccLessonsBitwiseConversionBetweenTypes()
{
	int xi;
	fract xf = 0.356r;
	xi = bitsr(xf);  //xi is assigned the integer converted value of xf
}

void cccLessonsRoundingAndShifting()
{
	/* set mr to no shift, no round */
	set_mr_sr(NO_SHIFT|NO_ROUND);
	/* set mr to no shift, round toward zero */
	set_mr_sr(NO_SHIFT|ROUND_TO_0);
	/* set mr to shift left by 1, round toward zero */
	set_mr_sr(SHIFT_LEFT_1|ROUND_TO_0);
	/* set mr to keep current shift mode, round by adding .5 and truncating */
	set_mr_r(ADD_0_5_TRUNCATE);
	/* set mr to shift right by 1, keep current round mode */
	set_mr_s(SHIFT_RIGHT_1);
}

accum cccLesson02FixedPointTypes()
{	
	accum result = 1;
	fract a = 0.5r, b = 0.5r;

   /*
    Fixed point Types
    -----------------------------------------------------------
       Type Syntax            | Size in Bits   | Number format
	---------------|----------|----------------|---------------
	signed short   | _Fract   |       32       |      s.31
	signed         | _Fract   |       32       |      s.31
	signed long    | _Fract   |       64       |      s.63
	unsigned short | _Fract   |       32       |      0.31
	unsigned       | _Fract   |       32       |      0.31
	unsigned long  | _Fract   |       64       |      0.63
	signed short   | _Accum   |       40       |      s8.31
	signed         | _Accum   |       40       |      s8.31
	signed long    | _Accum   |       72       |      s8.63
	unsigned short | _Accum   |       40       |      9.31
	unsigned       | _Accum   |       40       |      9.31
    unsigned long  | _Accum   |       72       |      9.63


         Fixed point constants
    ---------------------------|----------------
    Fixed-point Type           |   Value Suffix
    ---------------|-----------|----------------
    signed short   | _Fract    |       hr
    signed         | _Fract    |       r
    signed long    | _Fract    |       lr
    unsigned short | _Fract    |       uhr
    unsigned       | _Fract    |       ur
    unsigned long  | _Fract    |       ulr
    signed short   | _Accum    |       hk
    signed         | _Accum    |       k
    signed long    | _Accum    |       lk
    unsigned short | _Accum    |       uhk
    unsigned       | _Accum    |       uk
    unsigned long  | _Accum    |       ulk

    */

	result = cccLessonsMul(a, b);
	cccLessonsFixedConstant();
	cccLessonsBitwiseConversionBetweenTypes();
	cccLessonsRoundingAndShifting();

	return result;
}



