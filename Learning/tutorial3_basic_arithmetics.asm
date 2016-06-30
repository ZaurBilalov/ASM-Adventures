	; Tutorial 3
	; Basic Arithmetics
	; Zaur Bilalov 2016
	
	; INC, DEC
	; INC destination (destination++)
	; DEC destination (destination--)
	
	; MUL to multiple unsigned numbers ( argument with accumulator (eax) )
		; MUL Argument
		; Some forms:
			; ax <- al * argument
			; dx:ax <- ax * argument
			; edx:eax <- eax * argument
			
			; Whenever you perform MUL (of 32 bits), 
			; the result is always going to be inside EDX:EAX. 
			; You don't get to choose where it goes.
			
		; Ex:
			; mul ecx --> edx:eax <- eax * ecx
			; mul si --> dx:ax <- ax * si
			; mul al --> ax <- al * al
			
	; DIV to divide one unsigned number with another 
		; DIV arg
		; Opposite of MUL
		; Some forms:
			; arg of 8 bits
				; al <- ax / arg
				; ah <- ax % arg
			; arg of 16 bits
				; ax <- dx:ax / arg
				; dx <- dx:ax % arg
			; arg of 32 bits
				; eax <- edx:eax / arg
				; edx <- edx:eax % arg
		
		; Ex:
			; div ch --> al <- ax / ch
						;ah <- ax % ch
						
			; div esi --> eax <- edx:eax / esi
						; edx <- edx:eax % esi
						
			; div di --> ax <- dx:ax / di
						;dx <- dx:ax % di
						
						
			