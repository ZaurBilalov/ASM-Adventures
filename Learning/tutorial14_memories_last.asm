	; Tutorial 14
	; Memories Last Part
	; Zaur Bilalov 2016
	
	; Array of Structs EX:
		struct DOG
			color	dd	?
			age		dd	?
		ends
		
		NUM_DOGS = 12
		section '.bss' readable writeable
			my_dogs		db	NUM_DOGS*sizeof.DOG	dup	?
		section	'.text' code readable	executable
		start:	
			move 	esi,my_dogs
			lea		esi, [esi + ecx*sizeof.DOG]		; ecx is the index number
			mov		eax, dword[esi+DOG.color]
			mov 	edx, dword[esi+DOG.age]
			
	; You can create 2 Dimentional Array using Bytes as Index
	
	; Binary Tree can also be represented by expressing every fruit of the tree as a byte in the array.
	
	