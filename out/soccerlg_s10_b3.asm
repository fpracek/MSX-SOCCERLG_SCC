;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s10_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TickReferee
	.globl _GetOffsideLineY
	.globl _PerformShot
	.globl _PerformPass
	.globl _IsOffside
	.globl _PutBallOnPlayerFeet
	.globl _GetClosestPlayerToBall
	.globl _Math_Abs32
	.globl _GetTeamStats
	.globl _CallFnc_U16_P1
	.globl _CallFnc_U8_P2
	.globl _CallFnc_BOOL_P1
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_VOID_P1
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
	.area _SEG10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:23: void TickAI(u8 playerId){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:24: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00655$
	sub	a, #0x0d
	jp	NZ,00670$
00655$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:27: if (playerId == REFEREE) {
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:28: CallFnc_VOID_P1(14, TickReferee, playerId);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_TickReferee
	ld	a, #0x0e
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:29: return;
	jp	00670$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:31: u8 playerTeamId = g_Players[playerId].TeamId;
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
	ex	(sp), hl
	pop	bc
	push	bc
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:32: bool ballPossessionByPlayerTeam = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:33: u8 countryId = (playerTeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	a, -35 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 02120$
	xor	a, a
02120$:
	ld	-34 (ix), a
	or	a, a
	jr	Z, 00672$
	ld	a, (_g_Team1PaletteId+0)
	jp	00673$
00672$:
	ld	a, (_g_Team2PaletteId+0)
00673$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:34: const TeamStats* stats = GetTeamStats(countryId);
	push	bc
	ld	a, b
	call	_GetTeamStats
	pop	bc
	ld	-33 (ix), e
	ld	-32 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:36: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jr	NZ, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:39: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	Z, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:40: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) ballPossessionByPlayerTeam = true;
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
	jr	NZ, 00116$
	ld	c, #0x01
	jp	00116$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:44: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	cp	a, #0xff
	jr	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:45: if (g_Players[g_Ball.PossessionPlayerId].TeamId == playerTeamId) {
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
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:46: ballPossessionByPlayerTeam = true;
	ld	c, #0x01
	jp	00116$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:50: if (g_Ball.LastTouchTeamId == playerTeamId) {
	ld	hl, #_g_Ball + 14
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:51: ballPossessionByPlayerTeam = true;
	ld	c, #0x01
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:58: if (ballPossessionByPlayerTeam) {
	ld	a, c
	or	a, a
	jp	Z, 00428$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:61: if (g_Ball.PossessionPlayerId == playerId) {
	ld	a, (#_g_Ball + 6)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	NZ,00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:64: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	pop	bc
	push	bc
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	ld	-31 (ix), a
	or	a, a
	jp	Z,00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:70: if (playerTeamId == TEAM_1) { 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:71: targetY_Goal = goalTopY - 20; 
	ld	-30 (ix), #0x37
	ld	-29 (ix), #0
	jp	00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:73: targetY_Goal = goalBottomY + 20;
	ld	-30 (ix), #0xa9
	ld	-29 (ix), #0x01
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:77: targetX_Goal = g_Players[playerId].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:78: if (targetX_Goal > 100 && targetX_Goal < 156) {
	ld	e, -24 (ix)
	ld	c, -23 (ix)
	ld	a, #0x64
	cp	a, e
	ld	a, #0x00
	sbc	a, c
	jr	NC, 00126$
	ld	a, e
	sub	a, #0x9c
	ld	a, c
	sbc	a, #0x00
	jr	NC, 00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:79: if ((g_Players[playerId].Role % 2) != 0) targetX_Goal = 60; // Go Left
	bit	0, -31 (ix)
	jr	Z, 00123$
	ld	-24 (ix), #0x3c
	ld	-23 (ix), #0
	jp	00126$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:80: else targetX_Goal = 190; // Go Right
	ld	-24 (ix), #0xbe
	ld	-23 (ix), #0
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:83: if (targetX_Goal < FIELD_BOUND_X_LEFT + 20) targetX_Goal = FIELD_BOUND_X_LEFT + 20;
	ld	a, -24 (ix)
	sub	a, #0x1e
	ld	a, -23 (ix)
	sbc	a, #0x00
	jr	NC, 00129$
	ld	-24 (ix), #0x1e
	ld	-23 (ix), #0
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:84: if (targetX_Goal > FIELD_BOUND_X_RIGHT - 20) targetX_Goal = FIELD_BOUND_X_RIGHT - 20;
	ld	a, #0xd8
	cp	a, -24 (ix)
	ld	a, #0x00
	sbc	a, -23 (ix)
	jr	NC, 00131$
	ld	-24 (ix), #0xd8
	ld	-23 (ix), #0
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:88: bool obstacleRight = false;
	ld	-22 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:89: bool obstacleLeft = false;
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:90: bool obstacleFront = false;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:91: bool obstacleFrontNonGK = false;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:92: bool dangerousOpponent = false;
	ld	-18 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:95: for(i=0; i<14; i++) { 
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	bc, #0x0000
00658$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:96: if (g_Players[i].TeamId == playerTeamId) continue;
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
	jp	Z,00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:97: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	ld	hl, #18
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	a, (hl)
	or	a, e
	jp	Z, 00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:98: if (i == playerId) continue;
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	jp	Z,00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:100: i16 relX = (i16)g_Players[i].X - (i16)g_Players[playerId].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:101: i16 relY = (i16)g_Players[i].Y - (i16)g_Players[playerId].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:107: bool isFront = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:108: bool isBehind = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:111: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:110: if (playerTeamId == TEAM_1) { // Moving UP (Y decreases)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:111: if (relY < 0 && relY > -obstacleDetDist) isFront = true;
	ld	a, -8 (ix)
	rlca
	and	a,#0x01
	ld	d, a
	or	a, a
	jr	Z, 00139$
	ld	a, #0xe0
	cp	a, -9 (ix)
	ld	a, #0xff
	sbc	a, -8 (ix)
	jp	PO, 02136$
	xor	a, #0x80
02136$:
	jp	P, 00139$
	ld	e, #0x01
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:112: if (relY >= 0) isBehind = true;
	bit	0, d
	jr	NZ, 00150$
	ld	-2 (ix), #0x01
	jp	00150$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:114: if (relY > 0 && relY < obstacleDetDist) isFront = true;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02137$
	xor	a, #0x80
02137$:
	rlca
	and	a,#0x01
	ld	d, a
	or	a, a
	jr	Z, 00144$
	ld	a, -11 (ix)
	sub	a, #0x20
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00144$
	ld	e, #0x01
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:115: if (relY <= 0) isBehind = true;
	bit	0, d
	jr	NZ, 00150$
	ld	-2 (ix), #0x01
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:120: u8 safeDist = isBehind ? 8 : 12; 
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00674$
	ld	-3 (ix), #0x08
	ld	-2 (ix), #0
	jp	00675$
00674$:
	ld	-3 (ix), #0x0c
	ld	-2 (ix), #0
00675$:
	ld	d, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:121: if (relX > -safeDist && relX < safeDist && relY > -safeDist && relY < safeDist) {
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
	jp	PO, 02138$
	xor	a, #0x80
02138$:
	jp	P, 00152$
	ld	-3 (ix), d
	ld	-2 (ix), #0x00
	ld	a, -13 (ix)
	sub	a, -3 (ix)
	ld	a, -12 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02139$
	xor	a, #0x80
02139$:
	jp	P, 00152$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jp	PO, 02140$
	xor	a, #0x80
02140$:
	jp	P, 00152$
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02141$
	xor	a, #0x80
02141$:
	jp	P, 00152$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:122: dangerousOpponent = true;
	ld	-18 (ix), #0x01
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:126: if (isFront && relX > -10 && relX < 10) {
	ld	a, e
	or	a, a
	jr	Z, 00159$
	ld	a, #0xf6
	cp	a, -13 (ix)
	ld	a, #0xff
	sbc	a, -12 (ix)
	jp	PO, 02142$
	xor	a, #0x80
02142$:
	jp	P, 00159$
	ld	a, -5 (ix)
	sub	a, #0x0a
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:127: obstacleFront = true;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:128: if (g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) obstacleFrontNonGK = true;
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
	jr	Z, 00159$
	ld	-19 (ix), #0x01
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:131: if (isFront || (relY < 18 && relY > -18)) { 
	ld	a, e
	or	a, a
	jr	NZ, 00168$
	ld	a, -9 (ix)
	sub	a, #0x12
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00172$
	ld	a, #0xee
	cp	a, -11 (ix)
	ld	a, #0xff
	sbc	a, -10 (ix)
	jp	PO, 02143$
	xor	a, #0x80
02143$:
	jp	P, 00172$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:132: if (relX >= 0 && relX < 24) obstacleRight = true; // Obstacle is to my right
	ld	a, -4 (ix)
	rlca
	and	a,#0x01
	ld	e, a
	bit	0, e
	jr	NZ, 00163$
	ld	a, -5 (ix)
	sub	a, #0x18
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00163$
	ld	-22 (ix), #0x01
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:133: if (relX < 0 && relX > -24) obstacleLeft = true; // Obstacle is to my left
	ld	a, e
	or	a, a
	jr	Z, 00172$
	ld	a, #0xe8
	cp	a, -13 (ix)
	ld	a, #0xff
	sbc	a, -12 (ix)
	jp	PO, 02144$
	xor	a, #0x80
02144$:
	jp	P, 00172$
	ld	-21 (ix), #0x01
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:95: for(i=0; i<14; i++) { 
	inc	bc
	ld	a, c
	sub	a, #0x0e
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00658$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:142: bool isHumanControlled = false;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:143: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00186$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00181$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:144: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00182$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00182$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00182$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:145: isHumanControlled = true;
	ld	-3 (ix), #0x01
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:148: if (!isHumanControlled) {
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:150: bool inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:151: bool inDangerousZone = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:154: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:158: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 90)) inRealShootingRange = true;
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, -17 (ix)
	sub	a, #0x8c
	ld	a, -16 (ix)
	sbc	a, #0x00
	jr	NC, 00188$
	ld	-6 (ix), #0x01
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:161: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 60)) inDangerousZone = true; 
	ld	a, -5 (ix)
	sub	a, #0x6e
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00190$
	ld	-2 (ix), #0x01
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:162: goalTargetY = FIELD_BOUND_Y_TOP - 40; 
	ld	-5 (ix), #0x0a
	ld	-4 (ix), #0
	jp	00197$
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:166: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 90)) inRealShootingRange = true;
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, #0x59
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00192$
	ld	-6 (ix), #0x01
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:169: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 60)) inDangerousZone = true;
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00194$
	ld	-2 (ix), #0x01
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:170: goalTargetY = FIELD_BOUND_Y_BOTTOM + 40; 
	ld	-5 (ix), #0xdb
	ld	-4 (ix), #0x01
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:174: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:175: inRealShootingRange = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:176: inDangerousZone = false;
	ld	-2 (ix), #0x00
00199$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:179: if (inRealShootingRange) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:188: bool clearShot = !obstacleFrontNonGK;
	ld	a, -19 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:191: if (inDangerousZone) clearShot = true;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00201$
	ld	-6 (ix), #0x01
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:194: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:195: if (g_Players[playerId].Y < (FIELD_BOUND_Y_TOP + 20)) {
	ld	a, -17 (ix)
	sub	a, #0x46
	ld	a, -16 (ix)
	sbc	a, #0x00
	jr	NC, 00214$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:196: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -26 (ix)
	sub	a, #0x5b
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	C, 00202$
	ld	a, #0x95
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00214$
00202$:
	ld	-6 (ix), #0x00
	jp	00214$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:199: if (g_Players[playerId].Y > (FIELD_BOUND_Y_BOTTOM - 20)) {
	ld	a, -17 (ix)
	ld	-8 (ix), a
	ld	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, #0x9f
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00214$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:200: if (g_Players[playerId].X < (GOAL_X_MIN - 5) || g_Players[playerId].X > (GOAL_X_MAX + 5)) clearShot = false;
	ld	a, -26 (ix)
	sub	a, #0x5b
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	C, 00207$
	ld	a, #0x95
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00214$
00207$:
	ld	-6 (ix), #0x00
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:206: if (clearShot) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:208: if ((g_FrameCounter % 10) > stats->ShotFreq) return;
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
	jp	PO, 02150$
	xor	a, #0x80
02150$:
	jp	P, 00216$
	jp	00670$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:210: u16 shotX = 86 + ((g_FrameCounter + playerId * 13) % 68);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:213: if (stats->Speed >= 6) {
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, #0x06
	jr	C, 00223$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:215: if ((g_FrameCounter & 3) != 0) {
	ld	a, (_g_FrameCounter+0)
	ld	c, a
	and	a, #0x03
	jr	Z, 00223$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:216: if ((g_FrameCounter & 4) == 0) shotX = GOAL_X_MIN + 3;
	bit	2, c
	jr	NZ, 00218$
	ld	-3 (ix), #0x63
	ld	-2 (ix), #0
	jp	00223$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:217: else shotX = GOAL_X_MAX - 3;
	ld	-3 (ix), #0x8d
	ld	-2 (ix), #0
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:221: CallFnc_VOID_16_P2(8,PerformShot,shotX, goalTargetY);
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
	ld	a, #0x08
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:222: return;
	jp	00670$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:228: bool shouldPass = false;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:229: bool isPanicPass = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:235: bool checkPassing = false;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:237: if (dangerousOpponent) {
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:239: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:240: isPanicPass = true;
	ld	-2 (ix), #0x01
	jp	00245$
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:242: else if (obstacleFront) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:245: bool canGoRight = (g_Players[playerId].X < FIELD_BOUND_X_RIGHT - 20) && !obstacleRight;
	ld	a, -26 (ix)
	sub	a, #0xd8
	ld	a, -25 (ix)
	sbc	a, #0x00
	jr	NC, 00676$
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00677$
00676$:
	ld	-5 (ix), #0x00
	jp	00678$
00677$:
	ld	-5 (ix), #0x01
00678$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:246: bool canGoLeft = (g_Players[playerId].X > FIELD_BOUND_X_LEFT + 20) && !obstacleLeft;
	ld	a, #0x1e
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00679$
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00680$
00679$:
	ld	-6 (ix), #0x00
	jp	00681$
00680$:
	ld	-6 (ix), #0x01
00681$:
	ld	c, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:248: if (canGoRight || canGoLeft) {
	ld	a, -5 (ix)
	or	a,a
	jr	NZ, 00234$
	or	a,c
	jr	Z, 00235$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:250: shouldPass = false;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:252: if (stats->Speed >= 6) {
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, #0x06
	jr	C, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:253: shouldPass = true;
	ld	-5 (ix), #0x01
	jp	00245$
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:257: shouldPass = true;
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:258: isPanicPass = true;
	ld	-2 (ix), #0x01
	jp	00245$
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:264: if ((g_FrameCounter % 10) < stats->PassFreq) checkPassing = true;
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
	jp	PO, 02154$
	xor	a, #0x80
02154$:
	jp	P, 00245$
	ld	-4 (ix), #0x01
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:267: if (checkPassing) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:270: shouldPass = true; 
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:271: isPanicPass = false;
	ld	-2 (ix), #0x00
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:274: if (shouldPass) {
	ld	a, -5 (ix)
	or	a, a
	jp	Z, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:275: if (!isHumanControlled) {
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:276: u8 bestT = NO_VALUE;
	ld	-9 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:277: i16 bestScore = -30000;
	ld	-8 (ix), #0xd0
	ld	-7 (ix), #0x8a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:279: for(t=0; t<14; t++) {
	ld	a, -33 (ix)
	add	a, #0x03
	ld	-6 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00659$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:280: if(g_Players[t].TeamId != playerTeamId) continue;
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
	jp	NZ,00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:281: if(t == playerId) continue;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:283: if (stats->PassFreq < 8) {
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	NC, 00255$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:284: if(g_Players[t].Status == PLAYER_STATUS_NONE) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #18
	add	hl, bc
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00283$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:286: if(g_Players[t].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:289: bool isOffside=CallFnc_BOOL_P1(5,IsOffside,t);
	ld	a, -4 (ix)
	ld	-16 (ix), a
	push	af
	inc	sp
	ld	de, #_IsOffside
	ld	a, #0x05
	call	_CallFnc_BOOL_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:290: if (isOffside) continue;
	or	a, a
	jp	NZ, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:292: i16 dx = (i16)g_Players[t].X - (i16)g_Players[playerId].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:293: i16 dy = (i16)g_Players[t].Y - (i16)g_Players[playerId].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:294: u16 adx = (dx < 0) ? -dx : dx;
	ld	a, -18 (ix)
	ld	-11 (ix), a
	ld	a, -17 (ix)
	ld	-10 (ix), a
	bit	7, -10 (ix)
	jr	Z, 00682$
	xor	a, a
	sub	a, -18 (ix)
	ld	-11 (ix), a
	sbc	a, a
	sub	a, -17 (ix)
	ld	-10 (ix), a
	jp	00683$
00682$:
	ld	a, -18 (ix)
	ld	-11 (ix), a
	ld	a, -17 (ix)
	ld	-10 (ix), a
00683$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:295: u16 ady = (dy < 0) ? -dy : dy;
	ld	b, -12 (ix)
	bit	7, b
	jr	Z, 00684$
	xor	a, a
	sub	a, -13 (ix)
	ld	-18 (ix), a
	sbc	a, a
	sub	a, -12 (ix)
	ld	-17 (ix), a
	jp	00685$
00684$:
	ld	a, -13 (ix)
	ld	-18 (ix), a
	ld	a, -12 (ix)
	ld	-17 (ix), a
00685$:
	ld	c, -18 (ix)
	ld	b, -17 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:296: if (adx < 40 && ady < 40) continue; // Minimum pass distance
	ld	a, -11 (ix)
	sub	a, #0x28
	ld	a, -10 (ix)
	sbc	a, #0x00
	jr	NC, 00261$
	ld	a, c
	sub	a, #0x28
	ld	a, b
	sbc	a, #0x00
	jp	C, 00283$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:299: if (g_Players[t].Y < g_FieldCurrentYPosition - 40 || 
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
	jp	C, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:300: g_Players[t].Y > (g_FieldCurrentYPosition + 252)) continue;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00fc
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jp	C, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:302: i16 advanceScore = (playerTeamId == TEAM_1) ? -dy : dy;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00686$
	xor	a, a
	sub	a, -13 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -12 (ix)
	jp	00687$
00686$:
	ld	c, -13 (ix)
	ld	a, -12 (ix)
00687$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:305: if (!isPanicPass) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00276$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:306: bool highSkill = (stats->PassFreq >= 8);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:307: bool allowSwitch = (highSkill && adx > 60); // Strong teams switch play (easier width)
	or	a, a
	jr	Z, 00688$
	ld	a, #0x3c
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00689$
00688$:
	xor	a, a
	jp	00690$
00689$:
	ld	a, #0x01
00690$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:308: if (allowSwitch) {
	or	a, a
	jr	Z, 00271$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:309: if (advanceScore < -10) continue; // Allow flat/slight back for wide balls
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00277$
	jp	00283$
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:311: i16 minAdv = highSkill ? 20 : 40;
	ld	a, e
	or	a, a
	jr	Z, 00691$
	ld	de, #0x0014
	jp	00692$
00691$:
	ld	de, #0x0028
00692$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:312: if (advanceScore < minAdv) continue; // Must gain ground
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	PO, 02158$
	xor	a, #0x80
02158$:
	jp	M, 00283$
	jp	00277$
00276$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:316: if (advanceScore < -150) continue;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x6a
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00283$
00277$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:320: if (stats->PassFreq >= 8) {
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:321: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	srl	d
	rr	e
	srl	d
	rr	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:320: if (stats->PassFreq >= 8) {
	ld	a, l
	sub	a, #0x08
	jr	C, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:321: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	l, c
	ld	h, b
	add	hl, de
	ld	c, l
	ld	b, h
	jp	00280$
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:323: score = advanceScore - (adx/4); // Penalize width (Direct play)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:326: if (score > bestScore) {
	ld	a, -8 (ix)
	sub	a, c
	ld	a, -7 (ix)
	sbc	a, b
	jp	PO, 02159$
	xor	a, #0x80
02159$:
	jp	P, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:327: bestScore = score;
	ld	-8 (ix), c
	ld	-7 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:328: bestT = t;
	ld	a, -16 (ix)
	ld	-9 (ix), a
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:279: for(t=0; t<14; t++) {
	inc	-4 (ix)
	jr	NZ, 02160$
	inc	-3 (ix)
02160$:
	ld	a, -4 (ix)
	sub	a, #0x0e
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00659$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:333: if (bestT != NO_VALUE) {
	ld	a, -9 (ix)
	inc	a
	jr	Z, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:336: i16 threshold = isPanicPass ? -80 : 10;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00693$
	ld	de, #0xffb0
	jp	00694$
00693$:
	ld	de, #0x000a
00694$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:338: if (bestScore > threshold) {
	ld	a, e
	sub	a, -8 (ix)
	ld	a, d
	sbc	a, -7 (ix)
	jp	PO, 02162$
	xor	a, #0x80
02162$:
	jp	P, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:339: u8 waitTime = (stats->PassFreq >= 8) ? 8 : 15; // Faster release for skill teams
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	C, 00695$
	ld	-6 (ix), #0x08
	ld	-5 (ix), #0
	jp	00696$
00695$:
	ld	-6 (ix), #0x0f
	ld	-5 (ix), #0
00696$:
	ld	a, -6 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:340: if (g_Ball.PossessionTimer < waitTime) return; 
	ld	a, (#_g_Ball + 28)
	ld	-2 (ix), a
	sub	a, -3 (ix)
	jp	C,00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:341: CallFnc_VOID_P1(5,PerformPass,bestT);
	ld	a, -9 (ix)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:342: return; // End tick
	jp	00670$
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:348: u16 finalTargetX = targetX_Goal;
	ld	a, -24 (ix)
	ld	-3 (ix), a
	ld	a, -23 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:349: u16 finalTargetY = targetY_Goal;
	ld	a, -30 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:351: if (obstacleFront) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:352: if (!obstacleRight) {
	ld	a, -22 (ix)
	or	a, a
	jr	NZ, 00302$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:353: finalTargetX = g_Players[playerId].X + 24;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:354: if (finalTargetX > FIELD_BOUND_X_RIGHT) finalTargetX = FIELD_BOUND_X_RIGHT;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00305$
	ld	-3 (ix), #0xec
	ld	-2 (ix), #0
	jp	00305$
00302$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:355: } else if (!obstacleLeft) {
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:356: finalTargetX = g_Players[playerId].X - 24; 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:357: if (finalTargetX < FIELD_BOUND_X_LEFT) finalTargetX = FIELD_BOUND_X_LEFT;
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00305$
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:361: g_Players[playerId].TargetX = finalTargetX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:362: return; // IMPORTANT: Ball Carrier handled. Stop.
	jp	00670$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:368: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -2 (ix)
	inc	a
	jr	NZ, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:370: u8 closestId=CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:371: if (closestId == playerId) {
	ld	a, -1 (ix)
	sub	a, c
	jr	NZ, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:372: g_Players[playerId].TargetX = g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:373: g_Players[playerId].TargetY = g_Ball.Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:374: return;
	jp	00670$
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:64: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	ld	a, -37 (ix)
	add	a, #0x0d
	ld	-9 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:407: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:381: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	NZ,00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:384: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	ld	a, -2 (ix)
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:383: if (playerTeamId == TEAM_1) { // Moving UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00325$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:384: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	bit	0, -3 (ix)
	jr	NZ, 00316$
	ld	a, #0xa0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00326$
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:385: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00313$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00326$
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:386: else g_Players[playerId].TargetY = 350;
	ld	a, #0x5e
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00326$
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:388: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 320;
	bit	0, -3 (ix)
	jr	NZ, 00322$
	ld	a, #0x40
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
	jp	00326$
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:389: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00319$
	ld	a, #0xf0
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00326$
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:390: else g_Players[playerId].TargetY = 130;
	ld	a, #0x82
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:394: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	cp	a, #0x05
	jr	NZ, 00342$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00670$
00342$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:395: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) g_Players[playerId].TargetX = 192;
	cp	a, #0x06
	jr	NZ, 00339$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00670$
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:396: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	cp	a, #0x03
	jr	NZ, 00336$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00670$
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:397: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) g_Players[playerId].TargetX = 208;
	cp	a, #0x04
	jr	NZ, 00333$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00670$
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:398: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) g_Players[playerId].TargetX = 80;
	cp	a, #0x01
	jr	NZ, 00330$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x50
	inc	hl
	ld	(hl), #0x00
	jp	00670$
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:399: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) g_Players[playerId].TargetX = 176;
	sub	a, #0x02
	jp	NZ,00670$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xb0
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:401: return;
	jp	00670$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:407: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	Z, 00395$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:408: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) {
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NZ, 00396$
00395$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:411: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 10;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00347$
	ld	(hl), #0x41
	inc	hl
	ld	(hl), #0x00
	jp	00348$
00347$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:412: else g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 10;
	ld	(hl), #0x9f
	inc	hl
	ld	(hl), #0x01
00348$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:414: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:361: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:414: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00350$
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00873$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:415: else g_Players[playerId].TargetX = 192;
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00873$
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:417: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER || 
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:418: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -2 (ix)
	sub	a, #0x04
	jp	NZ,00392$
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:373: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:425: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:422: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:425: g_Players[playerId].TargetY = g_Ball.Y - 40;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:426: if (g_Players[playerId].TargetY < limitY) g_Players[playerId].TargetY = limitY;
	ld	a, -3 (ix)
	sub	a, #0x6a
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00358$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00358$
00357$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:430: g_Players[playerId].TargetY = g_Ball.Y + 40;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:431: if (g_Players[playerId].TargetY > limitY) g_Players[playerId].TargetY = limitY;
	ld	a, #0x3e
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00358$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
00358$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:434: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:361: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:434: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00360$
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00873$
00360$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:435: else g_Players[playerId].TargetX = 208;
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00873$
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:437: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER || 
	ld	a, -2 (ix)
	dec	a
	jr	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:438: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, -2 (ix)
	sub	a, #0x02
	jp	NZ,00388$
00387$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:373: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:425: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:441: if (playerTeamId == TEAM_1) { // Attacking UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00377$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:442: g_Players[playerId].TargetY = g_Ball.Y + 30;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:444: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:446: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:444: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00367$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:446: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	a, c
	sub	a, #0x3e
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00378$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00378$
00367$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:449: if (g_Players[playerId].TargetY < 190) g_Players[playerId].TargetY = 190;
	ld	a, c
	sub	a, #0xbe
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00378$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xbe
	inc	hl
	ld	(hl), #0x00
	jp	00378$
00377$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:453: g_Players[playerId].TargetY = g_Ball.Y - 30;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:446: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00374$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:457: if (g_Players[playerId].TargetY > 106) g_Players[playerId].TargetY = 106;
	ld	a, #0x6a
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00378$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00378$
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:460: if (g_Players[playerId].TargetY > 234) g_Players[playerId].TargetY = 234;
	ld	a, #0xea
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00378$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xea
	inc	hl
	ld	(hl), #0x00
00378$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:466: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) defTargetX = 80;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	dec	a
	jr	NZ, 00380$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
	jp	00381$
00380$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:467: else defTargetX = 176;
	ld	-7 (ix), #0xb0
	ld	-6 (ix), #0
00381$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:470: defTargetX = (defTargetX + g_Ball.X) / 2;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:471: g_Players[playerId].TargetX = defTargetX;
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
	jp	00873$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:473: } else if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00873$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:474: g_Players[playerId].TargetX = FIELD_POS_X_CENTER;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:475: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 20;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00383$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xa9
	inc	hl
	ld	(hl), #0x01
	jp	00670$
00383$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:476: else g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 20;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x37
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:477: return; // GK Done
	jp	00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:481: for(u8 i=0; i<14; i++) {
00873$:
	ld	-2 (ix), #0x00
00661$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00419$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:482: if (i == playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:483: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
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
	jp	Z, 00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:484: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:485: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:487: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:488: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:489: if (dx > -75 && dx < 75 && dy > -75 && dy < 75) {
	ld	a, #0xb5
	cp	a, -12 (ix)
	ld	a, #0xff
	sbc	a, -11 (ix)
	jp	PO, 02203$
	xor	a, #0x80
02203$:
	jp	P, 00418$
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x4b
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00418$
	ld	a, #0xb5
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02204$
	xor	a, #0x80
02204$:
	jp	P, 00418$
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	a, -6 (ix)
	sub	a, #0x4b
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:490: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -14 (ix)
	ld	-4 (ix), a
	ld	a, -13 (ix)
	ld	-3 (ix), a
	bit	7, b
	jr	NZ, 00408$
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
	jp	00409$
00408$:
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
00409$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:488: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:491: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -5 (ix)
	jr	NZ, 00411$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00418$
00411$:
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
00418$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:481: for(u8 i=0; i<14; i++) {
	inc	-2 (ix)
	jp	00661$
00419$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:496: u16 offsideY = CallFnc_U16_P1(11,GetOffsideLineY,playerTeamId);
	ld	a, -35 (ix)
	push	af
	inc	sp
	ld	de, #_GetOffsideLineY
	ld	a, #0x0b
	call	_CallFnc_U16_P1
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:373: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:446: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:499: if (playerTeamId == TEAM_1) { // Attacking UP (TargetY decreases)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00425$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:503: effectiveLimit = (g_Ball.Y < offsideY) ? g_Ball.Y : offsideY;
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00697$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00698$
00697$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00698$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:505: if (g_Players[playerId].TargetY < (effectiveLimit + 30)) { 
	ld	hl, #0x001e
	add	hl, de
	ex	de, hl
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	NC,00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:506: g_Players[playerId].TargetY = effectiveLimit + 30;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00670$
00425$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:510: effectiveLimit = (g_Ball.Y > offsideY) ? g_Ball.Y : offsideY;
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00699$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	jp	00700$
00699$:
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00700$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:512: if (g_Players[playerId].TargetY > (effectiveLimit - 30)) {
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
	jp	NC,00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:513: g_Players[playerId].TargetY = effectiveLimit - 30;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:518: return; 
	jp	00670$
00428$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:527: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
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
	jp	NZ, 00453$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:529: if (g_Ball.ShotActive) return;
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ,00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:536: if (playerTeamId == TEAM_1) { 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00432$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:537: gkTargetY = FIELD_POS_Y_TEAM1_GOALKEEPER;
	ld	bc, #0x01a8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:538: boxYMin = GK_BOX_Y_BOTTOM_MIN; boxYMax = GK_BOX_Y_BOTTOM_MAX;
	ld	-5 (ix), #0x95
	ld	-4 (ix), #0x01
	ld	-3 (ix), #0xb3
	ld	-2 (ix), #0x01
	jp	00433$
00432$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:540: gkTargetY = FIELD_POS_Y_TEAM2_GOALKEEPER;
	ld	bc, #0x0032
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:541: boxYMin = GK_BOX_Y_TOP_MIN; boxYMax = GK_BOX_Y_TOP_MAX;
	ld	-5 (ix), #0x23
	ld	-4 (ix), #0
	ld	-3 (ix), #0x4b
	ld	-2 (ix), #0
00433$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:543: u8 closestId =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	push	bc
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:544: bool ballInBox = (g_Ball.X > (boxXMin-5) && g_Ball.X < (boxXMax+5) && 
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
	jr	NC, 00701$
	ld	a, -8 (ix)
	sub	a, #0xa5
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00701$
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
	jr	NC, 00701$
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	xor	a, a
	sbc	hl, de
	jr	C, 00702$
00701$:
	ld	-6 (ix), #0x00
	jp	00703$
00702$:
	ld	-6 (ix), #0x01
00703$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:547: if (ballInBox && closestId == playerId) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00441$
	ld	a, -1 (ix)
	sub	a, -11 (ix)
	jr	NZ, 00441$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:548: gkTargetX = g_Ball.X;
	ld	a, -10 (ix)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), a
	ld	-6 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:549: gkTargetY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	jp	00442$
00441$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:551: if (g_Ball.X > gkTargetX + 24) gkTargetX += 16;
	ld	a, #0x90
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00438$
	ld	-7 (ix), #0x88
	ld	-6 (ix), #0
	jp	00442$
00438$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:552: else if (g_Ball.X < gkTargetX - 24) gkTargetX -= 16;
	ld	a, -8 (ix)
	sub	a, #0x60
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00435$
	ld	-7 (ix), #0x68
	ld	-6 (ix), #0
	jp	00442$
00435$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:553: else gkTargetX = g_Ball.X; 
	ld	a, -10 (ix)
	ld	e, -9 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), e
00442$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:556: if (gkTargetX < boxXMin) gkTargetX = boxXMin;
	ld	a, -7 (ix)
	sub	a, #0x50
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00445$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
00445$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:557: if (gkTargetX > boxXMax) gkTargetX = boxXMax;
	ld	a, #0xa0
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00447$
	ld	-7 (ix), #0xa0
	ld	-6 (ix), #0
00447$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:558: if (gkTargetY < boxYMin) gkTargetY = boxYMin;
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00449$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00449$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:559: if (gkTargetY > boxYMax) gkTargetY = boxYMax;
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jr	NC, 00451$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
00451$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:561: g_Players[playerId].TargetX = gkTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:562: g_Players[playerId].TargetY = gkTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:563: return; 
	jp	00670$
00453$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:567: u8 playerClosesestToBallId =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE); 
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:568: bool amIEffectiveChaser = (playerClosesestToBallId == playerId);
	ld	a, -1 (ix)
	sub	a, b
	ld	a, #0x01
	jr	Z, 02208$
	xor	a, a
02208$:
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:24: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02210$
	xor	a, a
02210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:571: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) amIEffectiveChaser = false;
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00455$
	ld	-9 (ix), #0x00
00455$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:575: if (!amIEffectiveChaser && stats->Aggression > 10 && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a, -9 (ix)
	or	a, a
	jr	NZ, 00459$
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
	jr	NC, 00459$
	ld	c, -2 (ix)
	bit	0, c
	jr	NZ, 00459$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:576: u16 dist = (u16)(Math_Abs32((i16)g_Players[playerId].X - (i16)g_Ball.X) + 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:578: if (dist < 60) amIEffectiveChaser = true;
	ld	de, #0x003c
	cp	a, a
	sbc	hl, de
	jr	NC, 00459$
	ld	-9 (ix), #0x01
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:581: if (g_Players[playerClosesestToBallId].Role == PLAYER_ROLE_GOALKEEPER) {
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
	jp	NZ, 00473$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:582: u16 limitY = (playerTeamId == TEAM_1) ? GK_BOX_Y_BOTTOM_MIN : GK_BOX_Y_TOP_MAX;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00710$
	ld	de, #0x0195
	jp	00711$
00710$:
	ld	de, #0x004b
00711$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:583: bool ballFar = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:584: if (playerTeamId == TEAM_1 && g_Ball.Y < limitY - 10) ballFar = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00463$
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
	jr	NC, 00463$
	ld	-6 (ix), #0x01
00463$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:585: if (playerTeamId == TEAM_2 && g_Ball.Y > limitY + 10) ballFar = true;
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00466$
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	add	a, #0x0a
	ld	c, a
	jr	NC, 02213$
	inc	d
02213$:
	ld	a, c
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00466$
	ld	-6 (ix), #0x01
00466$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:587: if (ballFar) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00473$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:588: u8 nextClosest =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,playerClosesestToBallId);
	push	bc
	push	bc
	inc	sp
	ld	a, -35 (ix)
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:589: if (nextClosest == playerId) amIEffectiveChaser = true;
	ld	a, -1 (ix)
	sub	a, c
	jr	NZ, 00473$
	ld	-9 (ix), #0x01
00473$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:593: if (amIEffectiveChaser) {
	ld	a, -9 (ix)
	or	a, a
	jp	Z, 00713$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:596: if ((g_FrameCounter & 3) == 0) return;
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jp	Z,00670$
	jp	00475$
00475$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:599: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	ld	-9 (ix), a
	inc	a
	ld	a, #0x01
	jr	Z, 02219$
	xor	a, a
02219$:
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:600: g_Players[playerId].TargetX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:599: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00507$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:600: g_Players[playerId].TargetX = g_Ball.X;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:601: g_Players[playerId].TargetY = g_Ball.Y;
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
	jp	00670$
00507$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:607: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:608: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:609: i16 range = stats->Aggression;
	ld	l, -33 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:610: if (dx > -range && dx < range && dy > -range && dy < range) {
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
	jp	PO, 02220$
	xor	a, #0x80
02220$:
	jp	P, 00489$
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	PO, 02221$
	xor	a, #0x80
02221$:
	jp	P, 00489$
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02222$
	xor	a, #0x80
02222$:
	jp	P, 00489$
	ld	a, -3 (ix)
	sub	a, e
	ld	a, -2 (ix)
	sbc	a, d
	jp	PO, 02223$
	xor	a, #0x80
02223$:
	jp	P, 00489$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:615: bool isHumanControlled = false;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:616: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00481$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00476$
00481$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:617: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00477$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00477$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00477$
00476$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:618: isHumanControlled = true;
	ld	-2 (ix), #0x01
00477$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:621: if (!isHumanControlled) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00489$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:623: if (g_Ball.StealCooldown == 0) {
	ld	a, (#_g_Ball + 15)
	or	a, a
	jr	NZ, 00489$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:625: if ((g_FrameCounter % 4) == 0) {
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jr	NZ, 00489$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:626: CallFnc_VOID_P1(4,PutBallOnPlayerFeet,playerId);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x04
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:627: return;
	jp	00670$
00489$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:635: i16 targetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:636: i16 targetY = g_Ball.Y;
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	-3 (ix), e
	ld	-2 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:639: u8 predDir = g_Ball.Direction;
	ld	hl, #_g_Ball + 5
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:640: if (g_Ball.PossessionPlayerId != NO_VALUE) predDir = g_Players[g_Ball.PossessionPlayerId].Direction;
	ld	d, -8 (ix)
	bit	0, d
	jr	NZ, 00494$
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
00494$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:642: if (predDir != DIRECTION_NONE) {
	ld	a, e
	or	a, a
	jp	Z, 00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:645: switch(predDir) {
	ld	a, #0x08
	sub	a, e
	jp	C, 00505$
	ld	d, #0x00
	ld	hl, #02231$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
02231$:
	jp	00505$
	jp	00495$
	jp	00499$
	jp	00498$
	jp	00501$
	jp	00496$
	jp	00502$
	jp	00497$
	jp	00500$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:646: case DIRECTION_UP: targetY -= lead; break;
00495$:
	ld	a, -3 (ix)
	ld	d, -2 (ix)
	add	a, #0xe0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), e
	ld	-2 (ix), a
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:647: case DIRECTION_DOWN: targetY += lead; break;
00496$:
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #0x0020
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:648: case DIRECTION_LEFT: targetX -= lead; break;
00497$:
	ld	a, c
	add	a, #0xe0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:649: case DIRECTION_RIGHT: targetX += lead; break;
00498$:
	ld	hl, #0x0020
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:650: case DIRECTION_UP_RIGHT: targetY -= 24; targetX += 24; break;
00499$:
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
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:651: case DIRECTION_UP_LEFT: targetY -= 24; targetX -= 24; break;
00500$:
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
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:652: case DIRECTION_DOWN_RIGHT: targetY += 24; targetX += 24; break;
00501$:
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
	jp	00505$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:653: case DIRECTION_DOWN_LEFT: targetY += 24; targetX -= 24; break;
00502$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:654: }
00505$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:656: g_Players[playerId].TargetX = targetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:657: g_Players[playerId].TargetY = targetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00670$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:662: u16 defGoalY = (playerTeamId == TEAM_1) ? FIELD_BOUND_Y_BOTTOM : FIELD_BOUND_Y_TOP;
00713$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:663: bool chaserBeaten = false;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:664: bool opponentHasBall = (g_Ball.PossessionPlayerId != NO_VALUE && g_Players[g_Ball.PossessionPlayerId].TeamId != playerTeamId);
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	Z, 00714$
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
	jr	NZ, 00715$
00714$:
	ld	c, #0x00
	jp	00716$
00715$:
	ld	c, #0x01
00716$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:666: bool forceRetreat = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02236$
	xor	a, a
02236$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:667: if (opponentHasBall && playerClosesestToBallId != NO_VALUE && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00517$
	inc	b
	jr	Z, 00517$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00517$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:668: u16 chaserY = g_Players[playerClosesestToBallId].Y;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:669: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00514$
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00517$
	ld	-3 (ix), #0x01
	jp	00517$
00514$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:670: else { if (g_Ball.Y < chaserY) chaserBeaten = true; }
	xor	a, a
	sbc	hl, de
	jr	NC, 00517$
	ld	-3 (ix), #0x01
00517$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:673: if (opponentHasBall && chaserBeaten && !forceRetreat) {
	ld	a, c
	or	a, a
	jr	Z, 00584$
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00584$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00584$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:674: g_Players[playerId].TargetX = g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:669: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:675: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00521$
	ld	de, #0x000f
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00585$
00521$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:676: else g_Players[playerId].TargetY = g_Ball.Y - 15;
	ld	de, #0xfff1
	add	hl, de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00585$
00584$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:527: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:680: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	ld	-3 (ix), a
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:679: if (playerTeamId == TEAM_1) { // Defend Bottom (High Y)
	ld	a, -34 (ix)
	or	a, a
	jp	Z, 00568$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:680: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -2 (ix)
	jr	NZ, 00543$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:682: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00569$
00543$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:684: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	C, 00540$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:686: g_Players[playerId].TargetY = 318; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00569$
00540$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:691: u16 defenseLineY = 350;
	ld	-6 (ix), #0x5e
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:696: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-2 (ix), #0x00
00663$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	NC, 00531$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:697: if (k==playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	Z, 00530$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:698: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
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
	jr	NZ, 00530$
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
	jr	Z, 00530$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:699: if (g_Players[k].Y < g_Players[playerId].Y) teammatesAhead++;
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
	jr	NC, 00530$
	inc	e
00530$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:696: for(u8 k=0; k<14; k++) {
	inc	-2 (ix)
	jp	00663$
00531$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:669: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:675: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:704: if (teammatesAhead < 2 || g_Ball.Y > 280) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00536$
	ld	a, #0x18
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00537$
00536$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:706: if (g_Ball.Y > defenseLineY - 40) {
	ld	a, #0x36
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00537$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:708: defenseLineY = g_Ball.Y + 15; 
	ld	hl, #0x000f
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:709: if (defenseLineY > FIELD_BOUND_Y_BOTTOM - 10) defenseLineY = FIELD_BOUND_Y_BOTTOM - 10;
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	c, l
	ld	b, h
	ld	a, #0xa9
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00537$
	ld	-6 (ix), #0xa9
	ld	-5 (ix), #0x01
00537$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:712: g_Players[playerId].TargetY = defenseLineY; 
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
	jp	00569$
00568$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:716: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
	bit	0, -2 (ix)
	jr	NZ, 00565$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:718: g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
	jp	00569$
00565$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:720: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	C, 00562$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:722: g_Players[playerId].TargetY = 106;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00569$
00562$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:727: u16 defenseLineY = 130;
	ld	-6 (ix), #0x82
	ld	-5 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:731: for(u8 k=0; k<14; k++) {
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, #0x00
	ld	-2 (ix), #0x00
00665$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	NC, 00553$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:732: if (k==playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	Z, 00552$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:733: if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
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
	jr	NZ, 00552$
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
	jr	Z, 00552$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:734: if (g_Players[k].Y > g_Players[playerId].Y) teammatesAhead++;
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
	jr	NC, 00552$
	inc	e
00552$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:731: for(u8 k=0; k<14; k++) {
	inc	-2 (ix)
	jp	00665$
00553$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:669: if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; } 
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:675: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:738: if (teammatesAhead < 2 || g_Ball.Y < 200) {
	ld	a, e
	sub	a, #0x02
	jr	C, 00558$
	ld	a, c
	sub	a, #0xc8
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00559$
00558$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:740: if (g_Ball.Y < defenseLineY + 40) {
	ld	a, c
	sub	a, #0xaa
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00559$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:741: defenseLineY = g_Ball.Y - 15;
	ld	a, c
	add	a, #0xf1
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	-6 (ix), c
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:742: if (defenseLineY < FIELD_BOUND_Y_TOP + 10) defenseLineY = FIELD_BOUND_Y_TOP + 10;
	ld	a, -6 (ix)
	sub	a, #0x3c
	ld	a, -5 (ix)
	sbc	a, #0x00
	jr	NC, 00559$
	ld	-6 (ix), #0x3c
	ld	-5 (ix), #0
00559$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:745: g_Players[playerId].TargetY = defenseLineY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00569$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:749: if (g_Players[playerId].Role % 2 != 0) {
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:361: g_Players[playerId].TargetX = finalTargetX;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-7 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:674: g_Players[playerId].TargetX = g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:752: u16 intendedX = g_Ball.X - 40;
	ld	hl, (#_g_Ball + 2)
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:749: if (g_Players[playerId].Role % 2 != 0) {
	ld	a, b
	or	a, c
	jr	Z, 00577$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:752: u16 intendedX = g_Ball.X - 40;
	ld	a, -5 (ix)
	add	a, #0xd8
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:753: if (g_Ball.X > FIELD_POS_X_CENTER && intendedX > FIELD_POS_X_CENTER + 20) {
	ld	a, #0x78
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jr	NC, 00571$
	ld	a, #0x8c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00571$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:754: intendedX = FIELD_POS_X_CENTER + 20; // Stay central
	ld	bc, #0x008c
00571$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:756: g_Players[playerId].TargetX = intendedX; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00578$
00577$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:761: u16 intendedX = g_Ball.X + 40;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0028
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:762: if (g_Ball.X < FIELD_POS_X_CENTER && intendedX < FIELD_POS_X_CENTER - 20) {
	ld	a, -5 (ix)
	sub	a, #0x78
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00574$
	ld	a, -3 (ix)
	sub	a, #0x64
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00574$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:763: intendedX = FIELD_POS_X_CENTER - 20; // Stay central
	ld	-3 (ix), #0x64
	ld	-2 (ix), #0
00574$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:765: g_Players[playerId].TargetX = intendedX; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00578$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:768: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT + 20) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT + 20;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00580$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x1e
	inc	hl
	ld	(hl), #0x00
00580$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:769: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT - 20) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT - 20;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xd8
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00585$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xd8
	inc	hl
	ld	(hl), #0x00
00585$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:773: if (stats->Aggression >= 15 && !amIEffectiveChaser && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	c, -33 (ix)
	ld	b, -32 (ix)
	inc	bc
	ld	a, (bc)
	sub	a, #0x0f
	jp	C, 00992$
	ld	a, -9 (ix)
	or	a, a
	jp	NZ, 00992$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	Z,00992$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:774: u8 bestMark = NO_VALUE;
	ld	-14 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:775: u16 minD = 120; // Look for opponents within this range
	ld	-13 (ix), #0x78
	ld	-12 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:777: for(u8 m=0; m<14; m++) {
	ld	a, -37 (ix)
	ld	-11 (ix), a
	ld	a, -36 (ix)
	ld	-10 (ix), a
	ld	-2 (ix), #0x00
00667$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00606$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:778: if (g_Players[m].TeamId == playerTeamId) continue;
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
	jp	Z,00605$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:779: if (m == g_Ball.PossessionPlayerId) continue; // Don't mark ball carrier (chaser handles it)
	ld	hl, #(_g_Ball + 6)
	ld	a,-2 (ix)
	sub	a,(hl)
	jp	Z,00605$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:780: if (g_Players[m].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00605$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:783: bool inBox = false;
	ld	-7 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:785: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:784: if (playerTeamId == TEAM_1) { // Defending Bottom
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00599$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:785: if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
	ld	a, #0x5e
	cp	a, -4 (ix)
	ld	a, #0x01
	sbc	a, -3 (ix)
	jr	NC, 00600$
	ld	-7 (ix), #0x01
	jp	00600$
00599$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:787: if (g_Players[m].Y < PENALTY_BOX_Y_TOP) inBox = true;
	ld	a, -4 (ix)
	sub	a, #0x82
	ld	a, -3 (ix)
	sbc	a, #0x00
	jr	NC, 00600$
	ld	-7 (ix), #0x01
00600$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:789: if (inBox) continue; 
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00605$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:791: i16 mdx = (i16)g_Players[m].X - (i16)g_Players[playerId].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:792: i16 mdy = (i16)g_Players[m].Y - (i16)g_Players[playerId].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:793: u16 dist = (u16)(Math_Abs32(mdx) + Math_Abs32(mdy));
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:795: if (dist < minD) {
	ld	a, e
	sub	a, -13 (ix)
	ld	a, d
	sbc	a, -12 (ix)
	jr	NC, 00605$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:796: minD = dist;
	ld	-13 (ix), e
	ld	-12 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:797: bestMark = m;
	ld	a, -2 (ix)
	ld	-14 (ix), a
00605$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:777: for(u8 m=0; m<14; m++) {
	inc	-2 (ix)
	jp	00667$
00606$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:801: if (bestMark != NO_VALUE) {
	ld	a, -14 (ix)
	inc	a
	jr	Z, 00619$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:803: g_Players[playerId].TargetX = g_Players[bestMark].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:805: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Players[bestMark].Y + 12;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00608$
	ld	hl, #0x000c
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00992$
00608$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:806: else g_Players[playerId].TargetY = g_Players[bestMark].Y - 12;
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
	jp	00992$
00619$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:809: bool deepDefense = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:810: if (playerTeamId == TEAM_1 && g_Ball.Y > PENALTY_BOX_Y_BOTTOM) deepDefense = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00611$
	ld	hl, (#_g_Ball + 0)
	ld	a, #0x5e
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00611$
	ld	c, #0x01
00611$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:811: if (playerTeamId == TEAM_2 && g_Ball.Y < PENALTY_BOX_Y_TOP) deepDefense = true;
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00614$
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0082
	cp	a, a
	sbc	hl, de
	jr	NC, 00614$
	ld	c, #0x01
00614$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:813: if (deepDefense) {
	ld	a, c
	or	a, a
	jr	Z, 00992$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:814: g_Players[playerId].TargetX = g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:815: g_Players[playerId].TargetY = g_Ball.Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:821: for(u8 i=0; i<14; i++) {
00992$:
	ld	-2 (ix), #0x00
00669$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00643$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:822: if (i == playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00642$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:823: if (g_Players[i].TeamId != playerTeamId) continue;
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
	jp	NZ,00642$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:824: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, e
	ld	b, d
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00642$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:825: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:826: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:827: if (dx > -60 && dx < 60 && dy > -60 && dy < 60) {
	ld	a, #0xc4
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	jp	PO, 02253$
	xor	a, #0x80
02253$:
	jp	P, 00642$
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00642$
	ld	a, #0xc4
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02254$
	xor	a, #0x80
02254$:
	jp	P, 00642$
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	a, -8 (ix)
	sub	a, #0x3c
	ld	a, -7 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00642$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:828: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	bit	7, b
	jr	NZ, 00632$
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
	jp	00633$
00632$:
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
00633$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:826: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:829: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -7 (ix)
	jr	NZ, 00635$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00642$
00635$:
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
00642$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:821: for(u8 i=0; i<14; i++) {
	inc	-2 (ix)
	jp	00669$
00643$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:834: if (g_Players[playerId].TargetY < FIELD_BOUND_Y_TOP) g_Players[playerId].TargetY = FIELD_BOUND_Y_TOP;
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
	jr	NC, 00645$
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
	dec	hl
00645$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:835: if (g_Players[playerId].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].TargetY = FIELD_BOUND_Y_BOTTOM;
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00647$
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00647$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:836: if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT;
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
	jr	NC, 00649$
	ld	l, c
	ld	h, b
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00649$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:837: if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xec
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00670$
	ld	a, #0xec
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
00670$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:840: }
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
	.area _SEG10
	.area _INITIALIZER
	.area _CABS (ABS)
