	; Tutorial 8
	; Structural Branching
	; Zaur Bilalov 2016
	
	; for Loop
	
	; for ecx from 0 to 99 do: 
		;eax <- eax + ecx     
	; end for 
	
	mov ecx,0 										
for_loop:  
	add eax,ecx  
	
	inc ecx  
	cmp ecx,100d 
	
	jnz for_loop
	
	; while Loop
	
	; ecx <- 0
	; eax <- 0 
	; while eax < 1000:   
	;	eax <- eax + ecx  
	;	ecx <- ecx + 1  	
	; end while
	
	mov  ecx,0  
	mov  eax,0 
while_loop: 
	cmp eax,1000d  
	jae end_while
	add eax,ecx  
	inc ecx  
	jmp while_loop
end_while
	