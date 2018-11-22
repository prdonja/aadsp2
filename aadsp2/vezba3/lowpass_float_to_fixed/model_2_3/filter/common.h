#ifndef COMMON_H
#define COMMON_H

#include "stdfix_emu.h"

/* Basic constants */
#define N				    64			/* of samples per time block	*/
#define STATE_SIZE          N * 4
#define NUMBER_OF_STAGES    5           /* number of stages in filter calculus	*/

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;				    /* DSP fixed-point fractional */
typedef long_accum DSPaccum;            /* DSP Accumulator */

/* Sample frequencies */
enum {
    FS_32000,
    FS_44100,
    FS_48000
} FS;

#endif
