; By SJandCharlieTheCat

db $37
JMP MarioBelow : JMP MarioAbove : JMP MarioSide
JMP SpriteV : JMP SpriteH : JMP MarioCape
JMP TopCorner : JMP BodyInside : JMP HeadInside
JMP WallFeet : JMP WallBody

SpriteV:
SpriteH:
        LDA $14AF
        BEQ ON
	RTL
MarioCape:
	RTL
MarioBelow:
MarioAbove:
MarioSide:
TopCorner:
BodyInside:
HeadInside:
WallFeet:
WallBody:
	LDA $14AF	;\ If On/Off Switch is Off, Return
	BNE Return	;/
	JSL $00F606	; Change $00F606 with $00F5B7 if you want it to hurt the player instead of killing.

Return:
	LDA $14AF
	BEQ ON
	RTL

ON:
	LDY #$10	;act like tile 130
	LDA #$30
	STA $1693
	RTL
	
print "An on-off death block, solid when the switch is on"