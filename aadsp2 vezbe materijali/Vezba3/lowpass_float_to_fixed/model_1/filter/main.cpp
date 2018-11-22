#include <stdio.h>
#include "common.h"

/* Transition to Model 1 is simple functional reorganization of a code wothout any functinality change.

*/
// Reducing number of function arguments. Constancts are defined in common.h
	DSPfract SplitLoPassCoeff[3][21]=
    {
        // 32 kHz
        {  1.256217352363365e-012,
                                0, 9.062755965210486e-001,                       0, 1.034871980488338e+000,                                                                                                     
          -8.313685839740158e-001, 1.822550846943287e+000,  1.053627350897576e+000, 2.052424807501546e+000,            
          -8.603595383531635e-001, 1.851408025659917e+000,  1.011402336878282e+000, 2.010233857798241e+000,         
          -9.065403310196870e-001, 1.897359358316867e+000,  9.662620695152961e-001, 1.965132140417648e+000,          
          -9.665289468865543e-001, 1.957059182440084e+000,  9.384420320790645e-001, 1.937337213794234e+000,       
        },
        // 44.1 kHz
        {  7.543965452327939e-014,
                                0, 9.301128211196789e-001,                      0, 1.034871980488338e+000,                                                                                            
          -8.751312607060559e-001, 1.870366700727062e+000, 1.053627350897576e+000, 2.052424807501546e+000,         
          -8.974480527082694e-001, 1.892718304360734e+000, 1.011402336878282e+000, 2.010233857798241e+000,           
          -9.309107246832005e-001, 1.926012730001811e+000, 9.662620695152961e-001, 1.965132140417648e+000,           
          -9.755699206694750e-001, 1.970553822059074e+000, 9.384420320790645e-001, 1.937337213794234e+000,            
        },
        // 48 kHz
        {  3.580469254416130e-014,
                                0, 9.338952139211192e-001,                      0, 1.034871980488338e+000,                       
          -8.851313402201296e-001, 1.881032966150447e+000, 1.053627350897576e+000, 2.052424807501546e+000,    
          -9.073018742276428e-001, 1.903448412575458e+000, 1.011402336878282e+000, 2.010233857798241e+000,  
          -9.356046394317145e-001, 1.931455342504913e+000, 9.662620695152961e-001, 1.965132140417648e+000,    
          -9.775108620840036e-001, 1.973263048666602e+000, 9.384420320790645e-001, 1.937337213794234e+000,   
        }
    };


void lowpass_rt(DSPfract *pInbuf, DSPfract *pOutbuf, DSPfract *pState, DSPfract *pCoef)
{
    DSPint n, j;
    DSPfract gain, b1, b2, a1, a2, yn, yn1, yn2, xn1, xn2;
    DSPfract *pCo, *pIn, *pOut, *pStt;

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

        // for different input & output buffers,
        // output buffer becomes input buffer after first stage
        pIn = (n > 0) ? pOutbuf : pInbuf;
		pOut = pOutbuf;

        for(j = 0; j < N; j += 2)
        {
            yn = *pIn
                 + xn1 * b1
                 + xn2 * b2
                 + yn1 * a1
                 + yn2 * a2;

            xn2 = *pIn++;
            yn2 = yn;
            *pOut++ = yn;

            yn = *pIn
                 + xn2 * b1
                 + xn1 * b2 
                 + yn2 * a1 
                 + yn1 * a2;

            xn1 = *pIn++;
            yn1 = yn;
            *pOut++ = yn;
        }
        
        // real time process, save State data
        *pStt++ = xn1;
        *pStt++ = xn2;
        *pStt++ = yn1;
        *pStt++ = yn2;
    }

    // apply gain
	pOut = pOutbuf;
    for(j = 0; j < N; j++)
        *pOut++ = *pOut * gain;

}


void main(void)
{
	DSPfract pcm[N], state[STATE_SIZE];
	int nBytesToExtract = 2;
	DSPshort sample, i;

	FILE *in_dat = fopen("..//..//pcm//whiteNoise_intel.pcm", "r+b");
	if (in_dat == NULL )
	{
		printf("ERROR: \"..//..//pcm//whiteNoise_intel.pcm\" could not be opened\n");
	}

	FILE *out_dat = fopen("..//..//out_intl_model1.pcm", "w+b");
	if (in_dat == NULL || out_dat == NULL)
	{
		printf("ERROR: \"..//..//out_intl_model1.pcm\" could not be opened\n");
	}

    // Initial state is zero.
	for (i = 0; i < 256; i++)
		state[i] = 0;

    while(1)
	{
		size_t BytesRead;

        for (i = 0; i < N; i++)
		{	 
			BytesRead = fread(&sample, 1, nBytesToExtract, in_dat);
			pcm[i] = sample / 32768.0;
		}

        if (BytesRead < nBytesToExtract)
        {
			// End of file.
            break;
        }

        // Perform low pass filter for 48 kHz.
		lowpass_rt(pcm, pcm, state, SplitLoPassCoeff[FS_48000]); // Reducing number of function arguments

		for (i = 0; i < N; i++)
		{
			int intPcm = pcm[i] * 2147483648; // convert to 32bit integer (multiply with 2^31)
			sample = (short) (intPcm >> 16);  // take upper 16 bits only
			fwrite(&sample, 1, nBytesToExtract, out_dat);
		}
	}

	fclose(in_dat);
	fclose(out_dat);
}
