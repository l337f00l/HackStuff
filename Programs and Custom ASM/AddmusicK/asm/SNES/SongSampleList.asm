org $13DA2C


db $53, $54, $41, $52				; Needed to stop Asar from treating this like an xkas patch.
dw SGEnd-SampleGroupPtrs-$01
dw SGEnd-SampleGroupPtrs-$01^$FFFF
SampleGroupPtrs:


dw $0000, SGPointer01, SGPointer02, SGPointer03, SGPointer04, SGPointer05, SGPointer06, SGPointer07, SGPointer08, SGPointer09, SGPointer0A, SGPointer0B, SGPointer0C, SGPointer0D, SGPointer0E, SGPointer0F
dw SGPointer10, SGPointer11, SGPointer12, SGPointer13, SGPointer14, SGPointer15, SGPointer16, SGPointer17, SGPointer18, SGPointer19, SGPointer1A, SGPointer1B, SGPointer1C, SGPointer1D, SGPointer1E, SGPointer1F
dw SGPointer20, SGPointer21, SGPointer22, SGPointer23, SGPointer24, SGPointer25, SGPointer26, SGPointer27, SGPointer28, SGPointer29, SGPointer2A, SGPointer2B, SGPointer2C, SGPointer2D, SGPointer2E, SGPointer2F
dw SGPointer30, SGPointer31


SGPointer01:

SGPointer02:

SGPointer03:

SGPointer04:

SGPointer05:

SGPointer06:

SGPointer07:

SGPointer08:

SGPointer09:

SGPointer0A:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer0B:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer0C:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer0D:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0011, $0012, $0013
SGPointer0E:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer0F:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer10:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer11:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer12:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer13:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer14:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer15:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer16:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer17:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer18:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer19:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer1A:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer1B:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer1C:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer1D:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer1E:
db $14
dw $0015, $0016, $0017, $0018, $0019, $001A, $001B, $001C, $001D, $001E, $001F, $0020, $0021, $0014, $0023, $0014, $0025, $0014, $0027, $0028
SGPointer1F:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0011, $0012, $0013
SGPointer20:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0011, $0012, $0013
SGPointer21:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0011, $0012, $0013
SGPointer22:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer23:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0011, $0012, $0013
SGPointer24:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0011, $0012, $0013
SGPointer25:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer26:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer27:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer28:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer29:
db $1E
dw $0000, $0001, $0002, $0003, $0004, $001A, $001B, $001C, $001D, $0014, $001F, $000B, $0021, $0014, $0023, $0014, $0014, $0014, $0027, $0014, $0029, $002A, $002B, $002C, $002D, $002E, $002F, $0030, $0031, $0032
SGPointer2A:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $000D, $000E, $000F, $0010, $0014, $0012, $0013
SGPointer2B:
db $1E
dw $0015, $0001, $0017, $0018, $0004, $001A, $001B, $001C, $001D, $0014, $001F, $0020, $0021, $0014, $0023, $0014, $0025, $0014, $0012, $0014, $0033, $0034, $0035, $0036, $0037, $0038, $0039, $003A, $003B, $003C
SGPointer2C:
db $1C
dw $0015, $0016, $0017, $0018, $0019, $001A, $001B, $001C, $001D, $001E, $001F, $0020, $0021, $0014, $0023, $0014, $0025, $0014, $0027, $0028, $003D, $003E, $003F, $0040, $0041, $0042, $0043, $0044
SGPointer2D:
db $1F
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013, $0045, $0046, $0047, $0048, $0049, $004A, $004B, $004C, $004D, $004E, $004F
SGPointer2E:
db $20
dw $0015, $0016, $0017, $0018, $0019, $001A, $001B, $001C, $001D, $0014, $001F, $0020, $0021, $0014, $0023, $0014, $0025, $0014, $0027, $0014, $0050, $0033, $0051, $0052, $0053, $0035, $0037, $0038, $0039, $003A, $003B, $003C
SGPointer2F:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013
SGPointer30:
db $1F
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $0014, $0010, $0014, $0012, $0013, $0054, $0055, $0056, $0057, $0058, $0059, $005A, $005B, $005C, $005D, $005E
SGPointer31:
db $14
dw $0000, $0001, $0002, $0003, $0004, $0005, $0006, $0007, $0008, $0009, $000A, $000B, $000C, $0014, $000E, $000F, $0010, $0011, $0012, $0013
SGEnd: