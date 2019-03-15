	org 8000H



	call delay131
	jmp $



	org 8500H
		
;==============================
;
; procedura opóznienia o ok. 130 ms
; niszczy zawartosc R1 i R2
;
;==============================
		
delay131:
	mov r2, #0
	mov r1, #0	
;==============================
;
; procedura opóznienia o wartosc 2* R1R2 us
; przy wywolaniu w R2 starszy bajt, w R1 mlodszy bajt
; opoznienia
;
;==============================	
delay:
	DJNZ r1,delay
	DJNZ r2,delay	
	ret
		
;==============================
;
; koniec procedury DELAY
;
;==============================		
		
	END
