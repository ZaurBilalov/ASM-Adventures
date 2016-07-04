	; Tutorial 9
	; Signed Operations
	; Zaur Bilalov 2016
	
	; NEG - Negate
	; NEG arg
		; neg allows us to get the 2's complement of the argument
		; TL;DR: changes the sign of the number
	
	; Sign Extentions:
		; Adding 0s to the positive number
		; 1s to the negative number
		; Extending While moving:
			; MOVSX and MOVZX
		; Extending in place
			; CBW and CWDE
			; CWD and CDQ
		
			; Ex of MOVZX (for unsigned numbers):
				; MOVZX dest(must be larger), source
					movzx eax,bl
				; Equivalent to:
					mov eax,0
					mov al,bl
		
			; Ex of MOVSX (for signed numbers):
				; MOVSX dest(must be larger), source
					movsx eax,bl
						; if the leading bit is 1 adds bits accordingly and vice versa
		
			; Unsigned extention Ex:
				mov al,11010000b
				movzx cx,al
				; cx == 0000000011010000
		
			; Signed Extention:
				mov al, 11010000b
				movsx cx,al
				; cx == 1111111111010000b
		
		; CBW - Convert Byte to Word (word means two bytes - one byte is 8 bits) --> extend with leading bit
			; Has no arguments
			; Sign extends AL to AX
		; CWDE - Convert word to doubleword --> extend with leading bit
			; Has no arguments
			; Sign extends AX to EAX
			
		; CWD - Convert word to Doubleword
			; had no args
			; sign extends AX to DX:AX (16bits to 32bits)
		; CDQ - Convert Doubleword to Quadword
			; has no args
			; sign extends EAX to EDX:EAX (32bits to 64bits)
	
		; IMUL and IDIV
			; INUML and IDIV are the sign versions of MUL and DIV
				; Understand the two's complement representation	
			;One can think of those instructions as doing the following: 
				; Remember the original signs of the operands. 
				; Convert all numbers to positive numbers. 
				; Invoke Multiplication or Division. 
				; Convert the result to negative if necessary. 
		