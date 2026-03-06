;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s4_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Stop
	.globl _TimeUp
	.globl _InitPonPonGirls
	.globl _V9990_PrintLayerAStringAtPos
	.globl _V9990_InitPalette
	.globl _PutBallSprite
	.globl _CornerKick
	.globl _GoalkeeperWithBall
	.globl _SetPlayerBallPossession
	.globl _IsTeamJoystickTriggerPressed
	.globl _GetJoystickDirection
	.globl _PutBallOnPlayerFeet
	.globl _GetClosestPlayerToBall
	.globl _Trampoline_VOID_P2
	.globl _Math_Abs32
	.globl _PlayAyFx
	.globl _GetTeamStats
	.globl _PlayPCM
	.globl _PlayVGM
	.globl _Trampoline_U8_P2
	.globl _Trampoline_VOID_16_P2
	.globl _Trampoline_U8
	.globl _Trampoline_VOID_P1
	.globl _Trampoline_VOID
	.globl _V9990_LoadButtonsImageData
	.globl _V9990_LoadSprites
	.globl _V9990_LoadP1LayerB
	.globl _V9990_LoadP1LayerA
	.globl _V9990_LoadMenuTeamsData
	.globl _V9990_WaitSynch
	.globl _V9_SetPaletteEntry
	.globl _V9_SetScrollingBY
	.globl _V9_SetScrollingY
	.globl _V9_Peek_CurrentAddr
	.globl _V9_Poke16_CurrentAddr
	.globl _V9_Poke_CurrentAddr
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_FillVRAM_CurrentAddr
	.globl _V9_SetReadAddress
	.globl _V9_SetWriteAddress
	.globl _V9_GetRegister
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
	.globl _g_Data_Palette_Team_BRA
	.globl _g_Data_Palette_Team_GBR
	.globl _g_Data_Palette_Team_GER
	.globl _g_Data_Palette_Team_FRA
	.globl _g_Data_Palette_Team_AUS
	.globl _g_Data_Palette_Team_ITA
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
	.globl _SelectTeam
	.globl _MenuSpriteBlinking
	.globl _ResetPlayersInfo
	.globl _ShowMenu
	.globl _SetTeam1Palette
	.globl _SetTeam2Palette
	.globl _GetTeamPaletteById
	.globl _GameStart
	.globl _GetNoMovingPlayerPatternId
	.globl _PerformShot
	.globl _TickBallFlying
	.globl _TickActiveFieldZone
	.globl _TickUpdateTime
	.globl _BallInGoal
	.globl _GoalKick
	.globl _BallThrowIn
	.globl _TickCheckBallBoundaries
	.globl _TickGoalkeeperAnimation
	.globl _UpdatePassTarget
	.globl _GetBestPassTarget
	.globl _TickBallCollision
	.globl _PrintTeamName
	.globl _GetNumberString
	.globl _ShowHeaderInfo
	.globl _SetTeamsPresentationSpritesPosition
	.globl _ResetBallInfo
	.globl _SetPlayerTarget
	.globl _ShowField
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
_GetNumberString_str_65536_1622:
	.ds 5
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
	.area _SEG4
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:157: u8 SelectTeam(u8 cursorPatternId, u8 excludeIndex) {
;	---------------------------------
; Function SelectTeam
; ---------------------------------
_SelectTeam::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
	ld	-1 (ix), a
	ld	-2 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:159: u8 currentIdx = 0;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:160: if (currentIdx == excludeIndex) currentIdx++;
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00102$
	ld	-6 (ix), #0x01
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:163: u8 oldDir = DIRECTION_NONE;
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:165: bool oldTrigger = true; // Force release first
	ld	-5 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:167: while (true) {
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:168: V9990_WaitSynch();
	call	_V9990_WaitSynch
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:169: dir=Trampoline_U8(2,GetJoystickDirection);
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_U8
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:171: trigger=Trampoline_U8(2,IsTeamJoystickTriggerPressed);
	push	bc
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_U8
	pop	bc
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:173: if (dir != DIRECTION_NONE && dir != oldDir) {
	ld	a, c
	or	a, a
	jp	Z, 00137$
	ld	a, c
	sub	a, -3 (ix)
	jp	Z,00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:174: u8 nextIdx = currentIdx;
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:176: if (dir == DIRECTION_RIGHT) {
	ld	a, c
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00248$
	xor	a, a
00248$:
	ld	-3 (ix), a
	or	a, a
	jr	Z, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:177: if ((currentIdx % 3) < 2) nextIdx++;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00121$
	ld	b, -6 (ix)
	inc	b
	jp	00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:178: } else if (dir == DIRECTION_LEFT) {
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:179: if ((currentIdx % 3) > 0) nextIdx--;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00251$
	xor	a, #0x80
00251$:
	jp	P, 00121$
	ld	b, -6 (ix)
	dec	b
	jp	00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:180: } else if (dir == DIRECTION_UP) {
	ld	a, c
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:181: if (currentIdx >= 3) nextIdx -= 3;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	C, 00121$
	ld	a, -6 (ix)
	add	a, #0xfd
	ld	b, a
	jp	00121$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:182: } else if (dir == DIRECTION_DOWN) {
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:183: if (currentIdx < 3) nextIdx += 3;
	ld	a, -6 (ix)
	sub	a, #0x03
	jr	NC, 00121$
	ld	a, -6 (ix)
	add	a, #0x03
	ld	b, a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:186: if (nextIdx == excludeIndex) {
	ld	a, -2 (ix)
	sub	a, b
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:187: if (dir == DIRECTION_RIGHT) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:188: if ((nextIdx % 3) < 2) nextIdx++; else nextIdx = currentIdx;
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00123$
	inc	b
	jp	00135$
00123$:
	ld	b, -6 (ix)
	jp	00135$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:189: } else if (dir == DIRECTION_LEFT) {
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:190: if ((nextIdx % 3) > 0) nextIdx--; else nextIdx = currentIdx;
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0003
	call	__modsint
	pop	bc
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00260$
	xor	a, #0x80
00260$:
	jp	P, 00126$
	dec	b
	jp	00135$
00126$:
	ld	b, -6 (ix)
	jp	00135$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:192: nextIdx = currentIdx;
	ld	b, -6 (ix)
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:195: currentIdx = nextIdx;
	ld	-6 (ix), b
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:197: oldDir = dir;
	ld	-3 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:199: if (trigger && !oldTrigger) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00140$
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:200: PlayAyFx(AYFX_BALL);
	ld	a, #0x05
	call	_PlayAyFx
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:201: return currentIdx;
	ld	a, -6 (ix)
	jp	00147$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:203: oldTrigger = trigger;
	ld	a, -4 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:206: attr.Y = g_TeamPos[currentIdx].y+2;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc,#_g_TeamPos
	add	hl,bc
	ex	de, hl
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, #0x02
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:207: attr.X = g_TeamPos[currentIdx].x;
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #2
	add	hl, sp
	ld	(hl), c
	inc	hl
	ld	a, b
	and	a, #0x03
	ld	e,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, e
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:208: attr.Pattern = cursorPatternId;
	ld	a, -1 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:209: attr.P = 0; 
	ld	hl, #3
	add	hl, sp
	res	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:210: attr.SC = 0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:211: attr.D = 0;
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:212: V9_SetSpriteP1(0, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe00
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:212: V9_SetSpriteP1(0, &attr);
	jp	00143$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:214: }
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
_g_Data_Palette_Team_ITA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x09	; 9
	.db #0x16	; 22
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_AUS:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_FRA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_GER:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_GBR:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Data_Palette_Team_BRA:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_TeamPos:
	.dw #0x0021
	.dw #0x006d
	.dw #0x0072
	.dw #0x006d
	.dw #0x00c5
	.dw #0x006d
	.dw #0x0021
	.dw #0x00c0
	.dw #0x0072
	.dw #0x00c0
	.dw #0x00c5
	.dw #0x00c0
_g_TeamGrayPos:
	.dw #0x0001
	.dw #0x0005
	.dw #0x000b
	.dw #0x0005
	.dw #0x0015
	.dw #0x0005
	.dw #0x0001
	.dw #0x000f
	.dw #0x000b
	.dw #0x000f
	.dw #0x0015
	.dw #0x000f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:216: void MenuSpriteBlinking(){
;	---------------------------------
; Function MenuSpriteBlinking
; ---------------------------------
_MenuSpriteBlinking::
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:217: u8 ms=g_MatchStatus;
	ld	a, (_g_MatchStatus+0)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:221: g_MatchStatus=MATCH_PRESENTATION;
	ld	a, #0x0f
	ld	(#_g_MatchStatus), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:223: g_TimerActive=TRUE;
	ld	a, #0x01
	ld	(#_g_TimerActive), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:224: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:225: while (g_Timer<=20)
00101$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:227: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00101$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:229: g_TimerActive=FALSE;
	xor	a, a
	ld	(#_g_TimerActive), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:233: g_TimerActive=TRUE;
	ld	a, #0x01
	ld	(#_g_TimerActive), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:234: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:235: while (g_Timer<=20)
00104$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:237: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00104$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:239: g_TimerActive=FALSE;
	xor	a, a
	ld	(#_g_TimerActive), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:243: g_TimerActive=TRUE;
	ld	a, #0x01
	ld	(#_g_TimerActive), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:244: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:245: while (g_Timer<=20)
00107$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:247: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00107$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:249: g_TimerActive=FALSE;
	xor	a, a
	ld	(#_g_TimerActive), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:252: g_TimerActive=TRUE;
	ld	a, #0x01
	ld	(#_g_TimerActive), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:253: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:254: while (g_Timer<=20)
00110$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:256: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00110$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:258: g_TimerActive=FALSE;
	xor	a, a
	ld	(#_g_TimerActive), a
	ld	a, #0x08
	call	_V9_GetRegister
	res	6, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:262: g_TimerActive=TRUE;
	ld	a, #0x01
	ld	(#_g_TimerActive), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:263: g_Timer=0;  
	xor	a, a
	ld	(#_g_Timer), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:264: while (g_Timer<=20)
00113$:
	ld	a, #0x14
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	C, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:266: ResetPlayersInfo();
	call	_ResetPlayersInfo
	jp	00113$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:268: g_TimerActive=FALSE;
	xor	a, a
	ld	(#_g_TimerActive), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:270: g_MatchStatus=ms;
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	ld	(_g_MatchStatus+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:272: }
	inc	sp
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:275: void ResetPlayersInfo(){
;	---------------------------------
; Function ResetPlayersInfo
; ---------------------------------
_ResetPlayersInfo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:276: Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:277: for(u8 i=0;i<14;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:278: g_Players[i].Direction=DIRECTION_NONE;
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
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:279: g_Players[i].PreviousDirection=g_Players[i].Direction;
	ld	a, e
	add	a, #0x0b
	ld	b, a
	ld	a, d
	adc	a, #0x00
	push	af
	ld	a, (hl)
	ld	-1 (ix), a
	pop	af
	ld	l, b
	ld	h, a
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:280: g_Players[i].LastPose=0;
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:281: g_Players[i].Status=PLAYER_STATUS_NONE;
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	dec	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:282: g_Players[i].Status=PLAYER_STATUS_NONE;
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:277: for(u8 i=0;i<14;i++){
	inc	c
	jp	00103$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:284: }
	inc	sp
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:287: void ShowMenu(){
;	---------------------------------
; Function ShowMenu
; ---------------------------------
_ShowMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:288: g_MatchStatus=MATCH_SHOW_MENU;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x13
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:290: g_PonPonGirlsAreVisible = FALSE;
	ld	hl, #_g_PonPonGirlsAreVisible
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:291: g_FieldCurrentYPosition = -1; // Sync global variable to desired menu scroll
	ld	hl, #0xffff
	ld	(_g_FieldCurrentYPosition), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:293: V9_SetScrollingBY(-1);
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:294: V9_SetScrollingY(-1);
	ld	hl, #0xffff
	call	_V9_SetScrollingY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:296: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:297: PlayVGM(VGM_MENU);
	xor	a, a
	call	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:298: for(u8 i=0;i<32;i++){
	ld	c, #0x00
00163$:
	ld	a, c
	sub	a, #0x20
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:300: attr.D = 1;
	ld	hl, #7
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:301: V9_SetSpriteP1(i, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xfe
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x03
	ld	e, a
	jr	NC, 00396$
	inc	d
00396$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #6
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:298: for(u8 i=0;i<32;i++){
	inc	c
	jp	00163$
00101$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: inline void V9_FillVRAM(u32 addr, u8 value, u16 count) { V9_SetWriteAddress(addr); V9_FillVRAM_CurrentAddr(value, count); }
	ld	de, #0x0000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:308: V9990_LoadMenuTeamsData();
	call	_V9990_LoadMenuTeamsData
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1047: inline void V9_SelectPaletteP1(u8 a, u8 b) { V9_SetRegister(13, ((b & 0x3) << 2) + (a & 0x3)); }
	ld	a, #0x01
	and	a, #0x03
	add	a, a
	add	a, a
	ld	c, a
	xor	a, a
	and	a, #0x03
	add	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:310: for (u8 y=0;y<64;y++){
	ld	-1 (ix), #0x00
00169$:
	ld	a, -1 (ix)
	sub	a, #0x40
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:311: for (u8 x=0;x<64;x++){
	ld	c, #0x00
00166$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00170$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, c
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00397$
	inc	d
00397$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0020
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:311: for (u8 x=0;x<64;x++){
	inc	c
	jp	00166$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:310: for (u8 y=0;y<64;y++){
	inc	-1 (ix)
	jp	00169$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:315: for (u8 y=5;y<25;y++){
	ld	c, #0x05
00175$:
	ld	a, c
	sub	a, #0x19
	jp	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:316: u16 tileId=256+32*(y-5);
	ld	-4 (ix), c
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0xfb
	ld	b, a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	l, b
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	inc	a
	ld	-2 (ix), l
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:317: for (u8 x=1;x<31;x++){
	ld	b, #0x01
00172$:
	ld	a, b
	sub	a, #0x1f
	jr	NC, 00176$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	a, d
	rlca
	sbc	hl, hl
	ld	-12 (ix), e
	ld	a, d
	add	a, #0xc0
	ld	-11 (ix), a
	ld	a, l
	adc	a, #0x07
	ld	-10 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-9 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	hl
	push	bc
	push	de
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_SetWriteAddress
	pop	de
	pop	bc
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
	pop	hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1437: inline u32 V9_CellAddrP1B(u8 x, u8 y) { return V9_P1_PNT_B + (((64 * y) + x) * 2); }
	ld	a, d
	add	a, #0xe0
	ld	d, a
	push	de
	ld	de, #0x0007
	adc	hl, de
	pop	de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	call	_V9_SetWriteAddress
	pop	bc
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:320: tileId++;
	inc	-2 (ix)
	jr	NZ, 00398$
	inc	-1 (ix)
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:317: for (u8 x=1;x<31;x++){
	inc	b
	jp	00172$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:315: for (u8 y=5;y<25;y++){
	inc	c
	jp	00175$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:323: V9990_LoadSprites();
	call	_V9990_LoadSprites
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:325: loop (i, 125)
	ld	-1 (ix), #0x00
00178$:
	ld	a, -1 (ix)
	sub	a, #0x7d
	jr	NC, 00106$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:826: u8 val = V9_Peek(V9_P1_SPAT + 3 + (id * 4));
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
	ld	de, #0xfe03
	add	hl, de
	ld	a, c
	adc	a, #0x03
	ld	e, a
	ld	a, b
	adc	a, #0x00
	ld	d, a
	inc	sp
	inc	sp
	push	hl
	ld	-10 (ix), e
	ld	-9 (ix), d
	push	hl
	push	de
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_SetReadAddress
	pop	de
	call	_V9_Peek_CurrentAddr
	pop	hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:830: val |= V9_SPAT_DISABLE_MASK;
	ld	b, a
	set	4, b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:388: inline void V9_Poke(u32 addr, u8 val) { V9_SetWriteAddress(addr); V9_Poke_CurrentAddr(val); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	a, b
	call	_V9_Poke_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:325: loop (i, 125)
	inc	-1 (ix)
	jp	00178$
00106$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:331: V9990_PrintLayerAStringAtPos(4,0,"    PLAYER TEAM SELECT");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:333: g_Team1PaletteId = SelectTeam(SPRITE_PLAYER, NO_VALUE);
	ld	l, #0xff
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xf5
	call	_SelectTeam
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:337: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	ld	(_g_Team1PaletteId+0), a
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #_g_TeamGrayPos
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	-1 (ix), a
00184$:
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ex	de, hl
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:338: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, (hl)
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:337: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_g_TeamGrayPos)
	ld	-3 (ix), a
	ld	a, h
	adc	a, #>(_g_TeamGrayPos)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:338: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00185$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00399$
	inc	d
00399$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:338: for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
	inc	b
	jp	00181$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:337: for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
	inc	-1 (ix)
	jp	00184$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:343: V9_SetScrollingBY(-1);
	ld	hl, #0xffff
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:344: V9_SetScrollingY(-1);
	ld	hl, #0xffff
	call	_V9_SetScrollingY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:346: MenuSpriteBlinking();
	call	_MenuSpriteBlinking
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:349: V9990_PrintLayerAStringAtPos(4,0,"     CPU TEAM SELECT   ");
	ld	hl, #___str_1
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:351: g_Team2PaletteId = SelectTeam(SPRITE_CPU, g_Team1PaletteId);
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xf5
	call	_SelectTeam
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:354: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	ld	(_g_Team2PaletteId+0), a
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #_g_TeamGrayPos
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	-1 (ix), a
00190$:
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0009
	add	hl, bc
	ex	de, hl
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:355: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, (hl)
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:354: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	ld	a, (_g_Team2PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_g_TeamGrayPos)
	ld	-3 (ix), a
	ld	a, h
	adc	a, #>(_g_TeamGrayPos)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:355: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	NC, 00191$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00400$
	inc	d
00400$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:355: for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
	inc	b
	jp	00187$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:354: for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
	inc	-1 (ix)
	jp	00190$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:360: V9_SetScrollingBY(-1);
	ld	hl, #0xffff
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:361: V9_SetScrollingY(-1);
	ld	hl, #0xffff
	call	_V9_SetScrollingY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:363: MenuSpriteBlinking();
	call	_MenuSpriteBlinking
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:366: attr.D = 1; 
	ld	hl, #7
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:367: V9_SetSpriteP1(0, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe00
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #4
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	6, l
	ld	a, #0x08
	call	_V9_SetRegister
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:376: if(g_ShowButtonsInfo){
	ld	a, (_g_ShowButtonsInfo+0)
	or	a, a
	jp	Z, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:377: g_ShowButtonsInfo=false;
	ld	hl, #_g_ShowButtonsInfo
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: inline void V9_FillVRAM(u32 addr, u8 value, u16 count) { V9_SetWriteAddress(addr); V9_FillVRAM_CurrentAddr(value, count); }
	ld	de, #0x0000
	ld	(hl), e
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:379: V9990_LoadButtonsImageData();
	call	_V9990_LoadButtonsImageData
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1047: inline void V9_SelectPaletteP1(u8 a, u8 b) { V9_SetRegister(13, ((b & 0x3) << 2) + (a & 0x3)); }
	ld	a, #0x01
	and	a, #0x03
	add	a, a
	add	a, a
	ld	c, a
	xor	a, a
	and	a, #0x03
	add	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:381: u16 tileId=0;
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:383: for (u8 y=0;y<64;y++){
	ld	-2 (ix), #0x00
00196$:
	ld	a, -2 (ix)
	sub	a, #0x40
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:384: for (u8 x=0;x<32;x++){
	ld	-1 (ix), #0x00
00193$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NC, 00255$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:385: V9_Poke16(V9_CellAddrP1A(x,y), tileId++);
	ld	-4 (ix), c
	ld	-3 (ix), b
	inc	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -1 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00401$
	inc	d
00401$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:384: for (u8 x=0;x<32;x++){
	inc	-1 (ix)
	jp	00193$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:383: for (u8 y=0;y<64;y++){
	inc	-2 (ix)
	jp	00196$
00112$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:390: bool joyTriggered=FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:391: while(!joyTriggered){
00113$:
	ld	a, c
	or	a, a
	jr	NZ, 00210$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:392: joyTriggered=Trampoline_U8(2,IsTeamJoystickTriggerPressed);
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_U8
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:393: V9990_WaitSynch();
	push	bc
	call	_V9990_WaitSynch
	pop	bc
	jp	00113$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:473: inline void V9_SetDisplayEnable(bool enable) { V9_SetFlag(8, V9_R08_DISP_ON, enable ? V9_R08_DISP_ON : 0); }
00210$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:396: V9_SetDisplayEnable(FALSE);
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:398: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:399: g_MatchStatus=MATCH_NOT_STARTED;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:401: V9990_LoadP1LayerA();
	call	_V9990_LoadP1LayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:402: V9990_LoadP1LayerB();
	call	_V9990_LoadP1LayerB
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:406: Trampoline_VOID(3,V9990_InitPalette);
	ld	de, #_V9990_InitPalette
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:409: ShowField();
	call	_ShowField
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:416: GameStart();
	call	_GameStart
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:417: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "    PLAYER TEAM SELECT"
	.db 0x00
___str_1:
	.ascii "     CPU TEAM SELECT   "
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:419: void SetTeam1Palette(){
;	---------------------------------
; Function SetTeam1Palette
; ---------------------------------
_SetTeam1Palette::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:420: V9_SetPalette(32, 16, GetTeamPaletteById(g_Team1PaletteId));
	ld	a, (_g_Team1PaletteId+0)
	call	_GetTeamPaletteById
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1028: // If Team 2 takes it out, normally it goes to Team 1. We override this to Team 2.
	ld	bc, #0x20
00104$:
	ld	a, b
	sub	a, #0x10
	ret	NC
	push	iy
	ex	(sp), hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	pop	iy
	inc	c
	push	hl
	push	bc
	ld	e, l
	ld	d, h
	push	iy
	ex	(sp), hl
	ld	a, l
	ex	(sp), hl
	pop	iy
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:420: V9_SetPalette(32, 16, GetTeamPaletteById(g_Team1PaletteId));
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:421: }
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:423: void SetTeam2Palette(){
;	---------------------------------
; Function SetTeam2Palette
; ---------------------------------
_SetTeam2Palette::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:424: V9_SetPalette(48, 16, GetTeamPaletteById(g_Team2PaletteId));
	ld	a, (_g_Team2PaletteId+0)
	call	_GetTeamPaletteById
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1028: // If Team 2 takes it out, normally it goes to Team 1. We override this to Team 2.
	ld	bc, #0x30
00104$:
	ld	a, b
	sub	a, #0x10
	ret	NC
	push	iy
	ex	(sp), hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	pop	iy
	inc	c
	push	hl
	push	bc
	ld	e, l
	ld	d, h
	push	iy
	ex	(sp), hl
	ld	a, l
	ex	(sp), hl
	pop	iy
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:424: V9_SetPalette(48, 16, GetTeamPaletteById(g_Team2PaletteId));
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:425: }
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:427: const u16* GetTeamPaletteById(u8 id){
;	---------------------------------
; Function GetTeamPaletteById
; ---------------------------------
_GetTeamPaletteById::
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:428: const u16* palette=g_Data_Palette_Team_ITA;
	ld	de, #_g_Data_Palette_Team_ITA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:429: switch (id){
	ld	a, #0x05
	sub	a, c
	ret	C
	ld	b, #0x00
	ld	hl, #00115$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00115$:
	jp	00101$
	jp	00105$
	jp	00103$
	jp	00102$
	jp	00106$
	jp	00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:430: case TEAM_AUS:
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:431: palette=g_Data_Palette_Team_AUS;
	ld	de, #_g_Data_Palette_Team_AUS
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:432: break; 
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:433: case TEAM_BRA:
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:434: palette=g_Data_Palette_Team_BRA;
	ld	de, #_g_Data_Palette_Team_BRA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:435: break;
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:436: case TEAM_ITA:
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:437: palette=g_Data_Palette_Team_ITA;
	ld	de, #_g_Data_Palette_Team_ITA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:438: break;
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:439: case TEAM_GBR:
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:440: palette=g_Data_Palette_Team_GBR;
	ld	de, #_g_Data_Palette_Team_GBR
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:441: break;
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:442: case TEAM_GER:
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:443: palette=g_Data_Palette_Team_GER;
	ld	de, #_g_Data_Palette_Team_GER
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:444: break;
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:445: case TEAM_FRA:
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:446: palette=g_Data_Palette_Team_FRA;
	ld	de, #_g_Data_Palette_Team_FRA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:448: }
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:449: return palette;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:450: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:452: void GameStart(){
;	---------------------------------
; Function GameStart
; ---------------------------------
_GameStart::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:453: g_VblankSuspended=FALSE;
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:454: g_PonPonGirlsAreVisible=TRUE;
	ld	hl, #_g_PonPonGirlsAreVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:455: g_BallIsVisible=TRUE;
	ld	hl, #_g_BallIsVisible
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:456: g_TimeCounter=0;
	ld	hl, #0x0000
	ld	(_g_TimeCounter), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:457: g_LastTimeCounter=0;
	ld	(_g_LastTimeCounter), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:458: g_FirstKickOff=TRUE;
	ld	hl, #_g_FirstKickOff
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:459: g_PcmStartPlaying=FALSE;
	ld	hl, #_g_PcmStartPlaying
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:460: g_PmcSoundPlaying=NO_VALUE;
	ld	hl, #_g_PmcSoundPlaying
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:461: g_PassTargetPlayer=NO_VALUE;
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:462: g_Team1ActivePlayer=NO_VALUE;
	ld	hl, #_g_Team1ActivePlayer
	ld	(hl), #0xff
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:464: g_SecondsToEndOfMatch=MATCH_DURATION;
	ld	hl, #_g_SecondsToEndOfMatch
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:465: g_RestartKickTeamId=TEAM_1;
	ld	hl, #_g_RestartKickTeamId
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:466: g_FieldScrollSpeed=FIELD_SCROLL_PRESENTATION_SPEED;
	ld	hl, #_g_FieldScrollSpeed
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:467: g_FieldScrollingActionInProgress=NO_VALUE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:468: g_FieldCurrentYPosition=FIELD_TOP_Y;
	ld	hl, #0x0000
	ld	(_g_FieldCurrentYPosition), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:469: g_Team1Score=0;
	xor	a, a
	ld	(#_g_Team1Score), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:470: g_Team2Score=0;
	xor	a, a
	ld	(#_g_Team2Score), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:471: V9_SetScrollingY(0);
	call	_V9_SetScrollingY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:472: V9_SetScrollingBY(1);
	ld	hl, #0x0001
	call	_V9_SetScrollingBY
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:473: SetTeam1Palette();
	call	_SetTeam1Palette
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:474: SetTeam2Palette();
	call	_SetTeam2Palette
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:475: SetTeamsPresentationSpritesPosition();
	call	_SetTeamsPresentationSpritesPosition
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:476: g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:477: ShowHeaderInfo();
	call	_ShowHeaderInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:478: Trampoline_VOID(3,InitPonPonGirls);
	ld	de, #_InitPonPonGirls
	ld	a, #0x03
	call	_Trampoline_VOID
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	res	7, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	set	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:574: inline void V9_SetInterrupt(u8 flags) { V9_SetRegister(9, flags); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:481: PlayVGM(VGM_PUBLIC_PRESENTATION);
	ld	a, #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:482: }
	jp	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:484: u8 GetNoMovingPlayerPatternId(u8 direction){
;	---------------------------------
; Function GetNoMovingPlayerPatternId
; ---------------------------------
_GetNoMovingPlayerPatternId::
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:485: u8 patternId=PLAYER_POSE_FRONT_PLAYING; // Default fallback
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:486: switch (direction){
	ld	a, #0x08
	sub	a, e
	jr	C, 00110$
	ld	d, #0x00
	ld	hl, #00118$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00118$:
	jp	00109$
	jp	00102$
	jp	00106$
	jp	00104$
	jp	00108$
	jp	00101$
	jp	00107$
	jp	00103$
	jp	00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:487: case DIRECTION_DOWN:
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:488: patternId=PLAYER_POSE_FRONT_PLAYING;
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:489: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:490: case DIRECTION_UP:
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:491: patternId=PLAYER_POSE_BACK_PLAYING;
	ld	c, #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:492: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:493: case DIRECTION_LEFT:
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:494: patternId=PLAYER_POSE_LEFT;
	ld	c, #0x12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:495: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:496: case DIRECTION_RIGHT:
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:497: patternId=PLAYER_POSE_RIGHT;
	ld	c, #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:498: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:499: case DIRECTION_UP_LEFT:
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:500: patternId=PLAYER_POSE_MOVE_UP_LEFT_2;
	ld	c, #0x82
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:501: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:502: case DIRECTION_UP_RIGHT:
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:503: patternId=PLAYER_POSE_MOVE_UP_RIGHT_1;
	ld	c, #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:504: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:505: case DIRECTION_DOWN_LEFT:
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:506: patternId=PLAYER_POSE_MOVE_DOWN_LEFT_1;
	ld	c, #0x09
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:507: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:508: case DIRECTION_DOWN_RIGHT:
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:509: patternId=PLAYER_POSE_MOVE_DOWN_RIGHT_2;
	ld	c, #0x86
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:510: break;
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:511: case DIRECTION_NONE:
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:514: patternId=PLAYER_POSE_FRONT_PLAYING;
	ld	c, #0x13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:516: }
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:517: return patternId;
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:518: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:520: void PerformShot(u16 targetX, u16 targetY) {
;	---------------------------------
; Function PerformShot
; ---------------------------------
_PerformShot::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-20
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:521: u8 fromId = g_Ball.PossessionPlayerId;
	ld	a, (#(_g_Ball + 6) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:522: if (fromId == NO_VALUE) return;
	ld	-5 (ix), a
	inc	a
	jp	Z,00132$
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:528: dx = (i16)targetX - (i16)g_Players[fromId].X;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	e, -5 (ix)
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
	ex	(sp), hl
	ld	a, -20 (ix)
	add	a, #0x02
	ld	-18 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-16 (ix), c
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:529: dy = (i16)targetY - (i16)g_Players[fromId].Y;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-14 (ix), c
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:530: adx = (dx < 0) ? -dx : dx;
	ld	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	ld	-11 (ix), a
	bit	7, -11 (ix)
	jr	Z, 00134$
	xor	a, a
	sub	a, -16 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -15 (ix)
	jp	00135$
00134$:
	ld	c, -16 (ix)
	ld	a, -15 (ix)
00135$:
	ld	-10 (ix), c
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:531: ady = (dy < 0) ? -dy : dy;
	ld	a, -14 (ix)
	ld	-8 (ix), a
	ld	a, -13 (ix)
	ld	-7 (ix), a
	bit	7, -7 (ix)
	jr	Z, 00136$
	xor	a, a
	sub	a, -14 (ix)
	ld	-6 (ix), a
	sbc	a, a
	sub	a, -13 (ix)
	ld	-5 (ix), a
	jp	00137$
00136$:
	ld	a, -14 (ix)
	ld	-6 (ix), a
	ld	a, -13 (ix)
	ld	-5 (ix), a
00137$:
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:533: if (adx > ady * 2) {
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00238$
	xor	a, #0x80
00238$:
	jp	P, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:534: newDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, -12 (ix)
	sbc	a, -11 (ix)
	jp	PO, 00239$
	xor	a, #0x80
00239$:
	jp	P, 00138$
	ld	bc, #0x0003
	jp	00139$
00138$:
	ld	bc, #0x0007
00139$:
	ld	-5 (ix), c
	jp	00111$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:535: } else if (ady > adx * 2) {
	ex	de, hl
	add	hl, hl
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:536: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	xor	a, a
	cp	a, -8 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00240$
	xor	a, #0x80
00240$:
	rlca
	and	a,#0x01
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:535: } else if (ady > adx * 2) {
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00241$
	xor	a, #0x80
00241$:
	jp	P, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:536: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	a, l
	or	a, a
	jr	Z, 00140$
	ld	bc, #0x0005
	jp	00141$
00140$:
	ld	bc, #0x0001
00141$:
	ld	-5 (ix), c
	jp	00111$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:538: if (dx > 0) newDir = (dy > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_UP_RIGHT;
	xor	a, a
	cp	a, -12 (ix)
	sbc	a, -11 (ix)
	jp	PO, 00242$
	xor	a, #0x80
00242$:
	jp	P, 00104$
	ld	a, l
	or	a, a
	jr	Z, 00142$
	ld	bc, #0x0004
	jp	00143$
00142$:
	ld	bc, #0x0002
00143$:
	ld	-5 (ix), c
	jp	00111$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:539: else newDir = (dy > 0) ? DIRECTION_DOWN_LEFT : DIRECTION_UP_LEFT;
	ld	a, l
	or	a, a
	jr	Z, 00144$
	ld	bc, #0x0006
	jp	00145$
00144$:
	ld	bc, #0x0008
00145$:
	ld	-5 (ix), c
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:541: g_Players[fromId].Direction = newDir;
	pop	hl
	push	hl
	ld	de, #0x000a
	add	hl, de
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:544: if (newDir == DIRECTION_UP || newDir == DIRECTION_UP_LEFT || newDir == DIRECTION_UP_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_FRONT;
	ld	a, -5 (ix)
	dec	a
	jr	Z, 00122$
	ld	a, -5 (ix)
	sub	a, #0x08
	jr	Z, 00122$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00123$
00122$:
	ld	a, -20 (ix)
	add	a, #0x08
	ld	-6 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), #0x18
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:545: else if (newDir == DIRECTION_DOWN || newDir == DIRECTION_DOWN_LEFT || newDir == DIRECTION_DOWN_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_BACK;
	ld	a, -5 (ix)
	sub	a, #0x05
	jr	Z, 00117$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	Z, 00117$
	ld	a, -5 (ix)
	sub	a, #0x04
	jr	NZ, 00118$
00117$:
	pop	hl
	push	hl
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x15
	jp	00124$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:546: else if (newDir == DIRECTION_LEFT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_LEFT;
	ld	a, -5 (ix)
	sub	a, #0x07
	jr	NZ, 00115$
	pop	hl
	push	hl
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0xa4
	jp	00124$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:547: else if (newDir == DIRECTION_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_RIGHT;
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	NZ, 00124$
	pop	hl
	push	hl
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x1b
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:549: g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose
	pop	hl
	push	hl
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:552: g_Players[fromId].TargetX = g_Players[fromId].X;
	ld	a, -20 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:553: g_Players[fromId].TargetY = g_Players[fromId].Y;
	ld	a, -20 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	b, a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:555: Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:556: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:557: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:558: g_Ball.ShotActive = 1;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:559: g_Ball.TargetX = targetX;
	ld	hl, #(_g_Ball + 23)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:560: g_Ball.TargetY = targetY;
	ld	hl, #(_g_Ball + 25)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:561: g_Ball.PassStartX = g_Ball.X;
	ld	bc, (#_g_Ball + 2)
	ld	((_g_Ball + 17)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:562: g_Ball.PassStartY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 19)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:565: i16 arcDy = dy;
	ld	c, -14 (ix)
	ld	b, -13 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:566: if (targetY < FIELD_BOUND_Y_TOP) { // Shooting UP
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	a, e
	sub	a, #0x32
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00130$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:567: arcDy = (i16)FIELD_BOUND_Y_TOP - (i16)g_Players[fromId].Y;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x32
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	jp	00131$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:568: } else if (targetY > FIELD_BOUND_Y_BOTTOM) { // Shooting DOWN
	ld	a, #0xb3
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:569: arcDy = (i16)FIELD_BOUND_Y_BOTTOM - (i16)g_Players[fromId].Y;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	sub	a, c
	ld	c, a
	ld	a, #0x01
	sbc	a, b
	ld	b, a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:571: g_Ball.PassTotalDist = (u16)(Math_Abs32(dx) + Math_Abs32(arcDy));
	ld	e, -16 (ix)
	ld	a, -15 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
	pop	bc
	ld	a, b
	rlca
	sbc	hl, hl
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ex	de, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	hl, #(_g_Ball + 21)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:572: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:574: void TickBallFlying() {
;	---------------------------------
; Function TickBallFlying
; ---------------------------------
_TickBallFlying::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:576: if(g_MatchStatus == MATCH_BEFORE_THROW_IN || g_MatchStatus == MATCH_THROW_IN || 
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x03
	jp	Z,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:577: g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_GOAL_KICK ||
	cp	a,#0x08
	jp	Z,00220$
	cp	a,#0x05
	jp	Z,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:578: g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_CORNER_KICK ||
	cp	a,#0x0a
	jp	Z,00220$
	cp	a,#0x02
	jp	Z,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:579: g_MatchStatus == MATCH_BEFORE_KICK_OFF) {
	cp	a,#0x09
	jp	Z,00220$
	dec	a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:580: return;
	jp	Z,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:584: if (g_Ball.PossessionPlayerId != NO_VALUE) return;
	ld	a, (#(_g_Ball + 6) + 0)
	inc	a
	jp	NZ,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:587: bool isMovingToPlayer = (g_Ball.PassTargetPlayerId != NO_VALUE);
	ld	hl, #(_g_Ball + 16)
	ld	c, (hl)
	ld	a, c
	inc	a
	ld	a, #0x01
	jr	Z, 00535$
	xor	a, a
00535$:
	xor	a, #0x01
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:588: bool isFreeMoving = (g_Ball.ShotActive != 0);
	ld	a, (#(_g_Ball + 27) + 0)
	ld	-21 (ix), a
	sub	a,#0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:590: if (!isMovingToPlayer && !isFreeMoving) return;
	ld	a, -22 (ix)
	or	a,a
	jr	NZ, 00112$
	or	a,b
	jp	Z,00220$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:594: if (isMovingToPlayer) {
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:595: tx = g_Players[g_Ball.PassTargetPlayerId].X;
	ld	de, #_g_Players+0
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:596: ty = g_Players[g_Ball.PassTargetPlayerId].Y;
	ld	a, (de)
	ld	-20 (ix), a
	inc	de
	ld	a, (de)
	ld	-19 (ix), a
	jp	00116$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:598: tx = g_Ball.TargetX;
	ld	bc, (#_g_Ball + 23)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:599: ty = g_Ball.TargetY;
	ld	hl, #_g_Ball + 25
	ld	a, (hl)
	ld	-20 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-19 (ix), a
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:603: i16 dx = tx - (i16)g_Ball.X;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-16 (ix), c
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:604: i16 dy = ty - (i16)g_Ball.Y;
	ld	hl, (#_g_Ball + 0)
	ld	a, -20 (ix)
	sub	a, l
	ld	c, a
	ld	a, -19 (ix)
	sbc	a, h
	ld	-14 (ix), c
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:607: u8 speed = 3; 
	ld	-12 (ix), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:608: if (g_Ball.ShotActive == 1) speed = 5; // Fast High Shot/Kick
	ld	a, -21 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00537$
	xor	a, a
00537$:
	ld	-11 (ix), a
	or	a, a
	jr	Z, 00123$
	ld	-12 (ix), #0x05
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:609: else if (g_Ball.ShotActive == 2) speed = 3; // Slower Bounce
	ld	a, -21 (ix)
	sub	a, #0x02
	jr	NZ, 00120$
	ld	-12 (ix), #0x03
	jp	00124$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:610: else if (g_Ball.ShotActive == 3) speed = 2; // Rolling
	ld	a, -21 (ix)
	sub	a, #0x03
	jr	NZ, 00124$
	ld	-12 (ix), #0x02
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:613: if (dx > -speed && dx < speed && dy > -speed && dy < speed) {
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	xor	a, a
	sub	a, -10 (ix)
	ld	-8 (ix), a
	sbc	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -15 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00542$
	xor	a, #0x80
00542$:
	jp	P, 00160$
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -16 (ix)
	sub	a, -4 (ix)
	ld	a, -15 (ix)
	sbc	a, -3 (ix)
	jp	PO, 00543$
	xor	a, #0x80
00543$:
	jp	P, 00160$
	ld	a, -14 (ix)
	ld	-2 (ix), a
	ld	a, -13 (ix)
	ld	-1 (ix), a
	ld	a, -8 (ix)
	sub	a, -2 (ix)
	ld	a, -7 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00544$
	xor	a, #0x80
00544$:
	jp	P, 00160$
	ld	a, -14 (ix)
	sub	a, -4 (ix)
	ld	a, -13 (ix)
	sbc	a, -3 (ix)
	jp	PO, 00545$
	xor	a, #0x80
00545$:
	jp	P, 00160$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:617: if (isMovingToPlayer) {
	ld	a, -22 (ix)
	or	a, a
	jr	Z, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:619: g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:620: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,g_Ball.PassTargetPlayerId);
	ld	a, (#(_g_Ball + 16) + 0)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:621: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:622: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:623: return;
	jp	00220$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:629: if (g_Ball.ShotActive == 1) {
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:633: bool isInsideField = (ty >= FIELD_BOUND_Y_TOP && ty <= FIELD_BOUND_Y_BOTTOM);
	ld	a, -20 (ix)
	ld	-2 (ix), a
	ld	a, -19 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x32
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00222$
	ld	a, #0xb3
	cp	a, -2 (ix)
	ld	a, #0x01
	sbc	a, -1 (ix)
	jp	PO, 00546$
	xor	a, #0x80
00546$:
	jp	P, 00223$
00222$:
	ld	-1 (ix), #0x00
	jp	00224$
00223$:
	ld	-1 (ix), #0x01
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:635: if (isInsideField) {
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:639: i16 totalVectorX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
	ld	hl, #(_g_Ball + 23)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	hl, #(_g_Ball + 17)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:640: i16 totalVectorY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;
	ld	hl, #(_g_Ball + 25)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	hl, #(_g_Ball + 19)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:643: g_Ball.PassStartX = g_Ball.X;
	ld	hl, #(_g_Ball + 17)
	ld	a, -18 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -17 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:644: g_Ball.PassStartY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	hl, #(_g_Ball + 19)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:647: i16 bounceDx = totalVectorX / 4; 
	ld	a, -4 (ix)
	ld	-7 (ix), a
	ld	a, -3 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-4 (ix), a
	ld	a, -6 (ix)
	ld	-3 (ix), a
	bit	7, -6 (ix)
	jr	Z, 00225$
	ld	a, -7 (ix)
	add	a, #0x03
	ld	-4 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
00225$:
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
	ld	a, -4 (ix)
	ld	-10 (ix), a
	ld	a, -3 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:648: i16 bounceDy = totalVectorY / 4; 
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	a, -1 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	ld	-1 (ix), a
	bit	7, -4 (ix)
	jr	Z, 00226$
	ld	a, -5 (ix)
	add	a, #0x03
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
00226$:
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:651: i16 newTx = (i16)g_Ball.X + bounceDx;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:652: i16 newTy = (i16)g_Ball.Y + bounceDy;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:655: if (newTx < FIELD_BOUND_X_LEFT) newTx = FIELD_BOUND_X_LEFT;
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x0a
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00128$
	ld	-6 (ix), #0x0a
	ld	-5 (ix), #0
	jp	00129$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:656: else if (newTx > FIELD_BOUND_X_RIGHT) newTx = FIELD_BOUND_X_RIGHT;
	ld	a, #0xec
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00547$
	xor	a, #0x80
00547$:
	jp	P, 00129$
	ld	-6 (ix), #0xec
	ld	-5 (ix), #0
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:658: if (newTy < FIELD_BOUND_Y_TOP) newTy = FIELD_BOUND_Y_TOP;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00133$
	ld	-4 (ix), #0x32
	ld	-3 (ix), #0
	jp	00134$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:659: else if (newTy > FIELD_BOUND_Y_BOTTOM) newTy = FIELD_BOUND_Y_BOTTOM;
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	PO, 00548$
	xor	a, #0x80
00548$:
	jp	P, 00134$
	ld	-4 (ix), #0xb3
	ld	-3 (ix), #0x01
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:661: g_Ball.TargetX = newTx;
	ld	hl, #(_g_Ball + 23)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:662: g_Ball.TargetY = newTy;
	ld	hl, #(_g_Ball + 25)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:665: g_Ball.PassTotalDist = (u16)(Math_Abs32(bounceDx) + Math_Abs32(bounceDy));
	ld	e, -10 (ix)
	ld	a, -9 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	call	_Math_Abs32
	push	hl
	pop	iy
	ld	c, e
	ld	b, d
	ld	e, -8 (ix)
	ld	a, -7 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	push	iy
	call	_Math_Abs32
	pop	iy
	pop	bc
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 21)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:667: if (g_Ball.PassTotalDist > 5) {
	ld	a, #0x05
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	NC, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:668: g_Ball.ShotActive = 2; // Enter Bounce State
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:669: return; 
	jp	00220$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:672: } else if (g_Ball.ShotActive == 2) {
	ld	a, -21 (ix)
	sub	a, #0x02
	jp	NZ,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:676: i16 vecX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
	ld	bc, (#(_g_Ball + 23) + 0)
	ld	hl, (#(_g_Ball + 17) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:677: i16 vecY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;
	ld	de, (#(_g_Ball + 25) + 0)
	ld	hl, (#(_g_Ball + 19) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:679: g_Ball.PassStartX = g_Ball.X;
	ld	hl, #(_g_Ball + 17)
	ld	a, -18 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -17 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:680: g_Ball.PassStartY = g_Ball.Y;
	ld	de, (#_g_Ball + 0)
	ld	((_g_Ball + 19)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:683: i16 rollDx = vecX / 4; 
	ld	e, c
	ld	d, b
	bit	7, b
	jr	Z, 00227$
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
00227$:
	sra	d
	rr	e
	sra	d
	rr	e
	ld	-10 (ix), e
	ld	-9 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:684: i16 rollDy = vecY / 4; 
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	bit	7, -3 (ix)
	jr	Z, 00228$
	ld	a, -4 (ix)
	add	a, #0x03
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
00228$:
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:689: i16 rollTx = (i16)g_Ball.X + rollDx;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:690: i16 rollTy = (i16)g_Ball.Y + rollDy;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:693: if (rollTx < FIELD_BOUND_X_LEFT) rollTx = FIELD_BOUND_X_LEFT;
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x0a
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00142$
	ld	-6 (ix), #0x0a
	ld	-5 (ix), #0
	jp	00143$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:694: else if (rollTx > FIELD_BOUND_X_RIGHT) rollTx = FIELD_BOUND_X_RIGHT;
	ld	a, #0xec
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00551$
	xor	a, #0x80
00551$:
	jp	P, 00143$
	ld	-6 (ix), #0xec
	ld	-5 (ix), #0
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:695: if (rollTy < FIELD_BOUND_Y_TOP) rollTy = FIELD_BOUND_Y_TOP;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00147$
	ld	-4 (ix), #0x32
	ld	-3 (ix), #0
	jp	00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:696: else if (rollTy > FIELD_BOUND_Y_BOTTOM) rollTy = FIELD_BOUND_Y_BOTTOM;
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	PO, 00552$
	xor	a, #0x80
00552$:
	jp	P, 00148$
	ld	-4 (ix), #0xb3
	ld	-3 (ix), #0x01
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:698: g_Ball.TargetX = rollTx;
	ld	hl, #(_g_Ball + 23)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:699: g_Ball.TargetY = rollTy;
	ld	hl, #(_g_Ball + 25)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:700: g_Ball.PassTotalDist = (u16)(Math_Abs32(rollDx) + Math_Abs32(rollDy));
	ld	e, -10 (ix)
	ld	a, -9 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	call	_Math_Abs32
	push	hl
	pop	iy
	ld	c, e
	ld	b, d
	ld	e, -8 (ix)
	ld	a, -7 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	push	iy
	call	_Math_Abs32
	pop	iy
	pop	bc
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 21)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:702: if (g_Ball.PassTotalDist > 2) {
	ld	a, #0x02
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:703: g_Ball.ShotActive = 3; // ROLLING
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:704: return;
	jp	00220$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:709: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:710: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:711: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:712: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:714: return;
	jp	00220$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:719: if (Math_Abs32(dx) > Math_Abs32(dy)) {
	ld	a, -16 (ix)
	ld	-24 (ix), a
	ld	a, -15 (ix)
	ld	-23 (ix), a
	rlca
	sbc	a, a
	ld	-22 (ix), a
	ld	-21 (ix), a
	pop	de
	push	de
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	c, e
	ld	b, d
	ld	a, -14 (ix)
	ld	-20 (ix), a
	ld	a, -13 (ix)
	ld	-19 (ix), a
	rlca
	sbc	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
	push	hl
	push	bc
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	bc
	pop	hl
	ld	a, -4 (ix)
	sub	a, c
	ld	a, -3 (ix)
	sbc	a, b
	ld	a, -2 (ix)
	sbc	a, l
	ld	a, -1 (ix)
	sbc	a, h
	jp	PO, 00553$
	xor	a, #0x80
00553$:
	jp	P, 00169$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:720: g_Ball.X += (dx > 0 ? speed : -speed);
	ld	bc, (#(_g_Ball + 2) + 0)
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00554$
	xor	a, #0x80
00554$:
	jp	P, 00229$
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	jp	00230$
00229$:
	ld	e, -8 (ix)
	ld	d, -7 (ix)
00230$:
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:721: if (dx != 0) g_Ball.Y += (dy * speed) / Math_Abs32(dx);
	ld	a, -15 (ix)
	or	a, -16 (ix)
	jp	Z, 00170$
	ld	bc, (#_g_Ball + 0)
	ld	e, -12 (ix)
	ld	d, #0x00
	push	bc
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	push	de
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	push	de
	pop	iy
	pop	de
	pop	bc
	ld	-4 (ix), e
	ld	a, d
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	push	bc
	push	hl
	push	iy
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divslong
	pop	af
	pop	af
	pop	bc
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
	jp	00170$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:723: g_Ball.Y += (dy > 0 ? speed : -speed);
	ld	de, #_g_Ball
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00555$
	xor	a, #0x80
00555$:
	jp	P, 00231$
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	jp	00232$
00231$:
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
00232$:
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:724: if (dy != 0) g_Ball.X += (dx * speed) / Math_Abs32(dy);
	ld	a, -13 (ix)
	or	a, -14 (ix)
	jr	Z, 00170$
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	e, -12 (ix)
	ld	d, #0x00
	push	bc
	ld	l, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	push	de
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	push	de
	pop	iy
	pop	de
	pop	bc
	ld	-4 (ix), e
	ld	a, d
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	push	bc
	push	hl
	push	iy
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divslong
	pop	af
	pop	af
	pop	bc
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:728: i16 diffStartX = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	hl, (#_g_Ball + 17)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:729: i16 diffStartY = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
	ld	de, (#_g_Ball + 0)
	ld	hl, (#_g_Ball + 19)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:730: u16 distCovered = (u16)(Math_Abs32(diffStartX) + Math_Abs32(diffStartY));
	ld	a, b
	rlca
	sbc	hl, hl
	push	de
	ld	e, c
	ld	d, b
	call	_Math_Abs32
	push	hl
	pop	iy
	ld	c, e
	ld	b, d
	pop	de
	ld	a, d
	rlca
	sbc	hl, hl
	push	bc
	push	iy
	call	_Math_Abs32
	pop	iy
	pop	bc
	ex	de, hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:732: u16 totalDist = g_Ball.PassTotalDist;
	ld	hl, #_g_Ball + 21
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:733: if (totalDist == 0) totalDist = 1; // Safety
	ld	-7 (ix), a
	or	a, -8 (ix)
	jr	NZ, 00172$
	ld	-8 (ix), #0x01
	ld	-7 (ix), #0
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:603: i16 dx = tx - (i16)g_Ball.X;
	ld	bc, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:604: i16 dy = ty - (i16)g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:736: if (g_Ball.X == 0 || g_Ball.X > 255 || g_Ball.Y == 0 || g_Ball.Y > 211) {
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, b
	or	a, c
	jr	Z, 00174$
	ld	-2 (ix), c
	ld	-1 (ix), b
	ld	a, #0xff
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jr	C, 00174$
	ld	a, -5 (ix)
	or	a, -6 (ix)
	jr	Z, 00174$
	ld	a, #0xd3
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:739: if(g_Ball.Y > 230 || g_Ball.Y < 20) {
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:745: if (g_Ball.ShotActive == 2) {
	ld	hl, #(_g_Ball + 27)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:622: g_Ball.Size = 1;
	ld	bc, #_g_Ball + 4
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:745: if (g_Ball.ShotActive == 2) {
	ld	a, e
	sub	a, #0x02
	jr	NZ, 00218$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:747: u16 ratio = (distCovered * 100) / totalDist;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	call	__divuint
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:748: if (ratio < 20 || ratio > 80) g_Ball.Size = 2;
	ld	a, e
	sub	a, #0x14
	ld	a, d
	sbc	a, #0x00
	jr	C, 00178$
	ld	a, #0x50
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00179$
00178$:
	ld	a, #0x02
	ld	(bc), a
	jp	00220$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:749: else g_Ball.Size = 3;
	ld	a, #0x03
	ld	(bc), a
	jp	00220$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:751: else if (g_Ball.ShotActive == 3) {
	ld	a, e
	sub	a, #0x03
	jr	NZ, 00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:753: g_Ball.Size = 1;
	ld	a, #0x01
	ld	(bc), a
	jp	00220$
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:757: if (totalDist > 140) {
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x8c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	ld	a, #0x00
	rla
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:755: else if (g_Ball.ShotActive == 1) {
	dec	e
	jr	NZ, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:757: if (totalDist > 140) {
	ld	a, d
	or	a, a
	jr	Z, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:759: u16 ratio = (distCovered * 100) / totalDist;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	call	__divuint
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:760: if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
	ld	a, e
	sub	a, #0x0f
	ld	a, d
	sbc	a, #0x00
	jr	C, 00186$
	ld	a, #0x55
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00187$
00186$:
	ld	a, #0x02
	ld	(bc), a
	jp	00220$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:761: else if (ratio < 30 || ratio > 70) g_Ball.Size = 3;
	ld	a, e
	sub	a, #0x1e
	ld	a, d
	sbc	a, #0x00
	jr	C, 00182$
	ld	a, #0x46
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00183$
00182$:
	ld	a, #0x03
	ld	(bc), a
	jp	00220$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:762: else g_Ball.Size = 5; // Size 5 = Impossible to reach
	ld	a, #0x05
	ld	(bc), a
	jp	00220$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:765: g_Ball.Size = 2;
	ld	a, #0x02
	ld	(bc), a
	jp	00220$
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:770: if (totalDist > 140) {
	ld	a, d
	or	a, a
	jr	Z, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:772: u16 ratio = (distCovered * 100) / totalDist;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	call	__divuint
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:773: if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
	ld	a, e
	sub	a, #0x0f
	ld	a, d
	sbc	a, #0x00
	jr	C, 00197$
	ld	a, #0x55
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00198$
00197$:
	ld	a, #0x02
	ld	(bc), a
	jp	00220$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:774: else if (ratio < 30 || ratio > 70) g_Ball.Size = 3;
	ld	a, e
	sub	a, #0x1e
	ld	a, d
	sbc	a, #0x00
	jr	C, 00193$
	ld	a, #0x46
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00194$
00193$:
	ld	a, #0x03
	ld	(bc), a
	jp	00220$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:775: else g_Ball.Size = 5; // Size 5 = Impossible to reach
	ld	a, #0x05
	ld	(bc), a
	jp	00220$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:777: else if (totalDist > 40) {
	ld	a, #0x28
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:778: u16 ratio = (distCovered * 100) / totalDist;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	call	__divuint
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:779: if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
	ld	a, e
	sub	a, #0x0f
	ld	a, d
	sbc	a, #0x00
	jr	C, 00201$
	ld	a, #0x55
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00202$
00201$:
	ld	a, #0x02
	ld	(bc), a
	jp	00220$
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:780: else g_Ball.Size = 3;
	ld	a, #0x03
	ld	(bc), a
	jp	00220$
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:782: g_Ball.Size = 2;
	ld	a, #0x02
	ld	(bc), a
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:786: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:788: void TickActiveFieldZone(){
;	---------------------------------
; Function TickActiveFieldZone
; ---------------------------------
_TickActiveFieldZone::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:791: if (g_FieldScrollingActionInProgress != NO_VALUE) return;
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jp	NZ,00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:795: if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER || g_MatchStatus == MATCH_BEFORE_KICK_OFF) {
	ld	a, (_g_MatchStatus+0)
	dec	a
	ld	a, #0x01
	jr	Z, 00233$
	xor	a, a
00233$:
	ld	c, a
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00132$
	sub	a, #0x0d
	jr	Z, 00132$
	ld	a, c
	or	a, a
	jp	Z, 00133$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:799: i16 targetY = (i16)g_Ball.Y - 106;
	ld	hl, (#_g_Ball + 0)
	ld	de, #0xff96
	add	hl, de
	ex	de,hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:802: if (targetY < FIELD_TOP_Y) targetY = FIELD_TOP_Y;
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, l
	jr	Z, 00104$
	ld	de, #0x0000
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:803: if (targetY > FIELD_BOTTOM_Y) targetY = FIELD_BOTTOM_Y;
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, b
	ld	a, #0x01
	sbc	a, l
	jp	PO, 00236$
	xor	a, #0x80
00236$:
	jp	P, 00106$
	ld	de, #0x0118
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:806: i16 diff = targetY - (i16)g_FieldCurrentYPosition;
	ld	hl, (_g_FieldCurrentYPosition)
	ex	(sp), hl
	ld	a, e
	sub	a, -6 (ix)
	ld	b, a
	ld	a, d
	sbc	a, -5 (ix)
	ld	-4 (ix), b
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:809: if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && diff > -2 && diff < 2) {
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, c
	or	a, a
	jr	Z, 00114$
	ld	a, #0xfe
	cp	a, -4 (ix)
	ld	a, #0xff
	sbc	a, -3 (ix)
	jp	PO, 00237$
	xor	a, #0x80
00237$:
	jp	P, 00114$
	ld	a, -2 (ix)
	sub	a, #0x02
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:810: g_FieldCurrentYPosition = targetY;
	ld	(_g_FieldCurrentYPosition), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:812: if (g_FieldCurrentYPosition < 80) g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x50
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00111$
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x00
	jp	00136$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:813: else if (g_FieldCurrentYPosition > 170) g_ActiveFieldZone = FIELD_SOUTH_ZONE;
	ld	a, #0xaa
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00238$
	xor	a, #0x80
00238$:
	jp	P, 00108$
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x02
	jp	00136$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:814: else g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
	ld	hl, #_g_ActiveFieldZone
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:815: return;
	jp	00136$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:819: if (diff > 6 || diff < -6) {
	ld	a, #0x06
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00239$
	xor	a, #0x80
00239$:
	jp	M, 00119$
	ld	a, -4 (ix)
	sub	a, #0xfa
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00120$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:820: i16 move = diff / 8;
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	bit	7, -1 (ix)
	jr	Z, 00138$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0007
	add	hl, de
00138$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ex	de, hl
	ld	c, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:822: if (move == 0) move = (diff > 0) ? 1 : -1;
	ld	a,d
	ld	b,a
	or	a,e
	jr	NZ, 00118$
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00240$
	xor	a, #0x80
00240$:
	jp	P, 00139$
	ld	bc, #0x0001
	jp	00140$
00139$:
	ld	bc, #0xffff
00140$:
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:824: g_FieldCurrentYPosition += move;
	pop	hl
	push	hl
	add	hl, bc
	ld	(_g_FieldCurrentYPosition), hl
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:828: if (g_FieldCurrentYPosition < FIELD_TOP_Y) g_FieldCurrentYPosition = FIELD_TOP_Y;
	ld	a, (_g_FieldCurrentYPosition+1)
	bit	7, a
	jr	Z, 00123$
	ld	hl, #0x0000
	ld	(_g_FieldCurrentYPosition), hl
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:829: if (g_FieldCurrentYPosition > FIELD_BOTTOM_Y) g_FieldCurrentYPosition = FIELD_BOTTOM_Y;
	ld	a, #0x18
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x01
	sbc	a, 1 (iy)
	jp	PO, 00241$
	xor	a, #0x80
00241$:
	jp	P, 00125$
	ld	hl, #0x0118
	ld	(_g_FieldCurrentYPosition), hl
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:835: if (g_FieldCurrentYPosition < 80) g_ActiveFieldZone = FIELD_NORTH_ZONE;
	ld	a, (_g_FieldCurrentYPosition+0)
	sub	a, #0x50
	ld	a, (_g_FieldCurrentYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00130$
	ld	iy, #_g_ActiveFieldZone
	ld	0 (iy), #0x00
	jp	00133$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:836: else if (g_FieldCurrentYPosition > 170) g_ActiveFieldZone = FIELD_SOUTH_ZONE;
	ld	a, #0xaa
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00242$
	xor	a, #0x80
00242$:
	jp	P, 00127$
	ld	iy, #_g_ActiveFieldZone
	ld	0 (iy), #0x02
	jp	00133$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:837: else g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
	ld	iy, #_g_ActiveFieldZone
	ld	0 (iy), #0x01
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:840: g_Ball.PreviousY=g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:841: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:842: void TickUpdateTime(){
;	---------------------------------
; Function TickUpdateTime
; ---------------------------------
_TickUpdateTime::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:843: if(g_MatchStatus==MATCH_IN_ACTION){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jr	NZ, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:844: if(g_TimeCounter!=g_LastTimeCounter){
	ld	a, (_g_TimeCounter+0)
	ld	iy, #_g_LastTimeCounter
	sub	a, 0 (iy)
	jr	NZ, 00140$
	ld	a, (_g_TimeCounter+1)
	sub	a, 1 (iy)
	jr	Z, 00106$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:845: g_LastTimeCounter=g_TimeCounter;
	ld	hl, (_g_TimeCounter)
	ld	(_g_LastTimeCounter), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:846: g_SecondsToEndOfMatch--;
	ld	hl, #_g_SecondsToEndOfMatch
	dec	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:847: ShowHeaderInfo();
	call	_ShowHeaderInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:848: if(g_SecondsToEndOfMatch==0){
	ld	a, (_g_SecondsToEndOfMatch+0)
	or	a, a
	jr	NZ, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:849: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:850: PlayVGM(VGM_REFEERER);
	ld	a, #0x05
	call	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:851: Trampoline_VOID(5,TimeUp);
	ld	de, #_TimeUp
	ld	a, #0x05
	call	_Trampoline_VOID
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:855: if(g_Timer!=NO_VALUE){
	ld	a, (_g_Timer+0)
	inc	a
	ret	Z
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:856: if(g_FrameCounter==38){
	ld	a, (_g_FrameCounter+0)
	sub	a, #0x26
	ret	NZ
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:857: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:861: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:862: void BallInGoal(u8 teamScored){
;	---------------------------------
; Function BallInGoal
; ---------------------------------
_BallInGoal::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:863: g_VblankSuspended=TRUE; 
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:864: g_Ball.Size=1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:866: V9990_PrintLayerAStringAtPos(12,18,"IN  GOAL");
	push	bc
	ld	hl, #___str_2
	push	hl
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_PrintLayerAStringAtPos
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:868: g_GoalScorerId = g_Ball.PossessionPlayerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:871: if (g_GoalScorerId == NO_VALUE) {
	ld	(_g_GoalScorerId+0), a
	inc	a
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:872: g_GoalScorerId = Trampoline_U8_P2(2,GetClosestPlayerToBall, teamScored, NO_VALUE);
	push	bc
	ld	a, #0xff
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	(_g_GoalScorerId+0), a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:875: if(teamScored==TEAM_1){
	dec	b
	ld	a, #0x01
	jr	Z, 00128$
	xor	a, a
00128$:
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:877: g_Ball.Y = FIELD_BOUND_Y_TOP - 12;
	ld	hl, #0x0026
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:878: g_Team1Score++;
	ld	hl, #_g_Team1Score
	inc	(hl)
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:882: g_Ball.Y = FIELD_BOUND_Y_BOTTOM + 12L;
	ld	hl, #0x01bf
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:883: g_Team2Score++;
	ld	hl, #_g_Team2Score
	inc	(hl)
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:885: ShowHeaderInfo();
	call	_ShowHeaderInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:886: Trampoline_VOID(3,PutBallSprite);
	ld	de, #_PutBallSprite
	ld	a, #0x03
	call	_Trampoline_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:888: PlayPCM(PCM_INGOAL);
	ld	a, #0x02
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:889: PlayVGM(VGM_PUBLIC_GOAL);
	ld	a, #0x03
	call	_PlayVGM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:891: g_MatchStatus=MATCH_AFTER_IN_GOAL;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:892: g_RestartKickTeamId = (teamScored == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, #0x02
	ld	c, #0x00
	jp	00109$
00108$:
	ld	a, #0x01
	ld	c, #0x00
00109$:
	ld	(_g_RestartKickTeamId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:893: g_Timer = 0; // Start timer for celebration/reset
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:894: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:895: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:896: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:897: g_VblankSuspended=FALSE;
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:898: }
	inc	sp
	pop	ix
	ret
___str_2:
	.ascii "IN  GOAL"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:900: void GoalKick(u8 teamId){
;	---------------------------------
; Function GoalKick
; ---------------------------------
_GoalKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:901: g_VblankSuspended=TRUE; 
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:902: g_Ball.Size=1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:904: V9990_PrintLayerAStringAtPos(10,18,"GOAL KICK");
	ld	hl, #___str_3
	push	hl
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:905: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:906: PlayPCM(PCM_GOALKICK);
	ld	a, #0x04
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:907: g_MatchStatus=MATCH_BEFORE_GOAL_KICK;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:908: g_RestartKickTeamId = teamId;
	ld	a, -1 (ix)
	ld	(_g_RestartKickTeamId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:909: g_Timer = 0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:912: Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:913: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:916: if (g_Ball.X < FIELD_POS_X_CENTER) g_GoalKickSide = CORNER_SIDE_LEFT;
	ld	hl, (#_g_Ball + 2)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	jr	NC, 00102$
	ld	hl, #_g_GoalKickSide
	ld	(hl), #0x00
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:917: else g_GoalKickSide = CORNER_SIDE_RIGHT;
	ld	hl, #_g_GoalKickSide
	ld	(hl), #0x01
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:918: g_VblankSuspended=FALSE;
	ld	hl, #_g_VblankSuspended
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:919: }
	inc	sp
	pop	ix
	ret
___str_3:
	.ascii "GOAL KICK"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:921: void BallThrowIn(u8 teamId){
;	---------------------------------
; Function BallThrowIn
; ---------------------------------
_BallThrowIn::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:924: V9990_PrintLayerAStringAtPos(13,18,"THROW IN");
	ld	hl, #___str_4
	push	hl
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:925: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:926: PlayPCM(PCM_THROWIN);
	ld	a, #0x03
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:927: g_MatchStatus=MATCH_BEFORE_THROW_IN;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:928: g_RestartKickTeamId = teamId;
	ld	a, -2 (ix)
	ld	(_g_RestartKickTeamId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:929: g_Timer = 0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:932: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:933: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:934: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:937: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00111$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:938: g_Players[i].TargetX = g_Players[i].X;
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
	ld	hl, #0x0010
	add	hl, de
	ex	(sp), hl
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	pop	hl
	push	hl
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:939: g_Players[i].TargetY = g_Players[i].Y;
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (de)
	ld	-4 (ix), a
	inc	de
	ld	a, (de)
	ld	-3 (ix), a
	dec	de
	ld	l, c
	ld	h, b
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:941: if (g_Players[i].TargetX < FIELD_BOUND_X_LEFT) g_Players[i].TargetX = FIELD_BOUND_X_LEFT;
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	ld	h, -5 (ix)
	sub	a, #0x0a
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00102$
	pop	hl
	push	hl
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:942: if (g_Players[i].TargetX > FIELD_BOUND_X_RIGHT) g_Players[i].TargetX = FIELD_BOUND_X_RIGHT;
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xec
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00104$
	pop	hl
	push	hl
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:943: if (g_Players[i].TargetY < FIELD_BOUND_Y_TOP) g_Players[i].TargetY = FIELD_BOUND_Y_TOP;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, #0x32
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00106$
	ld	l, c
	ld	h, b
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:944: if (g_Players[i].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[i].TargetY = FIELD_BOUND_Y_BOTTOM;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xb3
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00108$
	ld	a, #0xb3
	ld	(bc), a
	inc	bc
	ld	a, #0x01
	ld	(bc), a
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:946: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:937: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00111$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:948: }
	ld	sp, ix
	pop	ix
	ret
___str_4:
	.ascii "THROW IN"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:950: void TickCheckBallBoundaries(){
;	---------------------------------
; Function TickCheckBallBoundaries
; ---------------------------------
_TickCheckBallBoundaries::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:951: if(g_MatchStatus!=MATCH_IN_ACTION){
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:952: return;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:956: if(g_MatchStatus == MATCH_BALL_ON_GOALKEEPER || g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jp	NZ,00167$
	sub	a, #0x0d
	jr	Z, 00107$
	ld	a, (#(_g_Ball + 6) + 0)
	inc	a
	jr	Z, 00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:957: if(g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	hl, #_g_Ball+6
	ld	e, (hl)
	ld	a, e
	inc	a
	jr	Z, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:958: if(g_Players[g_Ball.PossessionPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;
	ld	bc, #_g_Players+0
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x000d
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z,00167$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:963: if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
	ld	hl, #_g_Ball + 27
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:974: if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:963: if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 16)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:974: if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
	ld	-3 (ix), e
	ld	-2 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:963: if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
	ld	a, -4 (ix)
	inc	a
	ld	a, #0x01
	jr	Z, 00336$
	xor	a, a
00336$:
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:974: if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
	ld	a, -3 (ix)
	sub	a, #0x32
	ld	a, -2 (ix)
	sbc	a, #0x00
	ld	a, #0x00
	rla
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:963: if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
	ld	a, c
	or	a, a
	jr	NZ, 00120$
	bit	0, -1 (ix)
	jr	NZ, 00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:965: u16 destY = g_Ball.TargetY;
	ld	hl, (#_g_Ball + 25)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:968: if (g_Ball.PassTargetPlayerId != NO_VALUE) {
	bit	0, -1 (ix)
	jr	NZ, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:969: destY = g_Players[g_Ball.PassTargetPlayerId].Y;
	push	de
	ld	e, -4 (ix)
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
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_Players)
	adc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:970: destX = g_Players[g_Ball.PassTargetPlayerId].X;
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:974: if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
	ld	a, b
	or	a, a
	jr	Z, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:976: if(destY > g_Ball.Y) return;
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	C,00167$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:980: if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
	ld	a, #0xb3
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jr	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:982: if(destY < g_Ball.Y) return;
	xor	a, a
	sbc	hl, de
	jp	C,00167$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:998: if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
	ld	a, b
	or	a, a
	jr	Z, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1000: if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_DOWN || g_Ball.Direction == DIRECTION_DOWN_LEFT || g_Ball.Direction == DIRECTION_DOWN_RIGHT)) {
	ld	a, c
	or	a, a
	jr	Z, 00129$
	ld	a, (#_g_Ball + 5)
	cp	a, #0x05
	jp	Z,00167$
	cp	a, #0x06
	jp	Z,00167$
	sub	a, #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1001: return; 
	jp	Z,00167$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1006: if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
	ld	a, #0xb3
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jr	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1008: if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_UP || g_Ball.Direction == DIRECTION_UP_LEFT || g_Ball.Direction == DIRECTION_UP_RIGHT)) {
	ld	a, c
	or	a, a
	jr	Z, 00136$
	ld	a, (#_g_Ball + 5)
	cp	a, #0x01
	jp	Z,00167$
	cp	a, #0x08
	jp	Z,00167$
	sub	a, #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1009: return;
	jp	Z,00167$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1016: i16 screenRelY = (i16)g_Ball.Y - (i16)g_FieldCurrentYPosition;
	inc	sp
	inc	sp
	push	de
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, -7 (ix)
	sub	a, l
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1017: if (screenRelY < -30 || screenRelY > 242) return; // Screen height 212 + 30px margin
	ld	a, c
	sub	a, #0xe2
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C,00167$
	ld	a, #0xf2
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00345$
	xor	a, #0x80
00345$:
	jp	P, 00138$
	jp	00167$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1019: u8 teamId = g_Ball.LastTouchTeamId;
	ld	a, (#_g_Ball + 14)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1020: if(teamId==NO_VALUE){
	ld	-5 (ix), a
	inc	a
	jr	NZ, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1021: teamId=TEAM_1; // Default
	ld	-5 (ix), #0x01
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1023: u8 opponentTeamId = (teamId == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, -5 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00349$
	xor	a, a
00349$:
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00169$
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
	jp	00170$
00169$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00170$:
	ld	a, -2 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1033: if((i16)g_Ball.X < (i16)FIELD_BOUND_X_LEFT || (i16)g_Ball.X > (i16)FIELD_BOUND_X_RIGHT){
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x0a
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00142$
	ld	a, #0xec
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00350$
	xor	a, #0x80
00350$:
	jp	P, 00143$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1034: BallThrowIn(opponentTeamId); //GP_USER
	ld	a, -3 (ix)
	call	_BallThrowIn
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1036: return;
	jp	00167$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1040: if((i16)g_Ball.Y < (i16)FIELD_BOUND_Y_TOP){
	ld	a, -7 (ix)
	sub	a, #0x32
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1042: if (g_ActiveFieldZone == FIELD_SOUTH_ZONE) return;
	ld	a, (_g_ActiveFieldZone+0)
	sub	a, #0x02
	jp	Z,00167$
	jp	00146$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1046: if((i16)g_Ball.X > (i16)(GOAL_X_MIN - 8) && (i16)g_Ball.X < (i16)(GOAL_X_MAX + 8)){
	ld	a, #0x58
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00353$
	xor	a, #0x80
00353$:
	jp	P, 00151$
	ld	a, -2 (ix)
	sub	a, #0x98
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1047: BallInGoal(TEAM_1); // Team 1 attacked up and scored
	ld	a, #0x01
	call	_BallInGoal
	jp	00167$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1050: if(teamId == TEAM_1){ // Attacker touched last
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1051: GoalKick(TEAM_2);
	ld	a, #0x02
	call	_GoalKick
	jp	00167$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1054: Trampoline_VOID_P1(3,CornerKick,TEAM_1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_CornerKick
	ld	a, #0x03
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1057: return;
	jp	00167$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1061: if((i16)g_Ball.Y > (i16)FIELD_BOUND_Y_BOTTOM){
	ld	a, #0xb3
	cp	a, -7 (ix)
	ld	a, #0x01
	sbc	a, -6 (ix)
	jp	PO, 00354$
	xor	a, #0x80
00354$:
	jp	P, 00167$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1063: if (g_ActiveFieldZone == FIELD_NORTH_ZONE) return;
	ld	a, (_g_ActiveFieldZone+0)
	or	a, a
	jr	Z, 00167$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1066: if((i16)g_Ball.X > (i16)(GOAL_X_MIN - 8) && (i16)g_Ball.X < (i16)(GOAL_X_MAX + 8)){
	ld	a, #0x58
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00355$
	xor	a, #0x80
00355$:
	jp	P, 00162$
	ld	a, -2 (ix)
	sub	a, #0x98
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1067: BallInGoal(TEAM_2); // Team 2 attacked down and scored
	ld	a, #0x02
	call	_BallInGoal
	jp	00163$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1070: if(teamId == TEAM_2){ // Attacker touched last (Team 2 attacking down)
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1071: GoalKick(TEAM_1);
	ld	a, #0x01
	call	_GoalKick
	jp	00163$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1074: Trampoline_VOID_P1(3,CornerKick,TEAM_2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_CornerKick
	ld	a, #0x03
	call	_Trampoline_VOID_P1
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1077: return;
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1079: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1081: void TickGoalkeeperAnimation() {
;	---------------------------------
; Function TickGoalkeeperAnimation
; ---------------------------------
_TickGoalkeeperAnimation::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1082: if (g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	jp	NZ,00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1083: if (g_GkAnimPlayerId == NO_VALUE) return;
	ld	a, (_g_GkAnimPlayerId+0)
	inc	a
	jp	Z,00209$
	jp	00104$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1086: g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	add	a, #<(_g_Players)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #>(_g_Players)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x12
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1088: g_GkAnimTimer++;
	ld	hl, #_g_GkAnimTimer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1090: u8 kickTime = 60; // 1 Second delay for all (was 30)
	ld	-1 (ix), #0x3c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1091: if (g_GkIsGroundKick) kickTime = 6; // Immediate kick for ground kicks
	ld	a, (_g_GkIsGroundKick+0)
	or	a, a
	jr	Z, 00106$
	ld	-1 (ix), #0x06
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1094: if (g_GkAnimTimer < kickTime) {
	ld	a, (_g_GkAnimTimer+0)
	sub	a, -1 (ix)
	ld	a, #0x00
	rla
	ld	-2 (ix), a
	or	a, a
	jp	Z, 00205$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1095: if (g_GkAnimTimer < 30 && (g_GkAnimTimer % 2) == 0 && g_GkRecoilY != 0) { // Faster movement (every 2 frames)
	ld	a, (_g_GkAnimTimer+0)
	sub	a, #0x1e
	jp	NC, 00112$
	ld	hl, #_g_GkAnimTimer
	bit	0, (hl)
	jp	NZ,00112$
	ld	a, (_g_GkRecoilY+0)
	or	a, a
	jp	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1096: g_Players[g_GkAnimPlayerId].Y += g_GkRecoilY;
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	add	a, #<(_g_Players)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	adc	a, #>(_g_Players)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, (_g_GkRecoilY+0)
	ld	-2 (ix), a
	rlca
	sbc	a, a
	ld	-1 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1099: if(g_Players[g_GkAnimPlayerId].Y < FIELD_BOUND_Y_TOP) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_TOP;
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x32
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00108$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1100: if(g_Players[g_GkAnimPlayerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_BOTTOM;
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, #0xb3
	cp	a, -2 (ix)
	ld	a, #0x01
	sbc	a, -1 (ix)
	jr	NC, 00110$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1102: g_Players[g_GkAnimPlayerId].TargetY = g_Players[g_GkAnimPlayerId].Y; // Sync target
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_g_Players)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0e
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1105: if (g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) {
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	add	a, #<(_g_Players)
	ld	-5 (ix), a
	ld	a, -1 (ix)
	adc	a, #>(_g_Players)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1106: if (g_GkIsGroundKick) g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_BACK;
	ld	a, -5 (ix)
	add	a, #0x08
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1105: if (g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) {
	ld	a, -3 (ix)
	dec	a
	jr	NZ, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1106: if (g_GkIsGroundKick) g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_BACK;
	ld	a, (_g_GkIsGroundKick+0)
	or	a, a
	jr	Z, 00116$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x11
	jp	00120$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1107: else g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x9e
	jp	00120$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1109: else g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x10
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1111: Trampoline_VOID_P1(2, PutBallOnPlayerFeet,g_GkAnimPlayerId);
	ld	a, (_g_GkAnimPlayerId+0)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
	jp	00209$
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1113: } else if (g_GkAnimTimer >= kickTime) {
	ld	c, -2 (ix)
	bit	0, c
	jp	NZ, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1116: bool safeToKick = false;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1119: if (g_GkAnimTimer > (kickTime + 90)) safeToKick = true; // Wait up to 1.5 seconds for team to move up
	ld	a, -1 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	add	a, #0x5a
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (_g_GkAnimTimer+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00482$
	xor	a, #0x80
00482$:
	jp	P, 00122$
	ld	-12 (ix), #0x01
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1122: u8 targetId = GetBestPassTarget(g_GkAnimPlayerId); 
	ld	a, (_g_GkAnimPlayerId+0)
	call	_GetBestPassTarget
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1123: if (!safeToKick && targetId != NO_VALUE) {
	ld	a, -12 (ix)
	or	a, a
	jp	NZ, 00126$
	ld	a, -11 (ix)
	inc	a
	jp	Z,00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1124: u16 dist = (u16)(Math_Abs32((i16)g_Players[targetId].X - (i16)g_Players[g_GkAnimPlayerId].X) + 
	ld	c, -11 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_g_Players)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	bc, (_g_GkAnimPlayerId)
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
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
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
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	ld	-1 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1126: if (dist > 60) safeToKick = true;
	ld	a, #0x3c
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jr	NC, 00126$
	ld	-12 (ix), #0x01
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1130: if (!safeToKick) {
	ld	a, -12 (ix)
	or	a, a
	jp	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1131: u8 closestOpp = Trampoline_U8_P2(2,GetClosestPlayerToBall,(g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) ? TEAM_2 : TEAM_1, NO_VALUE);
	ld	bc, (_g_GkAnimPlayerId)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00211$
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
	jp	00212$
00211$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00212$:
	ld	a, -2 (ix)
	ld	h, #0xff
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1132: if (closestOpp != NO_VALUE) {
	ld	-1 (ix), a
	inc	a
	jp	Z,00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1136: u16 edist = (u16)(Math_Abs32((i16)g_Players[closestOpp].X - (i16)g_Ball.X) + 
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #<(_g_Players)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #>(_g_Players)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	hl, #_g_Ball + 2
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
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	ld	-1 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1138: if (edist < 40) safeToKick = true;
	ld	a, -2 (ix)
	sub	a, #0x28
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00133$
	ld	-12 (ix), #0x01
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1143: if (g_GkIsGroundKick) safeToKick = true;
	ld	a, (_g_GkIsGroundKick+0)
	or	a, a
	jr	Z, 00135$
	ld	-12 (ix), #0x01
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1147: if (!safeToKick) {
	ld	a, -12 (ix)
	or	a, a
	jp	NZ, 00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1148: bool areaClear = true;
	ld	c, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1149: u8 gkTeam = g_Players[g_GkAnimPlayerId].TeamId;
	ld	de, (_g_GkAnimPlayerId)
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
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1151: for(u8 i=0; i<14; i++) {
	dec	a
	ld	a, #0x01
	jr	Z, 00488$
	xor	a, a
00488$:
	ld	b, a
	ld	e, #0x00
00208$:
	ld	a, e
	sub	a, #0x0e
	jp	NC, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1152: if (i == g_GkAnimPlayerId) continue;
	ld	a, (_g_GkAnimPlayerId+0)
	sub	a, e
	jp	Z,00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1153: u16 py = g_Players[i].Y;
	push	de
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
	ld	iy, #_g_Players
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	ld	a, 0 (iy)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1157: if (g_Players[i].TeamId == TEAM_1 && py > 350) areaClear = false;
	ld	d, 9 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1155: if (gkTeam == TEAM_1) { // Bottom Goal (Y=430)
	ld	a, b
	or	a, a
	jr	Z, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1157: if (g_Players[i].TeamId == TEAM_1 && py > 350) areaClear = false;
	dec	d
	ld	a, #0x01
	jr	Z, 00491$
	xor	a, a
00491$:
	ld	d, a
	or	a, a
	jr	Z, 00142$
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x5e
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00142$
	ld	c, #0x00
	jp	00154$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1159: else if (g_Players[i].TeamId != TEAM_1 && py > 360) areaClear = false;
	bit	0, d
	jr	NZ, 00154$
	ld	d, -2 (ix)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x68
	cp	a, d
	ld	a, #0x01
	sbc	a, l
	jr	NC, 00154$
	ld	c, #0x00
	jp	00154$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1162: if (g_Players[i].TeamId == TEAM_2 && py < 130) areaClear = false;
	ld	a, d
	sub	a, #0x02
	ld	a, #0x01
	jr	Z, 00493$
	xor	a, a
00493$:
	ld	d, a
	or	a, a
	jr	Z, 00149$
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	ld	h, -1 (ix)
	sub	a, #0x82
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00149$
	ld	c, #0x00
	jp	00154$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1164: else if (g_Players[i].TeamId != TEAM_2 && py < 120) areaClear = false;
	bit	0, d
	jr	NZ, 00154$
	ld	d, -2 (ix)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sub	a, #0x78
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00154$
	ld	c, #0x00
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1166: if (!areaClear) break;
	ld	a, c
	or	a, a
	jr	Z, 00158$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1151: for(u8 i=0; i<14; i++) {
	inc	e
	jp	00208$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1168: if (!areaClear) return; // Wait!
	ld	a, c
	or	a, a
	jp	Z,00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1169: safeToKick = true;
	ld	-12 (ix), #0x01
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1172: if (safeToKick) {
	ld	a, -12 (ix)
	or	a, a
	jp	Z, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1174: u8 team = g_Players[g_GkAnimPlayerId].TeamId;
	ld	bc, (_g_GkAnimPlayerId)
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
	ld	de, #0x0009
	add	hl, de
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1178: u8 rnd = (g_FrameCounter * 17 + g_Ball.X * 3) % 64; // 0-63
	ld	a, (_g_FrameCounter+0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	hl, (#_g_Ball + 2)
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	ld	a, l
	and	a, #0x3f
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1193: if (team == TEAM_1) ty = FIELD_POS_Y_CENTER + dist;
	dec	c
	ld	a, #0x01
	jr	Z, 00495$
	xor	a, a
00495$:
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1180: if (targetId != NO_VALUE) {
	ld	a, -11 (ix)
	inc	a
	jp	Z,00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1181: tx = g_Players[targetId].X;
	ld	c, -11 (ix)
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
	ld	c,l
	ld	b,h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1182: ty = g_Players[targetId].Y;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1184: if (rnd & 1) tx += (rnd >> 2); else tx -= (rnd >> 2);
	ld	a, -2 (ix)
	rrca
	rrca
	and	a, #0x3f
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	-4 (ix), a
	ld	-3 (ix), l
	bit	0, -2 (ix)
	jr	Z, 00164$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	jp	00165$
00164$:
	ld	a, e
	sub	a, -4 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -3 (ix)
	ld	-8 (ix), e
	ld	-7 (ix), a
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1185: if (rnd & 2) ty += (rnd >> 2); else ty -= (rnd >> 2);
	bit	1, -2 (ix)
	jr	Z, 00167$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	jp	00168$
00167$:
	ld	a, c
	sub	a, -4 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -3 (ix)
	ld	-6 (ix), c
	ld	-5 (ix), a
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1187: if (tx < 60) tx = 60 + (rnd % 10);
	ld	a, -8 (ix)
	ld	b, -7 (ix)
	sub	a, #0x3c
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00170$
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x000a
	call	__modsint
	ld	hl, #0x003c
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1188: if (tx > 180) tx = 180 - (rnd % 10);
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	a, #0xb4
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00178$
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x000a
	call	__modsint
	ld	a, #0xb4
	sub	a, e
	ld	c, a
	sbc	a, a
	sub	a, d
	ld	-8 (ix), c
	ld	-7 (ix), a
	jp	00178$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1191: tx = FIELD_POS_X_CENTER + (rnd - 32);
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0x58
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1192: u8 dist = 10 + (rnd * 3) / 2; // Variable length (10-105px from center)
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	bit	7, -5 (ix)
	jr	Z, 00213$
	ld	a, -6 (ix)
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
00213$:
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	sra	b
	rr	c
	ld	-3 (ix), c
	ld	a, c
	add	a, #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1193: if (team == TEAM_1) ty = FIELD_POS_Y_CENTER + dist;
	ld	-3 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00174$
	ld	a, -6 (ix)
	add	a, #0xf3
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	jp	00178$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1194: else ty = FIELD_POS_Y_CENTER - dist;
	ld	a, #0xf3
	sub	a, -6 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-6 (ix), c
	ld	-5 (ix), a
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1185: if (rnd & 2) ty += (rnd >> 2); else ty -= (rnd >> 2);
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1198: if (team == TEAM_1) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00184$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1201: if (ty < FIELD_POS_Y_CENTER) ty = FIELD_POS_Y_CENTER + (rnd % 30);
	ld	a, -4 (ix)
	sub	a, #0xf3
	ld	a, -3 (ix)
	sbc	a, #0x00
	jr	NC, 00185$
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	de, #0x001e
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	a, -4 (ix)
	add	a, #0xf3
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	jp	00185$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1204: if (ty > FIELD_POS_Y_CENTER) ty = FIELD_POS_Y_CENTER - (rnd % 30);
	ld	a, #0xf3
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jr	NC, 00185$
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	de, #0x001e
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, #0xf3
	sub	a, -2 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -1 (ix)
	ld	-6 (ix), c
	ld	-5 (ix), a
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1208: if (tx < FIELD_BOUND_X_LEFT) tx = FIELD_BOUND_X_LEFT;
	ld	a, -8 (ix)
	ld	b, -7 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00187$
	ld	-8 (ix), #0x0a
	ld	-7 (ix), #0
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1209: if (tx > FIELD_BOUND_X_RIGHT) tx = FIELD_BOUND_X_RIGHT;
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00189$
	ld	-8 (ix), #0xec
	ld	-7 (ix), #0
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1212: Trampoline_VOID_16_P2(4, PerformShot, tx, ty);
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_PerformShot
	ld	a, #0x04
	call	_Trampoline_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1215: u8 dir = g_Players[g_GkAnimPlayerId].Direction;
	ld	bc, (_g_GkAnimPlayerId)
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
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	hl, #10
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1218: if (dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) 
	cp	a, #0x03
	jr	Z, 00195$
	cp	a, #0x02
	jr	Z, 00195$
	cp	a, #0x04
	jr	NZ, 00196$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1219: pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_RIGHT : PLAYER_POSE_TEAM2_RESTART_RIGHT;
	ld	e, #0xcb
	jp	00197$
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1220: else if (dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT)
	cp	a, #0x07
	jr	Z, 00190$
	cp	a, #0x08
	jr	Z, 00190$
	sub	a, #0x06
	jr	NZ, 00191$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1221: pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_LEFT : PLAYER_POSE_TEAM2_RESTART_LEFT;
	ld	e, #0x44
	jp	00197$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1223: pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_FRONT : PLAYER_POSE_TEAM2_RESTART_FRONT;
	ld	e, #0x45
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1225: g_Players[g_GkAnimPlayerId].PatternId = pose;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1226: g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
	ld	bc, (_g_GkAnimPlayerId)
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
	ld	bc, #0x0012
	add	hl, bc
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1228: g_Ball.StealCooldown = 30; 
	ld	hl, #(_g_Ball + 15)
	ld	(hl), #0x1e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1229: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1233: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1235: void UpdatePassTarget() {
;	---------------------------------
; Function UpdatePassTarget
; ---------------------------------
_UpdatePassTarget::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1237: if (g_MatchStatus != MATCH_IN_ACTION && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00102$
	sub	a, #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1238: return; 
	ret	NZ
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1241: u8 carrier = g_Ball.PossessionPlayerId;
	ld	a, (#_g_Ball + 6)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1243: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	inc	a
	jr	NZ, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1244: g_PassTargetPlayer = NO_VALUE;
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1245: return;
	ret
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1249: if (g_FrameCounter & 1) return;
	ld	a, (_g_FrameCounter+0)
	rrca
	ret	C
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1251: if (carrier != NO_VALUE) {
	ld	a, c
	inc	a
	jr	Z, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1252: g_PassTargetPlayer = GetBestPassTarget(carrier);
	ld	a, c
	call	_GetBestPassTarget
	ld	(_g_PassTargetPlayer+0), a
	ret
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1254: if (g_Ball.PassTargetPlayerId == NO_VALUE) g_PassTargetPlayer = NO_VALUE;
	ld	a, (#_g_Ball + 16)
	inc	a
	ret	NZ
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1256: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1258: u8 GetBestPassTarget(u8 passerId) {
;	---------------------------------
; Function GetBestPassTarget
; ---------------------------------
_GetBestPassTarget::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-32
	add	hl, sp
	ld	sp, hl
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1259: u8 bestTarget = NO_VALUE;
	ld	-32 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1260: i32 bestScore = 0;//-2100000000;
	xor	a, a
	ld	-31 (ix), a
	ld	-30 (ix), a
	ld	-29 (ix), a
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1261: u8 teamId = g_Players[passerId].TeamId;
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
	push	de
	pop	iy
	ld	a, 9 (iy)
	ld	-27 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1262: u8 dir = g_Players[passerId].Direction;
	push	de
	pop	iy
	ld	c, 10 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1263: i16 px = (i16)g_Players[passerId].X;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), b
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1264: i16 py = (i16)g_Players[passerId].Y;
	ld	l, e
	ld	h, d
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-24 (ix), b
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1265: bool isGK = (g_Players[passerId].Role == PLAYER_ROLE_GOALKEEPER);
	push	de
	pop	iy
	ld	a, 13 (iy)
	ld	-22 (ix), a
	or	a, a
	ld	a, #0x01
	jr	Z, 00291$
	xor	a, a
00291$:
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1268: i16 dirX = 0, dirY = 0;
	xor	a, a
	ld	-20 (ix), a
	ld	-19 (ix), a
	xor	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1271: if (dir == DIRECTION_NONE) dir = g_Players[passerId].PreviousDirection;
	ld	a, c
	or	a, a
	jr	NZ, 00102$
	ld	hl, #11
	add	hl, de
	ld	c, (hl)
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1273: if (dir == DIRECTION_UP) dirY = -100;
	ld	a, c
	dec	a
	jr	NZ, 00128$
	ld	-18 (ix), #0x9c
	ld	-17 (ix), #0xff
	jp	00187$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1274: else if (dir == DIRECTION_DOWN) dirY = 100;
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00125$
	ld	-18 (ix), #0x64
	ld	-17 (ix), #0
	jp	00187$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1275: else if (dir == DIRECTION_LEFT) dirX = -100;
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00122$
	ld	-20 (ix), #0x9c
	ld	-19 (ix), #0xff
	jp	00187$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1276: else if (dir == DIRECTION_RIGHT) dirX = 100;
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00119$
	ld	-20 (ix), #0x64
	ld	-19 (ix), #0
	jp	00187$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1277: else if (dir == DIRECTION_UP_RIGHT) { dirX = 70; dirY = -70; }
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00116$
	ld	-20 (ix), #0x46
	xor	a, a
	ld	-19 (ix), a
	ld	-18 (ix), #0xba
	ld	-17 (ix), #0xff
	jp	00187$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1278: else if (dir == DIRECTION_UP_LEFT) { dirX = -70; dirY = -70; }
	ld	a, c
	sub	a, #0x08
	jr	NZ, 00113$
	ld	-20 (ix), #0xba
	ld	-19 (ix), #0xff
	ld	-18 (ix), #0xba
	ld	-17 (ix), #0xff
	jp	00187$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1279: else if (dir == DIRECTION_DOWN_RIGHT) { dirX = 70; dirY = 70; }
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00110$
	ld	-20 (ix), #0x46
	ld	-19 (ix), #0
	ld	-18 (ix), #0x46
	ld	-17 (ix), #0
	jp	00187$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1280: else if (dir == DIRECTION_DOWN_LEFT) { dirX = -70; dirY = 70; }
	ld	a, c
	sub	a, #0x06
	jr	NZ, 00107$
	ld	-20 (ix), #0xba
	ld	-19 (ix), #0xff
	ld	-18 (ix), #0x46
	ld	-17 (ix), #0
	jp	00187$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1282: if (teamId == TEAM_1) dirY = -100; 
	ld	a, -27 (ix)
	dec	a
	jr	NZ, 00104$
	ld	-18 (ix), #0x9c
	ld	-17 (ix), #0xff
	jp	00187$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1283: else dirY = 100; 
	ld	-18 (ix), #0x64
	ld	-17 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1286: for(i=0; i<14; i++) {
00187$:
	ld	-1 (ix), #0x00
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1291: if(g_Players[i].TeamId != teamId) continue;
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	bc,#9
	add	hl,bc
	ld	a,-27 (ix)
	sub	a,(hl)
	jp	NZ,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1292: if(i == passerId) continue;
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jp	Z,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1294: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue; 
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	hl, #13
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1297: if (g_Players[i].Y < g_FieldCurrentYPosition || g_Players[i].Y > (g_FieldCurrentYPosition + 220)) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, c
	ld	d, b
	ld	hl, (_g_FieldCurrentYPosition)
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	C, 00155$
	ld	iy, #0x00dc
	push	bc
	ld	bc, (_g_FieldCurrentYPosition)
	add	iy, bc
	pop	bc
	push	iy
	pop	hl
	xor	a, a
	sbc	hl, de
	jp	C, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1301: dx = (i16)g_Players[i].X - px;
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, -26 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -25 (ix)
	ld	-6 (ix), e
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1302: dy = (i16)g_Players[i].Y - py;
	ld	a, c
	sub	a, -24 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -23 (ix)
	ld	-4 (ix), c
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1306: adx = (dx < 0) ? -dx : dx;
	ld	b, -5 (ix)
	bit	7, b
	jr	Z, 00160$
	xor	a, a
	sub	a, -6 (ix)
	ld	-8 (ix), a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-7 (ix), a
	jp	00161$
00160$:
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
00161$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1307: ady = (dy < 0) ? -dy : dy;
	ld	d, -3 (ix)
	bit	7, d
	jr	Z, 00162$
	xor	a, a
	sub	a, -4 (ix)
	ld	e, a
	sbc	a, a
	sub	a, -3 (ix)
	jp	00163$
00162$:
	ld	e, -4 (ix)
	ld	a, -3 (ix)
00163$:
	ld	-16 (ix), e
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1308: if (adx < 32 && ady < 32) continue;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x20
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00140$
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	a, e
	sub	a, #0x20
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00155$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1311: if (isGK && (adx + ady) < 160) continue; // Increased min distance (force long ball)
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00143$
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	add	hl, bc
	ld	de, #0x80a0
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jp	C, 00155$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1316: if (((i32)dx*(i32)dx + (i32)dy*(i32)dy) > 62500) continue;
	ld	a, -6 (ix)
	ld	-14 (ix), a
	ld	a, -5 (ix)
	ld	-13 (ix), a
	rlca
	sbc	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	a, -4 (ix)
	ld	-10 (ix), a
	ld	a, -3 (ix)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1314: if (g_Players[passerId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -22 (ix)
	or	a, a
	jr	NZ, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1316: if (((i32)dx*(i32)dx + (i32)dy*(i32)dy) > 62500) continue;
	push	bc
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mullong
	pop	af
	pop	af
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mullong
	pop	af
	pop	af
	pop	bc
	ld	a, e
	add	a, -6 (ix)
	ld	e, a
	ld	a, d
	adc	a, -5 (ix)
	ld	d, a
	ld	a, l
	adc	a, -4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x24
	cp	a, e
	ld	a, #0xf4
	sbc	a, d
	ld	a, #0x00
	sbc	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00313$
	xor	a, #0x80
00313$:
	jp	M, 00155$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1319: dot = ((i32)dx * dirX) + ((i32)dy * dirY);
	ld	e, -20 (ix)
	ld	a, -19 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	push	hl
	push	de
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mullong
	pop	af
	pop	af
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	bc
	ld	e, -18 (ix)
	ld	a, -17 (ix)
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	push	hl
	push	de
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mullong
	pop	af
	pop	af
	pop	bc
	ld	a, e
	add	a, -6 (ix)
	ld	e, a
	ld	a, d
	adc	a, -5 (ix)
	ld	d, a
	ld	a, l
	adc	a, -4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1322: if (dot <= 0) {
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jp	PO, 00314$
	xor	a, #0x80
00314$:
	jp	P, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1333: score = dot - ((i32)(adx + ady) * 60); 
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	add	hl, bc
	ld	-10 (ix), l
	ld	a, h
	ld	-9 (ix), a
	rlca
	sbc	a, a
;	spillPairReg hl
;	spillPairReg hl
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	l, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x003c
	ld	hl, #0x0000
	call	__mullong
	pop	af
	pop	af
	ld	a, -6 (ix)
	sub	a, e
	ld	c, a
	ld	a, -5 (ix)
	sbc	a, d
	ld	b, a
	ld	a, -4 (ix)
	sbc	a, l
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, h
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1335: if (isGK) {
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00152$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1337: score = dot + ((i32)(adx + ady) * 10); 
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x000a
	ld	hl, #0x0000
	call	__mullong
	pop	af
	pop	af
	ld	a, e
	add	a, -6 (ix)
	ld	c, a
	ld	a, d
	adc	a, -5 (ix)
	ld	b, a
	ld	a, l
	adc	a, -4 (ix)
	ld	e, a
	ld	a, h
	adc	a, -3 (ix)
	ld	d, a
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1340: if (score > bestScore) {
	ld	a, -31 (ix)
	sub	a, c
	ld	a, -30 (ix)
	sbc	a, b
	ld	a, -29 (ix)
	sbc	a, e
	ld	a, -28 (ix)
	sbc	a, d
	jp	PO, 00315$
	xor	a, #0x80
00315$:
	jp	P, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1341: bestScore = score;
	ld	-31 (ix), c
	ld	-30 (ix), b
	ld	-29 (ix), e
	ld	-28 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1342: bestTarget = i;
	ld	a, -1 (ix)
	ld	-32 (ix), a
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1286: for(i=0; i<14; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	C, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1378: return bestTarget;
	ld	a, -32 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1379: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1381: void TickBallCollision(){
;	---------------------------------
; Function TickBallCollision
; ---------------------------------
_TickBallCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-19
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1382: if(g_MatchStatus!=MATCH_IN_ACTION){
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1383: return;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1387: if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jp	NZ,00174$
	sub	a, #0x0d
	jp	Z,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1388: return;
	jp	00104$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1392: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	inc	a
	jr	Z, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1393: if (g_Ball.PossessionTimer < 255) g_Ball.PossessionTimer++;
	ld	bc, #_g_Ball + 28
	ld	a, (bc)
	cp	a, #0xff
	jr	NC, 00108$
	inc	a
	ld	(bc), a
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1397: if (g_Ball.StealCooldown > 0) {
	ld	a, (#(_g_Ball + 15) + 0)
	or	a, a
	jr	Z, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1398: g_Ball.StealCooldown--;
	dec	a
	ld	(#(_g_Ball + 15)),a
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1403: if (g_Ball.PossessionPlayerId == NO_VALUE) { // Ball in air
	ld	hl, #(_g_Ball + 6)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1406: if (g_Ball.ShotActive == 1) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1407: i16 diffStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1403: if (g_Ball.PossessionPlayerId == NO_VALUE) { // Ball in air
	inc	c
	jr	Z, 00348$
00348$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1413: for(u8 i=0; i<14; i++){
	ld	-19 (ix), #0x00
	ld	-1 (ix), #0x00
00173$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1414: if(g_Players[i].Status == PLAYER_STATUS_NONE) continue;
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
	ld	-18 (ix), l
	ld	-17 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1489: g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock it
	ld	a, -18 (ix)
	add	a, #0x12
	ld	-16 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1414: if(g_Players[i].Status == PLAYER_STATUS_NONE) continue;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jp	Z, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1415: if(g_Ball.PossessionPlayerId == i) continue; // Skip self
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jp	Z,00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1420: u8 hitDist = 14;
	ld	-14 (ix), #0x0e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1461: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -18 (ix)
	add	a, #0x0d
	ld	-13 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1421: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1422: u8 countryId = (g_Players[i].TeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	dec	a
	jr	NZ, 00176$
	ld	a, (_g_Team1PaletteId+0)
	jp	00177$
00176$:
	ld	a, (_g_Team2PaletteId+0)
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1423: const TeamStats* stats = GetTeamStats(countryId);
	call	_GetTeamStats
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1424: if (g_Ball.ShotActive) hitDist = stats->GkSkill; 
	ld	a, (#(_g_Ball + 27) + 0)
	or	a, a
	jr	Z, 00126$
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	ld	-14 (ix), a
	jp	00129$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1425: else hitDist = 14; 
	ld	-14 (ix), #0x0e
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1429: u16 diffX = (g_Ball.X > g_Players[i].X) ? (g_Ball.X - g_Players[i].X) : (g_Players[i].X - g_Ball.X);
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00178$
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-2 (ix), a
	jp	00179$
00178$:
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-2 (ix), a
00179$:
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1430: u16 diffY = (g_Ball.Y > g_Players[i].Y) ? (g_Ball.Y - g_Players[i].Y) : (g_Players[i].Y - g_Ball.Y);
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC, 00180$
	ld	a, -5 (ix)
	sub	a, c
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, b
	ld	-2 (ix), a
	jp	00181$
00180$:
	ld	a, c
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, b
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00181$:
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1432: if(diffX < hitDist && diffY < hitDist){ 
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	a, -7 (ix)
	sub	a, c
	ld	a, -6 (ix)
	sbc	a, b
	jp	NC, 00170$
	xor	a, a
	sbc	hl, bc
	jp	NC, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1433: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	hl, #(_g_Ball + 6)
	ld	c, (hl)
	ld	a, c
	inc	a
	jp	NZ,00165$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1452: if (g_Ball.ShotActive == 1 || g_Ball.PassTargetPlayerId != NO_VALUE) {
	ld	a, (#(_g_Ball + 27) + 0)
	ld	-2 (ix), a
	dec	a
	jr	Z, 00136$
	ld	a, (#(_g_Ball + 16) + 0)
	inc	a
	jr	Z, 00137$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1453: i16 dxStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, (#(_g_Ball + 17) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1454: i16 dyStart = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, (#_g_Ball + 19)
	ld	a, e
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1455: if (dxStart < 0) dxStart = -dxStart;
	ld	d, b
	bit	7, d
	jr	Z, 00131$
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1456: if (dyStart < 0) dyStart = -dyStart;
	ld	d, h
	bit	7, d
	jr	Z, 00133$
	xor	a, a
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1457: if ((dxStart + dyStart) < 24) continue; 
	add	hl, bc
	ld	de, #0x8018
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jp	C, 00170$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1461: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1500: g_Ball.Size = 2;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1461: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (hl)
	or	a, a
	jp	NZ, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1463: bool wasShot = (g_Ball.ShotActive != 0);
	ld	a, -2 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1477: u8 team = g_Players[i].TeamId;
	ld	a, -18 (ix)
	add	a, #0x09
	ld	-4 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1466: if (g_Ball.ShotActive) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1467: i16 signedDiffX = (i16)g_Ball.X - (i16)g_Players[i].X;
	ld	a, -11 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -9 (ix)
	ld	-12 (ix), a
	ld	a, -8 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	sub	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	sbc	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1470: if (signedDiffX >= -5 && signedDiffX <= 5) {
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, #0x05
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jp	PO, 00356$
	xor	a, #0x80
00356$:
	rlca
	and	a,#0x01
	ld	c, a
	ld	a, -6 (ix)
	sub	a, #0xfb
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00149$
	bit	0, c
	jr	Z, 00153$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1477: u8 team = g_Players[i].TeamId;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1481: if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_RIGHT;
	dec	a
	ld	a, #0x01
	jr	Z, 00358$
	xor	a, a
00358$:
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1480: if (signedDiffX > 5) { // Ball to Right
	ld	-2 (ix), c
	ld	a, c
	or	a, a
	jr	Z, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1481: if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_RIGHT;
	ld	a, -5 (ix)
	or	a, a
	jr	Z, 00140$
	ld	-2 (ix), #0x3f
	jp	00147$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1482: else divePose = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
	ld	-2 (ix), #0x2f
	jp	00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1484: if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_LEFT;
	ld	a, -5 (ix)
	or	a, a
	jr	Z, 00143$
	ld	-2 (ix), #0xa0
	jp	00147$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1485: else divePose = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
	ld	-2 (ix), #0xa0
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1488: g_Players[i].PatternId = divePose;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1489: g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock it
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1493: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1494: Trampoline_VOID_P2(2,GoalkeeperWithBall,g_Players[i].TeamId, !wasShot); 
	ld	a, -1 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	de, #_GoalkeeperWithBall
	ld	a, #0x02
	call	_Trampoline_VOID_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1495: if (!wasShot) g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00155$
	ld	hl, #_g_GkIsGroundKick
	ld	(hl), #0x00
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1498: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1499: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1500: g_Ball.Size = 2;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1502: return; // Stop checking
	jp	00174$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1506: g_Ball.PassTargetPlayerId = NO_VALUE; 
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1507: g_Ball.ShotActive = 0; 
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1508: g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1509: g_Ball.Size = 1; // On feet = small
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1510: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1511: g_Players[i].Status = PLAYER_STATUS_HAS_BALL;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1512: return; // Stop checking
	jp	00174$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1518: if (g_Ball.StealCooldown > 0) continue;
	ld	a, (#(_g_Ball + 15) + 0)
	or	a, a
	jr	NZ, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1520: u8 currentOwner = g_Ball.PossessionPlayerId;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1523: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1477: u8 team = g_Players[i].TeamId;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	de, #0x0009
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1523: if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, b
	or	a, a
	jr	NZ, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1524: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
	push	hl
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
	pop	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1525: Trampoline_VOID_P2(2,GoalkeeperWithBall,g_Players[i].TeamId, 1); 
	ld	a, (hl)
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	de, #_GoalkeeperWithBall
	ld	a, #0x02
	call	_Trampoline_VOID_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1526: g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
	ld	hl, #_g_GkIsGroundKick
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1529: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1530: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1531: g_Ball.Size = 2;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1532: return;
	jp	00174$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1535: if (g_Players[i].TeamId != g_Players[currentOwner].TeamId) {
	ld	e, (hl)
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
	ld	c, (hl)
	ld	a, e
	sub	a, c
	jr	Z, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1537: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,i);
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1539: g_Ball.PassTargetPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 16)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1540: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1541: return;
	jp	00174$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1413: for(u8 i=0; i<14; i++){
	inc	-1 (ix)
	ld	a, -1 (ix)
	ld	-19 (ix), a
	jp	00173$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1546: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1548: void PrintTeamName(u8 x, u8 teamPaletteId) {
;	---------------------------------
; Function PrintTeamName
; ---------------------------------
_PrintTeamName::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1553: switch (teamPaletteId) {
	ld	a, #0x05
	sub	a, c
	jr	C, 00107$
	ld	b, #0x00
	ld	hl, #00127$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00127$:
	jp	00101$
	jp	00106$
	jp	00103$
	jp	00102$
	jp	00104$
	jp	00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1555: case TEAM_AUS: pName = "AUS"; break;
00101$:
	ld	de, #___str_5
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1556: case TEAM_BRA: pName = "BRA"; break;
00102$:
	ld	de, #___str_6
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1557: case TEAM_ITA: pName = "ITA"; break;
00103$:
	ld	de, #___str_7
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1558: case TEAM_FRA: pName = "FRA"; break;
00104$:
	ld	de, #___str_8
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1559: case TEAM_GBR: pName = "GBR"; break;
00105$:
	ld	de, #___str_9
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1560: case TEAM_GER: pName = "GER"; break;
00106$:
	ld	de, #___str_10
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1561: default:       pName = "   "; break;
00107$:
	ld	de, #___str_11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1562: }
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1564: V9990_PrintLayerAStringAtPos(x, 0, pName);
	push	de
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_V9990_PrintLayerAStringAtPos
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1566: g_History1[0] = pName[0];
	ld	a, (de)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1567: g_History1[1] = pName[1];
	ld	c, e
	ld	b, d
	inc	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1568: g_History1[2] = pName[2];
	inc	de
	inc	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1565: if(x==0){
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1566: g_History1[0] = pName[0];
	ld	hl, #_g_History1
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1567: g_History1[1] = pName[1];
	inc	hl
	ld	a, (bc)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1568: g_History1[2] = pName[2];
	ld	bc, #_g_History1 + 2
	ld	a, (de)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1569: g_History1[3] = ':';
	ld	hl, #(_g_History1 + 3)
	ld	(hl), #0x3a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1570: g_History1[4] = ' ';
	ld	hl, #(_g_History1 + 4)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1571: g_History1[5] = ' ';
	ld	hl, #(_g_History1 + 5)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1572: g_History1[6] = ' ';
	ld	hl, #(_g_History1 + 6)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1573: g_History1[7] = ' ';
	ld	hl, #(_g_History1 + 7)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1574: g_History1[8] = ' ';
	ld	hl, #(_g_History1 + 8)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1575: g_History1[9] = ' ';
	ld	hl, #(_g_History1 + 9)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1576: g_History1[10] = '\0';
	ld	hl, #(_g_History1 + 10)
	ld	(hl), #0x00
	jp	00114$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1579: g_History2[0] = pName[0];
	ld	hl, #_g_History2
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1580: g_History2[1] = pName[1];
	ld	a, (bc)
	ld	(#(_g_History2 + 1)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1581: g_History2[2] = pName[2];
	ld	a, (de)
	ld	(#(_g_History2 + 2)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1582: g_History2[3] = ':';
	ld	hl, #(_g_History2 + 3)
	ld	(hl), #0x3a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1583: g_History2[4] = ' ';
	ld	hl, #(_g_History2 + 4)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1584: g_History2[5] = ' ';
	ld	hl, #(_g_History2 + 5)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1585: g_History2[6] = ' ';
	ld	hl, #(_g_History2 + 6)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1586: g_History2[7] = ' ';
	ld	hl, #(_g_History2 + 7)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1587: g_History2[8] = ' ';
	ld	hl, #(_g_History2 + 8)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1588: g_History2[9] = ' ';
	ld	hl, #(_g_History2 + 9)
	ld	(hl), #0x20
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1589: g_History2[10] = '\0';
	ld	hl, #(_g_History2 + 10)
	ld	(hl), #0x00
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1591: }
	ld	sp, ix
	pop	ix
	ret
___str_5:
	.ascii "AUS"
	.db 0x00
___str_6:
	.ascii "BRA"
	.db 0x00
___str_7:
	.ascii "ITA"
	.db 0x00
___str_8:
	.ascii "FRA"
	.db 0x00
___str_9:
	.ascii "GBR"
	.db 0x00
___str_10:
	.ascii "GER"
	.db 0x00
___str_11:
	.ascii "   "
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1593: char *GetNumberString(u16 value)
;	---------------------------------
; Function GetNumberString
; ---------------------------------
_GetNumberString::
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1597: if (value < 10) {
	ld	c, e
	ld	b, d
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1598: str[0] = '0' + value;
	ld	bc, #_GetNumberString_str_65536_1622+0
	ld	a, e
	add	a, #0x30
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1599: str[1] = '\0';
	inc	bc
	xor	a, a
	ld	(bc), a
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1601: str[0] = '0' + (value / 10);
	push	bc
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	pop	bc
	ld	a, e
	add	a, #0x30
	ld	(#_GetNumberString_str_65536_1622),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1602: str[1] = '0' + (value % 10);
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__moduint
	ld	a, e
	add	a, #0x30
	ld	(#(_GetNumberString_str_65536_1622 + 1)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1603: str[2] = '\0';
	ld	hl, #(_GetNumberString_str_65536_1622 + 2)
	ld	(hl), #0x00
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1606: return str;
	ld	de, #_GetNumberString_str_65536_1622
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1607: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1609: void ShowHeaderInfo(){
;	---------------------------------
; Function ShowHeaderInfo
; ---------------------------------
_ShowHeaderInfo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1612: u8 pos1 = (g_Team1Score >= 10) ? 4 : 5;
	ld	a, (_g_Team1Score+0)
	sub	a, #0x0a
	jr	C, 00106$
	ld	bc, #0x0004
	jp	00107$
00106$:
	ld	bc, #0x0005
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1613: u8 pos2 = (g_Team2Score >= 10) ? 9 : 10;
	ld	a, (_g_Team2Score+0)
	sub	a, #0x0a
	jr	C, 00108$
	ld	de, #0x0009
	jp	00109$
00108$:
	ld	de, #0x000a
00109$:
	ld	-1 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1615: PrintTeamName(0, g_Team1PaletteId);
	push	bc
	ld	a, (_g_Team1PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_PrintTeamName
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1617: V9990_PrintLayerAStringAtPos(pos1, 0, GetNumberString(g_Team1Score));
	ld	a, (_g_Team1Score+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	call	_GetNumberString
	pop	bc
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1618: V9990_PrintLayerAStringAtPos(7, 0, "-");
	ld	hl, #___str_12
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1619: V9990_PrintLayerAStringAtPos(pos2, 0, GetNumberString(g_Team2Score));
	ld	a, (_g_Team2Score+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1621: PrintTeamName(12, g_Team2PaletteId);
	ld	a, (_g_Team2PaletteId+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_PrintTeamName
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1622: u8 minutes=g_SecondsToEndOfMatch / 60;
	ld	a, (_g_SecondsToEndOfMatch+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x003c
	call	__divsint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1623: u8 seconds=g_SecondsToEndOfMatch - minutes*60;
	ld	a, e
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (_g_SecondsToEndOfMatch+0)
	sub	a, c
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1624: V9990_PrintLayerAStringAtPos(28,0,GetNumberString(minutes));
	ld	d, #0x00
	push	bc
	ex	de, hl
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1c
	call	_V9990_PrintLayerAStringAtPos
	ld	hl, #___str_13
	push	hl
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1d
	call	_V9990_PrintLayerAStringAtPos
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1627: V9990_PrintLayerAStringAtPos(30,0,GetNumberString(seconds));
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1626: if(seconds>=10){
	ld	a, c
	sub	a, #0x0a
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1627: V9990_PrintLayerAStringAtPos(30,0,GetNumberString(seconds));
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1e
	call	_V9990_PrintLayerAStringAtPos
	jp	00104$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1630: V9990_PrintLayerAStringAtPos(30,0,"0");
	ld	bc, #___str_14+0
	push	hl
	push	bc
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1e
	call	_V9990_PrintLayerAStringAtPos
	pop	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1631: V9990_PrintLayerAStringAtPos(31,0,GetNumberString(seconds));
	call	_GetNumberString
	push	de
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x1f
	call	_V9990_PrintLayerAStringAtPos
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1633: }
	inc	sp
	pop	ix
	ret
___str_12:
	.ascii "-"
	.db 0x00
___str_13:
	.ascii ":"
	.db 0x00
___str_14:
	.ascii "0"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1635: void SetTeamsPresentationSpritesPosition(){
;	---------------------------------
; Function SetTeamsPresentationSpritesPosition
; ---------------------------------
_SetTeamsPresentationSpritesPosition::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1636: g_MatchStatus=MATCH_NOT_STARTED;
	ld	hl, #_g_MatchStatus
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1637: for(u8 i=0;i<7;i++){
	ld	(hl), #0x00
	ld	c, (hl)
00105$:
	ld	a, c
	sub	a, #0x07
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1638: g_Players[i].Y=230;
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
	ex	(sp), hl
	pop	hl
	push	hl
	ld	(hl), #0xe6
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1639: g_Players[i].X=72+i*20;
	ld	a, -4 (ix)
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, c
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	de, #0x0048
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1640: g_Players[i].PatternId=PLAYER_POSE_FRONT;
	pop	hl
	push	hl
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1641: g_Players[i].TeamId=TEAM_2;
	pop	hl
	push	hl
	ld	de, #0x0009
	add	hl, de
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1637: for(u8 i=0;i<7;i++){
	inc	c
	jp	00105$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1644: for(u8 i=7;i<14;i++){
	ld	c, #0x07
00108$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1645: g_Players[i].Y=250;
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
	ld	e, l
	ld	d, h
	ld	(hl), #0xfa
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1646: g_Players[i].X=72+(i-7)*20;
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
	ld	a, c
	ld	b, #0x00
	add	a, #0xf9
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	a, l
	add	a, #0x48
	ld	b, a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), b
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1647: g_Players[i].PatternId=PLAYER_POSE_BACK;
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1648: g_Players[i].TeamId=TEAM_1;
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1644: for(u8 i=7;i<14;i++){
	inc	c
	jp	00108$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1650: g_Players[REFEREE].Y=FIELD_POS_Y_CENTER;
	ld	hl, #0x00f3
	ld	((_g_Players + 294)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1651: g_Players[REFEREE].X=30;
	ld	l, #0x1e
	ld	((_g_Players + 296)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1652: g_Players[REFEREE].PatternId=PLAYER_POSE_RIGHT;
	ld	hl, #(_g_Players + 302)
	ld	(hl), #0x9d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1653: g_Players[REFEREE].TeamId=REFEREE;
	ld	hl, #(_g_Players + 303)
	ld	(hl), #0x0e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1654: g_Players[REFEREE].LastPose=0;
	ld	hl, #(_g_Players + 306)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1655: g_Players[REFEREE].Direction=DIRECTION_RIGHT;
	ld	hl, #(_g_Players + 304)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1656: g_Players[REFEREE].Role=NO_VALUE;
	ld	hl, #(_g_Players + 307)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1657: g_Players[REFEREE].Status=PLAYER_STATUS_NONE;
	ld	hl, #0x0000
	ld	((_g_Players + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1658: ResetPlayersInfo();
	call	_ResetPlayersInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1659: SetPlayerTarget(REFEREE); 
	ld	a, #0x0e
	call	_SetPlayerTarget
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1667: for(u8 i=0;i<14;i++){
	ld	c, #0x00
00111$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1668: g_Players[i].AiTickCounter=0;
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
	ld	hl, #0x0014
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1669: g_Players[i].Role = k_PlayerRoles[i % 7];
	ld	hl, #0x000d
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0007
	call	__modsint
	pop	bc
	ld	hl, #_SetTeamsPresentationSpritesPosition_k_PlayerRoles_65537_1634
	add	hl, de
	ld	a, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1667: for(u8 i=0;i<14;i++){
	inc	c
	jp	00111$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1671: g_Ball.X=FIELD_POS_X_CENTER;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1672: g_Ball.Y=FIELD_POS_Y_CENTER;
	ld	l, #0xf3
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1673: g_Ball.PreviousY=g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1674: ResetBallInfo(true);
	ld	a, #0x01
	call	_ResetBallInfo
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1675: }
	ld	sp, ix
	pop	ix
	ret
_SetTeamsPresentationSpritesPosition_k_PlayerRoles_65537_1634:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1677: void ResetBallInfo(bool resetPossessionPlayer){
;	---------------------------------
; Function ResetBallInfo
; ---------------------------------
_ResetBallInfo::
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1678: g_Ball.PreviousY=g_Ball.Y;
	ld	de, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1679: g_Ball.KickMoveState=NO_VALUE;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1680: g_Ball.Size=1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1681: g_Ball.Direction=DIRECTION_NONE;
	ld	hl, #(_g_Ball + 5)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1682: if(resetPossessionPlayer){
	ld	a, c
	or	a, a
	ret	Z
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1683: g_Ball.PossessionPlayerId=NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1685: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1687: void SetPlayerTarget(u8 playerId){
;	---------------------------------
; Function SetPlayerTarget
; ---------------------------------
_SetPlayerTarget::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-15
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1688: if(g_FieldScrollingActionInProgress!=NO_VALUE && g_MatchStatus!=MATCH_BEFORE_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	dec	a
	ld	a, #0x01
	jr	Z, 00188$
	xor	a, a
00188$:
	ld	-2 (ix), a
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	Z, 00102$
	bit	0, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1689: return;
	jp	Z,00121$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1691: switch(g_MatchStatus){
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1713: if(g_Players[playerId].TeamId==REFEREE){
	ld	bc, #_g_Players+0
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	push	de
	pop	iy
	ld	a, 9 (iy)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1715: g_Players[playerId].TargetX=FIELD_POS_X_CENTER - 30; 
	ld	hl, #0x0010
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1716: g_Players[playerId].TargetY=FIELD_POS_Y_CENTER - 40; 
	ld	hl, #0x000e
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1713: if(g_Players[playerId].TeamId==REFEREE){
	ld	a, -13 (ix)
	sub	a, #0x0e
	jr	NZ, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1715: g_Players[playerId].TargetX=FIELD_POS_X_CENTER - 30; 
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1716: g_Players[playerId].TargetY=FIELD_POS_Y_CENTER - 40; 
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0xcb
	inc	hl
	ld	(hl), #0x00
	jp	00121$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1719: u8 role = g_Players[playerId].Role;
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1720: if (role > 6) role = 0; // Safety
	ld	a, #0x06
	sub	a, -8 (ix)
	jr	NC, 00106$
	ld	-8 (ix), #0x00
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1722: bool isTeam1 = (g_Players[playerId].TeamId == TEAM_1);
	ld	a, -13 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00193$
	xor	a, a
00193$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1725: u16 tx = k_KO_X[role];
	ld	bc, #_SetPlayerTarget_k_KO_X_196608_1644+0
	ld	l, -8 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1726: u16 ty = isTeam1 ? k_KO_Y_T1[role] : k_KO_Y_T2[role];
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	sla	-3 (ix)
	rl	-2 (ix)
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00123$
	ld	bc, #_SetPlayerTarget_k_KO_Y_T1_196608_1644+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	jp	00124$
00123$:
	ld	a, -3 (ix)
	add	a, #<(_SetPlayerTarget_k_KO_Y_T2_196608_1644)
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #>(_SetPlayerTarget_k_KO_Y_T2_196608_1644)
	ld	b, a
	ld	a, (bc)
	ld	-15 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-14 (ix), a
00124$:
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1729: if (!isTeam1 && role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00108$
	ld	a, -8 (ix)
	sub	a, #0x04
	jr	NZ, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1730: tx = FIELD_POS_X_RIGHT - 116; 
	ld	-6 (ix), #0x52
	ld	-5 (ix), #0
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1734: if ((role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) &&
	ld	a, -8 (ix)
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00198$
	xor	a, a
00198$:
	ld	-2 (ix), a
	or	a, a
	jr	NZ, 00116$
	ld	a, -8 (ix)
	sub	a, #0x04
	jr	NZ, 00114$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1735: g_RestartKickTeamId == g_Players[playerId].TeamId) 
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, -13 (ix)
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1737: ty = isTeam1 ? FIELD_POS_Y_CENTER : (FIELD_POS_Y_CENTER - 10);
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00125$
	ld	-4 (ix), #0xf3
	ld	-3 (ix), #0
	jp	00126$
00125$:
	ld	-4 (ix), #0xe9
	ld	-3 (ix), #0
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1738: if (role == PLAYER_ROLE_LEFT_HALFFIELDER) tx = FIELD_POS_X_CENTER - 7;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00111$
	ld	-6 (ix), #0x71
	ld	-5 (ix), #0
	jp	00114$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1739: else tx = FIELD_POS_X_CENTER + 7;
	ld	-6 (ix), #0x7f
	ld	-5 (ix), #0
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1742: g_Players[playerId].TargetX = tx;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1743: g_Players[playerId].TargetY = ty;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1747: }
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1748: }
	ld	sp, ix
	pop	ix
	ret
_SetPlayerTarget_k_KO_X_196608_1644:
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0xc6	; 198
	.db #0x8c	; 140
	.db #0x62	; 98	'b'
	.db #0x28	; 40
	.db #0xc6	; 198
_SetPlayerTarget_k_KO_Y_T1_196608_1644:
	.dw #0x01a8
	.dw #0x0176
	.dw #0x0176
	.dw #0x0144
	.dw #0x0144
	.dw #0x011c
	.dw #0x011c
_SetPlayerTarget_k_KO_Y_T2_196608_1644:
	.dw #0x0032
	.dw #0x0082
	.dw #0x0082
	.dw #0x00b4
	.dw #0x00b4
	.dw #0x00dc
	.dw #0x00dc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1750: void ShowField(){
;	---------------------------------
; Function ShowField
; ---------------------------------
_ShowField::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1752: u16 tileId=0;
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1754: for (u8 y=0;y<64;y++){
	ld	-2 (ix), #0x00
00116$:
	ld	a, -2 (ix)
	sub	a, #0x40
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1755: for (u8 x=0;x<32;x++){
	ld	-1 (ix), #0x00
00113$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NC, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1756: V9_Poke16(V9_CellAddrP1B(x,y), tileId++);
	inc	sp
	inc	sp
	push	bc
	inc	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1437: inline u32 V9_CellAddrP1B(u8 x, u8 y) { return V9_P1_PNT_B + (((64 * y) + x) * 2); }
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -1 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xe0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00184$
	inc	d
00184$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	pop	hl
	push	hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1755: for (u8 x=0;x<32;x++){
	inc	-1 (ix)
	jp	00113$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1754: for (u8 y=0;y<64;y++){
	inc	-2 (ix)
	jp	00116$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1760: for (u8 y=0;y<64;y++){
	ld	c, #0x00
00122$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1761: for (u8 x=0;x<32;x++){
	ld	b, #0x00
00119$:
	ld	a, b
	sub	a, #0x20
	jr	NC, 00123$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, b
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00185$
	inc	d
00185$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1761: for (u8 x=0;x<32;x++){
	inc	b
	jp	00119$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1760: for (u8 y=0;y<64;y++){
	inc	c
	jp	00122$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1765: for (u8 x=0;x<64;x++){
	ld	c, #0x00
00125$:
	ld	a, c
	sub	a, #0x40
	jr	NC, 00127$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: inline u32 V9_CellAddrP1A(u8 x, u8 y) { return V9_P1_PNT_A + (((64 * y) + x) * 2); }
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, #0x07
	ld	e, a
	jr	NC, 00186$
	inc	d
00186$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0020
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1765: for (u8 x=0;x<64;x++){
	inc	c
	jp	00125$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s4_b1.c:1768: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG4
	.area _INITIALIZER
	.area _CABS (ABS)
