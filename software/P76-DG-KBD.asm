;
; SCELBI page-76 I/O ROM
; Parallel keyboard + Digital Group 32x8 video for MEA
;
; Author: Artem Kalinchuk
;
        .ORG   76Q * 400Q
;
KBD:    EQU   4
ACK:    EQU   12
CRT:    EQU   15
COLS:   EQU   040Q
;
RCV:
        INP   KBD
        NDA
        JFS   RCV
        OUT   ACK
        LCA
        CAL   PRINT
        LAC
        RET
;
PRINT:
        LBA
        LEL
        NDI   177Q
        CPI   177Q
        JTZ   BSL
        CPI   076Q
        CTZ   GT1
        CPI   012Q
        JTZ   DONL
        CPI   040Q
        JTS   PX
        CAL   OUTCH
PX:
        LLE
        LAB
        LHI   0
        RET
DONL:
        CAL   PAD
        JMP   PX
;
PAD:
PAD1:
        LHI   1
        LLI   040Q
        LAM
        NDA
        RTZ
        LAI   240Q
        CAL   OUTCH
        JMP   PAD1
;
OUTCH:
        LHI   1
        CAL   PUT
        LLI   040Q
        LAM
        ADI   1
        LMA
        CPI   COLS
        RFZ
        XRA
        LMA
        LLI   041Q
        LAM
        ADI   1
        NDI   7
        LMA
        JTZ   HOME
        RET
;
HOME:
        LHI   1
        LAI   377Q
        OUT   CRT
        XRA
        OUT   CRT
FILL:
        LBA
CLR1:
        LAI   240Q
        OUT   CRT
        XRA
        OUT   CRT
        DCB
        JFZ   CLR1
        LLI   040Q
        LMB
        INL
        LMB
        RET
;
PAGE:
        LCI   2
PAGEL:
        CAL   HOME
        LMI   1
        INL
        LMC
        JMP   REPLAY
;
        .ORG   76Q * 400Q + 200Q
READENT:
P3CHK:
        LDH
        LHI   0
        LLI   127Q
        LAM
        CPI   002Q
        JFZ   RCV
        INH
        LLI   042Q
        LAM
        NDA
        JTZ   WAIT
        SUI   1
        LMA
SPRET:
        LAI   240Q
        LHD
        RET
;
        .ORG   76Q * 400Q + 232Q
ECHOENT:
ECHO:
        RET
BSL:
        LAI   134Q
;
        .ORG   76Q * 400Q + 235Q
WRITEENT:
        CPI   377Q
        RTZ
        JMP   PRINT
;
INIT:
        LDB
        LHI   0
        LLI   174Q
        LAM
        CPI   002Q
        JTZ   MPROMPT
        CPI   052Q
        JTZ   NL
        LLI   127Q
        LAM
        CPI   002Q
        LBD
        RTZ
DUMP:
        LCI   3
        CAL   PAGEL
NL:
        LLI   147Q
        LMI   006Q
        CAL   PAD
IDRET:
        LBD
        RET
MPROMPT:
NPROMPT:
        OUT   ACK
        LLI   127Q
        LAM
        LMI   000Q
        CPI   002Q
        CTZ   RCV
        JMP   HOME
WAIT:
WLP:
        CAL   RCV
        CPI   305Q
        JFZ   PAGE
GT1:
        LLI   127Q
        LMI   000Q
        RET
;
        .ORG   76Q * 400Q + 343Q
INITENT:
CLEARENT:
        JMP   INIT
PUT:
        ORI   200Q
        OUT   CRT
        XRA
        OUT   CRT
        RET
REPLAY:
        DCH
        LLI   307Q
        LAI   076Q
        LMA
        LBI   COLS
RP1:
        LAM
        CAL   PUT
        INL
        DCB
        JFZ   RP1
        INH
        RET
;
        .ORG   76Q * 400Q + 377Q
        DB    310Q
        END
