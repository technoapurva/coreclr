// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly faulttest{}
.class public auto ansi fault_class extends ['mscorlib']System.Object {

//+test_10_fault
//+desc: fault block before try block
.method public static void test_10_fault(){
.locals(int32 locInt1)

//init locals
  ldc.i4.1
  stloc locInt1

// print a message
  ldstr      "Test is running"
  call       void [mscorlib]System.Console::WriteLine(class System.String) 

//exception handler goes here
br lbl_10_startTry

lbl_10_startFault:
 ldstr      "inside fault"
  call       void [mscorlib]System.Console::WriteLine(class System.String) 


   endfault
lbl_10_endFault:

lbl_10_startTry:

  ldstr      "throwing excepion ... \n"
  call       void [mscorlib]System.Console::WriteLine(class System.String) 

   newobj     instance void [mscorlib]System.Exception::.ctor()
   throw

  leave lbl_10_exitSEH
lbl_10_endTry:



.try  lbl_10_startTry to lbl_10_endTry fault  handler lbl_10_startFault to lbl_10_endFault

lbl_10_exitSEH:

  ldstr      "finishes ... \n"
  call       void [mscorlib]System.Console::WriteLine(class System.String) 



  ret
}

.method public static int32 main()
{
    .entrypoint
	.try {
		call void fault_class::test_10_fault()
		leave END
	} catch [mscorlib]System.Exception {
		pop
		leave END
	}
END:
	ldc.i4 100
    ret
}
}