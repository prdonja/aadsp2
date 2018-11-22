#include <stdio.h>

void lowpass(double *pInbuf, double *pOutbuf, double *pState, double *pCoef, int input_len, int Nstage)
{
    int n, j;
    double gain, b1, b2, a1, a2, yn, yn1, yn2, xn1, xn2;
    double *pCo, *pIn;

    gain = pCoef[0];
    pCo = pCoef + 1;

    for(n = 0; n < Nstage; n++)
    {
        a2  = pCo[n*4+0];
        a1  = pCo[n*4+1];
        b2  = pCo[n*4+2];
        b1  = pCo[n*4+3];
        
        // if non real time process, clear state
        if(pState != NULL)
        {
            xn1 = pState[n*4+0];
            xn2 = pState[n*4+1];
            yn1 = pState[n*4+2];
            yn2 = pState[n*4+3];
        }
        else
        {
            yn2 = yn1 = xn2 = xn1 = 0;
        }

        // for different input & output buffers,
        // output buffer becomes input buffer after first stage
        pIn = (n > 0) ? pOutbuf : pInbuf;

        for(j = 0; j < input_len; j += 2)
        {
            yn = pIn[j]
                 + xn1 * b1
                 + xn2 * b2
                 + yn1 * a1
                 + yn2 * a2;

            xn2 = pIn[j];
            yn2 = yn;
            pOutbuf[j] = yn;

            yn = pIn[j+1]
                 + xn2 * b1
                 + xn1 * b2 
                 + yn2 * a1 
                 + yn1 * a2;

            xn1 = pIn[j+1];
            yn1 = yn;
            pOutbuf[j+1] = yn;
        }
        
        // if non real time process, no need to save State data
        if(pState != NULL)
        {
            pState[n*4+0] = xn1;
            pState[n*4+1] = xn2;
            pState[n*4+2] = yn1;
            pState[n*4+3] = yn2;
        }
    }

    // apply gain
    for(j = 0; j < input_len; j++)
        pOutbuf[j] = pOutbuf[j] * gain;

}

void main(void)
{
	double pcm[64], state[256];
	int nBytesToExtract = 2;
	short sample, i;

	double SplitLoPassCoeff[3][21]=
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

	FILE *in_dat = fopen("..//..//pcm//whiteNoise_intel.pcm", "r+b");
	if (in_dat == NULL )
	{
		printf("ERROR: \"..//..//pcm//whiteNoise_intel.pcm\" could not be opened\n");
	}

	FILE *out_dat = fopen("..//..//out_intl_model0.pcm", "w+b");
	if (in_dat == NULL || out_dat == NULL)
	{
		printf("ERROR: \"..//..//out_intl_model0.pcm\" could not be opened\n");
	}

    // Initial state is zero.
	for (i = 0; i < 256; i++)
		state[i] = 0;

    while(1)
	{
		size_t BytesRead;

        for (i = 0; i < 64; i++)
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
		lowpass(pcm, pcm, state, SplitLoPassCoeff[2], 64, 5); 

		for (i = 0; i < 64; i++)
		{
			int intPcm = pcm[i] * 2147483648; // convert to 32bit integer (multiply with 2^31)
			sample = (short) (intPcm >> 16);  // take upper 16 bits only
			fwrite(&sample, 1, nBytesToExtract, out_dat);
		}
	}

	fclose(in_dat);
	fclose(out_dat);
}
