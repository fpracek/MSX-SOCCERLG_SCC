;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s5_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TeamVictory
	.globl _PenaltyShots
	.globl _PerformShot
	.globl _V9990_PrintLayerAStringAtPos
	.globl _PutPonPonGirlSprite
	.globl _PerformPass
	.globl _IsOffside
	.globl _PutBallOnPlayerFeet
	.globl _GetClosestPlayerToBall
	.globl _Math_Abs32
	.globl _GetTeamStats
	.globl _V9990_ClearTextFromLayerA
	.globl _Trampoline_U8_P2
	.globl _Trampoline_BOOL_P1
	.globl _Trampoline_VOID_16_P2
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_WaitSynch
	.globl _V9_SetRegister
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _TickAI
	.globl _TimeUp
	.globl _GetOffsideLineY
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
_g_V9_VRAMPort	=	0x0060
_g_V9_PalettePort	=	0x0061
_g_V9_CmdDataPort	=	0x0062
_g_V9_RegDataPort	=	0x0063
_g_V9_RegSelectPort	=	0x0064
_g_V9_SatusPort	=	0x0065
_g_V9_IntFlagPort	=	0x0066
_g_V9_SysCtrlPort	=	0x0067
_g_V9_KanjiAddrLPort	=	0x0068
_g_V9_KanjiAddrHPort	=	0x0069
_g_V9_KanjiDataPort	=	0x0069
_g_V9_Kanji2AddrLPort	=	0x006a
_g_V9_Kanji2AddrHPort	=	0x006b
_g_V9_Kanji2DataPort	=	0x006b
_g_V9_OutputCtrPort	=	0x006f
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG5
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:24: void TickAI(u8 playerId){
;	---------------------------------
; Function TickAI
; ---------------------------------
_TickAI::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-37
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:25: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00727$
	sub	a, #0x0d
	jp	NZ,00742$
00727$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:31: u16 refX = g_Players[playerId].X;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:28: if (playerId == REFEREE) {
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NZ,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:29: u16 ballX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:30: u16 ballY = g_Ball.Y;
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:31: u16 refX = g_Players[playerId].X;
	ld	a, #<(_g_Players)
	add	a, -3 (ix)
	ld	-15 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -2 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:32: u16 refY = g_Players[playerId].Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:36: u16 targetY = ballY;
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:39: if (ballY > 230 && ballY < 260 && ballX > 110 && ballX < 140) {
	ld	-5 (ix), c
	ld	-4 (ix), b
	ld	a, #0xe6
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00107$
	ld	a, e
	sub	a, #0x04
	ld	a, d
	sbc	a, #0x01
	jr	NC, 00107$
	ld	a, #0x6e
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jr	NC, 00107$
	ld	a, -5 (ix)
	sub	a, #0x8c
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:40: targetY = ballY - 40; 
	ld	a, e
	add	a, #0xd8
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:43: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	cp	a, #0xff
	jr	Z, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:44: if (g_Players[g_Ball.PossessionPlayerId].TeamId == TEAM_1) targetY = ballY - 20;
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #_g_Players
	add	hl, bc
	ld	bc, #0x0009
	add	hl, bc
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
	ld	a, e
	add	a, #0xec
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00108$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:45: else targetY = ballY + 20;
	ld	hl, #0x0014
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:56: if (ballX < 128) targetX = ballX + 60; // Ball Left -> Ref Right
	ld	a, -5 (ix)
	sub	a, #0x80
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00113$
	ld	a, -5 (ix)
	add	a, #0x3c
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	b, a
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:57: else targetX = ballX - 60;             // Ball Right -> Ref Left
	ld	a, -5 (ix)
	add	a, #0xc4
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	c, -3 (ix)
	ld	b, -2 (ix)
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:60: if (targetX < FIELD_BOUND_X_LEFT + 10) targetX = FIELD_BOUND_X_LEFT + 10;
	ld	a, c
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00116$
	ld	bc, #0x0014
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:61: if (targetX > FIELD_BOUND_X_RIGHT - 10) targetX = FIELD_BOUND_X_RIGHT - 10;
	ld	a, #0xe2
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00118$
	ld	bc, #0x00e2
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:66: u8 moveDir = DIRECTION_NONE;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:67: i16 diffY = (i16)targetY - (i16)refY;
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	cp	a, a
	sbc	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:68: i16 diffX = (i16)targetX - (i16)refX;
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:71: if (diffY < -8) moveDir = DIRECTION_UP;
	ld	a, e
	sub	a, #0xf8
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00122$
	ld	-2 (ix), #0x01
	jp	00123$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:72: else if (diffY > 8) moveDir = DIRECTION_DOWN;
	ld	a, #0x08
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 02354$
	xor	a, #0x80
02354$:
	jp	P, 00123$
	ld	-2 (ix), #0x05
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:75: bool moveX = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:76: if (diffX < -16) moveX = true; // Need to go Left
	ld	a, c
	sub	a, #0xf0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00127$
	ld	e, #0x01
	jp	00128$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:77: else if (diffX > 16) moveX = true; // Need to go Right
	ld	d, c
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x10
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02355$
	xor	a, #0x80
02355$:
	jp	P, 00128$
	ld	e, #0x01
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:79: if (moveX) {
	ld	a, e
	or	a, a
	jr	Z, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:77: else if (diffX > 16) moveX = true; // Need to go Right
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:81: if (diffX > 0) moveDir = DIRECTION_UP_RIGHT;
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 02356$
	xor	a, #0x80
02356$:
	rlca
	and	a,#0x01
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:80: if (moveDir == DIRECTION_UP) {
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:81: if (diffX > 0) moveDir = DIRECTION_UP_RIGHT;
	ld	a, c
	or	a, a
	jr	Z, 00130$
	ld	-2 (ix), #0x02
	jp	00145$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:82: else moveDir = DIRECTION_UP_LEFT;
	ld	-2 (ix), #0x08
	jp	00145$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:83: } else if (moveDir == DIRECTION_DOWN) {
	ld	a, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:84: if (diffX > 0) moveDir = DIRECTION_DOWN_RIGHT;
	sub	a,#0x05
	jr	NZ, 00139$
	or	a,c
	jr	Z, 00133$
	ld	-2 (ix), #0x04
	jp	00145$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:85: else moveDir = DIRECTION_DOWN_LEFT;
	ld	-2 (ix), #0x06
	jp	00145$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:87: if (diffX > 0) moveDir = DIRECTION_RIGHT;
	ld	a, c
	or	a, a
	jr	Z, 00136$
	ld	-2 (ix), #0x03
	jp	00145$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:88: else moveDir = DIRECTION_LEFT;
	ld	-2 (ix), #0x07
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:92: g_Players[playerId].Direction = moveDir;
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:95: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	(bc), a
	ld	e, a
	ld	a, -2 (ix)
	dec	a
	jr	Z, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:96: g_Players[playerId].Direction == DIRECTION_UP_RIGHT ||
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:97: g_Players[playerId].Direction == DIRECTION_UP_LEFT) {
	ld	a,e
	cp	a,#0x02
	jr	Z, 00146$
	sub	a, #0x08
	jr	NZ, 00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:98: g_Players[playerId].Y--;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:95: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:100: if (g_Players[playerId].Direction == DIRECTION_DOWN ||
	cp	a, #0x05
	jr	Z, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:101: g_Players[playerId].Direction == DIRECTION_DOWN_RIGHT ||
	cp	a, #0x04
	jr	Z, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:102: g_Players[playerId].Direction == DIRECTION_DOWN_LEFT) {
	sub	a, #0x06
	jr	NZ, 00151$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:103: g_Players[playerId].Y++;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:95: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:105: if (g_Players[playerId].Direction == DIRECTION_LEFT ||
	cp	a, #0x07
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:106: g_Players[playerId].Direction == DIRECTION_UP_LEFT ||
	cp	a, #0x08
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:107: g_Players[playerId].Direction == DIRECTION_DOWN_LEFT) {
	sub	a, #0x06
	jr	NZ, 00155$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:108: g_Players[playerId].X--;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:95: if (g_Players[playerId].Direction == DIRECTION_UP ||
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:110: if (g_Players[playerId].Direction == DIRECTION_RIGHT ||
	cp	a, #0x03
	jr	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:111: g_Players[playerId].Direction == DIRECTION_UP_RIGHT ||
	cp	a, #0x02
	jr	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:112: g_Players[playerId].Direction == DIRECTION_DOWN_RIGHT) {
	sub	a, #0x04
	jr	NZ, 00159$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:113: g_Players[playerId].X++;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:117: if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00163$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:118: if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00165$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:119: if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00167$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:120: if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00169$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:126: g_Players[playerId].Status = PLAYER_STATUS_NONE; // Force not positioned
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	de, #0x0012
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:125: if (moveDir != DIRECTION_NONE) {
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:126: g_Players[playerId].Status = PLAYER_STATUS_NONE; // Force not positioned
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00742$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:128: g_Players[playerId].Status = PLAYER_STATUS_POSITIONED; // Allow rest
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:131: return;
	jp	00742$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:133: u8 playerTeamId = g_Players[playerId].TeamId;
	ld	a, #<(_g_Players)
	add	a, -3 (ix)
	ld	-37 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -2 (ix)
	ld	-36 (ix), a
	pop	bc
	push	bc
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:134: bool ballPossessionByPlayerTeam = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:135: u8 countryId = (playerTeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	a, -35 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 02378$
	xor	a, a
02378$:
	ld	-34 (ix), a
	or	a, a
	jr	Z, 00744$
	ld	a, (_g_Team1PaletteId+0)
	jp	00745$
00744$:
	ld	a, (_g_Team2PaletteId+0)
00745$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:136: const TeamStats* stats = GetTeamStats(countryId);
	call	_GetTeamStats
	ld	-33 (ix), e
	ld	-32 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:138: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jr	NZ, 00187$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:141: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	ld	-2 (ix), a
	inc	a
	jp	Z,00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:142: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) ballPossessionByPlayerTeam = true;
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_Players)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
	ld	-6 (ix), #0x01
	jp	00188$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:146: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	ld	-2 (ix), a
	inc	a
	jr	Z, 00184$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:147: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) {
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_Players)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:148: ballPossessionByPlayerTeam = true;
	ld	-6 (ix), #0x01
	jp	00188$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:152: if (g_Ball.LastTouchTeamId == playerTeamId) {
	ld	hl, #_g_Ball + 14
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NZ, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:153: ballPossessionByPlayerTeam = true;
	ld	-6 (ix), #0x01
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:160: if (ballPossessionByPlayerTeam) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00500$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:163: if (g_Ball.PossessionPlayerId == playerId) {
	ld	a, (#_g_Ball + 6)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	NZ,00379$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:166: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	pop	bc
	push	bc
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	ld	-31 (ix), a
	or	a, a
	jp	Z,00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:172: if (playerTeamId == TEAM_1) { 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:173: targetY_Goal = goalTopY - 20; 
	ld	-30 (ix), #0x37
	ld	-29 (ix), #0
	jp	00193$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:175: targetY_Goal = goalBottomY + 20;
	ld	-30 (ix), #0xa9
	ld	-29 (ix), #0x01
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:179: targetX_Goal = g_Players[playerId].X;
	ld	a, -37 (ix)
	add	a, #0x02
	ld	-28 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-26 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	ld	-24 (ix), a
	ld	a, -25 (ix)
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:180: if (targetX_Goal > 100 && targetX_Goal < 156) {
	ld	c, -24 (ix)
	ld	b, -23 (ix)
	ld	a, #0x64
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00198$
	ld	a, c
	sub	a, #0x9c
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:181: if ((g_Players[playerId].Role % 2) != 0) targetX_Goal = 60; // Go Left
	bit	0, -31 (ix)
	jr	Z, 00195$
	ld	-24 (ix), #0x3c
	ld	-23 (ix), #0
	jp	00198$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:182: else targetX_Goal = 190; // Go Right
	ld	-24 (ix), #0xbe
	ld	-23 (ix), #0
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:185: if (targetX_Goal < FIELD_BOUND_X_LEFT + 20) targetX_Goal = FIELD_BOUND_X_LEFT + 20;
	ld	a, -24 (ix)
	sub	a, #0x1e
	ld	a, -23 (ix)
	sbc	a, #0x00
	jr	NC, 00201$
	ld	-24 (ix), #0x1e
	ld	-23 (ix), #0
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:186: if (targetX_Goal > FIELD_BOUND_X_RIGHT - 20) targetX_Goal = FIELD_BOUND_X_RIGHT - 20;
	ld	a, #0xd8
	cp	a, -24 (ix)
	ld	a, #0x00
	sbc	a, -23 (ix)
	jr	NC, 00203$
	ld	-24 (ix), #0xd8
	ld	-23 (ix), #0
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:190: bool obstacleRight = false;
	ld	-22 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:191: bool obstacleLeft = false;
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:192: bool obstacleFront = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:193: bool obstacleFrontNonGK = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:194: bool dangerousOpponent = false;
	ld	-18 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:197: for(i=0; i<14; i++) { 
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	bc, #0x0000
00730$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:198: if (g_Players[i].TeamId == playerTeamId) continue;
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Players
	add	hl, de
	ld	-15 (ix), l
	ld	-14 (ix), h
	ex	de,hl
	ld	hl, #9
	add	hl, de
	ld	e, (hl)
	ld	a, -35 (ix)
	sub	a, e
	jp	Z,00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:199: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	ld	hl, #18
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	a, (hl)
	or	a, e
	jp	Z, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:200: if (i == playerId) continue;
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	jp	Z,00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:202: i16 relX = (i16)g_Players[i].X - (i16)g_Players[playerId].X;
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	e, -26 (ix)
	ld	d, -25 (ix)
	cp	a, a
	sbc	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:203: i16 relY = (i16)g_Players[i].Y - (i16)g_Players[playerId].Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	e, -17 (ix)
	ld	d, -16 (ix)
	cp	a, a
	sbc	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:209: bool isFront = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:210: bool isBehind = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:213: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:212: if (playerTeamId == TEAM_1) { // Moving UP (Y decreases)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00221$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:213: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -8 (ix)
	rlca
	and	a,#0x01
	ld	d, a
	or	a, a
	jr	Z, 00211$
	ld	a, #0xe0
	cp	a, -9 (ix)
	ld	a, #0xff
	sbc	a, -8 (ix)
	jp	PO, 02394$
	xor	a, #0x80
02394$:
	jp	P, 00211$
	ld	e, #0x01
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:214: if (relY >= 0) isBehind = true;
	bit	0, d
	jr	NZ, 00222$
	ld	-2 (ix), #0x01
	jp	00222$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:216: if (relY > 0 && relY < obstacleDetDist) isFront = true;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02395$
	xor	a, #0x80
02395$:
	rlca
	and	a,#0x01
	ld	d, a
	or	a, a
	jr	Z, 00216$
	ld	a, -11 (ix)
	sub	a, #0x20
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00216$
	ld	e, #0x01
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:217: if (relY <= 0) isBehind = true;
	bit	0, d
	jr	NZ, 00222$
	ld	-2 (ix), #0x01
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:222: u8 safeDist = isBehind ? 8 : 12; 
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00746$
	ld	-3 (ix), #0x08
	ld	-2 (ix), #0
	jp	00747$
00746$:
	ld	-3 (ix), #0x0c
	ld	-2 (ix), #0
00747$:
	ld	d, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:223: if (relX > -safeDist && relX < safeDist && relY > -safeDist && relY < safeDist) {
	ld	a, d
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	neg
	ld	-7 (ix), a
	sbc	a, a
	sub	a, l
	ld	-6 (ix), a
	ld	a, -13 (ix)
	ld	-5 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	jp	PO, 02396$
	xor	a, #0x80
02396$:
	jp	P, 00224$
	ld	-3 (ix), d
	ld	-2 (ix), #0x00
	ld	a, -13 (ix)
	sub	a, -3 (ix)
	ld	a, -12 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02397$
	xor	a, #0x80
02397$:
	jp	P, 00224$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02398$
	xor	a, #0x80
02398$:
	jp	P, 00224$
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02399$
	xor	a, #0x80
02399$:
	jp	P, 00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:224: dangerousOpponent = true;
	ld	-18 (ix), #0x01
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:228: if (isFront && relX > -10 && relX < 10) {
	ld	a, e
	or	a, a
	jr	Z, 00231$
	ld	a, #0xf6
	cp	a, -13 (ix)
	ld	a, #0xff
	sbc	a, -12 (ix)
	jp	PO, 02400$
	xor	a, #0x80
02400$:
	jp	P, 00231$
	ld	a, -5 (ix)
	sub	a, #0x0a
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:229: obstacleFront = true;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:230: if (g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) obstacleFrontNonGK = true;
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00231$
	ld	-19 (ix), #0x01
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:233: if (isFront || (relY < 18 && relY > -18)) { 
	ld	a, e
	or	a, a
	jr	NZ, 00240$
	ld	a, -9 (ix)
	sub	a, #0x12
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00244$
	ld	a, #0xee
	cp	a, -11 (ix)
	ld	a, #0xff
	sbc	a, -10 (ix)
	jp	PO, 02401$
	xor	a, #0x80
02401$:
	jp	P, 00244$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:234: if (relX >= 0 && relX < 24) obstacleRight = true; // Obstacle is to my right
	ld	a, -4 (ix)
	rlca
	and	a,#0x01
	ld	e, a
	bit	0, e
	jr	NZ, 00235$
	ld	a, -5 (ix)
	sub	a, #0x18
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00235$
	ld	-22 (ix), #0x01
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:235: if (relX < 0 && relX > -24) obstacleLeft = true; // Obstacle is to my left
	ld	a, e
	or	a, a
	jr	Z, 00244$
	ld	a, #0xe8
	cp	a, -13 (ix)
	ld	a, #0xff
	sbc	a, -12 (ix)
	jp	PO, 02402$
	xor	a, #0x80
02402$:
	jp	P, 00244$
	ld	-21 (ix), #0x01
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:197: for(i=0; i<14; i++) { 
	inc	bc
	ld	a, c
	sub	a, #0x0e
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00730$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:244: bool isHumanControlled = false;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:245: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00258$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00253$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:246: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00254$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00254$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00254$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:247: isHumanControlled = true;
	ld	-3 (ix), #0x01
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:250: if (!isHumanControlled) {
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00303$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:252: bool inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:253: bool inDangerousZone = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:256: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:260: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 90)) inRealShootingRange = true;
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, -17 (ix)
	sub	a, #0x8c
	ld	a, -16 (ix)
	sbc	a, #0x00
	jr	NC, 00260$
	ld	-6 (ix), #0x01
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:263: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 60)) inDangerousZone = true; 
	ld	a, -5 (ix)
	sub	a, #0x6e
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00262$
	ld	-2 (ix), #0x01
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:264: goalTargetY = FIELD_BOUND_Y_TOP - 40; 
	ld	-5 (ix), #0x0a
	ld	-4 (ix), #0
	jp	00269$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:268: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 90)) inRealShootingRange = true;
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, #0x59
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00264$
	ld	-6 (ix), #0x01
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:271: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 60)) inDangerousZone = true;
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00266$
	ld	-2 (ix), #0x01
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:272: goalTargetY = FIELD_BOUND_Y_BOTTOM + 40; 
	ld	-5 (ix), #0xdb
	ld	-4 (ix), #0x01
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:276: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00271$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:277: inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:278: inDangerousZone = false;
	ld	-2 (ix), #0x00
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:281: if (inRealShootingRange) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00303$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:290: bool clearShot = !obstacleFrontNonGK;
	ld	a, -19 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:293: if (inDangerousZone) clearShot = true;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00273$
	ld	-6 (ix), #0x01
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:296: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00285$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:297: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 20)) {
	ld	a, -17 (ix)
	sub	a, #0x46
	ld	a, -16 (ix)
	sbc	a, #0x00
	jr	NC, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:298: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -26 (ix)
	sub	a, #0x5b
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	C, 00274$
	ld	a, #0x95
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00286$
00274$:
	ld	-6 (ix), #0x00
	jp	00286$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:301: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 20)) {
	ld	a, -17 (ix)
	ld	-8 (ix), a
	ld	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, #0x9f
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:302: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -26 (ix)
	sub	a, #0x5b
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	C, 00279$
	ld	a, #0x95
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00286$
00279$:
	ld	-6 (ix), #0x00
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:308: if (clearShot) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00303$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:310: if ((g_FrameCounter % 10) > stats->ShotFreq) return;
	ld	a, (_g_FrameCounter+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	de, #0x000a
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -33 (ix)
	ld	-3 (ix), a
	ld	a, -32 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	sub	a, -7 (ix)
	ld	a, -2 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02408$
	xor	a, #0x80
02408$:
	jp	P, 00288$
	jp	00742$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:312: u16 shotX = 86 + ((g_FrameCounter + playerId * 13) % 68);
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	-2 (ix), a
	ld	de, #0x0044
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	add	a, #0x56
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:315: if (stats->Speed >= 6) {
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, #0x06
	jr	C, 00295$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:317: if ((g_FrameCounter & 3) != 0) {
	ld	a, (_g_FrameCounter+0)
	ld	c, a
	and	a, #0x03
	jr	Z, 00295$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:318: if ((g_FrameCounter & 4) == 0) shotX = GOAL_X_MIN + 3;
	bit	2, c
	jr	NZ, 00290$
	ld	-3 (ix), #0x63
	ld	-2 (ix), #0
	jp	00295$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:319: else shotX = GOAL_X_MAX - 3;
	ld	-3 (ix), #0x8d
	ld	-2 (ix), #0
00295$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:323: Trampoline_VOID_16_P2(4,PerformShot,shotX, goalTargetY);
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_PerformShot
	ld	a, #0x04
	call	_Trampoline_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:324: return;
	jp	00742$
00303$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:330: bool shouldPass = false;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:331: bool isPanicPass = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:337: bool checkPassing = false;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:339: if (dangerousOpponent) {
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:341: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:342: isPanicPass = true;
	ld	-2 (ix), #0x01
	jp	00317$
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:344: else if (obstacleFront) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00313$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:347: bool canGoRight = (g_Players[playerId].X < FIELD_BOUND_X_RIGHT - 20) && !obstacleRight;
	ld	a, -26 (ix)
	sub	a, #0xd8
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	NC, 00748$
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00749$
00748$:
	ld	-5 (ix), #0x00
	jp	00750$
00749$:
	ld	-5 (ix), #0x01
00750$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:348: bool canGoLeft = (g_Players[playerId].X > FIELD_BOUND_X_LEFT + 20) && !obstacleLeft;
	ld	a, #0x1e
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00751$
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00752$
00751$:
	ld	-6 (ix), #0x00
	jp	00753$
00752$:
	ld	-6 (ix), #0x01
00753$:
	ld	c, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:350: if (canGoRight || canGoLeft) {
	ld	a, -5 (ix)
	or	a,a
	jr	NZ, 00306$
	or	a,c
	jr	Z, 00307$
00306$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:352: shouldPass = false;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:354: if (stats->Speed >= 6) {
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, #0x06
	jr	C, 00317$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:355: shouldPass = true;
	ld	-5 (ix), #0x01
	jp	00317$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:359: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:360: isPanicPass = true;
	ld	-2 (ix), #0x01
	jp	00317$
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:366: if ((g_FrameCounter % 10) < stats->PassFreq) checkPassing = true;
	ld	a, (_g_FrameCounter+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	de, #0x000a
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -33 (ix)
	ld	-7 (ix), a
	ld	a, -32 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02412$
	xor	a, #0x80
02412$:
	jp	P, 00317$
	ld	-4 (ix), #0x01
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:369: if (checkPassing) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00319$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:372: shouldPass = true; 
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:373: isPanicPass = false;
	ld	-2 (ix), #0x00
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:376: if (shouldPass) {
	ld	a, -5 (ix)
	or	a, a
	jp	Z, 00366$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:377: if (!isHumanControlled) {
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00366$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:378: u8 bestT = NO_VALUE;
	ld	-9 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:379: i16 bestScore = -30000;
	ld	-8 (ix), #0xd0
	ld	-7 (ix), #0x8a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:381: for(t=0; t<14; t++) {
	ld	a, -33 (ix)
	add	a, #0x03
	ld	-6 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00731$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:382: if(g_Players[t].TeamId != playerTeamId) continue;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	bc,#9
	add	hl,bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:383: if(t == playerId) continue;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:385: if (stats->PassFreq < 8) {
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	NC, 00327$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:386: if(g_Players[t].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #18
	add	hl, bc
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00355$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:388: if(g_Players[t].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:391: bool isOffside=Trampoline_BOOL_P1(2,IsOffside,t);
	ld	a, -4 (ix)
	ld	-16 (ix), a
	push	af
	inc	sp
	ld	de, #_IsOffside
	ld	a, #0x02
	call	_Trampoline_BOOL_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:392: if (isOffside) continue;
	or	a, a
	jp	NZ, 00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:394: i16 dx = (i16)g_Players[t].X - (i16)g_Players[playerId].X;
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-18 (ix), c
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:395: i16 dy = (i16)g_Players[t].Y - (i16)g_Players[playerId].Y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	-11 (ix), a
	ld	a, b
	sbc	a, d
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:396: u16 adx = (dx < 0) ? -dx : dx;
	ld	a, -18 (ix)
	ld	-11 (ix), a
	ld	a, -17 (ix)
	ld	-10 (ix), a
	bit	7, -10 (ix)
	jr	Z, 00754$
	xor	a, a
	sub	a, -18 (ix)
	ld	-11 (ix), a
	sbc	a, a
	sub	a, -17 (ix)
	ld	-10 (ix), a
	jp	00755$
00754$:
	ld	a, -18 (ix)
	ld	-11 (ix), a
	ld	a, -17 (ix)
	ld	-10 (ix), a
00755$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:397: u16 ady = (dy < 0) ? -dy : dy;
	ld	b, -12 (ix)
	bit	7, b
	jr	Z, 00756$
	xor	a, a
	sub	a, -13 (ix)
	ld	-18 (ix), a
	sbc	a, a
	sub	a, -12 (ix)
	ld	-17 (ix), a
	jp	00757$
00756$:
	ld	a, -13 (ix)
	ld	-18 (ix), a
	ld	a, -12 (ix)
	ld	-17 (ix), a
00757$:
	ld	c, -18 (ix)
	ld	b, -17 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:398: if (adx < 40 && ady < 40) continue; // Minimum pass distance
	ld	a, -11 (ix)
	sub	a, #0x28
	ld	a, -10 (ix)
	sbc	a, #0x00
	jr	NC, 00333$
	ld	a, c
	sub	a, #0x28
	ld	a, b
	sbc	a, #0x00
	jp	C, 00355$
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:401: if (g_Players[t].Y < g_FieldCurrentYPosition - 40 || 
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xd8
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:402: g_Players[t].Y > (g_FieldCurrentYPosition + 252)) continue;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00fc
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jp	C, 00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:404: i16 advanceScore = (playerTeamId == TEAM_1) ? -dy : dy;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00758$
	xor	a, a
	sub	a, -13 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -12 (ix)
	jp	00759$
00758$:
	ld	c, -13 (ix)
	ld	a, -12 (ix)
00759$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:407: if (!isPanicPass) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00348$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:408: bool highSkill = (stats->PassFreq >= 8);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:409: bool allowSwitch = (highSkill && adx > 60); // Strong teams switch play (easier width)
	or	a, a
	jr	Z, 00760$
	ld	a, #0x3c
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00761$
00760$:
	xor	a, a
	jp	00762$
00761$:
	ld	a, #0x01
00762$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:410: if (allowSwitch) {
	or	a, a
	jr	Z, 00343$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:411: if (advanceScore < -10) continue; // Allow flat/slight back for wide balls
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00349$
	jp	00355$
00343$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:413: i16 minAdv = highSkill ? 20 : 40;
	ld	a, e
	or	a, a
	jr	Z, 00763$
	ld	de, #0x0014
	jp	00764$
00763$:
	ld	de, #0x0028
00764$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:414: if (advanceScore < minAdv) continue; // Must gain ground
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	PO, 02416$
	xor	a, #0x80
02416$:
	jp	M, 00355$
	jp	00349$
00348$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:418: if (advanceScore < -150) continue;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x6a
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00355$
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:422: if (stats->PassFreq >= 8) {
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:423: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	srl	d
	rr	e
	srl	d
	rr	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:422: if (stats->PassFreq >= 8) {
	ld	a, l
	sub	a, #0x08
	jr	C, 00351$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:423: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	l, c
	ld	h, b
	add	hl, de
	ld	c, l
	ld	b, h
	jp	00352$
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:425: score = advanceScore - (adx/4); // Penalize width (Direct play)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
00352$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:428: if (score > bestScore) {
	ld	a, -8 (ix)
	sub	a, c
	ld	a, -7 (ix)
	sbc	a, b
	jp	PO, 02417$
	xor	a, #0x80
02417$:
	jp	P, 00355$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:429: bestScore = score;
	ld	-8 (ix), c
	ld	-7 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:430: bestT = t;
	ld	a, -16 (ix)
	ld	-9 (ix), a
00355$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:381: for(t=0; t<14; t++) {
	inc	-4 (ix)
	jr	NZ, 02418$
	inc	-3 (ix)
02418$:
	ld	a, -4 (ix)
	sub	a, #0x0e
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00731$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:435: if (bestT != NO_VALUE) {
	ld	a, -9 (ix)
	inc	a
	jr	Z, 00366$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:438: i16 threshold = isPanicPass ? -80 : 10;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00765$
	ld	de, #0xffb0
	jp	00766$
00765$:
	ld	de, #0x000a
00766$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:440: if (bestScore > threshold) {
	ld	a, e
	sub	a, -8 (ix)
	ld	a, d
	sbc	a, -7 (ix)
	jp	PO, 02420$
	xor	a, #0x80
02420$:
	jp	P, 00366$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:441: u8 waitTime = (stats->PassFreq >= 8) ? 8 : 15; // Faster release for skill teams
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	C, 00767$
	ld	-6 (ix), #0x08
	ld	-5 (ix), #0
	jp	00768$
00767$:
	ld	-6 (ix), #0x0f
	ld	-5 (ix), #0
00768$:
	ld	a, -6 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:442: if (g_Ball.PossessionTimer < waitTime) return; 
	ld	a, (#_g_Ball + 28)
	ld	-2 (ix), a
	sub	a, -3 (ix)
	jp	C,00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:443: Trampoline_VOID_P1(2,PerformPass,bestT);
	ld	a, -9 (ix)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:444: return; // End tick
	jp	00742$
00366$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:450: u16 finalTargetX = targetX_Goal;
	ld	a, -24 (ix)
	ld	-3 (ix), a
	ld	a, -23 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:451: u16 finalTargetY = targetY_Goal;
	ld	a, -30 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:453: if (obstacleFront) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00377$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:454: if (!obstacleRight) {
	ld	a, -22 (ix)
	or	a, a
	jr	NZ, 00374$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:455: finalTargetX = g_Players[playerId].X + 24;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x18
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:456: if (finalTargetX > FIELD_BOUND_X_RIGHT) finalTargetX = FIELD_BOUND_X_RIGHT;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00377$
	ld	-3 (ix), #0xec
	ld	-2 (ix), #0
	jp	00377$
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:457: } else if (!obstacleLeft) {
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00377$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:458: finalTargetX = g_Players[playerId].X - 24; 
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0xe8
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:459: if (finalTargetX < FIELD_BOUND_X_LEFT) finalTargetX = FIELD_BOUND_X_LEFT;
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00377$
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0
00377$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:463: g_Players[playerId].TargetX = finalTargetX;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:464: return; // IMPORTANT: Ball Carrier handled. Stop.
	jp	00742$
00379$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:470: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -2 (ix)
	inc	a
	jr	NZ, 00383$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:472: u8 closestId=Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:473: if (closestId == playerId) {
	ld	a, -1 (ix)
	sub	a, c
	jr	NZ, 00383$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:474: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:475: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:476: return;
	jp	00742$
00383$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:166: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	ld	a, -37 (ix)
	add	a, #0x0d
	ld	-9 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:509: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:483: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	NZ,00417$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:486: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	ld	a, -2 (ix)
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:485: if (playerTeamId == TEAM_1) { // Moving UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:486: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	bit	0, -3 (ix)
	jr	NZ, 00388$
	ld	a, #0xa0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00398$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:487: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00385$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00398$
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:488: else g_Players[playerId].TargetY = 350;
	ld	a, #0x5e
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00398$
00397$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:490: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 320;
	bit	0, -3 (ix)
	jr	NZ, 00394$
	ld	a, #0x40
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00398$
00394$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:491: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00391$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00398$
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:492: else g_Players[playerId].TargetY = 130;
	ld	a, #0x82
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:496: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	cp	a, #0x05
	jr	NZ, 00414$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00742$
00414$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:497: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) g_Players[playerId].TargetX = 192;
	cp	a, #0x06
	jr	NZ, 00411$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00742$
00411$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:498: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	cp	a, #0x03
	jr	NZ, 00408$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00742$
00408$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:499: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) g_Players[playerId].TargetX = 208;
	cp	a, #0x04
	jr	NZ, 00405$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00742$
00405$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:500: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) g_Players[playerId].TargetX = 80;
	cp	a, #0x01
	jr	NZ, 00402$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x50
	inc	hl
	ld	(hl), #0x00
	jp	00742$
00402$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:501: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) g_Players[playerId].TargetX = 176;
	sub	a, #0x02
	jp	NZ,00742$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xb0
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:503: return;
	jp	00742$
00417$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:509: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	Z, 00467$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:510: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) {
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NZ, 00468$
00467$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:513: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 10;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00419$
	ld	(hl), #0x41
	inc	hl
	ld	(hl), #0x00
	jp	00420$
00419$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:514: else g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 10;
	ld	(hl), #0x9f
	inc	hl
	ld	(hl), #0x01
00420$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:516: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:463: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:516: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00422$
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00977$
00422$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:517: else g_Players[playerId].TargetX = 192;
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00977$
00468$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:519: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER || 
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00463$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:520: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -2 (ix)
	sub	a, #0x04
	jp	NZ,00464$
00463$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:475: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:527: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:524: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:527: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	a, -7 (ix)
	add	a, #0xd8
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:528: if (g_Players[playerId].TargetY < limitY) g_Players[playerId].TargetY = limitY;
	ld	a, -3 (ix)
	sub	a, #0x6a
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00430$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00430$
00429$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:532: g_Players[playerId].TargetY = g_Ball.Y + 40;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0028
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:533: if (g_Players[playerId].TargetY > limitY) g_Players[playerId].TargetY = limitY;
	ld	a, #0x3e
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00430$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
00430$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:536: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:463: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:536: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00432$
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00977$
00432$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:537: else g_Players[playerId].TargetX = 208;
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00977$
00464$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:539: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER || 
	ld	a, -2 (ix)
	dec	a
	jr	Z, 00459$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:540: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, -2 (ix)
	sub	a, #0x02
	jp	NZ,00460$
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:475: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:527: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:543: if (playerTeamId == TEAM_1) { // Attacking UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00449$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:544: g_Players[playerId].TargetY = g_Ball.Y + 30;
	ld	a, -5 (ix)
	add	a, #0x1e
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:546: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:548: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:546: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00439$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:548: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	a, c
	sub	a, #0x3e
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00450$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00450$
00439$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:551: if (g_Players[playerId].TargetY < 190) g_Players[playerId].TargetY = 190;
	ld	a, c
	sub	a, #0xbe
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00450$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xbe
	inc	hl
	ld	(hl), #0x00
	jp	00450$
00449$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:555: g_Players[playerId].TargetY = g_Ball.Y - 30;
	ld	a, -5 (ix)
	add	a, #0xe2
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:557: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:548: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:557: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00446$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:559: if (g_Players[playerId].TargetY > 106) g_Players[playerId].TargetY = 106;
	ld	a, #0x6a
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00450$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00450$
00446$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:562: if (g_Players[playerId].TargetY > 234) g_Players[playerId].TargetY = 234;
	ld	a, #0xea
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00450$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xea
	inc	hl
	ld	(hl), #0x00
00450$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:568: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) defTargetX = 80;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	dec	a
	jr	NZ, 00452$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
	jp	00453$
00452$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:569: else defTargetX = 176;
	ld	-7 (ix), #0xb0
	ld	-6 (ix), #0
00453$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:572: defTargetX = (defTargetX + g_Ball.X) / 2;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, -6 (ix)
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:573: g_Players[playerId].TargetX = defTargetX;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00977$
00460$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:575: } else if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00977$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:576: g_Players[playerId].TargetX = FIELD_POS_X_CENTER;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:577: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 20;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00455$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xa9
	inc	hl
	ld	(hl), #0x01
	jp	00742$
00455$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:578: else g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 20;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x37
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:579: return; // GK Done
	jp	00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:583: for(u8 i=0; i<14; i++) {
00977$:
	ld	-2 (ix), #0x00
00733$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00491$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:584: if (i == playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00490$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:585: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, #<(_g_Players)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #>(_g_Players)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, -6 (ix)
	jp	Z, 00490$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:586: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00490$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:587: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00490$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:589: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-16 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	sbc	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:590: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-10 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:591: if (dx > -75 && dx < 75 && dy > -75 && dy < 75) {
	ld	a, #0xb5
	cp	a, -12 (ix)
	ld	a, #0xff
	sbc	a, -11 (ix)
	jp	PO, 02461$
	xor	a, #0x80
02461$:
	jp	P, 00490$
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x4b
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00490$
	ld	a, #0xb5
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02462$
	xor	a, #0x80
02462$:
	jp	P, 00490$
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	a, -6 (ix)
	sub	a, #0x4b
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00490$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:592: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -14 (ix)
	ld	-4 (ix), a
	ld	a, -13 (ix)
	ld	-3 (ix), a
	bit	7, b
	jr	NZ, 00480$
	ld	a, -4 (ix)
	add	a, #0x0c
	ld	-8 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-3 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
	jp	00481$
00480$:
	ld	a, -4 (ix)
	add	a, #0xf4
	ld	-8 (ix), a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00481$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:590: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:593: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -5 (ix)
	jr	NZ, 00483$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00490$
00483$:
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00490$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:583: for(u8 i=0; i<14; i++) {
	inc	-2 (ix)
	jp	00733$
00491$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:598: u16 offsideY = GetOffsideLineY(playerTeamId);
	ld	a, -35 (ix)
	call	_GetOffsideLineY
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:475: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:548: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:601: if (playerTeamId == TEAM_1) { // Attacking UP (TargetY decreases)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00497$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:605: effectiveLimit = (g_Ball.Y < offsideY) ? g_Ball.Y : offsideY;
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00769$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00770$
00769$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00770$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:607: if (g_Players[playerId].TargetY < (effectiveLimit + 30)) { 
	ld	hl, #0x001e
	add	hl, de
	ex	de, hl
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	NC,00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:608: g_Players[playerId].TargetY = effectiveLimit + 30;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00742$
00497$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:612: effectiveLimit = (g_Ball.Y > offsideY) ? g_Ball.Y : offsideY;
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00771$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00772$
00771$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00772$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:614: if (g_Players[playerId].TargetY > (effectiveLimit - 30)) {
	ld	a, e
	add	a, #0xe2
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	b, a
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jp	NC,00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:615: g_Players[playerId].TargetY = effectiveLimit - 30;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:620: return; 
	jp	00742$
00500$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:629: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -37 (ix)
	add	a, #0x0d
	ld	-11 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00525$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:631: if (g_Ball.ShotActive) return;
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ,00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:638: if (playerTeamId == TEAM_1) { 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00504$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:639: gkTargetY = FIELD_POS_Y_TEAM1_GOALKEEPER;
	ld	bc, #0x01a8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:640: boxYMin = GK_BOX_Y_BOTTOM_MIN; boxYMax = GK_BOX_Y_BOTTOM_MAX;
	ld	-5 (ix), #0x95
	ld	-4 (ix), #0x01
	ld	-3 (ix), #0xb3
	ld	-2 (ix), #0x01
	jp	00505$
00504$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:642: gkTargetY = FIELD_POS_Y_TEAM2_GOALKEEPER;
	ld	bc, #0x0032
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:643: boxYMin = GK_BOX_Y_TOP_MIN; boxYMax = GK_BOX_Y_TOP_MAX;
	ld	-5 (ix), #0x23
	ld	-4 (ix), #0
	ld	-3 (ix), #0x4b
	ld	-2 (ix), #0
00505$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:645: u8 closestId =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	push	bc
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:646: bool ballInBox = (g_Ball.X > (boxXMin-5) && g_Ball.X < (boxXMax+5) && 
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x4b
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00773$
	ld	a, -8 (ix)
	sub	a, #0xa5
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00773$
	ld	hl, (#_g_Ball + 0)
	ld	a, -5 (ix)
	ld	d, -4 (ix)
	add	a, #0xfb
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00773$
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	xor	a, a
	sbc	hl, de
	jr	C, 00774$
00773$:
	ld	-6 (ix), #0x00
	jp	00775$
00774$:
	ld	-6 (ix), #0x01
00775$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:649: if (ballInBox && closestId == playerId) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00513$
	ld	a, -1 (ix)
	sub	a, -11 (ix)
	jr	NZ, 00513$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:650: gkTargetX = g_Ball.X;
	ld	a, -10 (ix)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), a
	ld	-6 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:651: gkTargetY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	jp	00514$
00513$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:653: if (g_Ball.X > gkTargetX + 24) gkTargetX += 16;
	ld	a, #0x90
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00510$
	ld	-7 (ix), #0x88
	ld	-6 (ix), #0
	jp	00514$
00510$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:654: else if (g_Ball.X < gkTargetX - 24) gkTargetX -= 16;
	ld	a, -8 (ix)
	sub	a, #0x60
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00507$
	ld	-7 (ix), #0x68
	ld	-6 (ix), #0
	jp	00514$
00507$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:655: else gkTargetX = g_Ball.X; 
	ld	a, -10 (ix)
	ld	e, -9 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), e
00514$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:658: if (gkTargetX < boxXMin) gkTargetX = boxXMin;
	ld	a, -7 (ix)
	sub	a, #0x50
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00517$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
00517$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:659: if (gkTargetX > boxXMax) gkTargetX = boxXMax;
	ld	a, #0xa0
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00519$
	ld	-7 (ix), #0xa0
	ld	-6 (ix), #0
00519$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:660: if (gkTargetY < boxYMin) gkTargetY = boxYMin;
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00521$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00521$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:661: if (gkTargetY > boxYMax) gkTargetY = boxYMax;
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jr	NC, 00523$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
00523$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:663: g_Players[playerId].TargetX = gkTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:664: g_Players[playerId].TargetY = gkTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:665: return; 
	jp	00742$
00525$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:669: u8 playerClosesestToBallId =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,NO_VALUE); 
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:670: bool amIEffectiveChaser = (playerClosesestToBallId == playerId);
	ld	a, -1 (ix)
	sub	a, b
	ld	a, #0x01
	jr	Z, 02466$
	xor	a, a
02466$:
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:25: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02468$
	xor	a, a
02468$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:673: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) amIEffectiveChaser = false;
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00527$
	ld	-9 (ix), #0x00
00527$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:677: if (!amIEffectiveChaser && stats->Aggression > 10 && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a, -9 (ix)
	or	a, a
	jr	NZ, 00531$
	ld	l, -33 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	c, (hl)
	ld	a, #0x0a
	sub	a, c
	jr	NC, 00531$
	ld	c, -2 (ix)
	bit	0, c
	jr	NZ, 00531$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:678: u16 dist = (u16)(Math_Abs32((i16)g_Players[playerId].X - (i16)g_Ball.X) + 
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#_g_Ball + 2)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	-3 (ix), l
	ld	-2 (ix), h
	pop	bc
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	pop	bc
	ld	a, -5 (ix)
	ld	c, -4 (ix)
	ld	l, a
	ld	h, c
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:680: if (dist < 60) amIEffectiveChaser = true;
	ld	de, #0x003c
	cp	a, a
	sbc	hl, de
	jr	NC, 00531$
	ld	-9 (ix), #0x01
00531$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:683: if (g_Players[playerClosesestToBallId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Players
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ex	de,hl
	ld	hl, #13
	add	hl, de
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	NZ, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:684: u16 limitY = (playerTeamId == TEAM_1) ? GK_BOX_Y_BOTTOM_MIN : GK_BOX_Y_TOP_MAX;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00782$
	ld	de, #0x0195
	jp	00783$
00782$:
	ld	de, #0x004b
00783$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:685: bool ballFar = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:686: if (playerTeamId == TEAM_1 && g_Ball.Y < limitY - 10) ballFar = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00535$
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, e
	ld	c, d
	add	a, #0xf6
	ld	-5 (ix), a
	ld	a, c
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, -3 (ix)
	sub	a, -5 (ix)
	ld	a, -2 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00535$
	ld	-6 (ix), #0x01
00535$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:687: if (playerTeamId == TEAM_2 && g_Ball.Y > limitY + 10) ballFar = true;
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00538$
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	add	a, #0x0a
	ld	c, a
	jr	NC, 02471$
	inc	d
02471$:
	ld	a, c
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00538$
	ld	-6 (ix), #0x01
00538$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:689: if (ballFar) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:690: u8 nextClosest =Trampoline_U8_P2(2,GetClosestPlayerToBall,playerTeamId,playerClosesestToBallId);
	push	bc
	push	bc
	inc	sp
	ld	a, -35 (ix)
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:691: if (nextClosest == playerId) amIEffectiveChaser = true;
	ld	a, -1 (ix)
	sub	a, c
	jr	NZ, 00545$
	ld	-9 (ix), #0x01
00545$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:695: if (amIEffectiveChaser) {
	ld	a, -9 (ix)
	or	a, a
	jp	Z, 00785$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:698: if ((g_FrameCounter & 3) == 0) return;
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jp	Z,00742$
	jp	00547$
00547$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:701: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	ld	-9 (ix), a
	inc	a
	ld	a, #0x01
	jr	Z, 02477$
	xor	a, a
02477$:
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:702: g_Players[playerId].TargetX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:701: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00579$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:702: g_Players[playerId].TargetX = g_Ball.X;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:703: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00742$
00579$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:709: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:710: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	-3 (ix), e
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:711: i16 range = stats->Aggression;
	ld	l, -33 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:712: if (dx > -range && dx < range && dy > -range && dy < range) {
	xor	a, a
	ld	d, a
	sub	a, e
	ld	-11 (ix), a
	sbc	a, a
	sub	a, d
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02478$
	xor	a, #0x80
02478$:
	jp	P, 00561$
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	PO, 02479$
	xor	a, #0x80
02479$:
	jp	P, 00561$
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02480$
	xor	a, #0x80
02480$:
	jp	P, 00561$
	ld	a, -3 (ix)
	sub	a, e
	ld	a, -2 (ix)
	sbc	a, d
	jp	PO, 02481$
	xor	a, #0x80
02481$:
	jp	P, 00561$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:717: bool isHumanControlled = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:718: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00553$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00548$
00553$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:719: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00549$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00549$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00549$
00548$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:720: isHumanControlled = true;
	ld	-2 (ix), #0x01
00549$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:723: if (!isHumanControlled) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00561$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:725: if (g_Ball.StealCooldown == 0) {
	ld	a, (#_g_Ball + 15)
	or	a, a
	jr	NZ, 00561$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:727: if ((g_FrameCounter % 4) == 0) {
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jr	NZ, 00561$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:728: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:729: return;
	jp	00742$
00561$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:737: i16 targetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:738: i16 targetY = g_Ball.Y;
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	-3 (ix), e
	ld	-2 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:741: u8 predDir = g_Ball.Direction;
	ld	hl, #_g_Ball + 5
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:742: if (g_Ball.PossessionPlayerId != NO_VALUE) predDir = g_Players[g_Ball.PossessionPlayerId].Direction;
	ld	d, -8 (ix)
	bit	0, d
	jr	NZ, 00566$
	ld	e, -9 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Players
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	e, (hl)
00566$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:744: if (predDir != DIRECTION_NONE) {
	ld	a, e
	or	a, a
	jp	Z, 00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:747: switch(predDir) {
	ld	a, #0x08
	sub	a, e
	jp	C, 00577$
	ld	d, #0x00
	ld	hl, #02489$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
02489$:
	jp	00577$
	jp	00567$
	jp	00571$
	jp	00570$
	jp	00573$
	jp	00568$
	jp	00574$
	jp	00569$
	jp	00572$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:748: case DIRECTION_UP: targetY -= lead; break;
00567$:
	ld	a, -3 (ix)
	ld	d, -2 (ix)
	add	a, #0xe0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), e
	ld	-2 (ix), a
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:749: case DIRECTION_DOWN: targetY += lead; break;
00568$:
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #0x0020
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:750: case DIRECTION_LEFT: targetX -= lead; break;
00569$:
	ld	a, c
	add	a, #0xe0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:751: case DIRECTION_RIGHT: targetX += lead; break;
00570$:
	ld	hl, #0x0020
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:752: case DIRECTION_UP_RIGHT: targetY -= 24; targetX += 24; break;
00571$:
	ld	a, -3 (ix)
	ld	d, -2 (ix)
	add	a, #0xe8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), e
	ld	-2 (ix), a
	ld	hl, #0x0018
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:753: case DIRECTION_UP_LEFT: targetY -= 24; targetX -= 24; break;
00572$:
	ld	a, -3 (ix)
	ld	d, -2 (ix)
	add	a, #0xe8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), e
	ld	-2 (ix), a
	ld	a, c
	add	a, #0xe8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:754: case DIRECTION_DOWN_RIGHT: targetY += 24; targetX += 24; break;
00573$:
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #0x0018
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	hl, #0x0018
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:755: case DIRECTION_DOWN_LEFT: targetY += 24; targetX -= 24; break;
00574$:
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #0x0018
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, c
	add	a, #0xe8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:756: }
00577$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:758: g_Players[playerId].TargetX = targetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:759: g_Players[playerId].TargetY = targetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00742$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:764: u16 defGoalY = (playerTeamId == TEAM_1) ? FIELD_BOUND_Y_BOTTOM : FIELD_BOUND_Y_TOP;
00785$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:765: bool chaserBeaten = false;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:766: bool opponentHasBall = (g_Ball.PossessionPlayerId != NO_VALUE && g_Players[g_Ball.PossessionPlayerId].TeamId != playerTeamId);
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	Z, 00786$
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Players
	add	hl, de
	ld	de, #0x0009
	add	hl, de
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NZ, 00787$
00786$:
	ld	c, #0x00
	jp	00788$
00787$:
	ld	c, #0x01
00788$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:768: bool forceRetreat = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02494$
	xor	a, a
02494$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:769: if (opponentHasBall && playerClosesestToBallId != NO_VALUE && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00589$
	inc	b
	jr	Z, 00589$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00589$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:770: u16 chaserY = g_Players[playerClosesestToBallId].Y;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:771: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00586$
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00589$
	ld	-3 (ix), #0x01
	jp	00589$
00586$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:772: else { if (g_Ball.Y < chaserY) chaserBeaten = true; }
	xor	a, a
	sbc	hl, de
	jr	NC, 00589$
	ld	-3 (ix), #0x01
00589$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:775: if (opponentHasBall && chaserBeaten && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00656$
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00656$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00656$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:776: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:771: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:777: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00593$
	ld	de, #0x000f
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00657$
00593$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:778: else g_Players[playerId].TargetY = g_Ball.Y - 15;
	ld	de, #0xfff1
	add	hl, de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00657$
00656$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:629: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:782: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	ld	-3 (ix), a
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:781: if (playerTeamId == TEAM_1) { // Defend Bottom (High Y)
	ld	a, -34 (ix)
	or	a, a
	jp	Z, 00640$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:782: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -2 (ix)
	jr	NZ, 00615$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:784: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00641$
00615$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:786: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	C, 00612$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:788: g_Players[playerId].TargetY = 318; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00641$
00612$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:793: u16 defenseLineY = 350;
	ld	-6 (ix), #0x5e
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:798: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-2 (ix), #0x00
00735$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	NC, 00603$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:799: if (k==playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	Z, 00602$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:800: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
	push	de
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, #<(_g_Players)
	add	a, l
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-3 (ix), a
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	d, (hl)
	ld	a, -35 (ix)
	sub	a, d
	jr	NZ, 00602$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00602$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:801: if (g_Players[k].Y < g_Players[playerId].Y) teammatesAhead++;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, bc
	jr	NC, 00602$
	inc	e
00602$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:798: for(u8 k=0; k<14; k++) {
	inc	-2 (ix)
	jp	00735$
00603$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:771: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:777: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:806: if (teammatesAhead < 2 || g_Ball.Y > 280) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00608$
	ld	a, #0x18
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00609$
00608$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:808: if (g_Ball.Y > defenseLineY - 40) {
	ld	a, #0x36
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00609$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:810: defenseLineY = g_Ball.Y + 15; 
	ld	hl, #0x000f
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:811: if (defenseLineY > FIELD_BOUND_Y_BOTTOM - 10) defenseLineY = FIELD_BOUND_Y_BOTTOM - 10;
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	c, l
	ld	b, h
	ld	a, #0xa9
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00609$
	ld	-6 (ix), #0xa9
	ld	-5 (ix), #0x01
00609$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:814: g_Players[playerId].TargetY = defenseLineY; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
	jp	00641$
00640$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:818: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -2 (ix)
	jr	NZ, 00637$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:820: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00641$
00637$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:822: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	C, 00634$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:824: g_Players[playerId].TargetY = 106;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00641$
00634$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:829: u16 defenseLineY = 130;
	ld	-6 (ix), #0x82
	ld	-5 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:833: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-2 (ix), #0x00
00737$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	NC, 00625$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:834: if (k==playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	Z, 00624$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:835: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
	push	de
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, #<(_g_Players)
	add	a, l
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-3 (ix), a
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	d, (hl)
	ld	a, -35 (ix)
	sub	a, d
	jr	NZ, 00624$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00624$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:836: if (g_Players[k].Y > g_Players[playerId].Y) teammatesAhead++;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, d
	jr	NC, 00624$
	inc	e
00624$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:833: for(u8 k=0; k<14; k++) {
	inc	-2 (ix)
	jp	00737$
00625$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:771: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:777: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:840: if (teammatesAhead < 2 || g_Ball.Y < 200) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00630$
	ld	a, c
	sub	a, #0xc8
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00631$
00630$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:842: if (g_Ball.Y < defenseLineY + 40) {
	ld	a, c
	sub	a, #0xaa
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00631$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:843: defenseLineY = g_Ball.Y - 15;
	ld	a, c
	add	a, #0xf1
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	-6 (ix), c
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:844: if (defenseLineY < FIELD_BOUND_Y_TOP + 10) defenseLineY = FIELD_BOUND_Y_TOP + 10;
	ld	a, -6 (ix)
	sub	a, #0x3c
	ld	a, -5 (ix)
	sbc	a, #0x00
	jr	NC, 00631$
	ld	-6 (ix), #0x3c
	ld	-5 (ix), #0
00631$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:847: g_Players[playerId].TargetY = defenseLineY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00641$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:851: if (g_Players[playerId].Role % 2 != 0) {
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:463: g_Players[playerId].TargetX = finalTargetX;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-7 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:776: g_Players[playerId].TargetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:854: u16 intendedX = g_Ball.X - 40;
	ld	hl, (#_g_Ball + 2)
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:851: if (g_Players[playerId].Role % 2 != 0) {
	ld	a, b
	or	a, c
	jr	Z, 00649$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:854: u16 intendedX = g_Ball.X - 40;
	ld	a, -5 (ix)
	add	a, #0xd8
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:855: if (g_Ball.X > FIELD_POS_X_CENTER && intendedX > FIELD_POS_X_CENTER + 20) {
	ld	a, #0x78
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jr	NC, 00643$
	ld	a, #0x8c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00643$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:856: intendedX = FIELD_POS_X_CENTER + 20; // Stay central
	ld	bc, #0x008c
00643$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:858: g_Players[playerId].TargetX = intendedX; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00650$
00649$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:863: u16 intendedX = g_Ball.X + 40;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0028
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:864: if (g_Ball.X < FIELD_POS_X_CENTER && intendedX < FIELD_POS_X_CENTER - 20) {
	ld	a, -5 (ix)
	sub	a, #0x78
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00646$
	ld	a, -3 (ix)
	sub	a, #0x64
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00646$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:865: intendedX = FIELD_POS_X_CENTER - 20; // Stay central
	ld	-3 (ix), #0x64
	ld	-2 (ix), #0
00646$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:867: g_Players[playerId].TargetX = intendedX; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00650$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:870: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT + 20) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT + 20;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00652$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x1e
	inc	hl
	ld	(hl), #0x00
00652$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:871: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT - 20) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT - 20;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xd8
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00657$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xd8
	inc	hl
	ld	(hl), #0x00
00657$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:875: if (stats->Aggression >= 15 && !amIEffectiveChaser && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	c, -33 (ix)
	ld	b, -32 (ix)
	inc	bc
	ld	a, (bc)
	sub	a, #0x0f
	jp	C, 01096$
	ld	a, -9 (ix)
	or	a, a
	jp	NZ, 01096$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	Z,01096$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:876: u8 bestMark = NO_VALUE;
	ld	-14 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:877: u16 minD = 120; // Look for opponents within this range
	ld	-13 (ix), #0x78
	ld	-12 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:879: for(u8 m=0; m<14; m++) {
	ld	a, -37 (ix)
	ld	-11 (ix), a
	ld	a, -36 (ix)
	ld	-10 (ix), a
	ld	-2 (ix), #0x00
00739$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00678$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:880: if (g_Players[m].TeamId == playerTeamId) continue;
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	bc,#9
	add	hl,bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	Z,00677$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:881: if (m == g_Ball.PossessionPlayerId) continue; // Don't mark ball carrier (chaser handles it)
	ld	hl, #(_g_Ball + 6)
	ld	a,-2 (ix)
	sub	a,(hl)
	jp	Z,00677$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:882: if (g_Players[m].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00677$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:885: bool inBox = false;
	ld	-7 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:887: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:886: if (playerTeamId == TEAM_1) { // Defending Bottom
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00671$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:887: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
	ld	a, #0x5e
	cp	a, -4 (ix)
	ld	a, #0x01
	sbc	a, -3 (ix)
	jr	NC, 00672$
	ld	-7 (ix), #0x01
	jp	00672$
00671$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:889: if (g_Players[m].Y < PENALTY_BOX_Y_TOP) inBox = true;
	ld	a, -4 (ix)
	sub	a, #0x82
	ld	a, -3 (ix)
	sbc	a, #0x00
	jr	NC, 00672$
	ld	-7 (ix), #0x01
00672$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:891: if (inBox) continue; 
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00677$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:893: i16 mdx = (i16)g_Players[m].X - (i16)g_Players[playerId].X;
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:894: i16 mdy = (i16)g_Players[m].Y - (i16)g_Players[playerId].Y;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:895: u16 dist = (u16)(Math_Abs32(mdx) + Math_Abs32(mdy));
	ld	a, d
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	bc
	ld	a, b
	rlca
	sbc	hl, hl
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ex	de, hl
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:897: if (dist < minD) {
	ld	a, e
	sub	a, -13 (ix)
	ld	a, d
	sbc	a, -12 (ix)
	jr	NC, 00677$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:898: minD = dist;
	ld	-13 (ix), e
	ld	-12 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:899: bestMark = m;
	ld	a, -2 (ix)
	ld	-14 (ix), a
00677$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:879: for(u8 m=0; m<14; m++) {
	inc	-2 (ix)
	jp	00739$
00678$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:903: if (bestMark != NO_VALUE) {
	ld	a, -14 (ix)
	inc	a
	jr	Z, 00691$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:905: g_Players[playerId].TargetX = g_Players[bestMark].X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Players
	add	hl, de
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:462: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:907: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Players[bestMark].Y + 12;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00680$
	ld	hl, #0x000c
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	01096$
00680$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:908: else g_Players[playerId].TargetY = g_Players[bestMark].Y - 12;
	ld	a, e
	add	a, #0xf4
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	01096$
00691$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:911: bool deepDefense = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:912: if (playerTeamId == TEAM_1 && g_Ball.Y > PENALTY_BOX_Y_BOTTOM) deepDefense = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00683$
	ld	hl, (#_g_Ball + 0)
	ld	a, #0x5e
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00683$
	ld	c, #0x01
00683$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:913: if (playerTeamId == TEAM_2 && g_Ball.Y < PENALTY_BOX_Y_TOP) deepDefense = true;
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00686$
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0082
	cp	a, a
	sbc	hl, de
	jr	NC, 00686$
	ld	c, #0x01
00686$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:915: if (deepDefense) {
	ld	a, c
	or	a, a
	jr	Z, 01096$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:916: g_Players[playerId].TargetX = g_Ball.X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 2)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:917: g_Players[playerId].TargetY = g_Ball.Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:923: for(u8 i=0; i<14; i++) {
01096$:
	ld	-2 (ix), #0x00
00741$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00715$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:924: if (i == playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00714$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:925: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	c, e
	ld	b, d
	ld	hl, #9
	add	hl, bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00714$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:926: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, e
	ld	b, d
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00714$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:927: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-12 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:928: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-10 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	-6 (ix), l
	ld	-5 (ix), a
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -6 (ix)
	sub	a, e
	ld	e, a
	ld	a, -5 (ix)
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:929: if (dx > -60 && dx < 60 && dy > -60 && dy < 60) {
	ld	a, #0xc4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	jp	PO, 02511$
	xor	a, #0x80
02511$:
	jp	P, 00714$
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00714$
	ld	a, #0xc4
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02512$
	xor	a, #0x80
02512$:
	jp	P, 00714$
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	a, -8 (ix)
	sub	a, #0x3c
	ld	a, -7 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00714$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:930: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	bit	7, b
	jr	NZ, 00704$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x000c
	add	hl, de
	ex	de, hl
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00705$
00704$:
	ld	a, -6 (ix)
	add	a, #0xf4
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00705$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:928: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:931: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -7 (ix)
	jr	NZ, 00707$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00714$
00707$:
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00714$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:923: for(u8 i=0; i<14; i++) {
	inc	-2 (ix)
	jp	00741$
00715$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:936: if (g_Players[playerId].TargetY < FIELD_BOUND_Y_TOP) g_Players[playerId].TargetY = FIELD_BOUND_Y_TOP;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00717$
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
	dec	hl
00717$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:937: if (g_Players[playerId].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].TargetY = FIELD_BOUND_Y_BOTTOM;
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00719$
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00719$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:938: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x0a
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00721$
	ld	l, c
	ld	h, b
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00721$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:939: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xec
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00742$
	ld	a, #0xec
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00742$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:942: }
	ld	sp, ix
	pop	ix
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:947: void TimeUp(){
;	---------------------------------
; Function TimeUp
; ---------------------------------
_TimeUp::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:949: g_LastTimeCounter=g_TimeCounter;
	ld	hl, (_g_TimeCounter)
	ld	(_g_LastTimeCounter), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:950: if (g_Team1Score == g_Team2Score) {
	ld	a, (_g_Team1Score+0)
	ld	iy, #_g_Team2Score
	sub	a, 0 (iy)
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:951: g_PonPonGirlsAreVisible=FALSE;
	ld	iy, #_g_PonPonGirlsAreVisible
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:952: for(u8 i=0; i<6; i++){
	ld	b, #0x00
00111$:
	ld	a, b
	sub	a, #0x06
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:953: Trampoline_VOID_P1(3,PutPonPonGirlSprite,i); 
	push	bc
	push	bc
	inc	sp
	ld	de, #_PutPonPonGirlSprite
	ld	a, #0x03
	call	_Trampoline_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:952: for(u8 i=0; i<6; i++){
	inc	b
	jp	00111$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:955: Trampoline_VOID(6,PenaltyShots);
	ld	de, #_PenaltyShots
	ld	a, #0x06
	jp	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:957: while(g_LastTimeCounter+2<g_TimeCounter){
00102$:
	ld	bc, (_g_LastTimeCounter)
	inc	bc
	inc	bc
	ld	hl, #_g_TimeCounter
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:958: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00102$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:960: V9990_PrintLayerAStringAtPos(14, 10, "TIME UP");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0e
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:961: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00114$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00105$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00114$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:962: V9990_ClearTextFromLayerA(14, 10, 16);
	ld	a, #0x10
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0e
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:963: u8 winner = (g_Team1Score > g_Team2Score) ? TEAM_1 : TEAM_2;
	ld	a, (#_g_Team2Score)
	ld	hl, #_g_Team1Score
	sub	a, (hl)
	jr	NC, 00118$
	ld	bc, #0x0001
	jp	00119$
00118$:
	ld	bc, #0x0002
00119$:
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:964: Trampoline_VOID_P1(6,TeamVictory,winner);
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x06
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:967: }
	ret
___str_0:
	.ascii "TIME UP"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:970: u16 GetOffsideLineY(u8 attackingTeamId) {
;	---------------------------------
; Function GetOffsideLineY
; ---------------------------------
_GetOffsideLineY::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:971: u8 defendingTeamId = (attackingTeamId == TEAM_1) ? TEAM_2 : TEAM_1;
	dec	c
	ld	a, #0x01
	jr	Z, 00199$
	xor	a, a
00199$:
	or	a, a
	jr	Z, 00124$
	ld	bc, #0x0002
	jp	00125$
00124$:
	ld	bc, #0x0001
00125$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:972: bool findMin = (attackingTeamId == TEAM_1);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:975: u16 val1 = findMin ? 0xFFFF : 0;
	ld	e, a
	or	a, a
	jr	Z, 00126$
	ld	bc, #0xffff
	jp	00127$
00126$:
	ld	bc, #0x0000
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:976: u16 val2 = val1;
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:978: for(u8 i=0; i<14; i++){
	ld	d, #0x00
00121$:
	ld	a, d
	sub	a, #0x0e
	jp	NC, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:979: if(g_Players[i].TeamId != defendingTeamId) continue;
	push	de
	ld	e, d
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, l
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, h
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
;	spillPairReg hl
	ld	a,-5 (ix)
	sub	a,(hl)
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:980: u16 y = g_Players[i].Y;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:982: if (findMin) {
	ld	a, e
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:983: if (y < val1) { val2 = val1; val1 = y; }
	ld	a, l
	sub	a, -4 (ix)
	ld	a, h
	sbc	a, -3 (ix)
	jr	NC, 00106$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	-4 (ix), l
	ld	-3 (ix), h
	jp	00116$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:984: else if (y < val2) { val2 = y; }
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00116$
	ld	c, l
	ld	b, h
	jp	00116$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:986: if (y > val1) { val2 = val1; val1 = y; }
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
	jr	NC, 00111$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	-4 (ix), l
	ld	-3 (ix), h
	jp	00116$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:987: else if (y > val2) { val2 = y; }
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00116$
	ld	c, l
	ld	b, h
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:978: for(u8 i=0; i<14; i++){
	inc	d
	jp	00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:991: if (findMin) return (val2 == 0xFFFF) ? FIELD_BOUND_Y_TOP : val2;
	ld	a, e
	or	a, a
	jr	Z, 00119$
	ld	e, c
	ld	d, b
	ld	a, e
	and	a, d
	inc	a
	jr	NZ, 00128$
	ld	bc, #0x0032
00128$:
	ld	e, c
	ld	d, b
	jp	00122$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:992: return (val2 == 0) ? FIELD_BOUND_Y_BOTTOM : val2;
	ld	a, b
	or	a, c
	jr	NZ, 00130$
	ld	bc, #0x01b3
00130$:
	ld	e, c
	ld	d, b
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s5_b1.c:993: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG5
	.area _INITIALIZER
	.area _CABS (ABS)
