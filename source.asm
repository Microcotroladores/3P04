#INCLUDE<P16F84A.INC>
	      __CONFIG _XT_OSC & _CP_OFF & _PWRTE_ON & _WDT_OFF
V1	  	EQU		  0CH
V2	  	EQU	  	0DH
V3	  	EQU	  	0EH
V4	  	EQU	  	0FH
CONT	  EQU	  	10H
		    ORG     00H
CONF: 	BSF	  	STATUS,RP0
	    	CLRF  	TRISA
	    	CLRF	  TRISB
	    	BCF		  STATUS,RP0
	    	CLRF	  PORTB
ROOT: 	MOVLW	  D'45'
HOME: 	MOVWF	  CONT
	    	MOVF	  CONT,W
	    	CALL	  SEQ
	    	MOVWF	  PORTB
	    	CALL	  TIME3
	    	NOP
	     	CALL	  TIME1
	    	NOP
	    	DECFSZ	CONT,0
	    	GOTO	  HOME
	    	GOTO	  ROOT
TIME1:	MOVLW	  06H
		    MOVWF	  V4
		    NOP
		    DECFSZ	V4,1
	    	GOTO	  $-2
	  	  RETURN
TIME3:	MOVLW	  D'10'
    		MOVWF	  V1
    		MOVLW	  D'101'
    		MOVWF	  V2
    		MOVLW	  D'246'
    		MOVWF	  V3
    		NOP
    		DECFSZ	V3,1
    		GOTO	  $-2
    		DECFSZ	V2,1
    		GOTO	  $-6
    		DECFSZ	V1,1
    		GOTO	  $-D'10'
    		RETURN
SEQ:  	ADDWF	  PCL,1
    		RETLW   00H
    		RETLW   6DH	;S
    		RETLW   5CH	;O
    		RETLW   78H	;t
    		RETLW   1CH	;U
    		RETLW   77H	;A
    		RETLW   08H	;_
    		RETLW   79H	;E
    		RETLW   5EH	;d
    		RETLW   08H	;_
    		RETLW   38H	;L
    		RETLW   77H	;A
    		RETLW   30H	;I
    		RETLW   39H	;C
    		RETLW   79H	;E
    		RETLW   73H	;P
    		RETLW   6DH	;S
    		RETLW   79H	;E
    		RETLW   08H	;_
    		RETLW   77H	;A
    		RETLW   78H	;t
    		RETLW   54H	;n
    		RETLW   79H	;E
    		RETLW   3EH	;V
    		RETLW   08H	;_
    		RETLW   1CH	;u
    		RETLW   6DH	;s
    		RETLW   08H	;_
    		RETLW   6EH	;y
    		RETLW   08H	;_
    		RETLW   6DH	;S
    		RETLW   39H	;c
    		RETLW   77H	;A
    		RETLW   50H	;r
    		RETLW   73H	;P
    		RETLW   08H	;_
    		RETLW   54H	;n
    		RETLW   5CH	;o
    		RETLW   5EH	;d
    		RETLW   08H	;_
    		RETLW   50H	;r
    		RETLW   79H	;E
    		RETLW   78H	;t
    		RETLW   6DH	;S
    		RETLW   30H	;I
    		RETLW   4FH	;M
	    	END
