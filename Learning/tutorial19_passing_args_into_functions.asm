	; Tutorial 19
	; args passing
	; Zaur Bilalov 2016
	
	; Global Arguments
	section	'.bss' readable	writeable
		arg1	dd	?
		arg2	dd	?
	section '.text' ...	
		mov 	dword[arg1],5
		mov		dword[arg2],2
		call	my_func

	; Stack
		push	5
		push	2
		call	my_func	
	my_func:
		mov		eax,dword[esi+8]
		add		eax,dword[esi+4]
		ret		8	; Restore --> Because we originally pushed 8 bits and esp became esp=8
		
	; Functions always return EAX