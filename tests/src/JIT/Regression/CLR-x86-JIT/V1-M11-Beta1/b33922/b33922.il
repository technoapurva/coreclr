// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xe32b9f8 {}
.class ILGEN_0xe32b9f8 {

.method static int32 Method_0x5af1(int16 Arg_0x0) {
 .maxstack	9
 .locals (int32 local_0x0)

 ldc.i4 0x3bd7287b 
 stloc local_0x0

 ldc.i4 255
 newarr [mscorlib]System.UInt16 
 ldc.i4 0x2cc87d5b
 ldelema [mscorlib]System.UInt16
 ldind.u2
 ldloc local_0x0
 ldarg Arg_0x0
 add
 ldc.i4.1
 add.ovf
 ldc.i4.2
 mul
 clt
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
.try {
 ldc.i4 0x54002d63 
 call int32 ILGEN_0xe32b9f8::Method_0x5af1(int16 Arg_0x0)
 pop
  leave stop
 } catch [mscorlib]System.IndexOutOfRangeException {
 pop
 leave stop
 }
 stop:
ldc.i4 100
ret
}

}
