	org 8000H



	call delay
	jmp $



	org 8500H
		
delay:
	mov r2, #0
	mov r1, #0	
	
loop1:
	DJNZ r1,loop1
	DJNZ r2,loop1	
	ret
		
	END
