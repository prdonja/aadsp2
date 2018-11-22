#ifndef COMMON_H
#define COMMON_H

/* Basic constants */
#define N				    64			/* of samples per time block	*/
#define STATE_SIZE          N * 4
#define NUMBER_OF_STAGES    5           /* number of stages in filter calculus	*/

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef double DSPfract;				/* DSP fixed-point fractional */

/* Sample frequencies */
enum {
    FS_38000,
    FS_44100,
    FS_48000
} FS;

#endif