; Modified Creed Monitor for SCELBI + Digital Group video
; Relocated to page 076 (original SCELBI TTY ROM page)
; Keyboard: INP 004, ACK OUT 014
; Video:    OUT 017  (two-write BIT7 strobe, 377 = home)
;
; RAM scratch (unchanged):
;   016-374  3-byte JMP constructed at runtime
;   016-377  one-byte save
;
; Start address: 076-000

ROMPAGE:  EQU 076
RAMPAGE:  EQU 016
JMPADDR:  EQU 374
RSAVADR:  EQU 377

CR:       EQU 015
PROMPT:   EQU 076
DASH:     EQU 055
COLON:    EQU 072
SPACE:    EQU 040
ZERO:     EQU 060
EIGHT:    EQU 070

KEYIN:    EQU 004
KEYOUT:   EQU 014
OUTPORT:  EQU 017

        ORG ROMPAGE#0
START:
        LAI 103                 ; 'C' - display HL and contents
CMD:
        CAL CLROUT              ; clear 256-char screen and home
        LHI \HB\TTBL
        LLI \LB\TTBL
CMD2:
        CPM
        JTZ CMDFND
        INL
        INL
        JFZ CMD2
ILLCMD:
NXTCMD:
        LAI SPACE
        CAL OUTPUT
        LAI PROMPT
        CAL OUTPUT
GETCHAR:
        INP KEYIN
        NDA
        JFS GETCHAR             ; wait until bit 7 set
        OUT KEYOUT              ; ack
        NDI 177
        CAL OUTPUT
        CPI EIGHT
        JFS CMD                 ; not 0-7: treat as command
NUM:
        CPI ZERO
        JTS ILLCMD
        NDI 007
        LCA
        LAB
        RLC
        RLC
        RLC
        NDI 370
        ORC
        LBA
        JMP GETCHAR
EX:
        LAE
        LCD
        JMP JMPIND
CMDFND:
        INL
        LAM
        LCH
JMPIND:
        LLI \LB\JMPINSTR
        LHI \HB\JMPINSTR
        LMI 104
        INL
        LMA
        INL
        LMC
        JMP JMPINSTR
CX:
        JMP EX
CH:
        LDB
        JMP DHL
CL:
        LEB
        JMP DHL
CW:
        LHD
        LLE
        LMB
CI:
        INE
        JFZ DHL
        IND
        JMP DHL
CD:
        LAE
        DCE
        NDA
        JFZ DHL
        DCD
CC:
DHL:
        LAI SPACE
        CAL OUTPUT
        LAD
        CAL POCTAL
        LAI DASH
        CAL OUTPUT
        LAE
        CAL POCTAL
        LAI COLON
        CAL OUTPUT
        LHD
        LLE
        LAM
        CAL POCTAL
        JMP NXTCMD
POCTAL:
        LHI \HB\REGSAVE
        LLI \LB\REGSAVE
        LMA
        RLC
        RLC
        NDI 003
        CAL POCTAL2
        LLI \LB\REGSAVE
        LAM
        RAR
        RAR
        RAR
        CAL POCTAL2
        LLI \LB\REGSAVE
        LAM
POCTAL2:
        NDI 007
        ORI ZERO
        JMP OUTPUT
CLROUT:
        LCA
        LAI 377                 ; home first (also writes 177 / white box)
        OUT OUTPORT
        LAI 177                 ; drop BIT7 so the next write has a rising edge
        OUT OUTPORT
        LHI 000
CONT:
        LAI 240                 ; space with BIT7 — overwrites the home glyph
        OUT OUTPORT
        NDI 177
        OUT OUTPORT
        INH
        LAH
        CPI 000
        JFZ CONT
        LAC
        RET
OUTPUT:
        LCA
        ORI 200
        OUT OUTPORT
        NDI 177
        OUT OUTPORT
        LAC
        RET

        ORG ROMPAGE#362
TTBL:
        DATA 'L'
        DATA \LB\CL
        DATA 'H'
        DATA \LB\CH
        DATA 'I'
        DATA \LB\CI
        DATA 'W'
        DATA \LB\CW
        DATA 'X'
        DATA \LB\CX
        DATA 'D'
        DATA \LB\CD
        DATA 'C'
        DATA \LB\CC
