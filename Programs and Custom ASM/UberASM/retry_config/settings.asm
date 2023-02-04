;========================================================================
; Settings used by Retry. Feel free to change these.
;========================================================================

; 0 = prompt & play the vanilla death song when players die.
; 1 = prompt & play only the sfx when players die (music won't be interrupted).
; 2 = no prompt & play only the sfx (the fastest option; like "yes" is chosen automatically)
;       In this option, you can press start then select to exit the level.
; 3 = no retry prompt/respawn (as if "no" is chosen automatically, use this if you only want the multi-midway feature).
;
; Note: you can override this at any time by setting a certain RAM address (see "docs/ram_map.txt").
    !default_prompt_type = 1

;========================================================================

; How many lives to start a new save file with.
    !initial_lives = 99

; 0 = midways won't give Mario a mushroom.
    !midway_powerup = 0

; Counterbreak options reset some counters when the player dies and when going to the overworld.
    !counterbreak_yoshi = 1
    !counterbreak_powerup = 1
    !counterbreak_item_box = 1
    !counterbreak_coins = 0
    !counterbreak_bonus_stars = 0
    !counterbreak_score = 0

;========================================================================

; If 1, it fixes the issue where some sprites don't face Mario when entering a level for the first time.
; It's suggested to enable the fix to make sprite behavior consistent when respawning.
    !initial_facing_fix = 1

; If 1, start+select out of a level is always possible.
; Otherwise, it's only possible with the instant Retry option (or if the level is already beaten like vanilla).
    !always_start_select = 1

; Reset DSX sprites on reload.
    !reset_dsx = 1

;========================================================================

; What SFX to play when dying (!death_sfx = $00 -> no SFX).
; Only played if not playing the death song (for example, if the level uses vanilla death).
    !death_sfx = $2D   ; default 20, Yoshi spit sound
    !death_sfx_addr = $1DF9|!addr

; The alternative death jingle which will be played after the !death_sfx when "no" is chosen in the prompt (only available when you're using AddmusicK).
; $01-$FE: custom song number, $FF = do not use this feature.
    !death_jingle_alt = $FF

; SFX when selecting an option in the prompt (!option_sfx = $00 -> no SFX).
    !option_sfx = $01
    !option_sfx_addr = $1DFC|!addr

; SFX when the prompt cursor moves (!cursor_sfx = $00 -> no SFX).
    !cursor_sfx = $06
    !cursor_sfx_addr = $1DFC|!addr

; SFX when getting a checkpoint through a room transition (!room_cp_sfx = $00 -> no SFX).
; This is meant as a way to inform the player that they just got a room checkpoint.
    !room_cp_sfx = $00    ; default 05
    !room_cp_sfx_addr = $1DF9|!addr

;========================================================================

; If 1, a custom SRAM expansion patch will be inserted as well.
; By default, it will save the custom checkpoint status and death counter to SRAM.
; To make your own stuff saved as well, check out the "save" table in retry_tables.asm.
    !sram_feature = 1

; If 1, the game will automatically save everytime a new checkpoint is obtained
; (when touching a midway or getting a cp on a room transition).
; If using this, make sure there's no softlocks (for example, a level is unbeatable from one of the checkpoints).
    !save_on_checkpoint = 0

;========================================================================

; If 1, Retry will install a custom midway object in the ROM, insertable in levels by using object 2D.
; These objects allow you to have multiple midways in the same level, each with a different entrance.
; For more info on how to use them, check out "docs/midway_instruction/".
;
; Note: this can be used alongside ObjecTool, but you'll need to modify that patch a bit (see the "objectool_info.txt" file).
    !use_custom_midway_bar = 1

; If !use_custom_midway_bar = 1, it determines how many custom midways you can have in the same sublevel.
; The more you set, the more free ram is needed (4 bytes for each).
    !max_custom_midway_num = 8

;========================================================================

; If 1, the prompt will show up immediately after dying.
    !fast_prompt = 1

; How fast the prompt expands/shrinks. It must evenly divide 72.
    !prompt_speed = 6

; If 1, level transitions will be much faster than usual.
    !fast_transitions = 1

; Set to 1 if you don't want the "exit" option in the prompt.
; This will also allow the player to start+select when having the prompt.
; Note: you can also change this on the fly (see "docs/ram_map.txt").
    !no_exit_option = 1

; Set to 1 to remove the black box, but leave the options on screen.
; Note: you can also change this on the fly (see "docs/ram_map.txt").
    !no_prompt_box = 1

; Set to 1 to dim the screen while the prompt is shown.
    !dim_screen = 0

; Only used if !dim_screen = 1. Can go from 0 to 16, 16 = max brightness, 0 = black.
    !brightness = 8

; X/Y position of the first tile in the prompt (the cursor on the first line).
; You should only change this if you're removing the black box.
; Note: you can also change these on the fly (see "docs/ram_map.txt").
    !text_x_pos = $58
    !text_y_pos = $6F

; Palette row used by the letters and cursor (remember they use sprite palettes).
    !letter_palette = $08
    !cursor_palette = $08

; Tile number for the tiles used by the prompt (in SP1/SP2).
; The default values should be fine in most cases, unless you're using some other patch that reserves tiles in SP1,
; for example: Sprite Status Bar, 32x32 Player Tilemap, lx5's Custom Powerups, lx5's Dynamic Spriteset System.
; In this case you may need to change some of them to avoid other tiles being overwritten.
; You can see the tile number in LM's 8x8 Tile Editor, by taking the low byte of the value you see in the bottom left (for example, "Tile 0x442" -> $42).
;
; Note: when the prompt box is enabled, !tile_curs and !tile_blk actually use 2 adjacent 8x8 tiles.
; For example, !tile_curs = $24 means both $24 and $25 will be overwritten.
    !tile_curs = $20
    !tile_blk  = $22
    !tile_r    = $30
    !tile_e    = $31
    !tile_t    = $32
    !tile_y    = $33
    !tile_x    = $4A
    !tile_i    = $5A

;========================================================================

; If 1, a death counter will replace the lives on the status bar.
    !status_death_counter = 0

; If 1, the "DEATHS" word will replace Mario's name on the status bar.
; If you want to customize the text or its palette, look in "retry_config/code/hijacks/death_counter.asm".
    !status_death_word = 0

; If 1, a death counter will be written to the Overworld border.
; Note: this only handles the counter, if you want other stuff like "DEATHS" appear, use LM's layer 3 editor.
    !ow_death_counter = 0

; Position of the death counter on the overworld.
    !ow_death_counter_x_pos = $19
    !ow_death_counter_y_pos = $02

; YXPCCCTT properties of the death counter on the overworld.
; The first digit is the palette, the second is the GFX page number (0 or 1).
    !ow_death_counter_props = l3_prop(6,1)

; Tile number of the digit "0" on the overworld.
; (it's assumed that the digits are stored in order from 0 to 9 in the GFX file).
    !ow_digit_0 = $22
