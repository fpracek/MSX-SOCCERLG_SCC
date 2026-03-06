;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s6_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Stop
	.globl _ShowHeaderInfo
	.globl _ShowMenu
	.globl _UpdateSpritesPositions
	.globl _PeopleMoving
	.globl _V9990_PrintLayerAStringAtPos
	.globl _GetJoystickDirection
	.globl _IsJoystickTriggerPressed
	.globl _Math_Abs32
	.globl _PlayAyFx
	.globl _V9990_ClearTextFromLayerA
	.globl _PlayPCM
	.globl _PlayVGM
	.globl _Trampoline_U8
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_WaitSynch
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
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
	.globl _PenaltyShots
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
	.area _SEG6
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:22: void PenaltyShots() {
;	---------------------------------
; Function PenaltyShots
; ---------------------------------
_PenaltyShots::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-57
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:23: while(g_LastTimeCounter+2<g_TimeCounter){
00101$:
	ld	bc, (_g_LastTimeCounter)
	inc	bc
	inc	bc
	ld	hl, #_g_TimeCounter
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:24: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00101$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:26: g_MatchStatus = MATCH_PENALTY_SETUP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:27: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:31: while (g_FieldCurrentYPosition != centerScroll) {
00107$:
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, l
	sub	a, #0x89
	or	a, h
	jr	Z, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:32: if (g_FieldCurrentYPosition < centerScroll) g_FieldCurrentYPosition++;
	ld	de, #0x0089
	cp	a, a
	sbc	hl, de
	jr	NC, 00105$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:33: else g_FieldCurrentYPosition--;
	ld	hl, (_g_FieldCurrentYPosition)
	dec	hl
	ld	(_g_FieldCurrentYPosition), hl
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:35: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:36: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00107$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:40: Trampoline_VOID(4,ShowHeaderInfo);
	ld	de, #_ShowHeaderInfo
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:42: V9990_PrintLayerAStringAtPos(8, 10, "PENALTY SHOOTOUT");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:43: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00361$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00110$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00361$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:44: V9990_ClearTextFromLayerA(8, 10, 16);
	ld	a, #0x10
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:47: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00364$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00431$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:48: g_Players[i].Status = PLAYER_STATUS_NONE;
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
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:51: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:52: g_Players[i].TargetX = 80 + (i%4)*25;
	ld	hl, #0x0010
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:50: if (i < 7) { // Team 2 (Top)
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:51: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	bit	7, -2 (ix)
	jr	Z, 00383$
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	inc	de
	inc	de
	inc	de
00383$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:52: g_Players[i].TargetX = 80 + (i%4)*25;
	ld	a, -3 (ix)
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00365$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:53: } else if (i < 14) { // Team 1 (Bottom)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:54: u8 k = i - 7;
	ld	a, -1 (ix)
	add	a, #0xf9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:55: g_Players[i].TargetY = 260 + (k/4)*15;
	ld	e, a
	ld	d, #0x00
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00384$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
00384$:
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, l
	add	a, #0x04
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0x01
	ld	-3 (ix), l
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -2 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:56: g_Players[i].TargetX = 80 + (k%4)*25;
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00365$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:58: g_Players[i].TargetX = 128;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:59: g_Players[i].TargetY = 243; // Midfield
	ld	a, #0xf3
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00365$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:47: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00364$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:64: while(true) {
00431$:
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:65: bool allArrived = true;
	ld	-8 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:66: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00367$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00134$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:67: bool arrived = true;
	ld	-4 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:68: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:71: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	de, #_g_Players
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:68: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
	ld	a, -7 (ix)
	add	a, #0x02
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #16
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00121$
	inc	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:69: else if (g_Players[i].X > g_Players[i].TargetX) { g_Players[i].X--; arrived=false; g_Players[i].Direction = DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00122$
	dec	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x07
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:71: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #14
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00126$
	inc	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
	jp	00127$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:72: else if (g_Players[i].Y > g_Players[i].TargetY) { g_Players[i].Y--; arrived=false; g_Players[i].Direction = DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00127$
	dec	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-4 (ix), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x01
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:76: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	a, -7 (ix)
	add	a, #0x12
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:74: if (!arrived) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:75: allArrived = false;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:76: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00368$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:78: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:79: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:71: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	a, -7 (ix)
	add	a, #0x0a
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:79: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	a, -3 (ix)
	sub	a, #0xf3
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00129$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x05
	jp	00130$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:80: else g_Players[i].Direction = DIRECTION_UP;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:81: g_Players[i].PatternId = (g_Players[i].Direction == DIRECTION_UP) ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
	ld	a, -7 (ix)
	add	a, #0x08
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	dec	a
	jr	NZ, 00385$
	ld	-5 (ix), #0x11
	ld	-4 (ix), #0
	jp	00386$
00385$:
	ld	-5 (ix), #0x10
	ld	-4 (ix), #0
00386$:
	ld	a, -5 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00368$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:66: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00367$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:84: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:85: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:86: if (allArrived) break;
	ld	a, -8 (ix)
	or	a, a
	jp	Z, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:89: g_MatchStatus = MATCH_PENALTY_SHOOTOUT;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:100: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:101: g_Ball.KickMoveState = 0; // Ensure no dribble offset interferes with Y
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:103: while(true) {
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x04
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
00354$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:104: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:107: if (turn < 10) {
	ld	a, -3 (ix)
	sub	a, #0x0a
	jp	NC, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:108: u8 rem1 = 5 - shots1;
	ld	a, -4 (ix)
	ld	-1 (ix), a
	ld	a, #0x05
	sub	a, -1 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:109: u8 rem2 = 5 - shots2;
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, #0x05
	sub	a, -2 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:110: if (goals1 > goals2 + rem2) { TeamVictory(TEAM_1); return; }
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	jp	PO, 01096$
	xor	a, #0x80
01096$:
	jp	P, 00141$
	ld	a, #0x01
	call	_TeamVictory
	jp	00381$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:111: if (goals2 > goals1 + rem1) { TeamVictory(TEAM_2); return; }
	ld	a, -1 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jp	PO, 01097$
	xor	a, #0x80
01097$:
	jp	P, 00152$
	ld	a, #0x02
	call	_TeamVictory
	jp	00381$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:114: if (shots1 == shots2) {
	ld	a, -5 (ix)
	sub	a, -4 (ix)
	jr	NZ, 00152$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:115: if (goals1 > goals2) { TeamVictory(TEAM_1); return; }
	ld	a, -8 (ix)
	sub	a, -7 (ix)
	jr	NC, 00145$
	ld	a, #0x01
	call	_TeamVictory
	jp	00381$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:116: if (goals2 > goals1) { TeamVictory(TEAM_2); return; }
	ld	a, -7 (ix)
	sub	a, -8 (ix)
	jr	NC, 00152$
	ld	a, #0x02
	call	_TeamVictory
	jp	00381$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:121: u8 kickingTeam = (turn % 2 == 0) ? TEAM_1 : TEAM_2;
	ld	c, -3 (ix)
	ld	b, #0x00
	bit	0, c
	jr	NZ, 00387$
	ld	de, #0x0001
	jp	00388$
00387$:
	ld	de, #0x0002
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:122: u8 gkTeam = (kickingTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	dec	e
	ld	a, #0x01
	jr	Z, 01103$
	xor	a, a
01103$:
	ld	-53 (ix), a
	or	a, a
	jr	Z, 00389$
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
	jp	00390$
00389$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00390$:
	ld	a, -2 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:128: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	a, b
	rlca
	and	a,#0x01
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:127: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:128: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00391$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00391$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	add	a, #0x08
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:130: gkId = 0; // Team 2 GK
	ld	-51 (ix), #0x00
	jp	00155$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:132: u8 k = 1 + ((turn/2) % 6); // Team 2 players 1-6
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00392$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00392$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	inc	a
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:134: gkId = 7; // Team 1 GK
	ld	-51 (ix), #0x07
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:142: g_Players[kickerId].TargetX = kickSpotX;
	ld	c, -52 (ix)
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
	ld	-50 (ix), l
	ld	-49 (ix), h
	ld	a, -50 (ix)
	add	a, #0x10
	ld	-48 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-47 (ix), a
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:143: g_Players[kickerId].TargetY = kickSpotY + 6; // Player stands behind ball
	ld	a, -50 (ix)
	add	a, #0x0e
	ld	-46 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-45 (ix), a
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	(hl), #0x67
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:144: g_Players[gkId].TargetX = kickSpotX;
	ld	c, -51 (ix)
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
	ld	-44 (ix), l
	ld	-43 (ix), h
	ld	a, -44 (ix)
	add	a, #0x10
	ld	-42 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-41 (ix), a
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:145: g_Players[gkId].TargetY = gkSpotY;
	ld	a, -44 (ix)
	add	a, #0x0e
	ld	-40 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-39 (ix), a
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	(hl), #0x36
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:148: g_Players[REFEREE].TargetX = 50;
	ld	hl, #0x0032
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:149: g_Players[REFEREE].TargetY = kickSpotY; 
	ld	l, #0x61
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:151: g_Players[kickerId].Status = PLAYER_STATUS_NONE;
	ld	a, -50 (ix)
	add	a, #0x12
	ld	-38 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-37 (ix), a
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:152: g_Players[gkId].Status = PLAYER_STATUS_NONE;
	ld	a, -44 (ix)
	add	a, #0x12
	ld	-36 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-35 (ix), a
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:153: g_Players[REFEREE].Status = PLAYER_STATUS_NONE;
	ld	hl, #0x0000
	ld	((_g_Players + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:156: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:157: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:158: g_Ball.Y = kickSpotY; // Ball exactly on spot
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:159: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:160: g_BallIsVisible=TRUE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:161: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:163: while(true) {
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:164: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:167: bool kDone = true;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:168: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00159$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-15 (ix), #0x00
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
	jp	00160$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:169: else if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00160$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-15 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:171: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	a, -50 (ix)
	add	a, #0x02
	ld	-34 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-33 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00164$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-15 (ix), #0x00
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
	jp	00165$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:172: else if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00165$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-15 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:175: bool gDone = true;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:176: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00169$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-14 (ix), #0x00
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
	jp	00170$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:177: else if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00170$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-14 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:179: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	a, -44 (ix)
	add	a, #0x02
	ld	-32 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-31 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00174$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-14 (ix), #0x00
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
	jp	00175$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:180: else if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00175$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-14 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:183: bool rDone = true;
	ld	-13 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:184: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	hl, #(_g_Players + 294)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	hl, #(_g_Players + 308)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00179$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 294)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x01
	jp	00180$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:185: else if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00180$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 294)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:187: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	hl, #(_g_Players + 296)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	hl, #(_g_Players + 310)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00184$
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 296)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
	jp	00185$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:188: else if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00185$
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, #(_g_Players + 296)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:191: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	and	a,#0x07
	jr	NZ, 00393$
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00394$
00393$:
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
00394$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:192: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:193: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:194: g_Players[REFEREE].Status = animStatus;
	ld	hl, #(_g_Players + 312)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:198: i16 targetCamY = (i16)g_Players[gkId].Y - 106;
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	add	a, #0x96
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:199: if (targetCamY < 0) targetCamY = 0;
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -11 (ix)
	ld	-1 (ix), a
	bit	7, -1 (ix)
	jr	Z, 00187$
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:200: if (targetCamY > FIELD_CENTRAL_Y) targetCamY = FIELD_CENTRAL_Y;
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	ld	a, #0x89
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 01106$
	xor	a, #0x80
01106$:
	jp	P, 00189$
	ld	-12 (ix), #0x89
	ld	-11 (ix), #0
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:202: if (g_FieldCurrentYPosition > targetCamY) g_FieldCurrentYPosition--;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jp	PO, 01107$
	xor	a, #0x80
01107$:
	jp	P, 00193$
	ld	hl, (_g_FieldCurrentYPosition)
	dec	hl
	ld	(_g_FieldCurrentYPosition), hl
	jp	00194$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:203: else if (g_FieldCurrentYPosition < targetCamY) g_FieldCurrentYPosition++;
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	ld	a, -1 (ix)
	sbc	a, -11 (ix)
	jp	PO, 01108$
	xor	a, #0x80
01108$:
	jp	P, 00194$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:205: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:207: if (kDone && gDone && rDone && g_FieldCurrentYPosition == 0) {
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00201$
	ld	a, -14 (ix)
	or	a, a
	jp	Z, 00201$
	ld	a, -13 (ix)
	or	a, a
	jp	Z, 00201$
	ld	a, (_g_FieldCurrentYPosition+1)
	ld	hl, #_g_FieldCurrentYPosition
	or	a, (hl)
	jp	NZ, 00201$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:208: g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:212: g_VblankSuspended=TRUE; 
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:214: g_Players[kickerId].Direction = DIRECTION_UP;
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-30 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-29 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:215: g_Players[kickerId].PatternId = PLAYER_POSE_BACK;
	ld	a, -50 (ix)
	add	a, #0x08
	ld	-28 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:216: g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-26 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:217: g_Players[gkId].PatternId = PLAYER_POSE_FRONT;
	ld	a, -44 (ix)
	add	a, #0x08
	ld	-24 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:218: g_Players[REFEREE].PatternId = PLAYER_POSE_RIGHT;
	ld	hl, #(_g_Players + 302)
	ld	(hl), #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:220: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:221: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:222: g_Ball.Y = kickSpotY;
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:223: g_BallIsVisible=TRUE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:224: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:225: V9990_PrintLayerAStringAtPos(10,22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:226: V9990_PrintLayerAStringAtPos(10,23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:229: for(u8 w=0; w<60; w++) V9990_WaitSynch();
	ld	c, #0x00
00370$:
	ld	a, c
	sub	a, #0x3c
	jr	NC, 00203$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00370$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:230: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:232: u16 targetX = FIELD_POS_X_CENTER;
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:233: u8 shotDirIdx = 1; // 0=Left, 1=Center, 2=Right
	ld	-1 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:234: bool shotTaken = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:235: u8 playerGkChoice = 1; // 0=Left, 1=Center, 2=Right
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:237: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:238: g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:239: i8 aimPos = 1;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:240: i8 aimDir = 1;
	ld	-18 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:241: u16 moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:244: while(!shotTaken) {
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
00220$:
	ld	a, -19 (ix)
	or	a, a
	jp	NZ, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:245: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:248: moveTimer++;
	inc	-14 (ix)
	jr	NZ, 01109$
	inc	-13 (ix)
01109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:249: if (moveTimer > 8) { // Speed of cursor
	ld	a, -14 (ix)
	ld	-17 (ix), a
	ld	a, -13 (ix)
	ld	-16 (ix), a
	ld	a, #0x08
	cp	a, -17 (ix)
	ld	a, #0x00
	sbc	a, -16 (ix)
	jr	NC, 00210$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:250: moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:251: aimPos += aimDir;
	ld	a, -18 (ix)
	add	a, -15 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:252: if (aimPos >= 2) {
	ld	-15 (ix), a
	xor	a, #0x80
	sub	a, #0x82
	jr	C, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:253: aimPos = 2;
	ld	-15 (ix), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:254: aimDir = -1;
	ld	-18 (ix), #0xff
	jp	00210$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:255: } else if (aimPos <= 0) {
	xor	a, a
	sub	a, -15 (ix)
	jp	PO, 01110$
	xor	a, #0x80
01110$:
	jp	M, 00210$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:256: aimPos = 0;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:257: aimDir = 1;
	ld	-18 (ix), #0x01
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:261: if (aimPos == 0) g_ShotCursorX = GOAL_X_MIN;
	ld	a, -15 (ix)
	or	a, a
	jr	NZ, 00215$
	ld	hl, #0x0060
	ld	(_g_ShotCursorX), hl
	jp	00216$
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:262: else if (aimPos == 1) g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	a, -15 (ix)
	dec	a
	jr	NZ, 00212$
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
	jp	00216$
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:263: else g_ShotCursorX = GOAL_X_MAX;
	ld	hl, #0x0090
	ld	(_g_ShotCursorX), hl
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:266: attr.Y = FIELD_BOUND_Y_TOP - 20 - g_FieldCurrentYPosition;
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	c, a
	ld	a, #0x1e
	sub	a, c
	ld	-57 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:267: attr.X = g_ShotCursorX;
	ld	hl, #2
	add	hl, sp
	ld	a, (_g_ShotCursorX+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_ShotCursorX+1)
	and	a, #0x03
	ld	c,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, c
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:268: attr.Pattern = SPRITE_DOWN_ARROW;
	ld	-56 (ix), #0x79
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:269: attr.P = 1; attr.SC = 0; attr.D = 0;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:270: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:272: timeoutTimer++;
	inc	-12 (ix)
	jr	NZ, 01113$
	inc	-11 (ix)
01113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:273: bool joyTrigged = Trampoline_U8(2,IsJoystickTriggerPressed);
	ld	de, #_IsJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:274: if (joyTrigged || timeoutTimer >= 300) {
	or	a, a
	jr	NZ, 00217$
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x2c
	ld	a, b
	sbc	a, #0x01
	jp	C, 00220$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:275: targetX = g_ShotCursorX;
	ld	hl, (_g_ShotCursorX)
	ld	-22 (ix), l
	ld	-21 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:276: shotDirIdx = (u8)aimPos;
	ld	a, -15 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:277: shotTaken = true;
	ld	-19 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:278: attr.D = 1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:279: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:279: V9_SetSpriteP1(16, &attr);
	jp	00220$
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:284: shotDirIdx = g_FrameCounter % 3;
	ld	a, (_g_FrameCounter+0)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	de, #0x0003
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	a, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:285: if (shotDirIdx == 0) targetX = GOAL_X_MIN;
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00227$
	ld	-22 (ix), #0x60
	ld	-21 (ix), #0
	jp	00482$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:286: else if (shotDirIdx == 1) targetX = FIELD_POS_X_CENTER;
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00224$
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
	jp	00482$
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:287: else targetX = GOAL_X_MAX;
	ld	-22 (ix), #0x90
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:290: for(u8 w=0; w<120; w++) {
00482$:
	ld	-11 (ix), #0x00
00373$:
	ld	a, -11 (ix)
	sub	a, #0x78
	jr	NC, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:291: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:292: u8 joy = Trampoline_U8(2,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:293: if (joy == DIRECTION_LEFT) playerGkChoice = 0;
	cp	a, #0x07
	jr	NZ, 00232$
	ld	-2 (ix), #0x00
	jp	00374$
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:294: else if (joy == DIRECTION_RIGHT) playerGkChoice = 2;
	sub	a, #0x03
	jr	NZ, 00374$
	ld	-2 (ix), #0x02
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:290: for(u8 w=0; w<120; w++) {
	inc	-11 (ix)
	jp	00373$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:297: shotTaken = true;
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:302: bool goal = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:303: bool saved = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:307: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:309: u8 gkCountryId = (gkTeam == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	a, -10 (ix)
	dec	a
	jr	NZ, 00395$
	ld	a, (_g_Team1PaletteId+0)
	ld	-2 (ix), a
	jp	00396$
00395$:
	ld	a, (_g_Team2PaletteId+0)
	ld	-2 (ix), a
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:191: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:311: if (gkCountryId == TEAM_GER) {
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:313: u8 rnd = g_FrameCounter % 100;
	ld	de, #0x0064
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-13 (ix), e
	ld	-12 (ix), d
	ld	a, -13 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:314: if (rnd < 80) gkChoice = shotDirIdx; // Save
	sub	a, #0x50
	jr	NC, 00239$
	ld	a, -1 (ix)
	ld	-2 (ix), a
	jp	00246$
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:315: else gkChoice = (g_FrameCounter * 7 + 3) % 3; // Random
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -11 (ix)
	add	a, #0x03
	ld	-13 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	de, #0x0003
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-2 (ix), a
	jp	00246$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:318: gkChoice = (g_FrameCounter * 7 + 3) % 3;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -13 (ix)
	add	a, #0x03
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	de, #0x0003
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:322: gkChoice = playerGkChoice;
00245$:
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:325: if (gkChoice == 0) gkDiveDir = DIRECTION_LEFT;
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00251$
	ld	c, #0x07
	jp	00252$
00251$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:326: else if (gkChoice == 2) gkDiveDir = DIRECTION_RIGHT;
	ld	a, -2 (ix)
	sub	a, #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:327: else gkDiveDir = DIRECTION_NONE;
	ld	c, #0x03
	jr	Z, 00252$
	ld	c, #0x00
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:328: PlayAyFx(AYFX_BALL);
	push	bc
	ld	a, #0x05
	call	_PlayAyFx
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:329: while (ballTimer < 60) {
	ld	a, c
	sub	a, #0x07
	ld	a, #0x01
	jr	Z, 01127$
	xor	a, a
01127$:
	ld	-18 (ix), a
	ld	a, c
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 01129$
	xor	a, a
01129$:
	ld	-17 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	ld	a, #0x01
	jr	Z, 01131$
	xor	a, a
01131$:
	ld	-16 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00271$:
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	ld	c, -1 (ix)
	sub	a, #0x3c
	ld	a, c
	sbc	a, #0x00
	jp	NC, 00273$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:330: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:331: ballTimer++;
	inc	-2 (ix)
	jr	NZ, 01132$
	inc	-1 (ix)
01132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:333: i16 dx = (i16)targetX - (i16)g_Ball.X;
	ld	a, -22 (ix)
	ld	-15 (ix), a
	ld	a, -21 (ix)
	ld	-14 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	sub	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	sbc	a, -12 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:336: g_Ball.Y -= 6;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0xfa
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-12 (ix), a
	ld	hl, #_g_Ball
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:337: g_Ball.X += (dx / 8); 
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	ld	-10 (ix), a
	bit	7, -14 (ix)
	jr	Z, 00397$
	ld	a, -15 (ix)
	add	a, #0x07
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
00397$:
	sra	-10 (ix)
	rr	-11 (ix)
	sra	-10 (ix)
	rr	-11 (ix)
	sra	-10 (ix)
	rr	-11 (ix)
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	-10 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:339: if (ballTimer < 20) {
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00259$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:340: if (gkDiveDir == DIRECTION_LEFT) {
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:341: g_Players[gkId].X -= 3;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0xfd
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0xff
	ld	-10 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:342: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xa0
	jp	00259$
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:343: } else if (gkDiveDir == DIRECTION_RIGHT) {
	ld	a, -17 (ix)
	or	a, a
	jr	Z, 00259$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:344: g_Players[gkId].X += 3;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x03
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:345: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x2f
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:336: g_Ball.Y -= 6;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:349: if (g_Ball.Y <= FIELD_BOUND_Y_TOP + 8) {
	ld	a, #0x3a
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:350: if (gkChoice == shotDirIdx) {
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00261$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:351: saved = true;
	ld	-19 (ix), #0x01
	jp	00262$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:353: goal = true;
	ld	-20 (ix), #0x01
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:356: if (saved) break;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00273$
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:359: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00270$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:360: if (g_Ball.Y <= FIELD_BOUND_Y_TOP - 10) break;
	ld	a, #0x28
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	NC, 00273$
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:362: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
	jp	00271$
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:366: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00278$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:367: resChar = 'O'; // Uppercase for visibility
	ld	-1 (ix), #0x4f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:368: if (kickingTeam == TEAM_1) goals1++; else goals2++;
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00275$
	inc	-7 (ix)
	jp	00276$
00275$:
	inc	-8 (ix)
00276$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:369: V9990_PrintLayerAStringAtPos(12, 10, "IN  GOAL");
	ld	hl, #___str_1
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:370: PlayPCM(PCM_INGOAL);
	ld	a, #0x02
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:371: PlayVGM(VGM_PUBLIC_GOAL);
	ld	a, #0x03
	call	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:372: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:373: Trampoline_VOID_P1(3,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x03
	call	_Trampoline_VOID_P1
	jp	00279$
00278$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:375: resChar = 'X'; // Uppercase for visibility
	ld	-1 (ix), #0x58
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:376: PlayAyFx(AYFX_BALL_ON_GOALKEEPER);
	ld	a, #0x03
	call	_PlayAyFx
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:377: V9990_PrintLayerAStringAtPos(14, 10, saved ? "SAVED" : "MISS");
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00398$
	ld	-11 (ix), #<(___str_2)
	ld	-10 (ix), #>(___str_2)
	jp	00399$
00398$:
	ld	-11 (ix), #<(___str_3)
	ld	-10 (ix), #>(___str_3)
00399$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	push	bc
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0e
	call	_V9990_PrintLayerAStringAtPos
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:380: if (kickingTeam == TEAM_1) { if(h1_idx < 19) { g_History1[h1_idx++] = resChar; g_History1[h1_idx] = 0; } shots1++; } 
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00285$
	ld	a, -9 (ix)
	sub	a, #0x13
	jr	NC, 00281$
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	c, a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	b, a
	inc	-9 (ix)
	ld	a, -1 (ix)
	ld	(bc), a
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	c, a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00281$:
	inc	-4 (ix)
	jp	00286$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:381: else { if(h2_idx < 19) { g_History2[h2_idx++] = resChar; g_History2[h2_idx] = 0; } shots2++; }
	ld	a, -6 (ix)
	sub	a, #0x13
	jr	NC, 00283$
	ld	a, #<(_g_History2)
	add	a, -6 (ix)
	ld	c, a
	ld	a, #>(_g_History2)
	adc	a, #0x00
	ld	b, a
	inc	-6 (ix)
	ld	a, -1 (ix)
	ld	(bc), a
	ld	a, #<(_g_History2)
	add	a, -6 (ix)
	ld	c, a
	ld	a, #>(_g_History2)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00283$:
	inc	-5 (ix)
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:382: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:383: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:384: Trampoline_VOID_P1(3,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x03
	call	_Trampoline_VOID_P1
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:387: V9990_PrintLayerAStringAtPos(10, 22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:388: V9990_PrintLayerAStringAtPos(10, 23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:390: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00376$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00289$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00376$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:392: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00291$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:393: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:394: Trampoline_VOID_P1(3,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x03
	call	_Trampoline_VOID_P1
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:397: V9990_ClearTextFromLayerA(12, 10, 10);
	ld	a, #0x0a
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:398: g_BallIsVisible=FALSE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:401: g_VblankSuspended=FALSE;
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:403: if (kickerId < 7) {
	ld	a, -52 (ix)
	sub	a, #0x07
	jr	NC, 00293$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:404: g_Players[kickerId].TargetY = 220 + (kickerId/4)*15; 
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	c, -52 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00400$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00400$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:405: g_Players[kickerId].TargetX = 80 + (kickerId%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00294$
00293$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:407: u8 k = kickerId - 7;
	ld	a, -52 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:408: g_Players[kickerId].TargetY = 260 + (k/4)*15;
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00401$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00401$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x0104
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:409: g_Players[kickerId].TargetX = 80 + (k%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:413: if (gkId < 7) {
	ld	a, -51 (ix)
	sub	a, #0x07
	jr	NC, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:414: g_Players[gkId].TargetY = 220 + (gkId/4)*15; 
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	c, -51 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00402$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00402$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x00dc
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:415: g_Players[gkId].TargetX = 80 + (gkId%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00297$
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:417: u8 k = gkId - 7;
	ld	a, -51 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:418: g_Players[gkId].TargetY = 260 + (k/4)*15;
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00403$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00403$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #0x0104
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:419: g_Players[gkId].TargetX = 80 + (k%4)*25;
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #0x0050
	add	hl, bc
	ex	de, hl
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:424: g_Players[REFEREE].TargetX = 128;
	ld	hl, #0x0080
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:425: g_Players[REFEREE].TargetY = 243;
	ld	l, #0xf3
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:427: while(true) {
00347$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:428: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:429: bool kDone = true;
	ld	-16 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:430: bool gDone = true;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:431: bool rDone = true;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:168: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -46 (ix)
	ld	h, -45 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:434: if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00301$
	inc	bc
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x05
	jp	00302$
00301$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:435: else if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00302$
	dec	bc
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x01
00302$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:171: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -48 (ix)
	ld	h, -47 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:437: if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00310$
	inc	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00311$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x03
	jp	00311$
00310$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:438: else if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00311$
	dec	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-16 (ix), #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00311$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x07
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:176: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:441: if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00315$
	inc	bc
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x05
	jp	00316$
00315$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:442: else if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00316$
	dec	bc
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x01
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:179: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:444: if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00324$
	inc	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00325$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x03
	jp	00325$
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:445: else if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00325$
	dec	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00325$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x07
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:184: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	bc, (#(_g_Players + 294) + 0)
	ld	de, (#(_g_Players + 308) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:448: if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00329$
	inc	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
	jp	00330$
00329$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:449: else if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00330$
	dec	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x01
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:187: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	bc, (#(_g_Players + 296) + 0)
	ld	de, (#(_g_Players + 310) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:451: if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00334$
	inc	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
	jp	00335$
00334$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:452: else if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00335$
	dec	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
00335$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:191: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:455: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, -11 (ix)
	and	a,#0x07
	jr	NZ, 00404$
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00405$
00404$:
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
00405$:
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:458: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00337$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:460: u8 anim = (g_FrameCounter / 8) % 2;
	ld	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -10 (ix)
	ld	-1 (ix), a
	bit	7, -10 (ix)
	jr	Z, 00406$
	ld	a, -11 (ix)
	add	a, #0x07
	ld	-2 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
00406$:
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	ld	de, #0x0002
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, -2 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:461: g_Players[kickerId].PatternId = (anim == 0) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -28 (ix)
	ld	-11 (ix), a
	ld	a, -27 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00407$
	ld	-2 (ix), #0x30
	ld	-1 (ix), #0
	jp	00408$
00407$:
	ld	-2 (ix), #0x31
	ld	-1 (ix), #0
00408$:
	ld	a, -2 (ix)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:462: g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; // Lock pattern
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
	jp	00338$
00337$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:464: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
00338$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:467: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:468: g_Players[REFEREE].Status = animStatus;
	ld	hl, #(_g_Players + 312)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:471: if (g_FieldCurrentYPosition < FIELD_CENTRAL_Y) g_FieldCurrentYPosition++;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00340$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:474: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:476: if (kDone && gDone && rDone && g_FieldCurrentYPosition >= FIELD_CENTRAL_Y) break;
	ld	a, -16 (ix)
	or	a, a
	jp	Z, 00347$
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00347$
	ld	a, -14 (ix)
	or	a, a
	jp	Z, 00347$
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00347$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:480: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00379$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jr	NC, 00352$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:481: if (g_Players[i].Y < 243) {
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
	ld	de, #_g_Players
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:482: g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x000a
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:483: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	a, -11 (ix)
	add	a, #0x08
	ld	e, a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:481: if (g_Players[i].Y < 243) {
	ld	a, c
	sub	a, #0xf3
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00350$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:482: g_Players[i].Direction = DIRECTION_DOWN;
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:483: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	a, #0x10
	ld	(de), a
	jp	00351$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:485: g_Players[i].Direction = DIRECTION_UP;
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:486: g_Players[i].PatternId = PLAYER_POSE_BACK;
	ld	a, #0x11
	ld	(de), a
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:488: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:480: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00379$
00352$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:491: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:494: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:495: turn++;
	inc	-3 (ix)
	jp	00354$
00381$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:497: }
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
___str_0:
	.ascii "PENALTY SHOOTOUT"
	.db 0x00
___str_1:
	.ascii "IN  GOAL"
	.db 0x00
___str_2:
	.ascii "SAVED"
	.db 0x00
___str_3:
	.ascii "MISS"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:500: void TeamVictory(u8 teamId) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:501: g_MatchStatus = MATCH_VICTORY_LAP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:502: g_FieldScrollingActionInProgress = NO_VALUE; // Disable ISR scrolling
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:505: u16 targetX = g_Ball.X;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-36 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:506: u16 targetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-34 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-33 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:509: g_Ball.Y = g_FieldCurrentYPosition + 240; 
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00f0
	add	hl, de
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:512: if (targetY < g_FieldCurrentYPosition || targetY > g_FieldCurrentYPosition + 212) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:513: targetY = g_FieldCurrentYPosition + 106;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x006a
	add	hl, de
	ld	-34 (ix), l
	ld	-33 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:514: targetX = 128;
	ld	-36 (ix), #0x80
	ld	-35 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:518: for(u8 i=0; i<15; i++) {
00200$:
	ld	de, #_g_Players+0
	ld	c, #0x00
00178$:
	ld	a, c
	sub	a, #0x0f
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:520: g_Players[i].Status = PLAYER_STATUS_NONE; // Active for movement
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:518: for(u8 i=0; i<15; i++) {
	inc	c
	jp	00178$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:525: PlayVGM(VGM_VICTORY);
	push	de
	ld	a, #0x06
	call	_PlayVGM
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:526: while (true) { 
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:527: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:528: timer++;
	inc	-4 (ix)
	jr	NZ, 00391$
	inc	-3 (ix)
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:532: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:534: bool isWinner = (g_Players[i].TeamId == teamId);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:535: if (i == REFEREE) isWinner = false; // Force Referee to be "loser" (exit field)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NZ, 00106$
	ld	-10 (ix), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:541: i16 dx = (i16)targetX - (i16)g_Players[i].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:537: if (isWinner) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:541: i16 dx = (i16)targetX - (i16)g_Players[i].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:542: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:545: u16 dist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:548: u8 stopDist = 35 + (i % 7) * 10; 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:550: if (dist > stopDist) {
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:562: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	a, -30 (ix)
	add	a, #0x12
	ld	-11 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:550: if (dist > stopDist) {
	ld	a, -13 (ix)
	sub	a, -38 (ix)
	ld	a, -12 (ix)
	sbc	a, -37 (ix)
	jp	NC, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:552: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:553: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:556: if (Math_Abs32(dx) > Math_Abs32(dy)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:557: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:556: if (Math_Abs32(dx) > Math_Abs32(dy)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:557: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:559: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:562: g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00166$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:566: g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock pose
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:569: bool animFrame = (timer / 8) % 2 == 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:572: if ((timer % 3) == 0) { // Slow speed
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:573: i8 moveX = 0;
	or	a,e
	jp	NZ,00139$
	ld	e,a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:574: i8 moveY = 0;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:576: if (dy > 10) moveX = 1; else if (dy < -10) moveX = -1;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:577: if (dx > 10) moveY = -1; else if (dx < -10) moveY = 1;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:579: g_Players[i].X += moveX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:580: g_Players[i].Y += moveY;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:583: u16 currentDist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:584: if (currentDist > stopDist + 15) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:541: i16 dx = (i16)targetX - (i16)g_Players[i].X;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:585: if (dx > 0) g_Players[i].X++; else g_Players[i].X--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:542: i16 dy = (i16)targetY - (i16)g_Players[i].Y;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:586: if (dy > 0) g_Players[i].Y++; else g_Players[i].Y--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:591: bool showBack = ((timer + i * 17) / 60) & 1;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:594: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -30 (ix)
	add	a, #0x08
	ld	-9 (ix), a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:591: bool showBack = ((timer + i * 17) / 60) & 1;
	bit	0, e
	jr	Z, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:593: if (showBack) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:594: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:596: g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:603: if (g_Players[i].X < 8) {
	ld	a, -9 (ix)
	ld	b, -8 (ix)
	sub	a, #0x08
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:605: g_Players[i].Y = (g_FieldCurrentYPosition > 32) ? g_FieldCurrentYPosition - 32 : 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:606: continue; // Skip movement, count as exited
	jp	00166$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:609: losersOnField++;
	inc	-2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:612: i16 dx = (i16)0 - (i16)g_Players[i].X;
	ld	a, -9 (ix)
	ld	c, -8 (ix)
	neg
	ld	e, a
	sbc	a, a
	sub	a, c
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:613: i16 dy = (i16)FIELD_POS_Y_CENTER - (i16)g_Players[i].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:616: if ((timer & 1) == 0) {
	ld	a, -31 (ix)
	or	a, -32 (ix)
	jr	NZ, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:617: if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:618: if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:622: if (Math_Abs32(dx) > Math_Abs32(dy)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:623: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -30 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -29 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:622: if (Math_Abs32(dx) > Math_Abs32(dy)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:623: g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:625: g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:628: g_Players[i].Status = PLAYER_STATUS_NONE; // Walking animation
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:532: for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
	inc	-1 (ix)
	jp	00181$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:632: Trampoline_VOID(3,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:634: if (losersOnField == 0) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:635: extraTime++;
	inc	-6 (ix)
	jr	NZ, 00413$
	inc	-5 (ix)
00413$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:636: if (extraTime > 120) break; // 2 seconds after last exit
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:640: if (timer > 1200) break;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:643: Trampoline_VOID(4,ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x04
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s6_b1.c:644: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG6
	.area _INITIALIZER
	.area _CABS (ABS)
