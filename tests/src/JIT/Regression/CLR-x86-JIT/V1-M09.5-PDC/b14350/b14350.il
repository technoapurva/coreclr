// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b14350 { }
.class ILGEN_622380794 {

.field static	int32 field_0x0
.field static	int64 field_0x1
.field static	float32 field_0x2
.field static	float64 field_0x3

.method static int32 main() {
.entrypoint
.maxstack	20

 ldsflda float64 ILGEN_622380794::field_0x3
 ldsfld float64 ILGEN_622380794::field_0x3
 ldsflda int64 ILGEN_622380794::field_0x1
 ldsfld int64 ILGEN_622380794::field_0x1
 stind.i8
 ldsfld float32 ILGEN_622380794::field_0x2
 //conv.r.un
 sub
 ldsflda int32 ILGEN_622380794::field_0x0
 ldsfld float64 ILGEN_622380794::field_0x3
 conv.i1
 conv.u
 stind.i4
 pop
 ldsfld int64 ILGEN_622380794::field_0x1
 conv.r.un
 stind.r8
 ldc.i4 100
 ret
}
}
