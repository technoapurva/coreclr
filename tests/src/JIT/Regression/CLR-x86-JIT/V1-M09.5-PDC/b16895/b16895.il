// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x38e6c42a {}
.class ILGEN_0x38e6c42a {


.field static	unsigned int16 field_0x1
.field static	unsigned int32 field_0x2
.field static	int8 field_0x4
.field static	int64 field_0x7

.method static int32 main() {
.entrypoint
.maxstack	18

 .locals (int16[] local_0x5,float64[] local_0x9,int16 local_0xd,int32 local_0xe,float32 local_0x10,float64 local_0x11, int32 ecode)

 ldnull  stloc.0
 ldnull  stloc.1
 ldc.i4.0  stloc.2
 ldc.i4.0  stloc.3
 ldc.r4 0  stloc 4
 ldc.r8 0  stloc 5
 ldc.i4.0  stloc 6

.try {
ldc.i4.1
stloc ecode

ldc.i4 255
 newarr [mscorlib]System.Int16 
 stloc local_0x5
ldc.i4 255
 newarr [mscorlib]System.Double 
 stloc local_0x9
ldc.i4 0x4bc42265 
stloc local_0xd
ldc.i4 0x9526a86 
stloc local_0xe
ldc.r4 float32(0x224f76bb) 
stloc local_0x10
ldc.r8 float64(0x2b9a63004fb5cba) 
stloc local_0x11

ldc.i4 0x4e7d532c 
stsfld unsigned int16 ILGEN_0x38e6c42a::field_0x1
ldc.i4 0x3fd3428 
stsfld unsigned int32 ILGEN_0x38e6c42a::field_0x2
ldc.i4 0x5a84dd2 
stsfld int8 ILGEN_0x38e6c42a::field_0x4
ldc.i8 0x391a74984ba7c02 
stsfld int64 ILGEN_0x38e6c42a::field_0x7

 ldloc local_0x10
 conv.ovf.i4
 ldc.r4 float32(0x26693fb0)
 conv.ovf.u2.un
 ldloc local_0x5
 ldlen
 conv.ovf.u4
 rem
 conv.ovf.u4
 ldloc local_0x10
 conv.ovf.i4.un
 ldloc local_0x9
 ldloca local_0xe
 ldind.i4
 ldelema [mscorlib]System.Double
 ldind.r8
 ldloc local_0x11
 //conv.r.un
Start_Orphan_28:
 ldsfld int8 ILGEN_0x38e6c42a::field_0x4
 conv.u1
 newarr [mscorlib]System.Int64
 ldsfld unsigned int16 ILGEN_0x38e6c42a::field_0x1
 ldelema [mscorlib]System.Int64
 ldsfld unsigned int32 ILGEN_0x38e6c42a::field_0x2
 conv.ovf.i8
 ldloc local_0xd
 conv.u8
 mul.ovf
 stind.i8
End_Orphan_28:
 ceq
 rem
 ceq
 clt
 pop
 leave xx
 } catch [mscorlib]System.IndexOutOfRangeException {
 pop
 ldc.i4.0
 stloc ecode
 leave xx
 }
 
xx:
 ldloc ecode
ldc.i4 100
add
 ret
}
}
