Baby Yoshi disassembly + customization by Djief

Included :
	- BabyYoshi.asm (asm file, you kinda need that one)
	- BabyYoshi.json (json file already setup to work, if you somehow lose that one do note that you need the Extra Property Byte 2 set to 80 for it to work properly (not Extra Byte, Extra Property Byte) as that prevents the game from running the vanilla code else it'd run some of the code twice which would mess some things up)
	- BabyYoshi.bin (the GFX file with the 4 baby Yoshi tiles, not used by default but included these because LM doesn't extract all baby yoshi GFX from the game)
	- DONTREADME.txt (Figured reversed psychology might work)

Since no one reads these anyway everything is explained in the asm file

Uses 4 extra bytes, leave everything at 00 for green vanilla baby Yoshi

- Byte 1 is the colour (00 = green, 01 = red, 02 = blue, 03 = yellow)

- Byte 2 is the hunger option (or how many sprites baby Yoshi needs to eat to grow up)
	00 defaults to 05 as per vanilla
	FF means never grow up

- Byte 3 is the option for when eating powerups
	00 will act as vanilla (grow up instantly)
	any other number will make powerups count as X sprites when eaten (01 means it acts just like eating any other sprite)

- Byte 4 is the hop speed (the vertical speed baby Yoshi gets when idle on the ground)
	00 is the default 10 speed
	any other positive value (01 to 79) will make the bounce lower or higher (yes vertical up speed is negative and not positive but I felt it was simpler like that if you don't know the code)
	any negative value (80-FF) means no hop at all (baby Yoshi will then bounce like other carriable items when thrown but not move at all if left alone)


Also included some glitch fixes that you can turn on (they are turned off by default)

- Double Eat fix : Prevents the extra sprites eat when eating 2 sprites one after another

- Off Screen Eat fix : Prevents eating despawned sprites


Also also included is the option to use custom tilemap.

This lets you set the tilemap just like you would normal sprites rather than using the default way the game handles Yoshi graphics.
Has the advantage of fixing the weird baby Yoshi and Yoshi graphical glitches when you have more them together or when you have more than 1 baby Yoshi and one of them is off screen.
Also lets you modify the graphics more easily as it then works like any other sprite.
Has the disadvantage of using 4 tiles in the sprite GFX slots

To use just set the UseCustomTiles to 1 in the asm file then set the TileMap properly (also included is an option to use first or second page then)
I included a GFX file with the 4 baby Yoshi tiles since those are not all extracted by LM, you can copy them where you need them in your GFX files.

FAQ

Wait, this is not diagonal ?

Yeah I guess it's not but you could make diagonal GFX for it, might be cool.