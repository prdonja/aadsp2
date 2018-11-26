//******************************************************************************
/**                                
** @file lesson01Introduction.c
**                                 
** Module: ccc2Lessons
** Description: introduction     
**                                 
*/                                
//******************************************************************************

#include "lesson01Introduction.h"

void cccLesson01Introduction()
{	
	/*      The name of the C compiler is the Cirrus C Compiler 2(CCC2). The compiler
	 * 	compiles a C source file and produces the assembler code file. After that,
	 *  it calls the assembler, which makes the object file. Finally, linker is
	 *  called to produce the image file suitable for loading.
	 *
	 *      Command line options CCC2:
	 *      ---------------------
	 * 
	 *		-h    - Print this help screen.
	 *		-v    - Print the version info.
	 *
	 *		-w    - Suppress warnings
	 *		-Wno-pointer-to-unspec-zone - Suppress unspecified memory zone warning (#4007)
	 *		-S    - Just produce the .s file (stop before calling assembler and linker).
	 *		-c    - Just produce the .o file (call assembler but do not link).
	 *
	 *		-I<include_path>   - Include path.
	 *		(-I <include_path> is also acceptable.)
	 *		-D<symbol>         - Define a symbol.
	 *		(-D <symbol> is also acceptable.)
	 *
	 *		-o<filename> - The output file name.
	 *		(-o <filename> is also acceptable.)
	 *
	 *		-femit-asm-struct - Emit an assembly .struct definition for the struct types used in the C code.
	 *		-fcse     - Use common subexpression elimination.
	 *		-fslt     - Use shift lookup table.
	 *		-fprc     - Propagate constants and evaluate constant expressions.
	 *		-fcompact - Use compactor for parallelization.
	 *		-fconst-pool[=M] - Create constant pool in program memory for faster loading. M represents memory zone
	 *				in which the pool is going to be created: X, Y, P. If M is omitted P is used.
	 *		-fif      - Try several compilation strategies and chose the best result. Compilation lasts longer.
	 *
	 *		-fno-hw-loop-detection - Do not create hw loops.
	 *		-flimitBbSize[=N] - Internally limit the size of basic blocks. N specifies maximum size of a basic block.
	 *				Smaller number decreases compile time but increases code size. If N is not specified
	 *				a value of 150 will be used. If there are large basic blocks in the code, this can
	 *				significantly reduce compilation time.
	 *
	 *		-fwrapv - Specify signed integer overflow behavior as wrap-around
	 *				(Makes slightly larger code)
	 *		-funsafe-loop-optimizations - Assume that number of loop iterations
	 *				is never 0
	 *		-falias-analysis[=N] - Use alias analysis information. N specifies how deep in the call stack should the
	 *				analysis go when analyzing function calls (-1 means no limit). Increasing the limit
	 *				makes analysis more precise but increases compilation time. Default is 1.
	 *
	 *		-fno-loop-invar-opt - Turn off loop invariant code optimisation.
	 *		-fnfs  - Use static stack frame. This is valid only if program has no recursion, both direct or indirect.
	 *
	 *		-wpo - Whole program optimization. Turn on when you pass all the source
	 *				files of you program at once. Some other switches become available then.
	 *		-finline-functions - Automatically find suitable functions to inline. Available only
	 *				if -wpo is enabled.
	 *		-fno-inline - Do not inline functions, i.e. ignore inline function attribute.
	 *
	 *		-g    - Write DWARF2 debug info and create debugable code.
	 *		-esc  - emit .s file in the same folder where .c file is located, regardless of -o switch.
	 *		-ida  - Ignore functions debug_on and debug_off attributes.
	 *		-ira  - Use interprocedural register allocation.
	 *		-edi-lines  - Emit corresponding C line numbers as comments in the .s file.
	 *		-emit-hints - Emit optimization hints on how to change source code to get better results when compiling.
	 *		-Cl   - Emit corresponding C source line as a comment for every asembly instruction block.
	 *				(valid only if -g is used)
	 *		-fseparateVarSegments - Emit each global variable in a separate segment. Segment name will be variable name
	 *				prefixed by memory zone indicator.
	 *
	 *		-cdl  - Create file dependency list. Important for incremental build.
	 *		-ruf  - Report error for undeclared function calls.
	 *		-fno0init  - Do not initialize to 0 static storage duration objects that are not
	 *				explicitly initialized. Usefull for reducing .uld size.
	 *
	 *		-ascii - Have some fun.
	 *
	 */
}
