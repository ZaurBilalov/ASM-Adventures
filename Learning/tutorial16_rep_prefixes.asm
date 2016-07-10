	; Tutorial 16
	; REP Prefixes
	; Zaur Bilalov 2016
	
	; Ex for clearing an Array:
		my_arr	db	 ARR_LEN	dup	(0)
		
		mov		edi,my_arr
		mov		ecx,ARR_LEN
		xor		al,al
		
		jecxz	finish		 ; if ecx is zero
	next_element:
		stosb
		loop 	next_element
	finish:
	
	; We can use REP to repeat 
	my_arr	db	 ARR_LEN	dup	(0)
		
		mov		edi,my_arr
		mov		ecx,ARR_LEN
		xor		al,al
		
		rep stosb
		
	; REP args
		; Works with few instructions
		; It repeats the string instructions ECX times --> ecx--
	
	; SCAS - Scan String
		; Some Forms:
			SCASB 	;Byte
				; Compare al with [edi] and Set flags accordingly
				; Advance edi 1 byte (According to DF)
			SCASW 	;Word
				; Compare ax with [edi] and Set flags accordingly
				; Advance edi 2 byte (According to DF)
			SCASD 	;DWord
				; Compare eax with [edi] and Set flags accordingly
				; Advance edi 4 byte (According to DF)
		; Ex for finding NULL in a string:
		a_str	db	"I am a string",0
			
			mov 	edi,a_str
			xor 	al,al
			
		next_char:
			scasb
			jnz		next_char
		; Or we can just use REPNZ
		a_str	db	"I am a string",0
			
			mov 	edi,a_str
			xor 	al,al
			
			repnz scasb
			
	; REPNZ - repeat as long as not zero (as long as ZF=0)
	; REPZ	- repeat as long as zero (as long as ZF=1)

	; CMPS - Compare string operand --> sets flags
		CMPSB				; cmp [esi] [edi]
		CMPSW				; cmp [esi] [edi]
		CMPSD				; cmp [esi] [edi]