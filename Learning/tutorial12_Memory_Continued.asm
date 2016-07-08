	; Tutorial 12
	; Memory 2
	; Zaur Bilalov 2016	
	
	; Simple data Definitions
		a	db	0abh					; Data Byte	--> one byte
	 
		b	dw	0cc99h					; Data Word	--> two bytes
	 
		c 	dd	12345678h				; Double Word --> 4 bytes
	 
		d	dq	0aabbccdd11223344h		; Quad Word --> 8 bytes
	 
	; Multi Data Definitions
		array_bytes		db	4	dup	(12h)						; 4 consecutive bytes of 0x12:
		
		array_words		dw	5	dup	(5678h)						; 5 consecutive words of 0x5678:
		
		array_dwords	dd	6	dup	(0aabbccddh)				; 6 consecutive dwords of 0xaabbccdd
		
		array_qwords	dq	7	dup	(9999666644448888h)			; 7 consecutive qwords of 0x9999666644448888
	
	;	More dup
		repeat_byte     db 	4 	dup (1,2,3,4,5)			; Repeat the sequence (1,2,3,4,5) of 5 bytes, 4 times.

		repeate_word    dw 	3	dup	(6,7)				; Repeat the sequence of words: (0006h,0007h) 3 times.

		repeate_word2   dd	3*2 dup	(0abcd1234h)		; Repeat the dword 0xabcd1234h 2*3 = 6 times.

	; Check	/code/memory/others	for the continuing memory lessons in code
	
	; LEA --> Use brackets to add number EX:
		mov eax,4
		lea edx,[eax+5*4]