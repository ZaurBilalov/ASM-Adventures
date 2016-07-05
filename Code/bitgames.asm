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
	
	; JMP to the Challenge
	call 	read_hex
	cmp 	eax,1
	jz		challenge1
	cmp		eax,2
	jz		challenge2
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
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
challenge2:
	call read_hex
	mov ecx,32d
	mov edx,0
sum_bits:
	ror eax,1
	jnc bit_is_zero
	inc edx
bit_is_zero:
	loop sum_bits
output:
	mov eax,edx
	call print_eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
exit:
	; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'