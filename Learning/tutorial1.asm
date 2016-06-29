	; The program is written in the memory
	; The memory is made of Bits
	; A byte is a set of 8 consecutive bits.
	; They are represented by two Hexadecimal digits (Nibble).
	
	; An Example:
		; 89 C1 01 C9 01 C1 	-	The numbers are calles OPCODES or operation codes.
		; 89 C1 - mov ecx,eax
		; C9 01 - add ecx,ecx
		; 01 C1 - add ecx,eax
	
	; x86 has very efficient internal places to store data - Registers - they are on the processor itself
	; Basic registers: (Each is made of 32 bits)
	; eax - Accumulator
	; ebx - Base index
	; ecx - Counter
	; edx - Data register
		; "e" stands for EXTENDED
		
	; Register Extentions:
	; eax (32bit)
		; ax(16bit)
			; ah(8bit) - al(8bit)
		; ax is just another name for the lwest 16 bits of eax
			; al and ah are just another names for bits 0:7 and bits 8:15 of eax
			; h stands for high and l stands for low
		; Example: if eax contains 0XABC1234
			; ax contains 0x1234
				; ah contains 0x12 and al contains 0x34
	
		; So
		; 32     16     8    8
		; eax -> ax --> ah & al
		; ebx -> bx --> bh & bl
		; ecx -> cx --> ch & cl
		; edx -> dx --> dh & dl
	
		; 64 bit extentions (Long mode)
		; 64      32
		; rax --> eax
		; rbx --> ebx
		; rcx --> ecx
		; rdx --> edx
	
	; More Registers:
		; Index registers:
			; esi(32bit) - Source Index register --> si(16bit)
			; edi - Desination Index register
		; Instruction Pointer:
			; eip(32bit) --> ip(16bit)
		; Flags register
		; Stack pointers:
			; esp(32bit) - Stack Pointer --> sp(16bit)
			; ebp - Base Pointer
		; And of course there are more