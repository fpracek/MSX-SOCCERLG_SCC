;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s13_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ShowMenu
	.globl _UpdateSpritesPositions
	.globl _Math_Abs32
	.globl _PlayVGM
	.globl _CallFnc_VOID
	.globl _V9990_WaitSynch
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
	.globl _TeamVictory
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
	.area _SEG13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:23: void TeamVictory(u8 teamId) {
;	---------------------------------
; Function TeamVictory
; ---------------------------------
_TeamVictory::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:24: g_MatchStatus = MATCH_VICTORY_LAP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:25: g_FieldScrollingActionInProgress = NO_VALUE; // Disable ISR scrolling
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:28: u16 targetX = g_Ball.X;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-36 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:29: u16 targetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-34 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-33 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:32: g_Ball.Y = g_FieldCurrentYPosition + 240; 
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00f0
	add	hl, de
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:35: if (targetY < g_FieldCurrentYPosition || targetY > g_FieldCurrentYPosition + 212) {
	ld	c, -34 (ix)
	ld	b, -33 (ix)
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	C, 00101$
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00d4
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jr	NC, 00200$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:36: targetY = g_FieldCurrentYPosition + 106;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x006a
	add	hl, de
	ld	-34 (ix), l
	ld	-33 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:37: targetX = 128;
	ld	-36 (ix), #0x80
	ld	-35 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:41: for(u8 i=0; i<15; i++) {
00200$:
	ld	de, #_g_Players+0
	ld	c, #0x00
00178$:
	ld	a, c
	sub	a, #0x0f
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:43: g_Players[i].Status = PLAYER_STATUS_NONE; // Active for movement
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, de
	push	de
	ld	de, #0x0012
	add	hl, de
	pop	de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:41: for(u8 i=0; i<15; i++) {
	inc	c
	jp	00178$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:48: PlayVGM(VGM_VICTORY);
	push	de
	ld	a, #0x06
	call	_PlayVGM
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:49: while (true) { 
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:50: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:51: timer++;
	inc	-4 (ix)
	jr	NZ, 00391$
	inc	-3 (ix)
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:55: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
	ld	a, -4 (ix)
	and	a, #0x01
	ld	-32 (ix), a
	ld	-31 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
00181$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00167$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:57: bool isWinner = (g_Players[i].TeamId == teamId);
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -9 (ix)
	add	a, #<(_g_Players)
	ld	-30 (ix), a
	ld	a, -8 (ix)
	adc	a, #>(_g_Players)
	ld	-29 (ix), a
	ld	a, -30 (ix)
	ld	-9 (ix), a
	ld	a, -29 (ix)
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	sub	a, -8 (ix)
	ld	a, #0x01
	jr	Z, 00393$
	xor	a, a
00393$:
	ld	-8 (ix), a
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:58: if (i == REFEREE) isWinner = false; // Force Referee to be "loser" (exit field)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NZ, 00106$
	ld	-10 (ix), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:64: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	a, -30 (ix)
	add	a, #0x02
	ld	-28 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:60: if (isWinner) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:64: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	a, -36 (ix)
	ld	-13 (ix), a
	ld	a, -35 (ix)
	ld	-12 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-26 (ix), a
	ld	a, -8 (ix)
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:65: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
	ld	a, -34 (ix)
	ld	-13 (ix), a
	ld	a, -33 (ix)
	ld	-12 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:68: u16 dist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
	ld	a, -26 (ix)
	ld	-24 (ix), a
	ld	a, -25 (ix)
	ld	-23 (ix), a
	rlca
	sbc	a, a
	ld	-22 (ix), a
	ld	-21 (ix), a
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-13 (ix), e
	ld	-12 (ix), d
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -9 (ix)
	ld	-20 (ix), a
	ld	a, -8 (ix)
	ld	-19 (ix), a
	rlca
	sbc	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	inc	sp
	inc	sp
	push	de
	ld	-38 (ix), l
	ld	-37 (ix), h
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -40 (ix)
	ld	-13 (ix), a
	ld	a, -39 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-38 (ix), a
	ld	a, -10 (ix)
	ld	-37 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:71: u8 stopDist = 35 + (i % 7) * 10; 
	ld	a, -1 (ix)
	ld	-16 (ix), a
	ld	-15 (ix), #0x00
	ld	de, #0x0007
	ld	l, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-10 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-10 (ix), a
	add	a, #0x23
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:73: if (dist > stopDist) {
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:85: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	a, -30 (ix)
	add	a, #0x12
	ld	-11 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:73: if (dist > stopDist) {
	ld	a, -13 (ix)
	sub	a, -38 (ix)
	ld	a, -12 (ix)
	sbc	a, -37 (ix)
	jp	NC, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:75: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
	ld	a, -26 (ix)
	ld	-13 (ix), a
	ld	a, -25 (ix)
	ld	-12 (ix), a
	xor	a, a
	cp	a, -13 (ix)
	sbc	a, -12 (ix)
	jp	PO, 00396$
	xor	a, #0x80
00396$:
	rlca
	and	a,#0x01
	ld	-16 (ix), a
	or	a, a
	jr	Z, 00110$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00111$
00110$:
	bit	7, -12 (ix)
	jr	Z, 00111$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:76: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00397$
	xor	a, #0x80
00397$:
	rlca
	and	a,#0x01
	ld	-14 (ix), a
	or	a, a
	jr	Z, 00115$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x01
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
	jp	00116$
00115$:
	bit	7, -8 (ix)
	jr	Z, 00116$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:79: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:80: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:79: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	a, e
	sub	a, -24 (ix)
	ld	a, d
	sbc	a, -23 (ix)
	ld	a, l
	sbc	a, -22 (ix)
	ld	a, h
	sbc	a, -21 (ix)
	jp	PO, 00398$
	xor	a, #0x80
00398$:
	jp	P, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:80: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00184$
	ld	-13 (ix), #0x03
	ld	-12 (ix), #0
	jp	00185$
00184$:
	ld	-13 (ix), #0x07
	ld	-12 (ix), #0
00185$:
	ld	a, -13 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:82: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	a, -14 (ix)
	or	a, a
	jr	Z, 00186$
	ld	-13 (ix), #0x05
	ld	-12 (ix), #0
	jp	00187$
00186$:
	ld	-13 (ix), #0x01
	ld	-12 (ix), #0
00187$:
	ld	a, -13 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:85: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00166$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:89: g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock pose
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:92: bool animFrame = (timer / 8) % 2 == 0;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ld	a, e
	or	a, a
	or	a, d
	ld	a, #0x01
	jr	Z, 00400$
	xor	a, a
00400$:
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:95: if ((timer % 3) == 0) { // Slow speed
	push	bc
	ld	de, #0x0003
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__moduint
	pop	bc
	ld	a, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:96: i8 moveX = 0;
	or	a,e
	jp	NZ,00139$
	ld	e,a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:97: i8 moveY = 0;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:99: if (dy > 10) moveX = 1; else if (dy < -10) moveX = -1;
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, #0x0a
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jp	PO, 00401$
	xor	a, #0x80
00401$:
	jp	P, 00123$
	ld	e, #0x01
	jp	00124$
00123$:
	ld	a, -9 (ix)
	sub	a, #0xf6
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00124$
	ld	e, #0xff
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:100: if (dx > 10) moveY = -1; else if (dx < -10) moveY = 1;
	ld	a, -26 (ix)
	ld	-9 (ix), a
	ld	a, -25 (ix)
	ld	-8 (ix), a
	ld	a, #0x0a
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	PO, 00402$
	xor	a, #0x80
00402$:
	jp	P, 00128$
	ld	-12 (ix), #0xff
	jp	00129$
00128$:
	ld	a, -26 (ix)
	sub	a, #0xf6
	ld	a, -25 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00129$
	ld	-12 (ix), #0x01
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:102: g_Players[i].X += moveX;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:103: g_Players[i].Y += moveY;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -12 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:106: u16 currentDist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
	push	bc
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	push	hl
	pop	iy
	pop	bc
	ld	l, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:107: if (currentDist > stopDist + 15) {
	ld	a, -14 (ix)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0x0f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	jr	NC, 00403$
	inc	h
00403$:
	xor	a, a
	sbc	hl, de
	jr	NC, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:64: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:108: if (dx > 0) g_Players[i].X++; else g_Players[i].X--;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00404$
	xor	a, #0x80
00404$:
	jp	P, 00131$
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	inc	de
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00132$
00131$:
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	dec	de
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:65: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:109: if (dy > 0) g_Players[i].Y++; else g_Players[i].Y--;
	xor	a, a
	cp	a, -11 (ix)
	sbc	a, -10 (ix)
	jp	PO, 00405$
	xor	a, #0x80
00405$:
	jp	P, 00134$
	inc	de
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00139$
00134$:
	dec	de
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:114: bool showBack = ((timer + i * 17) / 60) & 1;
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x003c
	call	__divuint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:117: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -30 (ix)
	add	a, #0x08
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:114: bool showBack = ((timer + i * 17) / 60) & 1;
	bit	0, e
	jr	Z, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:116: if (showBack) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:117: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00188$
	ld	bc, #0x0032
	jp	00189$
00188$:
	ld	bc, #0x0033
00189$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	jp	00166$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:119: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00190$
	ld	de, #0x0030
	jp	00191$
00190$:
	ld	de, #0x0031
00191$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	jp	00166$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:126: if (g_Players[i].X < 8) {
	ld	a, -9 (ix)
	ld	b, -8 (ix)
	sub	a, #0x08
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:128: g_Players[i].Y = (g_FieldCurrentYPosition > 32) ? g_FieldCurrentYPosition - 32 : 0;
	ld	c, -30 (ix)
	ld	b, -29 (ix)
	ld	a, #0x20
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00407$
	xor	a, #0x80
00407$:
	jp	P, 00192$
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xe0
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	jp	00193$
00192$:
	ld	de, #0x0000
00193$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:129: continue; // Skip movement, count as exited
	jp	00166$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:132: losersOnField++;
	inc	-2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:135: i16 dx = (i16)0 - (i16)g_Players[i].X;
	ld	a, -9 (ix)
	ld	c, -8 (ix)
	neg
	ld	e, a
	sbc	a, a
	sub	a, c
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:136: i16 dy = (i16)FIELD_POS_Y_CENTER - (i16)g_Players[i].Y;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xf3
	sub	a, c
	ld	-11 (ix), a
	sbc	a, a
	sub	a, b
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:139: if ((timer & 1) == 0) {
	ld	a, -31 (ix)
	or	a, -32 (ix)
	jr	NZ, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:140: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
	ld	c, e
	ld	b, d
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00408$
	xor	a, #0x80
00408$:
	jp	P, 00151$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	inc	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00152$
00151$:
	bit	7, b
	jr	Z, 00152$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	dec	bc
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:141: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00409$
	xor	a, #0x80
00409$:
	jp	P, 00156$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00159$
00156$:
	bit	7, b
	jr	Z, 00159$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:145: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	c, e
	ld	a, d
	ld	b, a
	rlca
	sbc	hl, hl
	push	de
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	-19 (ix), e
	ld	-18 (ix), d
	ld	-17 (ix), l
	ld	-16 (ix), h
	pop	de
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	ld	b, a
	rlca
	sbc	hl, hl
	push	de
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	-13 (ix), l
	ld	-12 (ix), h
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:146: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:145: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	a, -15 (ix)
	sub	a, -19 (ix)
	ld	a, -14 (ix)
	sbc	a, -18 (ix)
	ld	a, -13 (ix)
	sbc	a, -17 (ix)
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	jp	PO, 00410$
	xor	a, #0x80
00410$:
	jp	P, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:146: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00411$
	xor	a, #0x80
00411$:
	jp	P, 00194$
	ld	de, #0x0003
	jp	00195$
00194$:
	ld	de, #0x0007
00195$:
	ld	a, e
	ld	(bc), a
	jp	00162$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:148: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00412$
	xor	a, #0x80
00412$:
	jp	P, 00196$
	ld	de, #0x0005
	jp	00197$
00196$:
	ld	de, #0x0001
00197$:
	ld	a, e
	ld	(bc), a
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:151: g_Players[i].Status = PLAYER_STATUS_NONE; // Walking animation
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:55: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
	inc	-1 (ix)
	jp	00181$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:155: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:157: if (losersOnField == 0) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:158: extraTime++;
	inc	-6 (ix)
	jr	NZ, 00413$
	inc	-5 (ix)
00413$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:159: if (extraTime > 120) break; // 2 seconds after last exit
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, #0x78
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jr	C, 00176$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:163: if (timer > 1200) break;
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, #0xb0
	cp	a, -2 (ix)
	ld	a, #0x04
	sbc	a, -1 (ix)
	jp	NC, 00175$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:166: CallFnc_VOID(8,ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s13_b3.c:167: }
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
	.area _SEG13
	.area _INITIALIZER
	.area _CABS (ABS)
