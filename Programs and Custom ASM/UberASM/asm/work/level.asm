!level	= $010B|!addr	;Patches rely on this, changing this is bad. Don't.

ORG $05D8B7
	BRA +
	NOP #3		;the levelnum patch goes here in many ROMs, just skip over it
+
	REP #$30
	LDA $0E		
	STA !level
	ASL		
	CLC		
	ADC $0E		
	TAY		
	LDA.w $E000,Y
	STA $65		
	LDA.w $E001,Y
	STA $66		
	LDA.w $E600,Y
	STA $68		
	LDA.w $E601,Y
	STA $69		
	BRA +
ORG $05D8E0
	+

ORG $00A242
	autoclean JML main
	NOP
	
ORG $00A295
	NOP #4

ORG $00A5EE
        autoclean JML init

freecode

;Editing or moving these tables breaks things. don't.
db "uber"
level_asm_table:
dl null_pointer
dl $94C636
dl null_pointer
dl null_pointer
dl null_pointer
dl $94C668
dl $94C668
dl $93F9E1
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $95808E
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93D0EF
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93FFDE
dl $95F2C9
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $958290
dl $95982C
dl null_pointer
dl $95F2C9
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $94C668
dl $948CC3
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93AECA
dl $93AECA
dl null_pointer
dl $93AECA
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $94AE46
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer

level_init_table:
dl null_pointer
dl $94C621
dl null_pointer
dl null_pointer
dl null_pointer
dl $94C653
dl $94C653
dl $93F9D6
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $958089
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93D0EE
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93FFDD
dl $95F286
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $958271
dl $959813
dl null_pointer
dl $95F286
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $94C653
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93D422
dl $93D422
dl $93D422
dl $93D09A
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer

level_nmi_table:
level_load_table:
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93FFF3
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl $93D41D
dl $93D41D
dl $93D41D
dl $93D095
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer
dl null_pointer

db "tool"

main:
	PHB
	LDA $13D4|!addr
	BNE +
	JSL $7F8000
+
	REP #$30
	LDA !level
	ASL
	ADC !level
	TAX
	LDA.l level_asm_table,x
	STA $00
	LDA.l level_asm_table+1,x
	JSL run_code		
	PLB
	
	LDA $13D4|!addr
	BEQ +
	JML $00A25B|!bank
+	
	JML $00A28A|!bank

init:
	PHB
	LDA !level
	ASL
	ADC !level
	TAX
	LDA.l level_init_table,x
	STA $00
	LDA.l level_init_table+1,x
	JSL run_code
	PLB
	
        PHK
        PEA.w .return-1
        PEA $84CE
        JML $00919B|!bank
.return
	JML $00A5F3|!bank
	
run_code:
	STA $01
	PHA
	PLB
	PLB
	SEP #$30
	JML [!dp]
	
null_pointer:
	RTL
