	; Tutorial 18
	; CALL and RET
	; Zaur Bilalov 2016
	
	; A simple function
		; Calculate sum of a list of numbers:
			; Input:	ecx - length
			; 			esi - address
			; Output	eax - sum
		sum_nums:
			push	edx			; To restore later
			push	ecx			; To restore later
			xor 	edx,edx		; Zero out EDX
		next_dword:
			lodsd				; Load dword from [esi] to eax
			add		edx,eax		; edx collect the sum
			loop	next_dword	; cycle until ECX == 0
			mov 	eax,edx		; eax as output
			pop		ECX			; Restore
			pop		EDX			; Restore
		ret						; ret - returns to the address+1 of the CALL function ; we use CALL to call this function again
								