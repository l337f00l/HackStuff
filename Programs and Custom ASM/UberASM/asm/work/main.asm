incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7AC
autoclean $97ECD0
autoclean $93E4EB
autoclean $93E536
autoclean $95BE8D
autoclean $93CFFD
autoclean $93D65E
autoclean $93DF15
autoclean $93E4E6
autoclean $93E4F8
autoclean $93E51C
autoclean $93E02B
autoclean $93E531
autoclean $95BE82
autoclean $95BEBE
autoclean $94E6BA
autoclean $94F0AC
autoclean $94A48C
autoclean $959861
autoclean $95E923
autoclean $94E89A
autoclean $94FDB9
autoclean $97F4FA
autoclean $95F706
autoclean $9683D6
autoclean $94FFE5
autoclean $93F873
autoclean $95B7D2
autoclean $94E6A5
autoclean $94F097
autoclean $94A481
autoclean $95985C
autoclean $94FDB8
autoclean $97F4B7
autoclean $95F6E7
autoclean $9683BD
autoclean $959B67
autoclean $948CD1
autoclean $94FDCE
autoclean $959B62
autoclean $948CCC
autoclean $95F693
autoclean $93E418
autoclean $939F6A
autoclean $939ED7
autoclean $95E8DE
autoclean $AC82E3
autoclean $99F82D
autoclean $ADD715
autoclean $93E16B
autoclean $98D398
autoclean $93D95A
autoclean $94CCA9
autoclean $9580C2
autoclean $96F81B
autoclean $95D6E3
autoclean $93D934
autoclean $939F15
autoclean $96CA63
autoclean $90F54B
autoclean $938A82
autoclean $90F4F2
autoclean $90F4A9
autoclean $96AF2D
autoclean $908118
autoclean $90E869
autoclean $90F592

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
