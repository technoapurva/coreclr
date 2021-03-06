// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly 'cpblk' {
//This byte field requests that this assembly not be verified at run time and corresponds to this C# declaration:
  //[assembly:System.Security.Permissions.SecurityPermissionAttribute( [mscorlib]System.Security.Permissions.SecurityAction.RequestMinimum, Flags=System.Security.Permissions.SecurityPermissionFlag.SkipVerification )]
  .permission reqmin ['mscorlib']System.Security.Permissions.SecurityPermissionAttribute ( "SkipVerification" = true )
                        }



.class _cpblk {

//-------------------------
// Global Data            -
//-------------------------

//    .data DATA = int32(0)
//    .data  int32(0)

	.field static int32 DATA
	.field static int32 DATA2

//-------------------------
// initialization routine -
//-------------------------
.method static int32 initialize() {
	// -- init first 4 bytes to 0xAAAAAAAA
	ldsflda		int32 _cpblk::DATA
	ldc.i4		0xAA
	ldc.i4		4
	unaligned. 0x2
	initblk
	// -- init next 4 bytes to 0xFFFFFFFF
	ldsflda		int32 _cpblk::DATA
	ldc.i4		4
	add
	ldc.i4		0xFF
	ldc.i4		4
	unaligned. 0x2
	initblk
	//-- be sure memory is properly initialized --
	ldsflda		int32 _cpblk::DATA
	ldind.i4
	ldc.i4		0xAAAAAAAA
	ceq
	brfalse		FAIL	
	ldsflda		int32 _cpblk::DATA
	ldc.i4		4
	add
	unaligned. 0x2
	ldind.i4
	ldc.i4		0xFFFFFFFF
	ceq
	brfalse		FAIL	
	ldc.i4	0x00000001
	ret
FAIL:
	ldc.i4	0x00000000
	ret
}

//-------------------------
// Entry point - Main     -
//-------------------------
.method static int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack	10
//----------------
// initialize    -
//----------------
	call	int32 _cpblk::initialize()
	brfalse		FAIL

//----------------
// begin testing -
//----------------
	// -- copy first chunk into second chunk
	ldsflda		int32 _cpblk::DATA
	ldc.i4		4
	add
	ldsflda		int32 _cpblk::DATA
	ldc.i4		4
	unaligned. 0x2
	cpblk
	// -- Second chunk should now be 0xAAAAAAAA
	ldsflda		int32 _cpblk::DATA
	ldc.i4		4
	add
	unaligned. 0x2
	ldind.i4
	ldc.i4		0xAAAAAAAA
	ceq
	brfalse		FAIL	

//----------------
PASS:
	ldc.i4	0x64
	ret
//----------------
FAIL:
	ldc.i4	0x0
	ret
}
}
