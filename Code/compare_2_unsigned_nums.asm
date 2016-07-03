format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:

	call read_hex			; get the first number
	mov edx,eax				; store it in edx
	call read_hex			; get the second number
	
	cmp eax,edx				; simulate the sub
	jz equal				; jump if equal
	jc bigger				; jump is carry flag is set
	
	mov eax,2				
	call print_eax			; 2 means second number is bigger
	
	jmp exit
	
bigger:
	mov eax,1
	call print_eax			; 1 means first number is bigger
	jmp exit

equal:
	mov eax,0h
	call print_eax
	
exit:
	; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'