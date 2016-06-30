; Example for a simple FASM console program.

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
    
	call read_hex
	mov edx,eax
	call read_hex
	add eax,edx
	call print_eax
	
	; Divide al by dl --> always prints 1
	;call read_hex
	;mov dl,al
	;div dl
	;call print_eax
	
	
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

