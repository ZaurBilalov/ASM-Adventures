format PE console
entry start

include 'win32a.inc' 
; ===============================================
section '.text' code readable executable

start:

	call read_hex
	mov edx, 1h
	

	push	0
	call	[ExitProcess]

include 'training.inc'

