	; Tutorial 10
	; Bitwise Instructions and Operations
	; Zaur Bilalov 2016	
	
	; Check /code/ folder for practical codes
	
	NOT dest
		; NOT flips every bit
		; Ex:
		MOV ch,10011101
		NOT ch
		;	ch=01100010
			; Not the same operation as NEG; NEG adds 1 after flipping
			
	AND dest,src
		; Processes two bits by AND logic gate
		; Ex:
		MOV al,11110000
		MOV dh,11001100
		AND al,dh
		;	al=11000000
		
	OR dest,src
		; Processes two bits by OR logic gate
		; Ex:
		MOV al,11110000
		MOV dh,11001100
		OR al,dh
		;	al=11111100
		
	XOR dest,src
		; Processes two bits by XOR logic gate
		; Ex:
		MOV al,11110000
		MOV dh,11001100
		XOR al,dh
		;	al=00111100
			; To zero something out, for example EAX, we use XOR: "xor eax,eax" --> opcode is two bits shorter than: "mov eax,0"
			
	SHL dest,k
	SHR dest,k
		; Shifts bits k units to left or right and makes carry the last bit kicked out of the boundary
		; The K can only be a small number or the CL register
		; Left Shift is multiplication by 2 (10 in decimals)
		;(!) Right shift is division by 2 (does not divide in signed numbers).
	SAR dest,k
			; Sign understanding versions of SHR
	SAL desk,k
			; Just a different name for SHL
			
	ROL dest,k
		; Rotates the bits of dest k times to the left
		; Carry contains the last bit shifted
								; k can be a small number or the CL register
	ROR dest,k
		; Rotates the bits of dest k times to the right
		; Carry contains the last bit shifted
								; k can be a small number or the CL register
		; Ex:
		mov al,01001011b
		ror al,1
		; 	al = 10100101
		;	carry = 1