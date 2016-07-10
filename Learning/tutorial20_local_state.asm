	; Tutorial 20
	; Local State
	; Zaur Bilalov 2016
	
	; EBP	- extended base pointer
		; BP -16 bits
	
	; Extracting the arg from the stack
		sum_nums
		push		ebp
		mov  		ebp,eax
		push 		ecx
			mov		esi,dword[ebp + 4]
			mov		ecx,dword[ebp + 8]
			xor		edx,edx
			jecxz	.no_sums
		.next_dw
			lodsd
			add		edx,eax
			loop	.nest_dw
		.no_sums
			mov 	eax,edx
		pop 		ecx
		pop 		ebp
		ret
		
	; To implement local vaiarbles we can use Stack with EBP to stack some variables
	