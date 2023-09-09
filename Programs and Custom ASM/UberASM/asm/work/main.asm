incsrc "asm/work/library.asm"
incsrc "../../OtherUberASMStuff/macro_library.asm"
!level_nmi	= 0
!overworld_nmi	= 0
!gamemode_nmi	= 1
!global_nmi	= 0

!sprite_RAM	= $7FAC80

autoclean $93F7D3
autoclean $96BAC9
autoclean $93E4FE
autoclean $93F89B
autoclean $95CE06
autoclean $93D013
autoclean $93D4F6
autoclean $93D97A
autoclean $93E4F9
autoclean $93E50B
autoclean $93F881
autoclean $93E2FD
autoclean $93F896
autoclean $95CDFB
autoclean $95CE37
autoclean $95818F
autoclean $95B80A
autoclean $959BA7
autoclean $95E7D4
autoclean $94CBFB
autoclean $94FF14
autoclean $95FF8D
autoclean $94FFDA
autoclean $96BE82
autoclean $95F33A
autoclean $968176
autoclean $95810F
autoclean $93E3A6
autoclean $95E80A
autoclean $95817A
autoclean $95B7F5
autoclean $959B9C
autoclean $95E7CF
autoclean $94CBFA
autoclean $94FFD9
autoclean $96BE3F
autoclean $95F31B
autoclean $96815D
autoclean $94A4B0
autoclean $959818
autoclean $94FFEF
autoclean $94A4AB
autoclean $959813
autoclean $9580BB
autoclean $94FFC1
autoclean $93A4C6
autoclean $939F91
autoclean $94FF6A
autoclean $9CB71A
autoclean $9AFD4D
autoclean $AC86AC
autoclean $93E15F
autoclean $96BDA9
autoclean $94FDDE
autoclean $94FF00
autoclean $94E861
autoclean $96B9B7
autoclean $94FC49
autoclean $94E842
autoclean $93D4D7
autoclean $94ECC7
autoclean $939F83
autoclean $928B8D
autoclean $90F0A9
autoclean $90981F
autoclean $939F12
autoclean $908E25
autoclean $90FD24
autoclean $939ECB

!previous_mode = !sprite_RAM+(!sprite_slots*3)

incsrc level.asm
incsrc overworld.asm
incsrc gamemode.asm
incsrc global.asm
incsrc sprites.asm
incsrc statusbar.asm


print freespaceuse
