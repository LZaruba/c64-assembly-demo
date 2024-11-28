.include "c64.inc"

SCREEN_MEM = $0400
CHARACTER_MASK = $3f

.zeropage
charpointer:
    .res 2

.segment "CODE"
    jsr $e544   ; clear screen kernal routine

    lda #$41    ; load "A" into accumulator
    and #CHARACTER_MASK    ; and with this magic constant to get from petscii to glyphs
    sta SCREEN_MEM   ; store at the beginning of screen RAM
    

    rts