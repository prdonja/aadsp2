//******************************************************************************
/**
** @file lesson06BasicFileIO.c
**
** Module: ccc2Lessons
** Description: Basic file IO functionality.
**
*/
//******************************************************************************

#include "lesson06BasicFileIO.h"

// Input and output file names. (fopen expects __memX char* as an input)
__memX char file_name_in[32] = "fileI";
__memX char file_name_out[32] = "fileO";

// A simple buffer to keep read values.
__memX int buffer[128];

void cccLesson06BasicFileIO()
{
	int value;
	__memX int* bufferPtr = &buffer[0];
	FILE* file_in;
	FILE* file_out;

	// Open the input file in read mode.
	file_in = fopen((__memX char*)&file_name_in, "rb");

	// If fopen has failed exit the function.
	if (file_in == 0)
	{
		return;
	}

	// Read the values and place them into the buffer. -1 indicates the end of the file.
	while(1)
	{
		value = getc(file_in);

		*bufferPtr = value;
		bufferPtr++;

		if (value == -1)
		{
			break;
		}
	}

	// Close the input file.
	fclose(file_in);

	// Open the output file in write mode.
	file_out = fopen((__memX char*)&file_name_out, "wb");

	// If fopen has failed exit the function.
	if (file_out == 0)
	{
			return;
	}

	// Reset the buffer pointer and then write it's content into the output file.
	bufferPtr = &buffer[0];

	while (1)
	{
		value = *bufferPtr;
		bufferPtr++;

		if (value == -1)
		{
			break;
		}

		putc(value, file_out);
	}

	// Close the output file.
	fclose(file_out);
}
