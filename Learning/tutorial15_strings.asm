	; Tutorial 15
	; Strings
	; Zaur Bilalov 2016
	
	; ASCII - American Standard Code for Information Interchange
	; Every symbol is of size 7 bits
	; It is a worldwide standard
	
	; To Represent string via ascii, we can just output the corresponding numbers - this is called, string of bytes
		; Hello Word --> 48 65 6c 6c 6f 20 77 6f 72 6c 64
		
	; To get the size of a string we can use one of the 2 methods:
		; Length Prefix - Pascal style
			; Hello is represented by --> ~05~ 48 65 6c 6c 6f --> 05 is the size of the string
		; Null Terminated - C Style
			; Hello has a null at the end -->  48 65 6c 6c 6f ~00~ --> 00 is the null
			
	; Windows API uses NULL terminator method
	
	; Decleration of Strings:
		; Following declerations are equivalent
			section	'.data' data readable writeable
				str1	db	'Hello World',0
				str2	db	"Hello World",0
				str3 	db	48h, 65h, 6ch, 6ch, 6fh, 20h, 77h, 6fh, 72h, 6ch, 64h,0
				str4	db	'Hell'
						db	'o world',0
				str5	db	'Hello',20h,'World',0
		; New Line:
			; In windows, a new line is marked by 0xd,0xa
			; In linux, it is marked by 0xa
			
		; STOS - Store Strings
			; Few Forms:
				STOSB	;Byte
					; [edi] <- al
					; edi is advanced 1 byte	(according to df)
				STOSW	; Word
					; [edi] <- ax
					; edi is advanced 2 byte	(according to df)
				STOSD 	; Double word
					; [edi] <- eax
					; edi is advanced 4 byte	(according to df)
					
		; Direction flag --> you have the control of this flag
			; DF=0 pointers increase - STOS
			; DF=1 pointers decrease - STOS
			; to change it CLD to 0, STD to 1
					; Always remember to CLD after usage of STD to avoid errors.
		
		; LODS - Load String
			; Few Forms:
				LODSB 	; Byte
					; al <- [esi]
					; edi is advanced 1 byte	(according to df)
				LODSW	; Word
					; ax <- [esi]
					; edi is advanced 2 bytes	(according to df)
				LODSD	; Double Word
					; eax <- [esi]
					; edi is advanced 2 bytes	(according to df)
			; Example:
				my_arr	dd	ARR_LEN	dup (?)
				
				mov		esi, my_arr
				mov		ecx, ARR_LEN
				xor		edx,edx
				
			next_element:
				lodsd
				add		edx,eax
				loop 	next_element
				
		; MOVS - Move data from String to string
			; Few forms;
				MOVSB
					;[edi] <- [esi] (1byte)
					; esi and edi are advanced 1 byte (according to df)
				MOVSW
					;[edi] <- [esi] (2byte)
					; esi and edi are advanced 2 byte (according to df)
				MOVSD
					;[edi] <- [esi] (4byte)
					; esi and edi are advanced 4 byte (according to df)
					
		; ESI is the source, EDI is the destination (This applies to everything on x86)
			
					
					
					
					
					
					
					