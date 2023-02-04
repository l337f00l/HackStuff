; Scroll down toward the bottom for instructions about the midway and start+selecting out of a level

; Gamemode 0C

init:

; Reset various counters.
.counterbreak:
if !counterbreak_yoshi
    stz $13C7|!addr
    stz $187A|!addr
endif

if !counterbreak_powerup
    ; Reset powerup.
    stz $19
endif

if !counterbreak_item_box
    ; Reset item box.
    stz $0DC2|!addr
endif

if !counterbreak_coins
    ; Reset coin counter.
    stz $0DBF|!addr
endif

if !counterbreak_bonus_stars
    ; Reset bonus stars counter.
    stz $0F48|!addr
    stz $0F49|!addr
endif

if !counterbreak_score
    ; Reset score counter.
    rep #$20
    stz $0F34|!addr
    stz $0F36|!addr
    stz $0F38|!addr
    sep #$20
endif

; Reset the current level's checkpoint if the level was beaten.
.reset_checkpoint:
    ; Skip if the level wasn't just beaten.
    lda $0DD5|!addr : beq ..skip
    ;                 bmi ..skip

    ; SJC: I've commented out the previous line, in order for the level hub to function properly.
    ; It clears all checkpoints in a level if you start+select out, though. Be sure to change this back
    ; once you're ready to actually send your hack out.

    ; Remove the checkpoint for the current level.
    jsr shared_reset_checkpoint

..skip:
    rtl
