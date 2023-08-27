incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7D3
autoclean $948FF7
autoclean $90F097
autoclean $928B92
autoclean $9490A6
autoclean $908F5C
autoclean $90F078
autoclean $90F085
autoclean $90F092
autoclean $90F0A4
autoclean $90FB7D
autoclean $90FB92
autoclean $928B8D
autoclean $94909B
autoclean $9490D7
autoclean $948F02
autoclean $9490F9
autoclean $93E504
autoclean $94911B
autoclean $949152
autoclean $9491C7
autoclean $95810C
autoclean $958193
autoclean $93A4C2
autoclean $90FD1E
autoclean $949219
autoclean $948EED
autoclean $9490E4
autoclean $93E4F9
autoclean $949116
autoclean $949151
autoclean $949184
autoclean $9580ED
autoclean $95817A
autoclean $93E15F
autoclean $948F24
autoclean $949167
autoclean $93E15A
autoclean $948F1F
autoclean $948C6F
autoclean $90F060
autoclean $90F038
autoclean $90F02A
autoclean $90EFE5
autoclean $ABFB20
autoclean $90EF7A
autoclean $ACBEFF
autoclean $90ED66
autoclean $90ECDF
autoclean $90EC12
autoclean $90EBBB
autoclean $90EA9E
autoclean $90EA70
autoclean $90EA2B
autoclean $90E9E1
autoclean $90981C
autoclean $908ECE
autoclean $908EC2
autoclean $908E26
autoclean $90E970
autoclean $908E19
autoclean $908E10
autoclean $90E929

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
