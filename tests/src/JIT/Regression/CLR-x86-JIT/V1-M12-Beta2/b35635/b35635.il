// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x77e9b0c3 {}
.class ILGEN_0x77e9b0c3 {

.method static int32 Main() {
.entrypoint
.maxstack	20
 ldc.r4 4.0
 ldc.r4 5.0
 add conv.r4
 neg conv.r4
 conv.i4
 ldc.i4 109
 add
 ret
}
}