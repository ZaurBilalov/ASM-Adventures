	; Tutorial 17
	; Stacks
	; Zaur Bilalov 2016
	
	; Simply, Vector in C++
	; You can PUSH and POP to/from stack
	
	; ESP is the EXTENDED STACK POINTER (32 bits)
		; SP - 16bits
	
	; PUSH arg
		; if arg is 16 bit:
			; esp <- esp-2
			; word[esp] <- arg
		; if arg is 32 bit:
			; esp <- esp-4
			; dword[esp] <- arg
	; POP arg
		; if arg is 16 bit:
			; arg <- word[esp]
			; esp <- esp+2
		; if arg is 32 bit:
			; arg <- dword[esp]
			; esp <- esp+4
			
	; Ex: 
		;Exchange ECX and EAX
		push 	eax
		push	ecx
		pop  	eax
		pop  	ecx
	; Ex:
		;Save and restore:
		push 	ecx
		inc 	ecx
		pop		ecx