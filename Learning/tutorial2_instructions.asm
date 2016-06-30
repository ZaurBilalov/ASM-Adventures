	; Tutorial 2
	; Instructions
	; Zaur Bilalov 2016
	
	; MOV - instructs to move data
		; MOV destination, source
		; data is copied
		 mov eax, 8CBh -> h means base 16
		 mov ecx, edx -> 32 bit copy
		 mov si, cx -> 16 bit copy
		
	; ADD - allows to add numbers
		; ADD destination, source
		; destination <- destination + source
		 add esi,11b --> esi <- esi + 3 (b stands for binary)
		 add dx,si --> dx <- dx + si (16bit addition)
	
	; SUB - allows to subtract numbers
		; SUB destination, source
		; destination <- destination - source
			; Equivalent to destination <- destination + (-source), where -source is found by the two's complement method.
	
	
; Exercises: To be done if needed.