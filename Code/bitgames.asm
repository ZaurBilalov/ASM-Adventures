	; Practical bit games
	; Zaur Bilalov 2016	
	
format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
	; Challenge 1:
		; Access a specific bit (7th bit from the right)
	; Challenge 2:
		; Count the number of 1s
	; Challenge 3:
		; Calculate the module of x % 4
	; Challenge 4:
		; Pack 3 and 5 indo DL
	
	; JMP to the Challenge
	call	read_hex
	cmp		eax,1
	jz		challenge1
	cmp		eax,2
	jz		challenge2
	cmp		eax,3
	jz		challenge3
	cmp		eax,4
	jz		challenge4
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
challenge1:
	call read_hex
	ror		eax,8
	jnc		bit_7_is_zero
	mov 	eax,1
	call	print_eax
	jmp 	exit
bit_7_is_zero:
	mov		eax,0
	call	print_eax
	jmp 	exit
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
challenge2:
	call	read_hex
	mov 	ecx,32d
	mov 	edx,0
sum_bits:
	ror 	eax,1
	jnc 	bit_is_zero
	inc 	edx
bit_is_zero:
	loop 	sum_bits
output:
	mov		eax,edx
	call 	print_eax
	jmp 	exit
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
challenge3:
	call 	read_hex
	and 	eax,11b		; and 11b --> mod 4; and 111111b --> module 64
	call	print_eax
	jmp exit
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
challenge4:
	mov 	al,11111b
	mov		bl,000b
	mov 	dl,al
	shl		dl,3
	or		dl,bl
	movzx 	eax,dl
	call	print_eax_binary
	
exit:
	; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'