	; Tutorial 13
	; Structures
	; Zaur Bilalov 2016	
	
	; Similar to C++, so I won't explain. Just an Ex:
	
	struct PNT
		x	dd	?		; can also pick default values --> x	dd	5
		y	dd 	?
	ends
	
	section '.bss' readable writeable
			my_pnt	PNT ?		; can also define here --> ? becomes 4,3
	section	'.text' code readable executable
	start:
			mov		dword[my_pnt.x],4
			mov 	dword[my_pnt.y],3
	; sizeof.STRUCT	-->	means the byte size of the struct, EX: in the example above dd+dd is 8 bytes.
	
	; You can declare struct with another struct EX:
	
	struct PNT
		x	dd	?
		y	dd	?
	ends
	
	struct CLINE
		color	dd	?
		p_start	dd	?
		p_end	dd	?
	ends
	
	section	'.data' data readable writeable
			my_line	CLINE	0,<3,4>,<1,5>
	
	section '.text' code readable executable
	start:
			mov eax,dword[my_line.color]
			mov edx,dword[my_line.p_start.x]
			
			
	; We can also do anonymous structs EX:
	
	struct	DLINE
		struct
			red		db	?
			green	db	?
			blue	db	?
		ends
		p_start		PNT	?
		p_end		PNT	?
	ends
	
	
	; Unions
	
	struct IPV4
		union
			struct
				a	db	?
				b	db	?
				c	db	?
				d	db	?
			ends
			addr 	dd	?
		ends
	ends
	section	'.data' data readable writeable
		lhost	IPV4	<127,0,0,1>	
	section '.text' code readable executable
	start:
		mov 	eax,dword[lhost.addr]	;-->	0x0100007f
		mov 	eax,dword[lhost]		;-->	0x0100007f
		mov 	bl,	byte[lhost.d]		;-->	1
		mov		bl,	byte[lhost+3]		;-->	1
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	