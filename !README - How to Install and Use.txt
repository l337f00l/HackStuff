Gamma (first "official" release) 1.0.0


This baserom was made in Lunar Magic 3.30, and is designed to be used with it. Some people have reported problems (not just with the baserom, but any rom) when they've tried to edit roms in LM 3.31 that had previously been edited in 3.30.

Note also that this baserom has a VAST number of patches, fixes, and other resources and features already installed. So before you thinking about adding a patch or a common UberASM or sprite, it might be worth seeing if it's already included first. (If you want a quick answer, feel free to ask on the baserom's Discord. Message me at SJandCharlieTheCat#6992 for an invite.)

___________

HOW TO INSTALL:

1) Don't change names any of the names of the folders in this parent folder.

2) Using FLIPS, patch FluxBaserom.bps to a clean SMW file, saving the new file as FluxBaserom.smc. Until you finish making your rom, make sure that you leave it named FluxBaserom.smc, and that it always stays in the parent directory. (This can be changed, but you have to update a few text files.)

3) Go ahead and double-click runGPS.bat to execute GPS. This actually has a few different functions. First, it'll allow the tile/block descriptions for all the custom blocks to appear in Map16. (Note that if you have the baserom open in Lunar Magic already, you'll need to exit and reopen it for this to take effect.) Second, it will hide a number of files and folders that are extraneous or lesser-used. 

In fact, runGPS.bat can be run at any time, to hide the extraneous files that are generated when you run PIXI, etc. (However, you'll need to keep some of these files non-hidden if you want the custom sprites' graphics to display properly in Lunar Magic, instead of just being the standard X square.)

4) If you have all the Restore Points boxes checked in Lunar Magic (Options > Restore Point options), you'll probably want to put a copy of a clean SMW file in the /sysLMRestore/ folder, renamed smwOrig.smc. (In fact, you might have an error message if you don't. Unfortunately I couldn't include a clean copy by default, as it's technically piracy.) 

___________

But other than that, that's it! Again, many default patches, sprites, blocks, and UberASMs are already installed in the baserom. You may want to set your own retry settings (see the shortcuts to these in /Info, Settings and Resources/); and there are a number of optional UberASMs, patches, and blocks included that you're welcome to insert, too — see, for example, /Info, Settings and Resources/Sprite Info/ for a numbered chart of custom sprites included.

Yoshi's house functions as a fast level hub, and the first level (105) is designed to be played through as a tutorial. If you don't want to go through the Welcome to Dino Land screen every time, just press SELECT on the overworld when you get there, which will save the game there. If you want to patch the welcome screen out entirely, find SkipWelcomeMessageLevel(C5).asm in /Info, Settings and Resources/Patches/.

___________

Example levels: 

- 105: Tutorial
- 129: Shows another set of custom blocks (not global), and some custom sprites not shown in the tutorial level. (See Map 16 page 4)
- 112: Screen-scrolling pipes, with their GFX in BG2. See level 142 for a BG3 version of these, and 143 for a FG2 version.
- 11B: Expanded switch palace tileset
- 124: On/off line-guides (Map16 page 10)
- 12E, 12F, and 131: These are the main "hub" screens that instantly warp to other levels. 12E warps to levels 1-24 and 101-113. 12F warps to levels 114-149. And 131 warps to 14A-164 (layer 3 BGs). Going to Yoshi's house on the overworld takes you to 12E by default; but feel free to change this, and/or to rearrange what level tiles are in these warp levels. Tiles on Map16 page 18.
- 138: Pipe piranha example level
- 139: Just an example of the big animated one-way walls (SMM-style), as an alternative to the small ones. Uses palette row 4, the same globally.
- (The next level after this also shows an alternative drawing of this with slightly neater GFX, but using the non-global grey palette row 3.)
- 13A: Example of status bar retained in level (RetainStatusBar.asm Uber): default only timer
- 13B: Example of status bar retained in level, but with only item box displayed (also needs ExGFX331 in layer 3 slot LG1)
- 13C: Example of status bar retained in level, but with only coin counter displayed (ExGFX332 in LG1). Also custom coins with various functions.
- 13D: Sprite item box, as an alternative to 13B. Requires ExGFX101 in SP2, as well as SpriteItemBox.asm UberASM in level; and then ExGFX334 in LG1 for the item box only, GFX28 for timer and item box, or EGFX332 for coin counter + item box.
- 13E: Cutscene template.
- 13F: Example level if you patch the left-moving goal-tape patch (and set the included UberASM).
- 140: Shows a scaled-down version of the global GFX (ExGFX85 and 102), routed to FG2: a copy of GFX17, but overwriting the bush tiles. Global GFX disabled here, too, thus all BG slots open.
- 141: Per-level version of the global GFX, drawn to BG1 slot
- 142: A copy of 112, but screen-scrolling pipes are now drawn from BG3, not BG2; and backup per-level version of global GFX is set in BG2 slot (without having to fill up the full level ExAnimation).
- 143: Stripped down version of the screen-scrolling pipes, drawn to FG2
- 14A through 163: default level numbers for Layer 3 versions of normal SMW BGs. (~25 levels)
- 10C: Backup copy of vanilla 105
- 160: Backup copy of underwater fortress (level 0B) without BG fix, if someone prefers the old version

- I put the cluster fish sprite in a couple vanilla water levels (0A and 120) as an example, too
___________

VARIOUS NOTES ON HOW TO USE:

- You never have to move your rom from the parent directory. Whenever you add custom stuff to the subfolders in /Programs and Custom ASM/ — like adding blocks to /blocks/ — you specify these in the various list files (i.e. gps_list.txt); but then the actual programs that insert these (i.e. GPS) are always run from the parent /Flux Baserom/ directory, by double-clicking the relevant .bat files. The only exception to this is AddMusicK, which is still run from its own subfolder. (And actually, as it currently stands, you can't run GPS *unless* you do it from the parent directory — at least not without adding something in the CMD prompt. 

- Make sure to check the list of occupied FreeRAM addresses (in /Info, Settings and Resources/) before using any of your own.

- You can exit a level any time by pausing and pressing select. Further, as mentioned above, pressing select on the overworld will save your progress. To modify these settings, go to the retry settings, or find the OW files in /UberASM/gamemode.

- In Lunar Magic, Map16 page 2 should look fine, but most things below this should look garbled or missing. This is normal, and these will only look correct in the right levels with the right tilesets. (And the "special blocks" aren't supposed to have GFX.)

- Alternate ExGFX (specifically ExGFX60, inserted via ExAnimation) is used in order for the common custom block GFX to be available globally — that is, automatically available in every level without having to load any additional ExGFX files. These global GFX take up almost all of the BG3 slot in each level. 

  This means that even though BG3 may technically look/be empty when you open up the GFX Bypass menu (red mushroom), the "space" isn't actually empty; and so by default, if you insert some new ExGFX in the BG3 slot and try to use them, they won't show up, and in their place still only the global GFX can be seen and used. Now, you can *disable* global GFX in any level, and then any new ExGFX you insert in BG3 will actually be able to be used/seen. If you do this but still want the same global GFX, I've created several different per-level versions of the global GFX. The first (ExGFX80) is a fully copy, intended for the BG2 slot. See level 142 for an example of this; and see Map16 page 15 for the actual tiles. This level also has a BG3 version of the screen-scrolling pipes (see Map16 pages 16-17 for their tiles). Further, ExGFX85 is yet another, stripped-down backup of the global GFX, meant to be put in FG2, thus freeing up *all* BG slots if you disable the global GFX in that level. (See level 140 for an example of this.)

- Every single non-TEST level has a "custom" palette enabled; but this is simply my palette with QOL modifications (berries, row 4, etc.) to the non-custom tiles. Note since there were so many TEST levels, I didn't enable this QOL palette for any of them; so you'll have to do it yourself if you want it.

- As of Alpha 1.7, the primary version of the baserom now includes the screen-scrolling pipes by default (again), instead of as an add-on. The GFX for the extended version of these take up all of Map16 pages 6 and 7. (The BG3 version takes up pages 16 and 17.) For getting the correct GFX when you use the pipes outside of example level 112, see /ExGraphics/Notes.txt; and for a general tutorial on how to use the pipes in levels, go to https://www.smwcentral.net/?p=section&a=details&id=24974; and after you download, go to /Readme_files/BlocksUsageInLevel2.html. (Also note that the pipes at the top of Map16 page 2 are NOT screen-scrolling pipes, but just indicate the normal pipe-ends that are exit-enabled.)

- You can still enable various status bar elements for any individual level, simply by using the RetainStatusBar.asm UberASM in conjunction with various included layer 3 ExGFX files. By default, just enabling RetainStatusBar.asm by itself will retain only the timer.

Use RetainStatusBar.asm and put ExGFX file 331 in the LG1 slot to enable only the item box. You can change palette color 1B if you want it to be a different color; but note that the message box text also uses this color. (I've included a sprite version of the item box, too; see level 13D.) Use the retain Uber + ExGFX332 to enable only the coin counter; and copy palette color 66 (SNES RGB value 137F) to 1A to get the correct coin color. (ExGFX333 will give you all three; feel free to edit out the elements you don't want from it.) See level 13A, 13B and 13C for examples. 

Unfortunately, as usual, as I'm not using a sprite status bar or anything, retaining the status bar in a layer 3 level will cut off any layer 3 background at the top (among other possible errors). 

- If you want to restore the full status bar stuff fully to normal, see /Restore Status Bar/ in the Patches folder.

- All level transitions are set to count as checkpoints by default. (See the relevant section in KNOWN ISSUES... below for more.)

- The custom sprite chart is in /Info, Settings and Resources/Sprite Info/. Insert these through Insert Manual (when you're in sprite editing mode — the green shell at the top LM), with 2 being the default value for a not-set extra bit.

- I haven't included the standard folder that contains the assets to restore your rom from an earlier version, for the sake of space and minimalism. But if you haven't changed any default settings in LM (specifically, "Always create restore directory..." in Options > Restore Point Options), a restore folder should automatically be generated in the parent directory whenever you save in LM. Obviously you can uncheck "Always create restore directory..." if you don't want this.

- I've included most of the individual tiles that comprise standard FGs at the top-left corner of the tutorial level, so you don't have to copy them individually from Map16. Check out level 106 for a better look.

- You can enable echo SFX on an individual level basis in the table in RetrySettings(Additional). Using an UberASM won't work.

- If you want the leading coin snake block (and other brown sprite blocks) to have a slightly different color than the other normal brown blocks, you can do this in 
RemapSpriteBlocksPalettes(FlyingEatingEtc).asm.

- The side exit is sprite 9C. See $1B96.

- If you want Luigi to be controllable without an extra controller, patch ControlLuigiWithSameController.asm

* While this hasn't happened in any of the testing that's been done so far, it's possible that your security settings may detect the .bat files in parent directory as unrecognized programs. (As said above, though, these are simply a way of auto-running GPS, PIXI, etc.) I don't know any preemptive way around this yet.
________________

KNOWN ISSUES AND INCOMPATIBILITIES:

- The specific combination of No More Sprite Tile Limits + the primary patch which makes the screen-scrolling pipes (SSPs) functional — and to a lesser extent, this SSPs patch + the frame rule patch — is known to cause sprite lag in several scenarios. As tested so far, these scenarios involve 5+ sprites on the same screen, and shells/koopas; and in one of these, the lag is made much more severe by it being a horizontal layer 2 level (but all but disappears if it's changed to a normal layer 1 level). A fix for this may be in the works.

- In order to make the level hub fully functional, I had to make it so that all level transitions automatically count as checkpoints (among other slight modifications). But there were several side effects here. First, with the current settings, start+selecting out of a level will always clear whatever checkpoint you've gotten in the level. This shouldn't be much of a problem for creators themselves, though; and you can change this when it's time to actually send your rom out. (If you want to change it now, though, instructions are in /UberASM/retry_config/code/load_overworld.asm. The folder is hidden by default though.) 

Another side effect is this: Since any levels you enter from the hub level are treated like sublevels, and since any sublevel message boxes only display the messages associated with their main levels, message boxes won't normally display at all in a level that you enter from the hub (since there's no message box associated with the hub itself, which is ultimately just a normal "main" level). But I've now included a custom sprite message box that will make them work normally when you enter a level from the hub, too. Also, the messages after hitting a switch palace switch don't display properly if you enter a switch palace from the level hub. They're fine if accessed directly from the overworld, though.

- Looks like for some reason, with some combo of patches here, adult Yoshi visually disappears when on-screen with Lakitu's cloud. This is only the case for the vanilla Lakitu's cloud, though, and I've included a disassembled one (sprite 21) that works with Yoshi. Working on a solution.

- I don't think you can use Inline Layer 3 Messages. Possibly for several different reasons.

- In some scenario(s) that for some reason I simply cannot replicate (despite doing my absolute best to do so), it looks like it's possible for the sprite state of platforms in the platform megapack to somehow be set to be killed by things like throwblocks and shells. This only happens in D4's revision of the megapack, though; so if this happens and I can't figured out why, you may just want to revert to the old one, pre-D4.

- This is a general SMW/LM issue; but when you place foreground on layer 2 when using foreground 3 (Underground 1), it'll automatically use palette row 6 instead of the default one (row 2) — or, rather, it will use a palette row that's 4 palettes ahead of whatever the selected palette is in Map16. Unfortunately there doesn't seem to be a good direct solution for this, as the addresses that control this are overwritten by Lunar Magic's own hijacks (VRAM optimization patch?). I've made a workaround for this, though: if you go to level 115, for example, you can load ExGFX88 into FG3 (in place of 1A), and then load the level 115 palette I included. See Map16 page 19.

- You can no longer put berries on green bushes and eat them from there, without it leaving behind a hole in the bush (instead of just the green of the bush itself); and as such, I've gone ahead and removed all instances of this from the vanilla levels. This was a trade-off, to allow the berries to be used with ANY background/backdrop, instead of solely the green bush. HOWEVER, I have included a layer 2 version of the green bushes; so if you want, it's still possible to have the vanilla berries in front of the green bushes, if you put the berries on layer 1.

- The default spritekiller.asm is modified to be able to kill Yoshi (and any sprite in Yoshi's mouth) when Mario is riding him, too. In at least one oddly specific situation, though, it's unable to do so: when baby Yoshi is also present in a level, toward the top half of a screen. (But it seems to work fine if he's brought down to the lower part of screen!)

- Some of the boss GFX, like the rotating platforms and mode 7 stuff, are messed up. This is probably unavoidable with the status bar patch, I think.

- On a relatively minor aesthetic note, (even in vanilla SMW) the orientation of the pipe caps is inconsistent when you add it through the objects window, with the ends of the pipe caps facing different directions depending on whether it's an up-pipe or down-pipe, etc. I've fixed this by default for the screen-scrolling pipes, and also added pipe versions to page 2 of Map16, for easy correct orientation. 

- I think uploading Mario tiles via DMA is what causes some of Mario's level entrance sprite poses to be slightly messed up as they appear in Lunar Magic itself; but they're fine in-game

- COURSE CLEAR uses palette colors 19 and 1B, which for some reason were normally fading during the first fade-out at level end, and didn't come back until it was over. So I had to remove the fade-out.

- The disable-intro-cutscenes (No-Yoshi sign intro, ghost house, castle) hex edit @ $05DA19 is incompatible with the retry used here. Do not apply; I've already disable the No-Yoshi intro for most levels.

- Normally, in level where Separate Midway Settings isn't checked — like any vanilla level that hasn't been modified — , if you die in a pit after getting the midway, it doesn't save it. I went through and enabled this for as many vanilla levels as I could, though. May have missed some, though.

________________

OTHER NOTES:

- More detailed spreedsheet of custom sprites: https://docs.google.com/spreadsheets/d/1oi7fucDp0uNwoAWoWvATsvE0rutjfwyxd4IK_H2nB5o/

- Although I've worked to make this as stable and polished as possible, this is the first time I'm sharing this with anyone else; so by that standard I suppose it's an "Alpha" version of the baserom, which will benefit from playtesting, to see where there's room for improvements, etc. 

- I've tried to limit the patches which use FreeRAM to the most essential — block dup fix, etc. This also applies to UberASM codes which use FreeRAM on a per-level basis. 

- Not designed for SA-1 usage. Sorry; maybe in a future version.

- The version of retry included in this baserom is 0.2.1 (?) of KevinM's new UberASM-based retry.

- I've used some space in GFX00 and 01 to clear up some of the notorious GFX fixes and issues — bounce blocks and so on. I think the main thing, though, is that I overwrote the cloud cloud in GFX01. (Please don't use the cloud coin, lol.) I also overwrote a number of Mario's 8x8 tiles, and am using Ladida/lx5's patch that uploads these via DMA. 

- The defines for the screen-scrolling drag/warp pipes must be matched to the level number in which they're used, in /Programs and Custom ASM/GPSRoutines/SSPDragMarioMode.asm. I've already done this for the example level 112, but you have to add the defines manually when you use the warp/drag pipes in other levels. (Also note that /GPSRoutines/ is a hidden folder by default; so you'll have to select "show hidden files" to see it.)

- There are a few empty 8x8 tiles in the global GFX/BG3 slot, to be used however you want. They're not all contiguous, though. And obviously feel free to overwrite existing GFX and add new things, if you want different global GFX to be used with different blocks.

- Re: switch palace GFX and the expanded switch palace tilset (see level 11B): I think if you wanted the correct GFX for tiles EF, F3, and so on (the bottom-right corner of the switch) to show up in level 11B, etc., you could probably just flip the default 1DC and 1DD tiles, mirroring them in 1DE and 1DF — I don't think those spaces are used in any other tileset. But I've also made a copy of these at the bottom of page 8. In any case, though, in order for the correct bounce GFX to appear when you actually hit the switch, you need GFX 0D in SP3 — or at least a GFX file in this slot that has the smushed switch tile in the upper-left corner. Further, you need GFX 14 in SP4 for the "changed block" GFX in the display message. (1D7 is a vanilla example of a level that has these settings.)

- "When UberASM Tool is executed, a .extmod file is automatically generated. This file is used by Lunar Magic to know what external program modified the ROM and is registered on LM Restored System."
