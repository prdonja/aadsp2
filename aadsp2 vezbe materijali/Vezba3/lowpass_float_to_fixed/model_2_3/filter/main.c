#include <stdio.h>
#include "common.h"

#ifndef __CCC
#include "fixed_point_math.h"
#endif

DSPfract sampleBuffer[8][16] ;

/* Make table coefficients global. This way is accessed more efficiently */
DSPfract SplitLoPassCoeff[3][21]=
{
    /* To make these coefficients under 32bit fix-point three modifications are performed. One group of coefficients
    is right shifted by one. Second group is right shifted for two (divided with 4). Gain coefficient is modified to be
    NUMBER_OF_STAGES root of original value. Changes in coefficient table are followed by changes in calculation code.
    
    In addition, value need to be calculated because CCC is not able to use floating point expressions. */

    // 32 kHz
    {
        FRACT_NUM( 0.0041668987832963467), //SQRT5(1.256217352363365e-012) since NUMBER_OF_STAGES is 5
        FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.45313779823482037), FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.25871799513697624), 
        FRACT_NUM(-0.41568429209291935), FRACT_NUM( 0.91127542359754443), FRACT_NUM( 0.52681367564946413), FRACT_NUM( 0.51310620177537203), 
        FRACT_NUM(-0.43017976917326450), FRACT_NUM( 0.92570401262491941), FRACT_NUM( 0.50570116844028234), FRACT_NUM( 0.50255846465006471), 
        FRACT_NUM(-0.45327016571536660), FRACT_NUM( 0.94867967907339334), FRACT_NUM( 0.48313103476539254), FRACT_NUM( 0.49128303490579128), 
        FRACT_NUM(-0.48326447326689959), FRACT_NUM( 0.97852959111332893), FRACT_NUM( 0.46922101592645049), FRACT_NUM( 0.48433430353179574)
    },

    // 44.1 kHz
    {
        FRACT_NUM( 0.0023742145858705044), //SQRT5(7.543965452327939e-014) since NUMBER_OF_STAGES is 5
        FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.46505641052499413), FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.25871799513697624), 
        FRACT_NUM(-0.43756563030183315), FRACT_NUM( 0.93518335046246648), FRACT_NUM( 0.52681367564946413), FRACT_NUM( 0.51310620177537203), 
        FRACT_NUM(-0.44872402632609010), FRACT_NUM( 0.94635915197432041), FRACT_NUM( 0.50570116844028234), FRACT_NUM( 0.50255846465006471), 
        FRACT_NUM(-0.46545536257326603), FRACT_NUM( 0.96300636511296034), FRACT_NUM( 0.48313103476539254), FRACT_NUM( 0.49128303490579128), 
        FRACT_NUM(-0.48778496030718088), FRACT_NUM( 0.98527691094204783), FRACT_NUM( 0.46922101592645049), FRACT_NUM( 0.48433430353179574)
    },

    // 48 kHz
    {
        FRACT_NUM( 0.0020454460754990578),  //SQRT5(3.580469254416130e-014) since NUMBER_OF_STAGES is 5
        FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.46694760676473379), FRACT_NUM( 0.00000000000000000), FRACT_NUM( 0.25871799513697624), 
        FRACT_NUM(-0.44256567023694515), FRACT_NUM( 0.94051648303866386), FRACT_NUM( 0.52681367564946413), FRACT_NUM( 0.51310620177537203), 
        FRACT_NUM(-0.45365093694999814), FRACT_NUM( 0.95172420609742403), FRACT_NUM( 0.50570116844028234), FRACT_NUM( 0.50255846465006471), 
        FRACT_NUM(-0.46780231967568398), FRACT_NUM( 0.96572767104953527), FRACT_NUM( 0.48313103476539254), FRACT_NUM( 0.49128303490579128), 
        FRACT_NUM(-0.48875543102622032), FRACT_NUM( 0.98663152428343892), FRACT_NUM( 0.46922101592645049), FRACT_NUM( 0.48433430353179574)
    }
};

// Make this buffers global. No need to have them on stack in DSP implementation.
DSPfract pcm[N], state[STATE_SIZE];

void lowpass_rt(DSPfract *pInbuf, DSPfract *pOutbuf, DSPfract *pState, DSPfract *pCoef)
{

    DSPint n, j;
    DSPfract gain, b1, b2, a1, a2, yn1, yn2, xn1, xn2;
    DSPfract *pCo, *pIn, *pOut, *pStt;
    DSPaccum yn;

    gain = pCoef[0];
    pCo = pCoef + 1;
    pStt = pState;

    for(n = 0; n < NUMBER_OF_STAGES; n++)
    {
        DSPfract *pStt_read = pStt; // pStt_read used for reading state
		
        a2  = *pCo++;
        a1  = *pCo++;
        b2  = *pCo++;
        b1  = *pCo++;
        

        xn1 = *pStt_read++;
        xn2 = *pStt_read++;
        yn1 = *pStt_read++;
        yn2 = *pStt_read;


        // For different input & output buffers,
        // Output buffer becomes input buffer after first stage
        pIn = (n > 0) ? pOutbuf : pInbuf;
        pOut = pOutbuf;

        for(j = 0; j < N; j += 2)
        {
            yn = xn1 * b1; // This coefficient is right shifted for 2 bits.
            yn <<= 1; // Return one left here.
            yn += xn2 * b2; // These coefficients are shifted for one right. Previous shift allow this accumulation.
            yn += yn1 * a1;
            yn += yn2 * a2;
            yn <<= 1; //  Return it left for one more.
            yn = (DSPaccum)*pIn + yn; // These coefficients are shifted for 1 bit right.

            xn2 = *pIn++;
            yn2 = yn;

            // Originally, gain was applied on one place after filtering. 
            // Gain is modified in table to be fifth root of original value.
            // Modified coefficient is applied for every stage
            *pOut++ = (DSPfract)yn * gain;

            yn = xn2 * b1; // This coefficient is right shifted for 2 bits.
            yn <<= 1; // Return one left here.
            yn += xn1 * b2; // These coefficients are shifted for one right. Previous shift allow this accumulation.
            yn += yn2 * a1;
            yn += yn1 * a2;
            yn <<= 1; // Return it left for one more.
            yn = (DSPaccum)*pIn + yn; // These coefficients are shifted for 1 bit right. Previous shift allow this add.

            xn1 = *pIn++;
            yn1 = yn;
            
            // Originally, gain was applied on one place after filtering. 
            // Gain is modified in table to be fifth root of original value.
            // Modified coefficient is applied for every stage
            *pOut++ = (DSPfract)yn * gain;
        }
        
        // Real time process, save State data
        *pStt++ = xn1;
        *pStt++ = xn2;
        *pStt++ = yn1;
        *pStt++ = yn2;
    }

}

void main(void)
{
	DSPshort i, j, blocks_num;
#ifndef __CCC 	// model 2
	DSPshort sample;
	int nBytesToExtract = 2;
	FILE *in_dat = fopen("..//..//pcm//whiteNoise_intel.pcm", "r+b");
	if (in_dat == NULL )
	{
		printf("ERROR: \"..//..//pcm//whiteNoise_intel.pcm\" could not be opened\n");
	}

	FILE *out_dat = fopen("..//..//out_intl_model2.pcm", "w+b");
	if (in_dat == NULL || out_dat == NULL)
	{
		printf("ERROR: \"..//..//out_intl_model2.pcm\" could not be opened\n");
	}
#else // model 3
	// CLIDE is able to read samples as DSPfract. One read/write per sample.
	DSPfract sample;
	int nBytesToExtract = 1;
	// Working folder in CLIDE is different
	FILE *out_dat = fopen("..//out_intl_model3.pcm", "w+b");
	FILE *in_dat = fopen("..//pcm//whiteNoise_intel.pcm", "r+b");
	// Setting mode for fread and fwrite
	fconfig(STDIO_16BIT_LE_TO_LEFT_JUSTIFIED, out_dat);
	fconfig(STDIO_16BIT_LE_TO_LEFT_JUSTIFIED, in_dat);
#endif


    // Initial state is zero.
	for (i = 0; i < 256; i++)
		state[i] = FRACT_NUM(0.0);

    for(blocks_num = 0; blocks_num < 750; blocks_num++) // There is no EOF in simulator. Converted in to for loop.
	{
        for (i = 0; i < N; i++)
		{	 
			fread(&sample, 1, nBytesToExtract, in_dat);
#ifndef __CCC // model 2
			pcm[i] = sample / (2097152.0); // divide by 2^21 to make 6bit head-room
#else // model 3
			pcm[i] = (DSPfract)sample;
			for (j = 0; j < 6; j ++)
				pcm[i] = pcm[i] >> 1; // making 6 bit head-room.
#endif
		}

        // Perform low pass filter for 48 kHz.
		lowpass_rt(pcm, pcm, state, SplitLoPassCoeff[FS_48000]); // PCM input is in Q7.25 format

		for (i = 0; i < N; i++)
		{
            /* Here PCM buffer contain samples in 7.25 representation. Output PCM file
            is 16 bit samples so we need to shift that value for 10 bits right before we write it to file. */
#ifndef __CCC // model 2
            sample = (DSPshort)(pcm[i].toLong() >> 10);
#else // model 3
			/* Here PCM buffer contain samples in 7.25 representation. Samples are shift left for 6 bits 
			to restore Q1.31 format before write. */
			sample = pcm[i];
            for (j = 0; j < 6; j ++)
				sample = sample << 1;
#endif
			fwrite(&sample, 1, nBytesToExtract, out_dat);
		}
	}
	sampleBuffer[0][0] = 0.5;
	fclose(in_dat);
	fclose(out_dat);
}
