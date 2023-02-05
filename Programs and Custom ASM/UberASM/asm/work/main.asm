incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7D3
autoclean $96BA51
autoclean $93F8AD
autoclean $94C626
autoclean $968168
autoclean $93D97A
autoclean $93E3EF
autoclean $93E4F9
autoclean $93F8A8
autoclean $93FA77
autoclean $94A4C5
autoclean $93FFDD
autoclean $94C621
autoclean $96815D
autoclean $968199
autoclean $94FC7F
autoclean $95B80A
autoclean $9681AB
autoclean $94D695
autoclean $96BD47
autoclean $94E6E4
autoclean $94CC12
autoclean $958109
autoclean $94FC6A
autoclean $95B7F5
autoclean $9681A6
autoclean $94D694
autoclean $96BD04
autoclean $94ED17
autoclean $94ED2F
autoclean $94D6AA
autoclean $94ED12
autoclean $94ED2A
autoclean $95FF8D
autoclean $948EFF
autoclean $948BBB
autoclean $93D0EE
autoclean $95CE00
autoclean $ACD82E
autoclean $ACC84B
autoclean $93E15F
autoclean $959371
autoclean $95B707
autoclean $959240
autoclean $95921D
autoclean $938590
autoclean $93A4C2
autoclean $90FD1E
autoclean $90981C
autoclean $959181
autoclean $928B98
autoclean $9580B0

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
