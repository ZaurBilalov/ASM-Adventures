	; Tutorial 6
	; JZ/JNZ Branching
	; Zaur Bilalov 2016
	
	; jmp - changes the value of eip, unconditionally
	
	; Jcc - is a conditional jump --> cc is the sign of flags
	
	; Ex: Jump Zero --> jz
		mov  ax,1
		dec ax			; ax == 0
		jz my_label
		add ax,5		; this line is skipped due to the jmp
my_label:
		add ax,2		;Jump is takem, ax==2
		
	; JNZ operations does the opposite
	; JC/JNC - carry flag
	; JO/JNO - overflow flag
	