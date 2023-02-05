incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7D3
autoclean $96A7B8
autoclean $93E50F
autoclean $948F1C
autoclean $959ACB
autoclean $928B2B
autoclean $93D09E
autoclean $93D104
autoclean $93E50A
autoclean $93FFEF
autoclean $948BD4
autoclean $93E2FD
autoclean $948F17
autoclean $959AC0
autoclean $959AFC
autoclean $9597DA
autoclean $95B763
autoclean $95E7F3
autoclean $94A4DC
autoclean $96B9FF
autoclean $94C675
autoclean $93E3A6
autoclean $94E876
autoclean $9597C5
autoclean $95B74E
autoclean $95E7EE
autoclean $94A4DB
autoclean $96B9BC
autoclean $94CBFF
autoclean $94E6D6
autoclean $94A4F1
autoclean $94CBFA
autoclean $94E6D1
autoclean $95F2EB
autoclean $958012
autoclean $93D034
autoclean $93D026
autoclean $959780
autoclean $ACBE13
autoclean $9ED984
autoclean $938A87
autoclean $94AE59
autoclean $9580D1
autoclean $959669
autoclean $94C661
autoclean $90F637
autoclean $90F625
autoclean $90E121
autoclean $908118
autoclean $9595E9
autoclean $90F61C
autoclean $90F602

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
