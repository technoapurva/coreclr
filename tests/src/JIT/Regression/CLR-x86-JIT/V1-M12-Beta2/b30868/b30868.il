// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xac0ba7f2 {}
.class ILGEN_0xac0ba7f2 {
.method static int32 Method_0x7949() {
.maxstack	19

Start_Orphan_3b:
 ldc.i4.4
 ldc.i4 0xe5
 mul
 ldc.i8 0x100
 conv.ovf.u1
 mul.ovf
 pop
End_Orphan_3b:

Start_Orphan_41:
 ldc.i4 255
 newarr [mscorlib]System.Int32 
 ldc.i4.4
 ldc.i4 55
 stelem.i4 
End_Orphan_41:

ldc.i4 55
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	2
.try {
 call int32 ILGEN_0xac0ba7f2::Method_0x7949()
 pop
 leave stop
 } catch [mscorlib]System.OverflowException {
 pop
 leave stop
 }
 stop:
 ldc.i4 100
ret
}

}
