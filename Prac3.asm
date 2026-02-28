;Lizzette Ramirez Fernandez 1291061
; Practica 3

;call delay20uS
;call delay4mS
;call delay1s
;call random;

nop

; *********************************

delay20uS:
	ldi R24, 62
	label:
	nop
		DEC R24
		NOP
		NOP
		brne label
ret
; *********************************

delay4mS:
	ldi R24, 90
	label1:
		ldi R25, 236
		label2:
			dec R25
			brne label2
		dec R24
		brne label1

			
ret

; **********************************

delay1s:						
	ldi R24,241				;1
	ciclo1:	
		nop					; 1n
		nop					; 1n
		nop					; 1n
		nop					;1n
		nop					;1n
		nop					;1n
		ldi R25,203			; 1n
		ciclo2:
			ldi R26,108		; nm
			ciclo3:	
				dec R26 	;nma
				brne ciclo3 ; n(2ma-1)
				dec R25		; nma
		brne ciclo2			;n(2m-1)
		dec R24				; nm
	brne ciclo1				; 2n-1
ret							; 5





random:
	
	ldi r24, 0x7E ;semilla distinta de 0
	
	mov r25, r24  ; copia el valor de r16 para no afectarlo
	lsl r25       ; 1 desplazamiento a la izquierda a r17, pero se necesitan 3
	lsl r25 
	lsl r25 
	eor r24, r25  ; nuevo valor de r24, como r24= r24<<3 ^ r24

	mov r25, r24
	lsl r25 
	lsl r25 
	lsl r25 
	lsl r25 
	lsl r25 
	eor r24, r25  ;nuevo valor de r24, como r24= r24<<5 ^ r24, pero ya fue modificado el r124 original

	mov r25, r24
	lsl r25 
	eor r24, r25

ret



