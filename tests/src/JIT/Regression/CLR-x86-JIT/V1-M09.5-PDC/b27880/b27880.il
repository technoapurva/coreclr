// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x55738f50 {}
.class ILGEN_0x55738f50 {
.method static int32 main() {
.entrypoint
.maxstack	11

 .locals (unsigned int64[] local_0x1,int32 local_0x2)
ldc.i4 255
 newarr [mscorlib]System.UInt64 
 stloc local_0x1
ldc.i4 0x77a61bb 
stloc local_0x2

Start_Orphan_1:
 ldloc local_0x2
 not
 stloc local_0x2
End_Orphan_1:

 ldc.i4.s -37
 dup
 sub
ldc.i4 100
add
ret
}
}
