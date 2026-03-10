;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s12_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _YSCC_Stop
	.globl _YSCC_PlayLoop
	.globl _YSCC_Play
	.globl _TeamVictory
	.globl _ShowHeaderInfo
	.globl _PeopleMoving
	.globl _V9990_PrintLayerAStringAtPos
	.globl _UpdateSpritesPositions
	.globl _IsJoystickTriggerPressed
	.globl _GetJoystickDirection
	.globl _PlayAyFx
	.globl _V9990_ClearTextFromLayerA
	.globl _PlayPCM
	.globl _CallFnc_U8
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID
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
	.area _SEG12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:24: void PenaltyShots() {
;	---------------------------------
; Function PenaltyShots
; ---------------------------------
_PenaltyShots::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-66
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:25: while(g_LastTimeCounter+2<g_TimeCounter){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:26: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00101$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:28: g_MatchStatus = MATCH_PENALTY_SETUP;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:29: g_FieldScrollingActionInProgress = NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:33: while (g_FieldCurrentYPosition != centerScroll) {
00107$:
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, l
	sub	a, #0x89
	or	a, h
	jr	Z, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:34: if (g_FieldCurrentYPosition < centerScroll) g_FieldCurrentYPosition++;
	ld	de, #0x0089
	cp	a, a
	sbc	hl, de
	jr	NC, 00105$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:35: else g_FieldCurrentYPosition--;
	ld	hl, (_g_FieldCurrentYPosition)
	dec	hl
	ld	(_g_FieldCurrentYPosition), hl
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:37: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:38: V9990_WaitSynch();
	call	_V9990_WaitSynch
	jp	00107$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:42: CallFnc_VOID(9,ShowHeaderInfo);
	ld	de, #_ShowHeaderInfo
	ld	a, #0x09
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:44: if (g_modernAudio) YSCC_PlayLoop(SCC_MODERN_PENALTIES_BIN_SEG, SCC_MODERN_PENALTIES_BIN_SIZE);
	ld	a, (_g_modernAudio+0)
	or	a, a
	jr	Z, 00111$
	ld	hl, #0x0012
	push	hl
	ld	hl, #0x4d80
	push	hl
	ld	hl, #0x01f4
	call	_YSCC_PlayLoop
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:45: V9990_PrintLayerAStringAtPos(8, 10, "PENALTY SHOOTOUT");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:46: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00372$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00112$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00372$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:47: V9990_ClearTextFromLayerA(8, 10, 16);
	ld	a, #0x10
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:50: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00375$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00443$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:51: g_Players[i].Status = PLAYER_STATUS_NONE;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:54: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:55: g_Players[i].TargetX = 80 + (i%4)*25;
	ld	hl, #0x0010
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:53: if (i < 7) { // Team 2 (Top)
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:54: g_Players[i].TargetY = 220 + (i/4)*15; 
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00394$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
00394$:
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
	add	a, #0xdc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0x00
	ld	-3 (ix), l
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -2 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:55: g_Players[i].TargetX = 80 + (i%4)*25;
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
	jp	00376$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:56: } else if (i < 14) { // Team 1 (Bottom)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:57: u8 k = i - 7;
	ld	a, -1 (ix)
	add	a, #0xf9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:58: g_Players[i].TargetY = 260 + (k/4)*15;
	ld	e, a
	ld	d, #0x00
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00395$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
00395$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:59: g_Players[i].TargetX = 80 + (k%4)*25;
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
	jp	00376$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:61: g_Players[i].TargetX = 128;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:62: g_Players[i].TargetY = 243; // Midfield
	ld	a, #0xf3
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00376$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:50: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00375$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:67: while(true) {
00443$:
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:68: bool allArrived = true;
	ld	-8 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:69: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00378$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:70: bool arrived = true;
	ld	-4 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:71: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:74: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	de, #_g_Players
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:71: if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
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
	jr	NC, 00123$
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
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:72: else if (g_Players[i].X > g_Players[i].TargetX) { g_Players[i].X--; arrived=false; g_Players[i].Direction = DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00124$
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
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:74: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
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
	jr	NC, 00128$
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
	jp	00129$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:75: else if (g_Players[i].Y > g_Players[i].TargetY) { g_Players[i].Y--; arrived=false; g_Players[i].Direction = DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00129$
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
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:79: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	a, -7 (ix)
	add	a, #0x12
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:77: if (!arrived) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00134$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:78: allArrived = false;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:79: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00379$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:81: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:82: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:74: if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
	ld	a, -7 (ix)
	add	a, #0x0a
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:82: if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
	ld	a, -3 (ix)
	sub	a, #0xf3
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00131$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x05
	jp	00132$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:83: else g_Players[i].Direction = DIRECTION_UP;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:84: g_Players[i].PatternId = (g_Players[i].Direction == DIRECTION_UP) ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
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
	jr	NZ, 00396$
	ld	-5 (ix), #0x11
	ld	-4 (ix), #0
	jp	00397$
00396$:
	ld	-5 (ix), #0x10
	ld	-4 (ix), #0
00397$:
	ld	a, -5 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00379$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:69: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00378$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:87: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:88: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:89: if (allArrived) break;
	ld	a, -8 (ix)
	or	a, a
	jp	Z, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:92: g_MatchStatus = MATCH_PENALTY_SHOOTOUT;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:105: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:106: g_Ball.KickMoveState = 0; // Ensure no dribble offset interferes with Y
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:108: while(true) {
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x04
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
00365$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:109: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:112: if (turn < 10) {
	ld	a, -3 (ix)
	sub	a, #0x0a
	jp	NC, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:113: u8 rem1 = 5 - shots1;
	ld	c, -4 (ix)
	ld	a, #0x05
	sub	a, c
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:114: u8 rem2 = 5 - shots2;
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, #0x05
	sub	a, -2 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:115: if (goals1 > goals2 + rem2) { CallFnc_VOID_P1(13,TeamVictory,TEAM_1); return; }
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	jp	PO, 01132$
	xor	a, #0x80
01132$:
	jp	P, 00143$
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x0d
	call	_CallFnc_VOID_P1
	jp	00392$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:116: if (goals2 > goals1 + rem1) { CallFnc_VOID_P1(13,TeamVictory,TEAM_2); return; }
	ld	a, -1 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
	add	a, -13 (ix)
	ld	-2 (ix), a
	ld	a, -10 (ix)
	adc	a, -12 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -15 (ix)
	ld	a, -1 (ix)
	sbc	a, -14 (ix)
	jp	PO, 01133$
	xor	a, #0x80
01133$:
	jp	P, 00154$
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x0d
	call	_CallFnc_VOID_P1
	jp	00392$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:119: if (shots1 == shots2) {
	ld	a, -5 (ix)
	sub	a, -4 (ix)
	jr	NZ, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:120: if (goals1 > goals2) { CallFnc_VOID_P1(13,TeamVictory,TEAM_1); return; }
	ld	a, -8 (ix)
	sub	a, -7 (ix)
	jr	NC, 00147$
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x0d
	call	_CallFnc_VOID_P1
	jp	00392$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:121: if (goals2 > goals1) { CallFnc_VOID_P1(13,TeamVictory,TEAM_2); return; }
	ld	a, -7 (ix)
	sub	a, -8 (ix)
	jr	NC, 00154$
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_TeamVictory
	ld	a, #0x0d
	call	_CallFnc_VOID_P1
	jp	00392$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:124: YSCC_PlayLoop(SCC_MODERN_PENALTIES_BIN_SEG, SCC_MODERN_PENALTIES_BIN_SIZE);
	ld	hl, #0x0012
	push	hl
	ld	hl, #0x4d80
	push	hl
	ld	hl, #0x01f4
	call	_YSCC_PlayLoop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:127: u8 kickingTeam = (turn % 2 == 0) ? TEAM_1 : TEAM_2;
	ld	c, -3 (ix)
	ld	b, #0x00
	bit	0, c
	jr	NZ, 00398$
	ld	de, #0x0001
	jp	00399$
00398$:
	ld	de, #0x0002
00399$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:128: u8 gkTeam = (kickingTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	dec	e
	ld	a, #0x01
	jr	Z, 01139$
	xor	a, a
01139$:
	ld	-53 (ix), a
	or	a, a
	jr	Z, 00400$
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
	jp	00401$
00400$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00401$:
	ld	a, -2 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:134: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	a, b
	rlca
	and	a,#0x01
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:133: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:134: u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00402$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00402$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	add	a, #0x08
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:136: gkId = 0; // Team 2 GK
	ld	-51 (ix), #0x00
	jp	00157$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:138: u8 k = 1 + ((turn/2) % 6); // Team 2 players 1-6
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	or	a, a
	jr	Z, 00403$
	inc	bc
	ld	e, c
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
00403$:
	ld	l, e
	sra	h
	rr	l
	ld	de, #0x0006
	call	__modsint
	ld	a, e
	inc	a
	ld	-52 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:140: gkId = 7; // Team 1 GK
	ld	-51 (ix), #0x07
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:148: g_Players[kickerId].TargetX = kickSpotX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:149: g_Players[kickerId].TargetY = kickSpotY + 6; // Player stands behind ball
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:150: g_Players[gkId].TargetX = kickSpotX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:151: g_Players[gkId].TargetY = gkSpotY;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:154: g_Players[REFEREE].TargetX = 50;
	ld	hl, #0x0032
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:155: g_Players[REFEREE].TargetY = kickSpotY; 
	ld	l, #0x61
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:157: g_Players[kickerId].Status = PLAYER_STATUS_NONE;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:158: g_Players[gkId].Status = PLAYER_STATUS_NONE;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:159: g_Players[REFEREE].Status = PLAYER_STATUS_NONE;
	ld	hl, #0x0000
	ld	((_g_Players + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:162: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:163: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:164: g_Ball.Y = kickSpotY; // Ball exactly on spot
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:165: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:166: g_BallIsVisible=TRUE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:167: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:169: while(true) {
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:170: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:173: bool kDone = true;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:174: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
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
	jr	NC, 00161$
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
	jp	00162$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:175: else if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00162$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	inc	bc
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:177: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
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
	jr	NC, 00166$
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
	jp	00167$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:178: else if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00167$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	inc	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-15 (ix), #0x00
	ld	l, -50 (ix)
	ld	h, -49 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:181: bool gDone = true;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:182: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
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
	jr	NC, 00171$
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
	jp	00172$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:183: else if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00172$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	inc	bc
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-14 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:185: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
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
	jr	NC, 00176$
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
	jp	00177$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:186: else if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00177$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	inc	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	-14 (ix), #0x00
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:189: bool rDone = true;
	ld	-13 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:190: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
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
	jr	NC, 00181$
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
	jp	00182$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:191: else if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, -12 (ix)
	sub	a, -2 (ix)
	ld	a, -11 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00182$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	inc	bc
	ld	((_g_Players + 294)), bc
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:193: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	de, (#(_g_Players + 296) + 0)
	ld	hl, (#(_g_Players + 310) + 0)
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jr	NC, 00186$
	dec	de
	ld	((_g_Players + 296)), de
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
	jp	00187$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:194: else if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00187$
	inc	de
	ld	((_g_Players + 296)), de
	ld	-13 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:197: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	and	a, #0x07
	jr	NZ, 00404$
	ld	bc, #0x0000
	jp	00405$
00404$:
	ld	bc, #0x0004
00405$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:198: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:199: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:200: g_Players[REFEREE].Status = animStatus;
	ld	((_g_Players + 312)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:204: i16 targetCamY = (i16)g_Players[gkId].Y - 106;
	ld	l, -44 (ix)
	ld	h, -43 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	add	a, #0x96
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:205: if (targetCamY < 0) targetCamY = 0;
	ld	d, b
	bit	7, d
	jr	Z, 00189$
	ld	bc, #0x0000
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:206: if (targetCamY > FIELD_CENTRAL_Y) targetCamY = FIELD_CENTRAL_Y;
	ld	e, c
	ld	d, b
	ld	a, #0x89
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 01142$
	xor	a, #0x80
01142$:
	jp	P, 00191$
	ld	bc, #0x0089
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:208: if (g_FieldCurrentYPosition > targetCamY) g_FieldCurrentYPosition--;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 01143$
	xor	a, #0x80
01143$:
	jp	P, 00195$
	ld	hl, (_g_FieldCurrentYPosition)
	dec	hl
	ld	(_g_FieldCurrentYPosition), hl
	jp	00196$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:209: else if (g_FieldCurrentYPosition < targetCamY) g_FieldCurrentYPosition++;
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	PO, 01144$
	xor	a, #0x80
01144$:
	jp	P, 00196$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:211: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:213: if (kDone && gDone && rDone && g_FieldCurrentYPosition == 0) {
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00203$
	ld	a, -14 (ix)
	or	a, a
	jp	Z, 00203$
	ld	a, -13 (ix)
	or	a, a
	jp	Z, 00203$
	ld	a, (_g_FieldCurrentYPosition+1)
	ld	hl, #_g_FieldCurrentYPosition
	or	a, (hl)
	jp	NZ, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:214: g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:218: g_VblankSuspended=TRUE; 
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:220: g_Players[kickerId].Direction = DIRECTION_UP;
	ld	a, -50 (ix)
	add	a, #0x0a
	ld	-30 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-29 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:221: g_Players[kickerId].PatternId = PLAYER_POSE_BACK;
	ld	a, -50 (ix)
	add	a, #0x08
	ld	-28 (ix), a
	ld	a, -49 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:222: g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	a, -44 (ix)
	add	a, #0x0a
	ld	-26 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:223: g_Players[gkId].PatternId = PLAYER_POSE_FRONT;
	ld	a, -44 (ix)
	add	a, #0x08
	ld	-24 (ix), a
	ld	a, -43 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:224: g_Players[REFEREE].PatternId = PLAYER_POSE_RIGHT;
	ld	hl, #(_g_Players + 302)
	ld	(hl), #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:226: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:227: g_Ball.X = kickSpotX;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:228: g_Ball.Y = kickSpotY;
	ld	l, #0x61
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:229: g_BallIsVisible=TRUE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:230: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:231: V9990_PrintLayerAStringAtPos(10,22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:232: V9990_PrintLayerAStringAtPos(10,23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:235: for(u8 w=0; w<60; w++) V9990_WaitSynch();
	ld	c, #0x00
00381$:
	ld	a, c
	sub	a, #0x3c
	jr	NC, 00205$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00381$
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:236: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:238: u16 targetX = FIELD_POS_X_CENTER;
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:239: u8 shotDirIdx = 1; // 0=Left, 1=Center, 2=Right
	ld	-1 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:240: bool shotTaken = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:241: u8 playerGkChoice = 1; // 0=Left, 1=Center, 2=Right
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:243: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:244: g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:245: i8 aimPos = 1;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:246: i8 aimDir = 1;
	ld	-18 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:247: u16 moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:250: while(!shotTaken) {
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
00222$:
	ld	a, -19 (ix)
	or	a, a
	jp	NZ, 00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:251: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:254: moveTimer++;
	inc	-14 (ix)
	jr	NZ, 01145$
	inc	-13 (ix)
01145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:255: if (moveTimer > 8) { // Speed of cursor
	ld	a, -14 (ix)
	ld	-17 (ix), a
	ld	a, -13 (ix)
	ld	-16 (ix), a
	ld	a, #0x08
	cp	a, -17 (ix)
	ld	a, #0x00
	sbc	a, -16 (ix)
	jr	NC, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:256: moveTimer = 0;
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:257: aimPos += aimDir;
	ld	a, -18 (ix)
	add	a, -15 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:258: if (aimPos >= 2) {
	ld	-15 (ix), a
	xor	a, #0x80
	sub	a, #0x82
	jr	C, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:259: aimPos = 2;
	ld	-15 (ix), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:260: aimDir = -1;
	ld	-18 (ix), #0xff
	jp	00212$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:261: } else if (aimPos <= 0) {
	xor	a, a
	sub	a, -15 (ix)
	jp	PO, 01146$
	xor	a, #0x80
01146$:
	jp	M, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:262: aimPos = 0;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:263: aimDir = 1;
	ld	-18 (ix), #0x01
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:267: if (aimPos == 0) g_ShotCursorX = GOAL_X_MIN;
	ld	a, -15 (ix)
	or	a, a
	jr	NZ, 00217$
	ld	hl, #0x0060
	ld	(_g_ShotCursorX), hl
	jp	00218$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:268: else if (aimPos == 1) g_ShotCursorX = FIELD_POS_X_CENTER;
	ld	a, -15 (ix)
	dec	a
	jr	NZ, 00214$
	ld	hl, #0x0078
	ld	(_g_ShotCursorX), hl
	jp	00218$
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:269: else g_ShotCursorX = GOAL_X_MAX;
	ld	hl, #0x0090
	ld	(_g_ShotCursorX), hl
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:272: attr.Y = FIELD_BOUND_Y_TOP - 20 - g_FieldCurrentYPosition;
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	c, a
	ld	a, #0x1e
	sub	a, c
	ld	-57 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:273: attr.X = g_ShotCursorX;
	ld	hl, #11
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:274: attr.Pattern = SPRITE_DOWN_ARROW;
	ld	-56 (ix), #0x79
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:275: attr.P = 1; attr.SC = 0; attr.D = 0;
	ld	hl, #12
	add	hl, sp
	set	5, (hl)
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
	ld	hl, #12
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:276: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #9
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:278: timeoutTimer++;
	inc	-12 (ix)
	jr	NZ, 01149$
	inc	-11 (ix)
01149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:279: bool joyTrigged = CallFnc_U8(5,IsJoystickTriggerPressed);
	ld	de, #_IsJoystickTriggerPressed
	ld	a, #0x05
	call	_CallFnc_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:280: if (joyTrigged || timeoutTimer >= 300) {
	or	a, a
	jr	NZ, 00219$
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x2c
	ld	a, b
	sbc	a, #0x01
	jp	C, 00222$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:281: targetX = g_ShotCursorX;
	ld	hl, (_g_ShotCursorX)
	ld	-22 (ix), l
	ld	-21 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:282: shotDirIdx = (u8)aimPos;
	ld	a, -15 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:283: shotTaken = true;
	ld	-19 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:284: attr.D = 1;
	ld	hl, #12
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:285: V9_SetSpriteP1(16, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe40
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #9
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:285: V9_SetSpriteP1(16, &attr);
	jp	00222$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:290: shotDirIdx = g_FrameCounter % 3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:291: if (shotDirIdx == 0) targetX = GOAL_X_MIN;
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00229$
	ld	-22 (ix), #0x60
	ld	-21 (ix), #0
	jp	00494$
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:292: else if (shotDirIdx == 1) targetX = FIELD_POS_X_CENTER;
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00226$
	ld	-22 (ix), #0x78
	ld	-21 (ix), #0
	jp	00494$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:293: else targetX = GOAL_X_MAX;
	ld	-22 (ix), #0x90
	ld	-21 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:296: for(u8 w=0; w<120; w++) {
00494$:
	ld	-11 (ix), #0x00
00384$:
	ld	a, -11 (ix)
	sub	a, #0x78
	jr	NC, 00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:297: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:298: u8 joy = CallFnc_U8(4,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x04
	call	_CallFnc_U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:299: if (joy == DIRECTION_LEFT) playerGkChoice = 0;
	cp	a, #0x07
	jr	NZ, 00234$
	ld	-2 (ix), #0x00
	jp	00385$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:300: else if (joy == DIRECTION_RIGHT) playerGkChoice = 2;
	sub	a, #0x03
	jr	NZ, 00385$
	ld	-2 (ix), #0x02
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:296: for(u8 w=0; w<120; w++) {
	inc	-11 (ix)
	jp	00384$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:303: shotTaken = true;
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:308: bool goal = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:309: bool saved = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:313: if (kickingTeam == TEAM_1) {
	ld	a, -53 (ix)
	or	a, a
	jp	Z, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:315: u8 gkCountryId = (gkTeam == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	a, -10 (ix)
	dec	a
	jr	NZ, 00406$
	ld	a, (_g_Team1PaletteId+0)
	ld	-2 (ix), a
	jp	00407$
00406$:
	ld	a, (_g_Team2PaletteId+0)
	ld	-2 (ix), a
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:197: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:317: if (gkCountryId == TEAM_GER) {
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:319: u8 rnd = g_FrameCounter % 100;
	ld	de, #0x0064
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:320: if (rnd < 80) gkChoice = shotDirIdx; // Save
	sub	a, #0x50
	jr	NC, 00241$
	ld	a, -1 (ix)
	ld	-2 (ix), a
	jp	00248$
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:321: else gkChoice = (g_FrameCounter * 7 + 3) % 3; // Random
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
	jp	00248$
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:324: gkChoice = (g_FrameCounter * 7 + 3) % 3;
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
	ld	-2 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:328: gkChoice = playerGkChoice;
00247$:
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:331: if (gkChoice == 0) gkDiveDir = DIRECTION_LEFT;
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00253$
	ld	c, #0x07
	jp	00254$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:332: else if (gkChoice == 2) gkDiveDir = DIRECTION_RIGHT;
	ld	a, -2 (ix)
	sub	a, #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:333: else gkDiveDir = DIRECTION_NONE;
	ld	c, #0x03
	jr	Z, 00254$
	ld	c, #0x00
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:334: PlayAyFx(AYFX_BALL);
	push	bc
	ld	a, #0x05
	call	_PlayAyFx
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:335: while (ballTimer < 60) {
	ld	a, c
	sub	a, #0x07
	ld	a, #0x01
	jr	Z, 01163$
	xor	a, a
01163$:
	ld	-18 (ix), a
	ld	a, c
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 01165$
	xor	a, a
01165$:
	ld	-17 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	ld	a, #0x01
	jr	Z, 01167$
	xor	a, a
01167$:
	ld	-16 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00273$:
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, #0x3c
	ld	a, -10 (ix)
	sbc	a, #0x00
	jp	NC, 00275$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:336: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:337: ballTimer++;
	inc	-2 (ix)
	jr	NZ, 01168$
	inc	-1 (ix)
01168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:339: i16 dx = (i16)targetX - (i16)g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:342: g_Ball.Y -= 6;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:343: g_Ball.X += (dx / 8); 
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
	jr	Z, 00408$
	ld	a, -15 (ix)
	add	a, #0x07
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
00408$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:345: if (ballTimer < 20) {
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00261$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:346: if (gkDiveDir == DIRECTION_LEFT) {
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00258$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:347: g_Players[gkId].X -= 3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:348: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xa0
	jp	00261$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:349: } else if (gkDiveDir == DIRECTION_RIGHT) {
	ld	a, -17 (ix)
	or	a, a
	jr	Z, 00261$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:350: g_Players[gkId].X += 3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:351: g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x2f
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:342: g_Ball.Y -= 6;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:355: if (g_Ball.Y <= FIELD_BOUND_Y_TOP + 8) {
	ld	a, #0x3a
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:356: if (gkChoice == shotDirIdx) {
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:357: saved = true;
	ld	-19 (ix), #0x01
	jp	00264$
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:359: goal = true;
	ld	-20 (ix), #0x01
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:362: if (saved) break;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00275$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:365: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00272$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:366: if (g_Ball.Y <= FIELD_BOUND_Y_TOP - 10) break;
	ld	a, #0x28
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	NC, 00275$
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:368: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
	jp	00273$
00275$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:372: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:373: resChar = 'O'; // Uppercase for visibility
	ld	-1 (ix), #0x4f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:374: if (kickingTeam == TEAM_1) goals1++; else goals2++;
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00277$
	inc	-7 (ix)
	jp	00278$
00277$:
	inc	-8 (ix)
00278$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:375: V9990_PrintLayerAStringAtPos(12, 10, "IN  GOAL");
	ld	hl, #___str_1
	push	hl
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:376: if (g_modernAudio) {
	ld	a, (_g_modernAudio+0)
	or	a, a
	jr	Z, 00280$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:377: YSCC_Stop();
	call	_YSCC_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:378: YSCC_Play(SCC_MODERN_INGOAL_BIN_SEG, SCC_MODERN_INGOAL_BIN_SIZE);
	ld	hl, #0x0008
	push	hl
	ld	hl, #0xde00
	push	hl
	ld	hl, #0x028a
	call	_YSCC_Play
	jp	00281$
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:380: PlayPCM(PCM_INGOAL);
	ld	a, #0x02
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:381: YSCC_Stop();
	call	_YSCC_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:382: YSCC_Play(SCC_MODERN_INGOAL_BIN_SEG, SCC_MODERN_INGOAL_BIN_SIZE);//YSCC_Play(SCC_PUBLIC_GOAL_BIN_SEG, SCC_PUBLIC_GOAL_BIN_SIZE);
	ld	hl, #0x0008
	push	hl
	ld	hl, #0xde00
	push	hl
	ld	hl, #0x028a
	call	_YSCC_Play
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:384: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:385: CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x07
	call	_CallFnc_VOID_P1
	jp	00287$
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:387: resChar = 'X'; // Uppercase for visibility
	ld	-1 (ix), #0x58
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:388: if (g_modernAudio) {
	ld	a, (_g_modernAudio+0)
	or	a, a
	jr	Z, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:389: YSCC_Play(SCC_MODERN_GOALKICK_BIN_SEG, SCC_MODERN_GOALKICK_BIN_SIZE);
	ld	hl, #0x0001
	push	hl
	ld	hl, #0x2e80
	push	hl
	ld	hl, #0x02f8
	call	_YSCC_Play
	jp	00284$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:391: PlayAyFx(AYFX_BALL_ON_GOALKEEPER);
	ld	a, #0x03
	call	_PlayAyFx
00284$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:393: V9990_PrintLayerAStringAtPos(14, 10, saved ? "SAVED" : "MISS");
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00409$
	ld	-11 (ix), #<(___str_2)
	ld	-10 (ix), #>(___str_2)
	jp	00410$
00409$:
	ld	-11 (ix), #<(___str_3)
	ld	-10 (ix), #>(___str_3)
00410$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	push	bc
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0e
	call	_V9990_PrintLayerAStringAtPos
00287$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:396: if (kickingTeam == TEAM_1) { if(h1_idx < 19) { g_History1[h1_idx++] = resChar; g_History1[h1_idx] = 0; } shots1++; } 
	ld	a, -53 (ix)
	or	a, a
	jr	Z, 00293$
	ld	a, -9 (ix)
	sub	a, #0x13
	jr	NC, 00289$
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	-10 (ix), a
	inc	-9 (ix)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
	ld	a, #<(_g_History1)
	add	a, -9 (ix)
	ld	c, a
	ld	a, #>(_g_History1)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00289$:
	inc	-4 (ix)
	jp	00294$
00293$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:397: else { if(h2_idx < 19) { g_History2[h2_idx++] = resChar; g_History2[h2_idx] = 0; } shots2++; }
	ld	a, -6 (ix)
	sub	a, #0x13
	jr	NC, 00291$
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
00291$:
	inc	-5 (ix)
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:398: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:399: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:400: CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x07
	call	_CallFnc_VOID_P1
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:403: V9990_PrintLayerAStringAtPos(10, 22, g_History1);
	ld	hl, #_g_History1
	push	hl
	ld	l, #0x16
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:404: V9990_PrintLayerAStringAtPos(10, 23, g_History2);
	ld	hl, #_g_History2
	push	hl
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:406: for(u8 w=0; w<120; w++) V9990_WaitSynch();
	ld	c, #0x00
00387$:
	ld	a, c
	sub	a, #0x78
	jr	NC, 00297$
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	inc	c
	jp	00387$
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:408: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00299$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:409: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:410: CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
	ld	(_g_peopleState+0), a
	push	af
	inc	sp
	ld	de, #_PeopleMoving
	ld	a, #0x07
	call	_CallFnc_VOID_P1
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:413: V9990_ClearTextFromLayerA(12, 10, 10);
	ld	a, #0x0a
	push	af
	inc	sp
	ld	l, #0x0a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:414: g_BallIsVisible=FALSE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:415: if (!goal && g_modernAudio){
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00301$
	ld	a, (_g_modernAudio+0)
	or	a, a
	jr	Z, 00301$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:416: YSCC_PlayLoop(SCC_MODERN_PENALTIES_BIN_SEG, SCC_MODERN_PENALTIES_BIN_SIZE);
	ld	hl, #0x0012
	push	hl
	ld	hl, #0x4d80
	push	hl
	ld	hl, #0x01f4
	call	_YSCC_PlayLoop
00301$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:420: g_VblankSuspended=FALSE;
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:422: if (kickerId < 7) {
	ld	a, -52 (ix)
	sub	a, #0x07
	jr	NC, 00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:423: g_Players[kickerId].TargetY = 220 + (kickerId/4)*15; 
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	c, -52 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00411$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00411$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:424: g_Players[kickerId].TargetX = 80 + (kickerId%4)*25;
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
	jp	00305$
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:426: u8 k = kickerId - 7;
	ld	a, -52 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:427: g_Players[kickerId].TargetY = 260 + (k/4)*15;
	ld	a, -46 (ix)
	ld	-2 (ix), a
	ld	a, -45 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00412$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00412$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:428: g_Players[kickerId].TargetX = 80 + (k%4)*25;
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
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:432: if (gkId < 7) {
	ld	a, -51 (ix)
	sub	a, #0x07
	jr	NC, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:433: g_Players[gkId].TargetY = 220 + (gkId/4)*15; 
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	c, -51 (ix)
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00413$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00413$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:434: g_Players[gkId].TargetX = 80 + (gkId%4)*25;
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
	jp	00308$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:436: u8 k = gkId - 7;
	ld	a, -51 (ix)
	add	a, #0xf9
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:437: g_Players[gkId].TargetY = 260 + (k/4)*15;
	ld	a, -40 (ix)
	ld	-2 (ix), a
	ld	a, -39 (ix)
	ld	-1 (ix), a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00414$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00414$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:438: g_Players[gkId].TargetX = 80 + (k%4)*25;
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
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:443: g_Players[REFEREE].TargetX = 128;
	ld	hl, #0x0080
	ld	((_g_Players + 310)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:444: g_Players[REFEREE].TargetY = 243;
	ld	l, #0xf3
	ld	((_g_Players + 308)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:446: while(true) {
00358$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:447: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:448: bool kDone = true;
	ld	-16 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:449: bool gDone = true;
	ld	-15 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:450: bool rDone = true;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:174: if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:453: if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00312$
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
	jp	00313$
00312$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:454: else if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00313$
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
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:177: if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:456: if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00321$
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
	jr	NZ, 00322$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x03
	jp	00322$
00321$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:457: else if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00322$
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
	jr	NZ, 00322$
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x07
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:182: if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:460: if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00326$
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
	jp	00327$
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:461: else if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00327$
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
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:185: if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:463: if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00335$
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
	jr	NZ, 00336$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x03
	jp	00336$
00335$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:464: else if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00336$
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
	jr	NZ, 00336$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x07
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:190: if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	bc, (#(_g_Players + 294) + 0)
	ld	de, (#(_g_Players + 308) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:467: if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00340$
	inc	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x05
	jp	00341$
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:468: else if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00341$
	dec	bc
	ld	((_g_Players + 294)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x01
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:193: if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	bc, (#(_g_Players + 296) + 0)
	ld	de, (#(_g_Players + 310) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:470: if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00345$
	inc	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
	jp	00346$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:471: else if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00346$
	dec	bc
	ld	((_g_Players + 296)), bc
	ld	-14 (ix), #0x00
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x07
00346$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:197: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, (_g_FrameCounter+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:474: u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
	ld	a, -11 (ix)
	and	a,#0x07
	jr	NZ, 00415$
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00416$
00415$:
	ld	-2 (ix), #0x04
	ld	-1 (ix), #0
00416$:
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:477: if (goal) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00348$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:479: u8 anim = (g_FrameCounter / 8) % 2;
	ld	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -10 (ix)
	ld	-1 (ix), a
	bit	7, -10 (ix)
	jr	Z, 00417$
	ld	a, -11 (ix)
	add	a, #0x07
	ld	-2 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
00417$:
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
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:480: g_Players[kickerId].PatternId = (anim == 0) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -28 (ix)
	ld	-11 (ix), a
	ld	a, -27 (ix)
	ld	-10 (ix), a
	ld	a, b
	or	a, a
	jr	NZ, 00418$
	ld	-2 (ix), #0x30
	ld	-1 (ix), #0
	jp	00419$
00418$:
	ld	-2 (ix), #0x31
	ld	-1 (ix), #0
00419$:
	ld	a, -2 (ix)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:481: g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; // Lock pattern
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
	jp	00349$
00348$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:483: g_Players[kickerId].Status = animStatus;
	ld	l, -38 (ix)
	ld	h, -37 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:486: g_Players[gkId].Status = animStatus;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:487: g_Players[REFEREE].Status = animStatus;
	ld	hl, #(_g_Players + 312)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:490: if (g_FieldCurrentYPosition < FIELD_CENTRAL_Y) g_FieldCurrentYPosition++;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00351$
	ld	hl, (_g_FieldCurrentYPosition)
	inc	hl
	ld	(_g_FieldCurrentYPosition), hl
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:493: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:495: if (kDone && gDone && rDone && g_FieldCurrentYPosition >= FIELD_CENTRAL_Y) break;
	ld	a, -16 (ix)
	or	a, a
	jp	Z, 00358$
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00358$
	ld	a, -14 (ix)
	or	a, a
	jp	Z, 00358$
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x89
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00358$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:499: for(u8 i=0; i<15; i++) {
	ld	-1 (ix), #0x00
00390$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:500: if (g_Players[i].Y < 243) {
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
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -11 (ix)
	add	a, #<(_g_Players)
	ld	-17 (ix), a
	ld	a, -10 (ix)
	adc	a, #>(_g_Players)
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:501: g_Players[i].Direction = DIRECTION_DOWN;
	ld	a, -17 (ix)
	add	a, #0x0a
	ld	-13 (ix), a
	ld	a, -16 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:502: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	a, -17 (ix)
	add	a, #0x08
	ld	-11 (ix), a
	ld	a, -16 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:500: if (g_Players[i].Y < 243) {
	ld	a, -15 (ix)
	sub	a, #0xf3
	ld	a, -14 (ix)
	sbc	a, #0x00
	jr	NC, 00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:501: g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:502: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x10
	jp	00362$
00361$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:504: g_Players[i].Direction = DIRECTION_UP;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:505: g_Players[i].PatternId = PLAYER_POSE_BACK;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), #0x11
00362$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:507: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:499: for(u8 i=0; i<15; i++) {
	inc	-1 (ix)
	jp	00390$
00363$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:510: CallFnc_VOID(6,UpdateSpritesPositions);
	ld	de, #_UpdateSpritesPositions
	ld	a, #0x06
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:514: turn++;
	inc	-3 (ix)
	jp	00365$
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s12_b3.c:516: }
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
	.area _SEG12
	.area _INITIALIZER
	.area _CABS (ABS)
