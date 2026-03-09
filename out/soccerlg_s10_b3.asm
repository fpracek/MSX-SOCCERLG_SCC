;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s10_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TickAIDefensiveSupport
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
	jr	Z, 00613$
	sub	a, #0x0d
	jp	NZ,00620$
00613$:
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
	jp	00620$
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
	jr	Z, 01965$
	xor	a, a
01965$:
	ld	-34 (ix), a
	or	a, a
	jr	Z, 00622$
	ld	a, (_g_Team1PaletteId+0)
	jp	00623$
00622$:
	ld	a, (_g_Team2PaletteId+0)
00623$:
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
	jp	Z, 00439$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:61: if (g_Ball.PossessionPlayerId == playerId) {
	ld	a, (#_g_Ball + 6)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	NZ,00318$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:64: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	pop	bc
	push	bc
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	ld	-31 (ix), a
	or	a, a
	jp	Z,00620$
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
00616$:
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
	jp	PO, 01981$
	xor	a, #0x80
01981$:
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
	jp	PO, 01982$
	xor	a, #0x80
01982$:
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
	jr	Z, 00624$
	ld	-3 (ix), #0x08
	ld	-2 (ix), #0
	jp	00625$
00624$:
	ld	-3 (ix), #0x0c
	ld	-2 (ix), #0
00625$:
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
	jp	PO, 01983$
	xor	a, #0x80
01983$:
	jp	P, 00152$
	ld	-3 (ix), d
	ld	-2 (ix), #0x00
	ld	a, -13 (ix)
	sub	a, -3 (ix)
	ld	a, -12 (ix)
	sbc	a, -2 (ix)
	jp	PO, 01984$
	xor	a, #0x80
01984$:
	jp	P, 00152$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jp	PO, 01985$
	xor	a, #0x80
01985$:
	jp	P, 00152$
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 01986$
	xor	a, #0x80
01986$:
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
	jp	PO, 01987$
	xor	a, #0x80
01987$:
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
	jp	PO, 01988$
	xor	a, #0x80
01988$:
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
	jp	PO, 01989$
	xor	a, #0x80
01989$:
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
	jp	C, 00616$
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
	jp	PO, 01995$
	xor	a, #0x80
01995$:
	jp	P, 00216$
	jp	00620$
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
	jp	00620$
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
	jr	NC, 00626$
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00627$
00626$:
	ld	-5 (ix), #0x00
	jp	00628$
00627$:
	ld	-5 (ix), #0x01
00628$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:246: bool canGoLeft = (g_Players[playerId].X > FIELD_BOUND_X_LEFT + 20) && !obstacleLeft;
	ld	a, #0x1e
	cp	a, -26 (ix)
	ld	a, #0x00
	sbc	a, -25 (ix)
	jr	NC, 00629$
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00630$
00629$:
	ld	-6 (ix), #0x00
	jp	00631$
00630$:
	ld	-6 (ix), #0x01
00631$:
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
	jp	PO, 01999$
	xor	a, #0x80
01999$:
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
	jp	Z, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:275: if (!isHumanControlled) {
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00305$
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
	ld	a, -35 (ix)
	sub	a, #0x02
	ld	a, #0x01
	jr	Z, 02001$
	xor	a, a
02001$:
	ld	-19 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00617$:
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
	ld	c, l
	ld	b, h
	ld	hl, #9
	add	hl, bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:281: if(t == playerId) continue;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00294$
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
	jp	Z, 00294$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:286: if(g_Players[t].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:289: bool isOffside=CallFnc_BOOL_P1(5,IsOffside,t);
	ld	a, -4 (ix)
	ld	-18 (ix), a
	push	af
	inc	sp
	ld	de, #_IsOffside
	ld	a, #0x05
	call	_CallFnc_BOOL_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:290: if (isOffside) continue;
	or	a, a
	jp	NZ, 00294$
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
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:293: i16 dy = (i16)g_Players[t].Y - (i16)g_Players[playerId].Y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	e, -17 (ix)
	ld	d, -16 (ix)
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	-13 (ix), e
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:294: u16 adx = (dx < 0) ? -dx : dx;
	ld	e, c
	ld	d, b
	bit	7, d
	jr	Z, 00632$
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	jp	00633$
00632$:
	ld	a, b
00633$:
	ld	-11 (ix), c
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:295: u16 ady = (dy < 0) ? -dy : dy;
	ld	b, -12 (ix)
	bit	7, b
	jr	Z, 00634$
	xor	a, a
	sub	a, -13 (ix)
	ld	-26 (ix), a
	sbc	a, a
	sub	a, -12 (ix)
	ld	-25 (ix), a
	jp	00635$
00634$:
	ld	a, -13 (ix)
	ld	-26 (ix), a
	ld	a, -12 (ix)
	ld	-25 (ix), a
00635$:
	ld	c, -26 (ix)
	ld	b, -25 (ix)
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
	jp	C, 00294$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:299: if (g_Players[t].Y < g_FieldCurrentYPosition - 40 || 
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xd8
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	ld	c, -17 (ix)
	ld	b, -16 (ix)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:300: g_Players[t].Y > (g_FieldCurrentYPosition + 252)) continue;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00fc
	add	hl, de
	xor	a, a
	sbc	hl, bc
	jp	C, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:302: i16 advanceScore = (playerTeamId == TEAM_1) ? -dy : dy;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00636$
	xor	a, a
	sub	a, -13 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -12 (ix)
	jp	00637$
00636$:
	ld	c, -13 (ix)
	ld	a, -12 (ix)
00637$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:305: bool nearOwnGoalLine = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:306: if (playerTeamId == TEAM_1 && g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM - 80) nearOwnGoalLine = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00267$
	ld	d, -15 (ix)
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x63
	cp	a, d
	ld	a, #0x01
	sbc	a, l
	jr	NC, 00267$
	ld	e, #0x01
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:307: if (playerTeamId == TEAM_2 && g_Players[playerId].Y < FIELD_BOUND_Y_TOP + 80) nearOwnGoalLine = true;
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00270$
	ld	a, -15 (ix)
	sub	a, #0x82
	ld	a, -14 (ix)
	sbc	a, #0x00
	jr	NC, 00270$
	ld	e, #0x01
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:310: if (!isPanicPass) {
	ld	a, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:311: if (nearOwnGoalLine) {
	or	a,a
	jr	NZ, 00287$
	or	a,e
	jr	Z, 00282$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:312: if (advanceScore < -60) continue; // Near own goal: allow lateral/slight backward
	ld	a, c
	sub	a, #0xc4
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00288$
	jp	00294$
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:314: bool highSkill = (stats->PassFreq >= 8);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:315: bool allowSwitch = (highSkill && adx > 60); // Strong teams switch play (easier width)
	or	a, a
	jr	Z, 00638$
	ld	a, #0x3c
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00639$
00638$:
	xor	a, a
	jp	00640$
00639$:
	ld	a, #0x01
00640$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:316: if (allowSwitch) {
	or	a, a
	jr	Z, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:317: if (advanceScore < -10) continue; // Allow flat/slight back for wide balls
	ld	a, c
	sub	a, #0xf6
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00288$
	jp	00294$
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:319: i16 minAdv = highSkill ? 20 : 40;
	ld	a, e
	or	a, a
	jr	Z, 00641$
	ld	de, #0x0014
	jp	00642$
00641$:
	ld	de, #0x0028
00642$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:320: if (advanceScore < minAdv) continue; // Must gain ground
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	PO, 02005$
	xor	a, #0x80
02005$:
	jp	M, 00294$
	jp	00288$
00287$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:325: if (advanceScore < -150) continue;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x6a
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00294$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:329: if (stats->PassFreq >= 8) {
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:330: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	srl	d
	rr	e
	srl	d
	rr	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:329: if (stats->PassFreq >= 8) {
	ld	a, l
	sub	a, #0x08
	jr	C, 00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:330: score = advanceScore + (adx/4); // Reward width (Switch play)
	ld	l, c
	ld	h, b
	add	hl, de
	ld	c, l
	ld	b, h
	jp	00291$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:332: score = advanceScore - (adx/4); // Penalize width (Direct play)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:335: if (score > bestScore) {
	ld	a, -8 (ix)
	sub	a, c
	ld	a, -7 (ix)
	sbc	a, b
	jp	PO, 02006$
	xor	a, #0x80
02006$:
	jp	P, 00294$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:336: bestScore = score;
	ld	-8 (ix), c
	ld	-7 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:337: bestT = t;
	ld	a, -18 (ix)
	ld	-9 (ix), a
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:279: for(t=0; t<14; t++) {
	inc	-4 (ix)
	jr	NZ, 02007$
	inc	-3 (ix)
02007$:
	ld	a, -4 (ix)
	sub	a, #0x0e
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00617$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:342: if (bestT != NO_VALUE) {
	ld	a, -9 (ix)
	inc	a
	jr	Z, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:345: i16 threshold = isPanicPass ? -80 : 10;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00643$
	ld	-3 (ix), #0xb0
	ld	-2 (ix), #0xff
	jp	00644$
00643$:
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0
00644$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:347: if (bestScore > threshold) {
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, -8 (ix)
	ld	a, b
	sbc	a, -7 (ix)
	jp	PO, 02009$
	xor	a, #0x80
02009$:
	jp	P, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:348: u8 waitTime = (stats->PassFreq >= 8) ? 8 : 15; // Faster release for skill teams
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	sub	a, #0x08
	jr	C, 00645$
	ld	-6 (ix), #0x08
	ld	-5 (ix), #0
	jp	00646$
00645$:
	ld	-6 (ix), #0x0f
	ld	-5 (ix), #0
00646$:
	ld	a, -6 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:349: if (g_Ball.PossessionTimer < waitTime) return; 
	ld	a, (#_g_Ball + 28)
	ld	-2 (ix), a
	sub	a, -3 (ix)
	jp	C,00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:350: CallFnc_VOID_P1(5,PerformPass,bestT);
	ld	a, -9 (ix)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:351: return; // End tick
	jp	00620$
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:357: u16 finalTargetX = targetX_Goal;
	ld	a, -24 (ix)
	ld	-3 (ix), a
	ld	a, -23 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:358: u16 finalTargetY = targetY_Goal;
	ld	a, -30 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:360: if (obstacleFront) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:361: if (!obstacleRight) {
	ld	a, -22 (ix)
	or	a, a
	jr	NZ, 00313$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:362: finalTargetX = g_Players[playerId].X + 24;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:363: if (finalTargetX > FIELD_BOUND_X_RIGHT) finalTargetX = FIELD_BOUND_X_RIGHT;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00316$
	ld	-3 (ix), #0xec
	ld	-2 (ix), #0
	jp	00316$
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:364: } else if (!obstacleLeft) {
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:365: finalTargetX = g_Players[playerId].X - 24; 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:366: if (finalTargetX < FIELD_BOUND_X_LEFT) finalTargetX = FIELD_BOUND_X_LEFT;
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00316$
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:370: g_Players[playerId].TargetX = finalTargetX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:371: return; // IMPORTANT: Ball Carrier handled. Stop.
	jp	00620$
00318$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:377: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -2 (ix)
	inc	a
	jr	NZ, 00322$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:379: u8 closestId=CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:380: if (closestId == playerId) {
	ld	a, -1 (ix)
	sub	a, c
	jr	NZ, 00322$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:381: g_Players[playerId].TargetX = g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:382: g_Players[playerId].TargetY = g_Ball.Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:383: return;
	jp	00620$
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:64: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	ld	a, -37 (ix)
	add	a, #0x0d
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:416: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
	ld	a, (bc)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:390: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	NZ,00356$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:393: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	ld	a, e
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:392: if (playerTeamId == TEAM_1) { // Moving UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00336$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:393: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 160;
	bit	0, d
	jr	NZ, 00327$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
	jp	00337$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:394: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, e
	sub	a, #0x03
	jr	C, 00324$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xf0
	inc	hl
	ld	(hl), #0x00
	jp	00337$
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:395: else g_Players[playerId].TargetY = 350;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x5e
	inc	hl
	ld	(hl), #0x01
	jp	00337$
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:397: if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetY = 320;
	bit	0, d
	jr	NZ, 00333$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x01
	jp	00337$
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:398: else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetY = 240;
	ld	a, e
	sub	a, #0x03
	jr	C, 00330$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xf0
	inc	hl
	ld	(hl), #0x00
	jp	00337$
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:399: else g_Players[playerId].TargetY = 130;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x82
	inc	hl
	ld	(hl), #0x00
00337$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:403: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, (bc)
	cp	a, #0x05
	jr	NZ, 00353$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00620$
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:404: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) g_Players[playerId].TargetX = 192;
	cp	a, #0x06
	jr	NZ, 00350$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00620$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:405: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	cp	a, #0x03
	jr	NZ, 00347$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00620$
00347$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:406: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) g_Players[playerId].TargetX = 208;
	cp	a, #0x04
	jr	NZ, 00344$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00620$
00344$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:407: else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) g_Players[playerId].TargetX = 80;
	cp	a, #0x01
	jr	NZ, 00341$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x50
	inc	hl
	ld	(hl), #0x00
	jp	00620$
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:408: else if (g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) g_Players[playerId].TargetX = 176;
	sub	a, #0x02
	jp	NZ,00620$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0xb0
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:410: return;
	jp	00620$
00356$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:416: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER || 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:417: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_STRIKER) {
	ld	a,e
	cp	a,#0x05
	jr	Z, 00406$
	sub	a, #0x06
	jr	NZ, 00407$
00406$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:420: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 10;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00358$
	ld	(hl), #0x41
	inc	hl
	ld	(hl), #0x00
	jp	00359$
00358$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:421: else g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 10;
	ld	(hl), #0x9f
	inc	hl
	ld	(hl), #0x01
00359$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:423: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, (bc)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:370: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:423: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_STRIKER) g_Players[playerId].TargetX = 64;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00361$
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
	jp	00824$
00361$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:424: else g_Players[playerId].TargetX = 192;
	ld	(hl), #0xc0
	inc	hl
	ld	(hl), #0x00
	jp	00824$
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:426: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER || 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:427: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a,e
	cp	a,#0x03
	jr	Z, 00402$
	sub	a, #0x04
	jp	NZ,00403$
00402$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:382: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:434: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:431: if (playerTeamId == TEAM_1) {
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00368$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:434: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	a, -3 (ix)
	add	a, #0xd8
	ld	e, a
	ld	a, -2 (ix)
	adc	a, #0xff
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:435: if (g_Players[playerId].TargetY < limitY) g_Players[playerId].TargetY = limitY;
	ld	a, e
	sub	a, #0x6a
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00369$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00369$
00368$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:439: g_Players[playerId].TargetY = g_Ball.Y + 40;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0028
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:440: if (g_Players[playerId].TargetY > limitY) g_Players[playerId].TargetY = limitY;
	ld	a, #0x3e
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00369$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
00369$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:443: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	a, (bc)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:370: g_Players[playerId].TargetX = finalTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:443: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_HALFFIELDER) g_Players[playerId].TargetX = 48;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00371$
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
	jp	00824$
00371$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:444: else g_Players[playerId].TargetX = 208;
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
	jp	00824$
00403$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:446: } else if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER || 
	ld	a, e
	dec	a
	jr	Z, 00398$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:447: g_Players[playerId].Role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, e
	sub	a, #0x02
	jp	NZ,00399$
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:382: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:434: g_Players[playerId].TargetY = g_Ball.Y - 40;
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:450: if (playerTeamId == TEAM_1) { // Attacking UP
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00388$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:451: g_Players[playerId].TargetY = g_Ball.Y + 30;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x001e
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:453: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:453: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00378$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	a, e
	sub	a, #0x3e
	ld	a, d
	sbc	a, #0x01
	jr	NC, 00389$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x3e
	inc	hl
	ld	(hl), #0x01
	jp	00389$
00378$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:458: if (g_Players[playerId].TargetY < 190) g_Players[playerId].TargetY = 190;
	ld	a, e
	sub	a, #0xbe
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00389$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0xbe
	inc	hl
	ld	(hl), #0x00
	jp	00389$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:462: g_Players[playerId].TargetY = g_Ball.Y - 30;
	ld	a, -3 (ix)
	add	a, #0xe2
	ld	e, a
	ld	a, -2 (ix)
	adc	a, #0xff
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:464: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:464: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) {
	dec	a
	jr	NZ, 00385$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:466: if (g_Players[playerId].TargetY > 106) g_Players[playerId].TargetY = 106;
	ld	a, #0x6a
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00389$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x6a
	inc	hl
	ld	(hl), #0x00
	jp	00389$
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:469: if (g_Players[playerId].TargetY > 234) g_Players[playerId].TargetY = 234;
	ld	a, #0xea
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00389$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0xea
	inc	hl
	ld	(hl), #0x00
00389$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:475: if (g_Players[playerId].Role == PLAYER_ROLE_LEFT_DEFENDER) defTargetX = 80;
	ld	a, (bc)
	dec	a
	jr	NZ, 00391$
	ld	bc, #0x0050
	jp	00392$
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:476: else defTargetX = 176;
	ld	bc, #0x00b0
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:479: defTargetX = (defTargetX + g_Ball.X) / 2;
	ld	hl, (#_g_Ball + 2)
	add	hl, bc
	ex	de, hl
	srl	d
	rr	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:480: g_Players[playerId].TargetX = defTargetX;
	pop	hl
	push	hl
	ld	bc, #0x0010
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00824$
00399$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:482: } else if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, e
	or	a, a
	jr	NZ, 00824$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:483: g_Players[playerId].TargetX = FIELD_POS_X_CENTER;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:484: if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = GK_BOX_Y_BOTTOM_MIN + 20;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00394$
	ld	(hl), #0xa9
	inc	hl
	ld	(hl), #0x01
	jp	00620$
00394$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:485: else g_Players[playerId].TargetY = GK_BOX_Y_TOP_MAX - 20;
	ld	(hl), #0x37
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:486: return; // GK Done
	jp	00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:490: for(u8 i=0; i<14; i++) {
00824$:
	ld	-2 (ix), #0x00
00619$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00430$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:491: if (i == playerId) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:492: if (g_Players[i].Status == PLAYER_STATUS_NONE) continue;
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	bc,#18
	add	hl,bc
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:493: if (g_Players[i].TeamId != playerTeamId) continue;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	NZ,00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:494: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:496: i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	-10 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-9 (ix), a
	dec	bc
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
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
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	-4 (ix), e
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:497: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	-8 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:498: if (dx > -75 && dx < 75 && dy > -75 && dy < 75) {
	ld	a, #0xb5
	cp	a, -4 (ix)
	ld	a, #0xff
	sbc	a, -3 (ix)
	jp	PO, 02050$
	xor	a, #0x80
02050$:
	jp	P, 00429$
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x4b
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00429$
	ld	a, #0xb5
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 02051$
	xor	a, #0x80
02051$:
	jp	P, 00429$
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	a, -4 (ix)
	sub	a, #0x4b
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00429$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:499: if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	bit	7, -5 (ix)
	jr	NZ, 00419$
	ld	hl, #0x000c
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00420$
00419$:
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
00420$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:497: i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:500: if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
	bit	7, -3 (ix)
	jr	NZ, 00422$
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00429$
00422$:
	ld	a, c
	add	a, #0xf4
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00429$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:490: for(u8 i=0; i<14; i++) {
	inc	-2 (ix)
	jp	00619$
00430$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:505: u16 offsideY = CallFnc_U16_P1(11,GetOffsideLineY,playerTeamId);
	ld	a, -35 (ix)
	push	af
	inc	sp
	ld	de, #_GetOffsideLineY
	ld	a, #0x0b
	call	_CallFnc_U16_P1
	ld	c, e
	ld	b, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:369: g_Players[playerId].TargetY = finalTargetY;
	ld	a, -37 (ix)
	add	a, #0x0e
	ld	e, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:382: g_Players[playerId].TargetY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:455: if (g_Players[playerId].TargetY < 318) g_Players[playerId].TargetY = 318;
	ld	l, e
	ld	h, d
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	-3 (ix), l
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:508: if (playerTeamId == TEAM_1) { // Attacking UP (TargetY decreases)
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00436$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:512: effectiveLimit = (g_Ball.Y < offsideY) ? g_Ball.Y : offsideY;
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00647$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00647$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:514: if (g_Players[playerId].TargetY < (effectiveLimit + 30)) { 
	ld	hl, #0x001e
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jp	NC,00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:515: g_Players[playerId].TargetY = effectiveLimit + 30;
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	jp	00620$
00436$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:519: effectiveLimit = (g_Ball.Y > offsideY) ? g_Ball.Y : offsideY;
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00649$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00649$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:521: if (g_Players[playerId].TargetY > (effectiveLimit - 30)) {
	ld	a, c
	add	a, #0xe2
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, c
	sub	a, -3 (ix)
	ld	a, b
	sbc	a, -2 (ix)
	jp	NC,00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:522: g_Players[playerId].TargetY = effectiveLimit - 30;
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:527: return; 
	jp	00620$
00439$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:536: if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
	pop	bc
	push	bc
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	NZ, 00464$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:538: if (g_Ball.ShotActive) return;
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ,00620$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:545: if (playerTeamId == TEAM_1) { 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00443$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:546: gkTargetY = FIELD_POS_Y_TEAM1_GOALKEEPER;
	ld	bc, #0x01a8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:547: boxYMin = GK_BOX_Y_BOTTOM_MIN; boxYMax = GK_BOX_Y_BOTTOM_MAX;
	ld	-5 (ix), #0x95
	ld	-4 (ix), #0x01
	ld	-3 (ix), #0xb3
	ld	-2 (ix), #0x01
	jp	00444$
00443$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:549: gkTargetY = FIELD_POS_Y_TEAM2_GOALKEEPER;
	ld	bc, #0x0032
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:550: boxYMin = GK_BOX_Y_TOP_MIN; boxYMax = GK_BOX_Y_TOP_MAX;
	ld	-5 (ix), #0x23
	ld	-4 (ix), #0
	ld	-3 (ix), #0x4b
	ld	-2 (ix), #0
00444$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:552: u8 closestId =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE);
	push	bc
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:553: bool ballInBox = (g_Ball.X > (boxXMin-5) && g_Ball.X < (boxXMax+5) && 
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
	jr	NC, 00651$
	ld	a, -8 (ix)
	sub	a, #0xa5
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00651$
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
	jr	NC, 00651$
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	xor	a, a
	sbc	hl, de
	jr	C, 00652$
00651$:
	ld	-6 (ix), #0x00
	jp	00653$
00652$:
	ld	-6 (ix), #0x01
00653$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:556: if (ballInBox && closestId == playerId) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00452$
	ld	a, -1 (ix)
	sub	a, -11 (ix)
	jr	NZ, 00452$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:557: gkTargetX = g_Ball.X;
	ld	a, -10 (ix)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), a
	ld	-6 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:558: gkTargetY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	jp	00453$
00452$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:560: if (g_Ball.X > gkTargetX + 24) gkTargetX += 16;
	ld	a, #0x90
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	NC, 00449$
	ld	-7 (ix), #0x88
	ld	-6 (ix), #0
	jp	00453$
00449$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:561: else if (g_Ball.X < gkTargetX - 24) gkTargetX -= 16;
	ld	a, -8 (ix)
	sub	a, #0x60
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00446$
	ld	-7 (ix), #0x68
	ld	-6 (ix), #0
	jp	00453$
00446$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:562: else gkTargetX = g_Ball.X; 
	ld	a, -10 (ix)
	ld	e, -9 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), e
00453$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:565: if (gkTargetX < boxXMin) gkTargetX = boxXMin;
	ld	a, -7 (ix)
	sub	a, #0x50
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00456$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
00456$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:566: if (gkTargetX > boxXMax) gkTargetX = boxXMax;
	ld	a, #0xa0
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00458$
	ld	-7 (ix), #0xa0
	ld	-6 (ix), #0
00458$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:567: if (gkTargetY < boxYMin) gkTargetY = boxYMin;
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00460$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
00460$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:568: if (gkTargetY > boxYMax) gkTargetY = boxYMax;
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jr	NC, 00462$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
00462$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:570: g_Players[playerId].TargetX = gkTargetX;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:571: g_Players[playerId].TargetY = gkTargetY;
	pop	hl
	push	hl
	ld	de, #0x000e
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:572: return; 
	jp	00620$
00464$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:576: u8 playerClosesestToBallId =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,NO_VALUE); 
	ld	h, #0xff
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:577: bool amIEffectiveChaser = (playerClosesestToBallId == playerId);
	ld	-7 (ix), a
	sub	a, -1 (ix)
	ld	a, #0x01
	jr	Z, 02055$
	xor	a, a
02055$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:24: if(g_MatchStatus==MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 02057$
	xor	a, a
02057$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:580: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) amIEffectiveChaser = false;
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00466$
	ld	c, #0x00
00466$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:584: if (!amIEffectiveChaser && stats->Aggression > 10 && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a, c
	or	a, a
	jr	NZ, 00470$
	ld	l, -33 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	b, (hl)
	ld	a, #0x0a
	sub	a, b
	jr	NC, 00470$
	ld	b, -2 (ix)
	bit	0, b
	jr	NZ, 00470$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:585: u16 dist = (u16)(Math_Abs32((i16)g_Players[playerId].X - (i16)g_Ball.X) + 
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
	ld	b, -4 (ix)
	ld	l, a
	ld	h, b
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:587: if (dist < 60) amIEffectiveChaser = true;
	ld	de, #0x003c
	cp	a, a
	sbc	hl, de
	jr	NC, 00470$
	ld	c, #0x01
00470$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:590: if (g_Players[playerClosesestToBallId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	e, -7 (ix)
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
	ld	de, #0x000d
	add	hl, de
	ld	b, (hl)
	ld	a, b
	or	a, a
	jp	NZ, 00484$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:591: u16 limitY = (playerTeamId == TEAM_1) ? GK_BOX_Y_BOTTOM_MIN : GK_BOX_Y_TOP_MAX;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00660$
	ld	de, #0x0195
	jp	00661$
00660$:
	ld	de, #0x004b
00661$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:592: bool ballFar = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:593: if (playerTeamId == TEAM_1 && g_Ball.Y < limitY - 10) ballFar = true;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00474$
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, e
	ld	b, d
	add	a, #0xf6
	ld	-5 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, -3 (ix)
	sub	a, -5 (ix)
	ld	a, -2 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00474$
	ld	-6 (ix), #0x01
00474$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:594: if (playerTeamId == TEAM_2 && g_Ball.Y > limitY + 10) ballFar = true;
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00477$
	ld	hl, (#_g_Ball + 0)
	ld	a, e
	add	a, #0x0a
	ld	b, a
	jr	NC, 02060$
	inc	d
02060$:
	ld	a, b
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00477$
	ld	-6 (ix), #0x01
00477$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:596: if (ballFar) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00484$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:597: u8 nextClosest =CallFnc_U8_P2(4,GetClosestPlayerToBall,playerTeamId,playerClosesestToBallId);
	push	bc
	ld	h, -7 (ix)
	ld	l, -35 (ix)
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:598: if (nextClosest == playerId) amIEffectiveChaser = true;
	ld	a, -1 (ix)
	sub	a, b
	jr	NZ, 00484$
	ld	c, #0x01
00484$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:603: if (!amIEffectiveChaser && g_Ball.PossessionPlayerId != NO_VALUE && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a, c
	or	a, a
	jp	NZ, 00529$
	ld	hl, #_g_Ball + 6
	ld	e, (hl)
	ld	a, e
	inc	a
	jp	Z,00529$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	Z,00529$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:604: u8 carrierId = g_Ball.PossessionPlayerId;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:605: if (g_Players[carrierId].TeamId != playerTeamId) {
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
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	de, #9
	add	hl, de
	ld	a,-35 (ix)
	sub	a,(hl)
	jp	Z,00529$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:606: i16 cdx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:607: i16 cdy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	pop	hl
	push	hl
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), b
	ld	-4 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	b, a
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	ld	-11 (ix), b
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:608: u16 dist = (u16)(Math_Abs32(cdx) + Math_Abs32(cdy));
	ld	b, e
	ld	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	iy
	ld	-39 (ix), a
	pop	iy
	push	bc
	push	de
	ld	e, b
	ld	d, h
	push	iy
	ld	h, -43 (ix)
;	spillPairReg hl
	pop	iy
	call	_Math_Abs32
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	-7 (ix), l
	ld	-6 (ix), h
	pop	de
	pop	bc
	ld	a, -11 (ix)
	ld	-5 (ix), a
	ld	a, -10 (ix)
	ld	-4 (ix), a
	rlca
	sbc	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	push	bc
	push	de
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	-3 (ix), l
	ld	-2 (ix), h
	pop	de
	pop	bc
	ld	a, -9 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	b, -5 (ix)
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	a, b
	ld	b, a
	ld	a, l
	adc	a, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:609: if (dist < 90) {
	ld	-3 (ix), b
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x5a
	ld	a, -2 (ix)
	sbc	a, #0x00
	jp	NC, 00529$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:610: u8 carrierDir = g_Players[carrierId].Direction;
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000a
	add	hl, bc
	pop	bc
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:611: bool movingToward = false;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:612: if      (carrierDir == DIRECTION_DOWN       && cdy >  10) movingToward = true;
	ld	a, b
	sub	a, #0x05
	jr	NZ, 00517$
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02068$
	xor	a, #0x80
02068$:
	jp	P, 00517$
	ld	-4 (ix), #0x01
	jp	00518$
00517$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:613: else if (carrierDir == DIRECTION_UP         && cdy < -10) movingToward = true;
	ld	a, b
	dec	a
	jr	NZ, 00513$
	ld	a, -11 (ix)
	sub	a, #0xf6
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00513$
	ld	-4 (ix), #0x01
	jp	00518$
00513$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:614: else if (carrierDir == DIRECTION_RIGHT      && cdx >  10) movingToward = true;
	ld	a, b
	sub	a, #0x03
	jr	NZ, 00509$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02073$
	xor	a, #0x80
02073$:
	jp	P, 00509$
	ld	-4 (ix), #0x01
	jp	00518$
00509$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:615: else if (carrierDir == DIRECTION_LEFT       && cdx < -10) movingToward = true;
	ld	a, b
	sub	a, #0x07
	jr	NZ, 00505$
	ld	a, e
	sub	a, #0xf6
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00505$
	ld	-4 (ix), #0x01
	jp	00518$
00505$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:616: else if (carrierDir == DIRECTION_DOWN_RIGHT && cdy >  10 && cdx >  10) movingToward = true;
	ld	a, b
	sub	a, #0x04
	jr	NZ, 00500$
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02078$
	xor	a, #0x80
02078$:
	jp	P, 00500$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02079$
	xor	a, #0x80
02079$:
	jp	P, 00500$
	ld	-4 (ix), #0x01
	jp	00518$
00500$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:617: else if (carrierDir == DIRECTION_DOWN_LEFT  && cdy >  10 && cdx < -10) movingToward = true;
	ld	a, b
	sub	a, #0x06
	jr	NZ, 00495$
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02082$
	xor	a, #0x80
02082$:
	jp	P, 00495$
	ld	a, e
	sub	a, #0xf6
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00495$
	ld	-4 (ix), #0x01
	jp	00518$
00495$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:618: else if (carrierDir == DIRECTION_UP_RIGHT   && cdy < -10 && cdx >  10) movingToward = true;
	ld	a, b
	sub	a, #0x02
	jr	NZ, 00490$
	ld	a, -11 (ix)
	sub	a, #0xf6
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00490$
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 02085$
	xor	a, #0x80
02085$:
	jp	P, 00490$
	ld	-4 (ix), #0x01
	jp	00518$
00490$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:619: else if (carrierDir == DIRECTION_UP_LEFT    && cdy < -10 && cdx < -10) movingToward = true;
	ld	a, b
	sub	a, #0x08
	jr	NZ, 00518$
	ld	a, -11 (ix)
	sub	a, #0xf6
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00518$
	ld	a, e
	sub	a, #0xf6
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00518$
	ld	-4 (ix), #0x01
00518$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:621: if (movingToward || (carrierDir == DIRECTION_NONE && dist < 50)) amIEffectiveChaser = true;
	ld	a, -4 (ix)
	or	a,a
	jr	NZ, 00520$
	or	a,b
	jr	NZ, 00529$
	ld	a, -3 (ix)
	sub	a, #0x32
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00529$
00520$:
	ld	c, #0x01
00529$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:626: if (amIEffectiveChaser) {
	ld	a, c
	or	a, a
	jp	Z, 00611$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:629: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	ld	-13 (ix), a
	inc	a
	ld	a, #0x01
	jr	Z, 02089$
	xor	a, a
02089$:
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:630: g_Players[playerId].TargetX = g_Ball.X;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:629: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00608$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:630: g_Players[playerId].TargetX = g_Ball.X;
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:631: g_Players[playerId].TargetY = g_Ball.Y;
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
	jp	00620$
00608$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:637: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	c, -11 (ix)
	ld	e, -10 (ix)
	sub	a, c
	ld	-9 (ix), a
	ld	a, b
	sbc	a, e
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:638: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	bc, (#_g_Ball + 0)
	ld	-3 (ix), c
	ld	-2 (ix), b
	ld	a, e
	sub	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, d
	sbc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:639: i16 range = stats->Aggression;
	ld	l, -33 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:640: if (dx > -range && dx < range && dy > -range && dy < range) {
	xor	a, a
	ld	d, a
	sub	a, e
	ld	-15 (ix), a
	sbc	a, a
	sub	a, d
	ld	-14 (ix), a
	ld	a, -15 (ix)
	sub	a, -7 (ix)
	ld	a, -14 (ix)
	sbc	a, -6 (ix)
	jp	PO, 02090$
	xor	a, #0x80
02090$:
	jp	P, 00545$
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jp	PO, 02091$
	xor	a, #0x80
02091$:
	jp	P, 00545$
	ld	a, -15 (ix)
	sub	a, -3 (ix)
	ld	a, -14 (ix)
	sbc	a, -2 (ix)
	jp	PO, 02092$
	xor	a, #0x80
02092$:
	jp	P, 00545$
	ld	a, -3 (ix)
	sub	a, e
	ld	a, -2 (ix)
	sbc	a, d
	jp	PO, 02093$
	xor	a, #0x80
02093$:
	jp	P, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:645: bool isHumanControlled = false;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:646: if ((playerTeamId == TEAM_1 && g_Team1ActivePlayer == playerId) || 
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00537$
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00532$
00537$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:647: (playerTeamId == TEAM_2 && g_GameWith2Players && g_Team2ActivePlayer == playerId)) {
	ld	a, -35 (ix)
	sub	a, #0x02
	jr	NZ, 00533$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00533$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00533$
00532$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:648: isHumanControlled = true;
	ld	e, #0x01
00533$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:651: if (!isHumanControlled) {
	ld	a, e
	or	a, a
	jr	NZ, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:653: if (g_Ball.StealCooldown == 0) {
	ld	a, (#_g_Ball + 15)
	or	a, a
	jr	NZ, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:655: if ((g_FrameCounter % 4) == 0) {
	ld	a, (_g_FrameCounter+0)
	and	a, #0x03
	jr	NZ, 00545$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:656: CallFnc_VOID_P1(4,PutBallOnPlayerFeet,playerId);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x04
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:657: return;
	jp	00620$
00545$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:665: i16 targetX = g_Ball.X;
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:666: i16 targetY = g_Ball.Y;
	ld	-3 (ix), c
	ld	-2 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:669: u8 predDir = g_Ball.Direction;
	ld	hl, #_g_Ball + 5
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:670: if (g_Ball.PossessionPlayerId != NO_VALUE) predDir = g_Players[g_Ball.PossessionPlayerId].Direction;
	ld	e, -12 (ix)
	bit	0, e
	jr	NZ, 00550$
	ld	c, -13 (ix)
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
	ld	de, #0x000a
	add	hl, de
	ld	c, (hl)
00550$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:672: if (predDir != DIRECTION_NONE) {
	ld	a, c
	or	a, a
	jp	Z, 00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:675: i16 pRelY = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	ld	e, -5 (ix)
	ld	d, -4 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:676: i16 pRelX = (i16)g_Players[playerId].X - (i16)g_Ball.X;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:677: bool defAhead = false;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:678: if      (predDir == DIRECTION_DOWN       && pRelY >  8) defAhead = true;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00583$
	ld	a, #0x08
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 02103$
	xor	a, #0x80
02103$:
	jp	P, 00583$
	ld	-10 (ix), #0x01
	jp	00584$
00583$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:679: else if (predDir == DIRECTION_UP         && pRelY < -8) defAhead = true;
	ld	a, c
	dec	a
	jr	NZ, 00579$
	ld	a, e
	sub	a, #0xf8
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00579$
	ld	-10 (ix), #0x01
	jp	00584$
00579$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:680: else if (predDir == DIRECTION_RIGHT      && pRelX >  8) defAhead = true;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00575$
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	b, -8 (ix)
	ld	a, #0x08
	cp	a, l
	ld	a, #0x00
	sbc	a, b
	jp	PO, 02108$
	xor	a, #0x80
02108$:
	jp	P, 00575$
	ld	-10 (ix), #0x01
	jp	00584$
00575$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:681: else if (predDir == DIRECTION_LEFT       && pRelX < -8) defAhead = true;
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00571$
	ld	a, -9 (ix)
	sub	a, #0xf8
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00571$
	ld	-10 (ix), #0x01
	jp	00584$
00571$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:682: else if (predDir == DIRECTION_DOWN_RIGHT && pRelY >  8 && pRelX >  8) defAhead = true;
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00566$
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02113$
	xor	a, #0x80
02113$:
	jp	P, 00566$
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02114$
	xor	a, #0x80
02114$:
	jp	P, 00566$
	ld	-10 (ix), #0x01
	jp	00584$
00566$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:683: else if (predDir == DIRECTION_DOWN_LEFT  && pRelY >  8 && pRelX < -8) defAhead = true;
	ld	a, c
	sub	a, #0x06
	jr	NZ, 00561$
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02117$
	xor	a, #0x80
02117$:
	jp	P, 00561$
	ld	a, -9 (ix)
	sub	a, #0xf8
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00561$
	ld	-10 (ix), #0x01
	jp	00584$
00561$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:684: else if (predDir == DIRECTION_UP_RIGHT   && pRelY < -8 && pRelX >  8) defAhead = true;
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00556$
	ld	a, e
	sub	a, #0xf8
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00556$
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jp	PO, 02120$
	xor	a, #0x80
02120$:
	jp	P, 00556$
	ld	-10 (ix), #0x01
	jp	00584$
00556$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:685: else if (predDir == DIRECTION_UP_LEFT    && pRelY < -8 && pRelX < -8) defAhead = true;
	ld	a, c
	sub	a, #0x08
	jr	NZ, 00584$
	ld	a, e
	sub	a, #0xf8
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00584$
	ld	a, -9 (ix)
	sub	a, #0xf8
	ld	a, -8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00584$
	ld	-10 (ix), #0x01
00584$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:686: if (!defAhead) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:688: switch(predDir) {
	ld	a, #0x08
	sub	a, c
	jp	C, 00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:689: case DIRECTION_UP: targetY -= lead; break;
	ld	e, -3 (ix)
	ld	d, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:691: case DIRECTION_LEFT: targetX -= lead; break;
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:688: switch(predDir) {
	ld	b, #0x00
	ld	hl, #02123$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
02123$:
	jp	00598$
	jp	00586$
	jp	00590$
	jp	00589$
	jp	00592$
	jp	00587$
	jp	00593$
	jp	00588$
	jp	00591$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:689: case DIRECTION_UP: targetY -= lead; break;
00586$:
	ld	a, e
	add	a, #0xe0
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), c
	ld	-2 (ix), a
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:690: case DIRECTION_DOWN: targetY += lead; break;
00587$:
	ld	hl, #0x0020
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:691: case DIRECTION_LEFT: targetX -= lead; break;
00588$:
	ld	a, -5 (ix)
	add	a, #0xe0
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:692: case DIRECTION_RIGHT: targetX += lead; break;
00589$:
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0020
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:693: case DIRECTION_UP_RIGHT: targetY -= 24; targetX += 24; break;
00590$:
	ld	a, e
	add	a, #0xe8
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), c
	ld	-2 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0018
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:694: case DIRECTION_UP_LEFT: targetY -= 24; targetX -= 24; break;
00591$:
	ld	a, e
	add	a, #0xe8
	ld	c, a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), c
	ld	-2 (ix), a
	ld	a, -5 (ix)
	add	a, #0xe8
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:695: case DIRECTION_DOWN_RIGHT: targetY += 24; targetX += 24; break;
00592$:
	ld	hl, #0x0018
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0018
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00598$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:696: case DIRECTION_DOWN_LEFT: targetY += 24; targetX -= 24; break;
00593$:
	ld	hl, #0x0018
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -5 (ix)
	add	a, #0xe8
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:697: }
00598$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:701: if (targetX < FIELD_BOUND_X_LEFT) targetX = FIELD_BOUND_X_LEFT;
	ld	a, -7 (ix)
	ld	b, -6 (ix)
	sub	a, #0x0a
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00600$
	ld	-7 (ix), #0x0a
	ld	-6 (ix), #0
00600$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:702: if (targetX > FIELD_BOUND_X_RIGHT) targetX = FIELD_BOUND_X_RIGHT;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 02124$
	xor	a, #0x80
02124$:
	jp	P, 00602$
	ld	-7 (ix), #0xec
	ld	-6 (ix), #0
00602$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:703: if (targetY < FIELD_BOUND_Y_TOP) targetY = FIELD_BOUND_Y_TOP;
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0x32
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00604$
	ld	-3 (ix), #0x32
	ld	-2 (ix), #0
00604$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:704: if (targetY > FIELD_BOUND_Y_BOTTOM) targetY = FIELD_BOUND_Y_BOTTOM;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	PO, 02125$
	xor	a, #0x80
02125$:
	jp	P, 00606$
	ld	-3 (ix), #0xb3
	ld	-2 (ix), #0x01
00606$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:705: g_Players[playerId].TargetX = targetX;
	ld	a, -37 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:706: g_Players[playerId].TargetY = targetY;
	ld	a, -37 (ix)
	add	a, #0x0e
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
	jp	00620$
00611$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:710: CallFnc_VOID_P1(15, TickAIDefensiveSupport, playerId);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_TickAIDefensiveSupport
	ld	a, #0x0f
	call	_CallFnc_VOID_P1
00620$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s10_b3.c:713: }
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
