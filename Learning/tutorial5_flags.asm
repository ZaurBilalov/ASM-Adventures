	; Tutorial 5
	; Flags
	; Zaur Bilalov 2016
	
	; Flags Register - 32 bit - 64 bit in Long mode
	; Every bit is a flag - True or False
	; ZF - zero flag
		; it sets to zero if the last calculation was resulted in zero
		; Ex:
			mov edx,3h
			mov eax,3h
			sub eax,edx
		; it sets to one if the last calculation was a nonzero
		; Ex:
			mov edx,6h
			mov eax,3h
			add eax,edx
			
	; SF - sign flag
		; The sign equals the most significant bit of the last result
		; Ex:
			mov edx,0
			dec edx
			; edx == 0xffffffff
			; SF = 1
		; Ex:
			mov edx,0
			inc edx 
			; edx == 1 --> 0000001
			; Sign flag is 0
	
	; CF - carry flag
		; The carry flag understands unsigned addtion and subtraction
		; It sets to 1 if a carry happened
			; Ex:
			mov eax,0ffffffffh
			add eax,1
			; eax == 0
			; Carry is set to 1
		; It is also set to 1 if the sub requires to borrow 1 from the left side
			; Ex:
			mov ecx,0
			mov edx,11b
			sub ecx,edx
			; ecx == 0xfffffffd
			; Carry flag is set to 1
			
	; OF - Overflow flag
		; Addition:
			; Set if two positive numbers has a negative result
			; Set if the addition of the two negative numbers has positive result
		; Subtraction:
			; Set if "positive-negative" has a negative result
			; Set if "negative-positive" has a positive result
		; Tells you if anything went wrong with the arithmetic calculation
		; It checks the msb(most significant bit) to decide
		; Ex:
			mov al,7fh
			mov cl,1h
			add al,cl
			; al == 0x80
			;Overflow Flag is set
		; Ex:
			mov eax,7fffffffh
			mov edx,1h
			add eax,edx
			; eax == 0x80000000
			; Overflow is set
		; Ex:
			mov eax,7fffffffh
			mov edx,1h
			sub eax,edx
			; eax == 0x7ffffffe
			; OF is cleared
		; Ex:
			mov dx,6342h
			mov cx,2000h
			add cx,dx
			; cx = 0x8342
			; overflow is set