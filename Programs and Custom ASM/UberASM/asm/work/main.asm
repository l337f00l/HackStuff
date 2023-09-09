incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7D3
autoclean $9581AC
autoclean $93AEBD
autoclean $93D105
autoclean $95825B
autoclean $928B2B
autoclean $939E77
autoclean $939E84
autoclean $93AEB8
autoclean $93D095
autoclean $93D0EB
autoclean $939E91
autoclean $93D100
autoclean $958250
autoclean $95828C
autoclean $95809E
autoclean $95983B
autoclean $93F9E1
autoclean $95985D
autoclean $959AC0
autoclean $94AE40
autoclean $94C662
autoclean $95D666
autoclean $959BE3
autoclean $95B715
autoclean $958299
autoclean $93AECA
autoclean $95B74F
autoclean $958089
autoclean $959826
autoclean $93F9D6
autoclean $959858
autoclean $94C661
autoclean $95D623
autoclean $959BC4
autoclean $95B6FC
autoclean $93D422
autoclean $94EC8A
autoclean $94C677
autoclean $93D41D
autoclean $94EC85
autoclean $94EC31
autoclean $948CC4
autoclean $938A82
autoclean $938589
autoclean $94C61C
autoclean $9EE248
autoclean $9B8623
autoclean $ACC67C
autoclean $90F0C8
autoclean $96F6D5
autoclean $93FFCE
autoclean $93A46A
autoclean $94AE08
autoclean $96F50A
autoclean $93A42C
autoclean $939E63
autoclean $939E19
autoclean $94EBC2
autoclean $90F0B5
autoclean $908E9A
autoclean $908E8E
autoclean $908E82
autoclean $939DA8
autoclean $908118
autoclean $908E79
autoclean $908E5F

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
