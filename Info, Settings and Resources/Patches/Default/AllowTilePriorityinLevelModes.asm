; Including vertical levels, though may not play nice with TranslucentForegroundInVerticalLevels UberASM.


; To do so in other level modes not specified here, find address by taking $0584B7 and adding the hex digits of the relevant level mode to this, and set it to $20

org $0584BE		;\ Enable Priority for Level Mode 07 & 08
db $20,$20		;/ Default $30 for all?

org $0584C1		;\ Enable Priority for Level Mode 0A
db $20			;/

org $0584C3		;\ Enable Priority for Level Mode 0C, 0D & 0E
db $20,$20,$20		;/

org $0584C8		;\ Enable Priority for Level Mode 11
db $20			;/

org $0584D5		;\ Enable Priority for Level Mode 1E & 1F
db $20,$20		;/