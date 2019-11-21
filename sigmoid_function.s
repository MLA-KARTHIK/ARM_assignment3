 ; Neural network implementation of logic gates AND, OR, NOT, NOR, NAND, XNOR, XOR
	 
	 
	 area     appcode, CODE, READONLY
	 IMPORT printMsg
	 IMPORT printMsg_or
	 IMPORT printMsg_nand
	 IMPORT printMsg_nor
	 IMPORT printMsg_not
	 IMPORT printMsg_A
	 IMPORT printMsg_O
	 IMPORT printMsg_B
	 IMPORT printMsg_C
	 IMPORT printMsg_D
	 IMPORT printMsg_E
	 IMPORT printMsg_xnor
	 export __main
	 ENTRY 
__main  function
	    
		
		VLDR.F32   s20, =0				; input 0 
		VLDR.F32   s21, =0				; input 1
		VLDR.F32   s22, =0				; input 2
		BL printMsg_A					; calling AND print routine
		B ANDG
				
ANDB	BL printMsg_O					; calling OR print routine
		B ORG

ORB		BL printMsg_B					; calling NAND print routine
		B NAND

Nandb   BL printMsg_C					; calling NOR print routine
		B NOR

Norb	BL printMsg_D					; calling NOT print routine
		B NOT

Notb    BL printMsg_E					; calling XNOR print routine
		B XNOR

XNOR	VLDR.F32   s23, =-5				; weight 0 XNOR gate
		VLDR.F32   s24, =20				; weight 1 XNOR gate
		VLDR.F32   s25, =10				; weight 2 XNOR gate
		VLDR.F32   s26, =1				; bias value for XNOR gate
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing Z value		
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT xnor1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20			; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27		
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_xnor				; Printing theesult of XNOR logic
		B stop
xnor1	LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print			
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_xnor				; Printing theesult of XNOR logic
		B stop

NOT		VLDR.F32   s23, =0.5			; weight 0 for NOT gate
		VLDR.F32   s24, =0.7			; weight 1 for NOT gate
		;VLDR.F32   s25, =-0.7
		VLDR.F32   s26, =0.1			; bias value
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		;VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		;VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing Z value		
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT Not1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_not					; Printing theesult of NOT logic
		B Notb
Not1	LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_not					; Printing theesult of NOT logic
		B Notb
	
NOR		VLDR.F32   s23, =0.5			; weight 0 for NOR gate
		VLDR.F32   s24, =-0.7			; weight 1 for NOR gate
		VLDR.F32   s25, =-0.7			; weight 3 for NOR gate
		VLDR.F32   s26, =0.1			; Bias for NOR gate
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing z value
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT Nor1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_nor					; Printing theesult of NOR logic
		B Norb
Nor1	LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_nor					; Printing theesult of NOR logic
		B Norb

NAND	VLDR.F32   s23, =0.6			; weight 1 for NAND gate
		VLDR.F32   s24, =-0.8			; weight 2 for NAND gate
		VLDR.F32   s25, =-0.8			; weight 3 for NAND gate
		VLDR.F32   s26, =0.3			; Bias value for NAND gate
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing Z value
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT Nand1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_nand				; Printing theesult of NAND logic
		B Nandb
Nand1	LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_nand				; Printing theesult of NAND logic
		B Nandb


ORG		VLDR.F32   s23, =-0.1			; weight 1 for OR gate
		VLDR.F32   s24, =0.7			; weight 2 for OR gate
		VLDR.F32   s25, =0.7			; weight 3 for OR gate
		VLDR.F32   s26, =-0.1			; Bias value of OR gate
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing Z value
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT OR1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_or					; Printing theesult of OR logic
		B ORB
OR1		LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg_or					; Printing theesult of OR logic
		B ORB



ANDG    VLDR.F32   s23, =-0.1			; weight 1 for AND gate
		VLDR.F32   s24, =0.2			; weight 2 for AND gate
		VLDR.F32   s25, =0.2			; weight 3 for AND gate
		VLDR.F32   s26, =-0.2			; Bias value for AND gate
		VLDR.F32   s2, =0
		
		VMUL.F32   s23, s23, s20
		VMUL.F32   s24, s24, s21
		VMUL.F32   s25, s25, s22
		VADD.F32   s2, s23, s24
		VADD.F32   s2, s2, s25
		VADD.F32   s2, s2, s26			; Computing Z value
		BL sig							; Branching to compute signum function

		VCMP.F32   s17, s18
		vmrs    APSR_nzcv, FPSCR
		BGT M1
		LDR   r3, =0
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg						; Printing theesult of AND logic
		B ANDB
M1		LDR   r3, =1
		VCVT.U32.F32  s27, s20  		; Converting the floating point number to integer to print
		VCVT.U32.F32  s28, s21
		VCVT.U32.F32  s29, s22
		VMOV.F32  r0, s27
		VMOV.F32  r1, s28
		VMOV.F32  r2, s29
		BL printMsg						; Printing theesult of AND logic
		B ANDB


sig		VLDR.F32   s0, =-1				; starting point Signum function 
		VLDR.F32   s16, =1
		VLDR.F32   s18, =0.5
		VLDR.F32   s17, =0
		;VLDR.F32   s2, =-5		  		; power x value
		VMUL.F32   s2, s2, s0
		B EPX							; Branching to calculate e power x
		  
back	;B stop
		VADD.F32   s17, s16, s10
		VDIV.F32   s17, s16, s17		; Signum result will be stored in s17
		BX lr
		
EPX		VLDR.F32   s3, = 1				; starting of e power x  function
		VLDR.F32   s4, = 20				; No of iterations
		VLDR.F32   s5, = 1
		VLDR.F32   s0, = 1				; Just for comparision
		VLDR.F32   s13, = 1
		VLDR.F32   s10, = 1				; s10 will have final exponential result
		VCMP.F32   s2, #0
		vmrs    APSR_nzcv, FPSCR
		BGT Loop1
		BLE Loop1
		BEQ stop
		
Loop1	;vpush {s3}
		B fact							; Calling factorial function
		;vpop  {s6}						; factorial value will be stored in s7
factB	VMOV.F32   s6, s7
		VADD.F32   s3, s3, s0
		
		VCMP.F32   s5, s0
		vmrs    APSR_nzcv, FPSCR
		BGT Loop2
		

Loop2   ;vpush	{s2}
		;vpush   {s13}
		
		B multy							; Calling multiply routine
MB		VADD.F32  s13, s13, s0
		;vpop  {s14}
		VMOV.F32   s14, s15
		VADD.F32   s5, s5, s0
		VDIV.F32   s15, s14, s6
		VADD.F32   s10, s10, s15
		VSUB.F32   s4, s4, s0
		VCMP.F32   s4, #0				;  Decrementing the iteration and computing the rest of series 
		vmrs    APSR_nzcv, FPSCR
		BGT Loop1
		B back
		
		
; Multiply subroutine

multy	;vpop {s11} 						; No of times to multiply
		;vpop {s12}							; Number to multiply
		VMOV.F32  s11, s13
		VMOV.F32  s12, s2
		VMOV.F32  s15, s12
L4		VCMP.F32  s11, s0
		vmrs    APSR_nzcv, FPSCR
		BGT L3
		;vpush  {s15}						; Multiply result will be stored in s15
		B MB
L3		VMUL.F32  s15, s15, s12
		VSUB.F32  s11, s11, s0
		B L4


; Factorial subroutine

fact   	;vpop {s6}		
		VMOV.F32 s6, s3
		VLDR.F32 s7, = 1
		VLDR.F32 s8, =1
L2	   	VCMP.F32 s6, s8
		vmrs    APSR_nzcv, FPSCR
		BGT L1
		;vpush {s7}							; Factorial result will be stored in s7
		B factB
L1	   	VMUL.F32 s7, s7, s6
		VSUB.F32 s6, s6, s8
		B L2
	   
stop    B stop								   
     endfunc
     end