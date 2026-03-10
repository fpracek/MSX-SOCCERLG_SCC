;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s7_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _V9990_PrintLayerAStringAtPos
	.globl _IsJoystickTriggerPressed
	.globl _PerformPass
	.globl _SetPlayerBallPossession
	.globl _GetPlayerIdByRole
	.globl _GetClosestPlayerToBall
	.globl _GetJoystickDirection
	.globl _Math_Abs32
	.globl _V9990_ClearTextFromLayerA
	.globl _PlayPCM
	.globl _CallFnc_U8_P2
	.globl _CallFnc_U8
	.globl _CallFnc_VOID_P1
	.globl _V9_Poke16_CurrentAddr
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
	.globl _CornerKick
	.globl _PeopleMoving
	.globl _PutPonPonGirlSprite
	.globl _TickThrowIn
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
_TickThrowIn_s_Timeout_65537_1224:
	.ds 2
_TickThrowIn_s_Receivers_65537_1224:
	.ds 2
_TickThrowIn_s_SelectedReceiverIdx_65537_1224:
	.ds 1
_TickThrowIn_joyMoved_196612_1257:
	.ds 1
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:201: static u16 s_Timeout = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_Timeout_65537_1224), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:203: static u8 s_SelectedReceiverIdx = 0;
	ld	iy, #_TickThrowIn_s_SelectedReceiverIdx_65537_1224
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:327: static bool joyMoved = false;
	ld	iy, #_TickThrowIn_joyMoved_196612_1257
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG7
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:21: void CornerKick(u8 teamId){
;	---------------------------------
; Function CornerKick
; ---------------------------------
_CornerKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-25
	add	hl, sp
	ld	sp, hl
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:23: V9990_PrintLayerAStringAtPos(10,12,"CORNER KICK");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:24: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:25: PlayPCM(PCM_CORNERKICK);
	xor	a, a
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:26: g_MatchStatus=MATCH_BEFORE_CORNER_KICK;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:27: g_RestartKickTeamId = teamId;
	ld	a, -2 (ix)
	ld	(_g_RestartKickTeamId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:28: g_CornerKickTargetId = NO_VALUE;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:29: g_Timer = 0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:32: if (g_Ball.X < FIELD_POS_X_CENTER) g_CornerKickSide = CORNER_SIDE_LEFT;
	ld	bc, #_g_Ball+0
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	jr	NC, 00102$
	ld	hl, #_g_CornerKickSide
	ld	(hl), #0x00
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:33: else g_CornerKickSide = CORNER_SIDE_RIGHT;
	ld	hl, #_g_CornerKickSide
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:38: u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
	jp	00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:33: else g_CornerKickSide = CORNER_SIDE_RIGHT;
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:38: u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
	ld	de, #0x000a
	jp	00156$
00155$:
	ld	de, #0x00ec
00156$:
	ld	-23 (ix), e
	ld	-22 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:39: u16 kickY = (teamId == TEAM_1) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00323$
	xor	a, a
00323$:
	ld	-3 (ix), a
	or	a, a
	jr	Z, 00157$
	ld	de, #0x0032
	jp	00158$
00157$:
	ld	de, #0x01b3
00158$:
	ld	-21 (ix), e
	ld	-20 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:42: if (teamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00105$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x00
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:43: else g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x02
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:47: if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_LEFT_STRIKER);
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00108$
	push	bc
	ld	h, #0x05
	ld	l, -2 (ix)
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	-19 (ix), a
	jp	00109$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:48: else kickerId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_RIGHT_STRIKER);
	push	bc
	ld	h, #0x06
	ld	l, -2 (ix)
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	bc
	ld	-19 (ix), a
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:51: g_Ball.PossessionPlayerId = NO_VALUE; 
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:52: CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE);
	push	bc
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x04
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:53: if(teamId == TEAM_1) g_Team1ActivePlayer = kickerId; // Ensure kicker is selected active
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00111$
	ld	a, -19 (ix)
	ld	(_g_Team1ActivePlayer+0), a
	jp	00112$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:54: else g_Team2ActivePlayer = kickerId;
	ld	a, -19 (ix)
	ld	(_g_Team2ActivePlayer+0), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:62: i8 offX = 0; i8 offY = 0;
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:63: if (teamId == TEAM_2 && g_CornerKickSide == CORNER_SIDE_RIGHT) {
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00114$
	ld	a, (_g_CornerKickSide+0)
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:64: offX = -30;
	ld	l, #0xe2
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:65: offY = -5;
	ld	-1 (ix), #0xfb
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:68: g_Ball.X = kickX + offX;
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -23 (ix)
	ld	d, -22 (ix)
	add	hl, de
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:69: g_Ball.Y = kickY + offY;
	ld	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	e, -21 (ix)
	ld	d, -20 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:70: g_Ball.PreviousY = g_Ball.Y;
	ld	((_g_Ball + 7)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:74: bool attackingUp = (teamId == TEAM_1);
	ld	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:78: u16 yBoxInside     = (attackingUp) ? (FIELD_BOUND_Y_TOP + 40) : (FIELD_BOUND_Y_BOTTOM - 40);
	ld	-18 (ix), a
	or	a, a
	jr	Z, 00161$
	ld	bc, #0x005a
	jp	00162$
00161$:
	ld	bc, #0x018b
00162$:
	ld	-17 (ix), c
	ld	-16 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:79: u16 yBoxOutside    = (attackingUp) ? (FIELD_BOUND_Y_TOP + 90) : (FIELD_BOUND_Y_BOTTOM - 90);
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00163$
	ld	bc, #0x008c
	jp	00164$
00163$:
	ld	bc, #0x0159
00164$:
	ld	-15 (ix), c
	ld	-14 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:80: u16 yMidfieldAdv   = (attackingUp) ? (FIELD_BOUND_Y_TOP + 160) : (FIELD_BOUND_Y_BOTTOM - 160);
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00165$
	ld	bc, #0x00d2
	jp	00166$
00165$:
	ld	bc, #0x0113
00166$:
	ld	-13 (ix), c
	ld	-12 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:82: u16 ySafety        = (attackingUp) ? (FIELD_BOUND_Y_BOTTOM - 100) : (FIELD_BOUND_Y_TOP + 100);
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00167$
	ld	bc, #0x014f
	jp	00168$
00167$:
	ld	bc, #0x0096
00168$:
	ld	-11 (ix), c
	ld	-10 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:84: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00152$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:85: g_Players[i].Status = PLAYER_STATUS_NONE;
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, #<(_g_Players)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #>(_g_Players)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x12
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:86: g_Players[i].TargetX = g_Players[i].X;
	ld	a, -4 (ix)
	add	a, #0x10
	ld	-9 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
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
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:87: g_Players[i].TargetY = g_Players[i].Y;
	ld	a, -4 (ix)
	add	a, #0x0e
	ld	-7 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:89: u8 role = g_Players[i].Role;
	ld	a, -4 (ix)
	ld	-25 (ix), a
	ld	a, -3 (ix)
	ld	-24 (ix), a
	pop	hl
	push	hl
	ld	de, #0x000d
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:90: bool isAttacker = (g_Players[i].TeamId == teamId);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,-2 (ix)
	sub	a,(hl)
	ld	a, #0x01
	jr	Z, 00329$
	xor	a, a
00329$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:93: if (i == kickerId) {
	ld	a, -19 (ix)
	sub	a, -1 (ix)
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:94: g_Players[i].TargetX = kickX;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -23 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -22 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:95: g_Players[i].TargetY = kickY;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -21 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -20 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:96: continue;
	jp	00149$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:99: if (isAttacker) {
	ld	a, c
	or	a, a
	jp	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:101: if (role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:103: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:104: g_Players[i].TargetY = (attackingUp) ? FIELD_BOUND_Y_BOTTOM - 20 : FIELD_BOUND_Y_TOP + 20;
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00169$
	ld	de, #0x019f
	jp	00170$
00169$:
	ld	de, #0x0046
00170$:
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00149$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:106: else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, -5 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00333$
	xor	a, a
00333$:
	ld	c, a
	or	a, a
	jr	NZ, 00128$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00129$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:107: if (role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	a, c
	or	a, a
	jr	Z, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:109: g_Players[i].TargetX = FIELD_POS_X_CENTER - 30;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:110: g_Players[i].TargetY = yMidfieldAdv;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00149$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:113: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:114: g_Players[i].TargetY = ySafety;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
	jp	00149$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:117: else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -5 (ix)
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00337$
	xor	a, a
00337$:
	ld	c, a
	or	a, a
	jr	NZ, 00124$
	ld	a, -5 (ix)
	sub	a, #0x04
	jr	NZ, 00125$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:118: if (role == PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:120: g_Players[i].TargetX = FIELD_POS_X_CENTER - 50; 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x46
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:121: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:124: g_Players[i].TargetX = FIELD_POS_X_CENTER + 30;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x96
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:125: g_Players[i].TargetY = yMidfieldAdv;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00149$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:131: g_Players[i].TargetX = FIELD_POS_X_CENTER + 50;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0xaa
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:132: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:137: if (role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:139: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:140: g_Players[i].TargetY = (attackingUp) ? FIELD_POS_Y_TEAM2_GOALKEEPER : FIELD_POS_Y_TEAM1_GOALKEEPER;
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00171$
	ld	de, #0x0032
	jp	00172$
00171$:
	ld	de, #0x01a8
00172$:
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00149$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:142: else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
	ld	a, -5 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00341$
	xor	a, a
00341$:
	ld	c, a
	or	a, a
	jr	NZ, 00139$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00140$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:144: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_DEFENDER) ? FIELD_POS_X_CENTER - 20 : FIELD_POS_X_CENTER + 20;
	ld	a, c
	or	a, a
	ld	c, #0x64
	jr	NZ, 00174$
	ld	c, #0x8c
00174$:
	ld	b, #0x00
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:145: g_Players[i].TargetY = yBoxInside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -17 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00149$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:147: else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
	ld	a, -5 (ix)
	sub	a, #0x03
	ld	a, #0x01
	jr	Z, 00345$
	xor	a, a
00345$:
	ld	c, a
	or	a, a
	jr	NZ, 00135$
	ld	a, -5 (ix)
	sub	a, #0x04
	jr	NZ, 00136$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:149: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_HALFFIELDER) ? FIELD_POS_X_CENTER - 40 : FIELD_POS_X_CENTER + 40;
	ld	a, c
	or	a, a
	ld	c, #0x50
	jr	NZ, 00176$
	ld	c, #0xa0
00176$:
	ld	b, #0x00
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:150: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:154: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_STRIKER) ? FIELD_POS_X_LEFT + 20 : FIELD_POS_X_RIGHT - 20;
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	sub	a, #0x05
	ld	c, #0x3c
	jr	Z, 00178$
	ld	c, #0xb2
00178$:
	ld	b, #0x00
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:155: g_Players[i].TargetY = yMidfield;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:84: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00152$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:159: }
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
	.ascii "CORNER KICK"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:161: void PeopleMoving(bool isBasicMoving){
;	---------------------------------
; Function PeopleMoving
; ---------------------------------
_PeopleMoving::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:162: u16 tileId=PUBLIC_TILE_1;
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:163: u8  yPosition=0;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:164: if(!g_ActiveFieldZone==FIELD_NORTH_ZONE){
	ld	a, (_g_ActiveFieldZone+0)
	or	a, a
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:165: yPosition=62;
	ld	-5 (ix), #0x3e
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:169: if(!isBasicMoving){
	ld	a, e
	or	a, a
	jr	NZ, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:170: tileId=PUBLIC_TILE_2;
	ld	bc, #0x0801
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:172: for (u8 y=yPosition;y<yPosition+2;y++){
00122$:
	ld	a, -5 (ix)
	ld	-2 (ix), a
00113$:
	ld	e, -5 (ix)
	ld	d, #0x00
	inc	de
	inc	de
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jp	PO, 00149$
	xor	a, #0x80
00149$:
	jp	P, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:173: for (u8 x=0;x<32;x++){
	ld	-1 (ix), #0x00
00110$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NC, 00114$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1437: inline u32 V9_CellAddrP1B(u8 x, u8 y) { return V9_P1_PNT_B + (((64 * y) + x) * 2); }
	ld	l, -4 (ix)
	ld	h, -3 (ix)
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
	jr	NC, 00150$
	inc	d
00150$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: inline void V9_Poke16(u32 addr, u16 val) { V9_SetWriteAddress(addr); V9_Poke16_CurrentAddr(val); }
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_Poke16_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:173: for (u8 x=0;x<32;x++){
	inc	-1 (ix)
	jp	00110$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:172: for (u8 y=yPosition;y<yPosition+2;y++){
	inc	-2 (ix)
	jp	00113$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:177: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:179: void PutPonPonGirlSprite(u8 ponPonGirlId){
;	---------------------------------
; Function PutPonPonGirlSprite
; ---------------------------------
_PutPonPonGirlSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:181: attr.D=!g_PonPonGirlsAreVisible;
	ld	a, (_g_PonPonGirlsAreVisible+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	hl, #3
	add	hl, sp
	rlca
	rlca
	rlca
	rlca
	and	a, #0x10
	ld	c, a
	ld	a, (hl)
	and	a, #0xef
	or	a, c
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:183: attr.SC=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:184: int diffY = (int)g_PonPonGirls[ponPonGirlId].Y - g_FieldCurrentYPosition;
	ld	bc, #_g_PonPonGirls+0
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #_g_FieldCurrentYPosition
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	sbc	a, (hl)
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:185: attr.X=g_PonPonGirls[ponPonGirlId].X;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	hl, #2
	add	hl, sp
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	and	a, #0x03
	push	bc
	ld	c,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, c
	pop	bc
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:186: if(diffY < -32 || diffY > 212){
	ld	a, c
	sub	a, #0xe0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00101$
	ld	a, #0xd4
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00114$
	xor	a, #0x80
00114$:
	jp	P, 00102$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:187: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:188: attr.Y=216; // Force off-screen
	ld	-7 (ix), #0xd8
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:190: attr.Y=(u8)diffY;
	ld	-7 (ix), c
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:192: attr.Pattern = g_PonPonGirls[ponPonGirlId].PatternId;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:193: attr.P = 1;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:194: V9_SetSpriteP1(ponPonGirlId+20, &attr);
	ld	a, -1 (ix)
	add	a, #0x14
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
	ld	l, a
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
	jr	NC, 00115$
	inc	d
00115$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:194: V9_SetSpriteP1(ponPonGirlId+20, &attr);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:195: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:198: void TickThrowIn() {
;	---------------------------------
; Function TickThrowIn
; ---------------------------------
_TickThrowIn::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-26
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:199: if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x03
	jp	NZ,00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:205: u8 throwerId = g_ThrowInPlayerId;
	ld	a, (_g_ThrowInPlayerId+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:206: if (throwerId == NO_VALUE) {
	ld	c, a
	inc	a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:207: g_MatchStatus = MATCH_IN_ACTION; // Abort if no thrower
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:208: return;
	jp	00193$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:211: bool isLeft = (g_Players[throwerId].X < FIELD_POS_X_CENTER);
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
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	add	a, #0x02
	ld	-12 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x78
	ld	a, d
	sbc	a, #0x00
	ld	a, #0x00
	rla
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:214: if (g_CornerKickTargetId == 0) {
	ld	a, (_g_CornerKickTargetId+0)
	or	a, a
	jp	NZ, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:216: g_Ball.X = g_Players[throwerId].TargetX;
	ld	iy, #0x0010
	push	bc
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	add	iy, bc
	pop	bc
	ld	b, 0 (iy)
	ld	d, 1 (iy)
	ld	hl, #(_g_Ball + 2)
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:217: g_Ball.Y = g_Players[throwerId].TargetY;
	ld	a, -2 (ix)
	ld	-24 (ix), a
	ld	a, -1 (ix)
	ld	-23 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0e
	ld	-10 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_g_Ball
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:219: i16 dx = (i16)g_Players[throwerId].X - (i16)g_Players[throwerId].TargetX;
	ld	a, -12 (ix)
	ld	-22 (ix), a
	ld	a, -11 (ix)
	ld	-21 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, 0 (iy)
	ld	-8 (ix), a
	ld	a, 1 (iy)
	ld	-7 (ix), a
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sub	a, l
	ld	b, a
	ld	a, d
	sbc	a, h
	ld	-6 (ix), b
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:220: i16 dy = (i16)g_Players[throwerId].Y - (i16)g_Players[throwerId].TargetY;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	d, (hl)
	ld	b, a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, h
	ld	-4 (ix), l
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:222: if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
	ld	a, -6 (ix)
	sub	a, #0xfc
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C,00193$
	ld	b, -6 (ix)
	ld	d, -5 (ix)
	ld	a, #0x04
	cp	a, b
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00518$
	xor	a, #0x80
00518$:
	jp	M,00193$
	ld	a, -4 (ix)
	sub	a, #0xfc
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C,00193$
	ld	b, -4 (ix)
	ld	d, -3 (ix)
	ld	a, #0x04
	cp	a, b
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00519$
	xor	a, #0x80
00519$:
	jp	M,00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:224: g_Players[throwerId].X = g_Players[throwerId].TargetX;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:225: g_Players[throwerId].Y = g_Players[throwerId].TargetY;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:226: g_Players[throwerId].Status = PLAYER_STATUS_POSITIONED;
	ld	a, -2 (ix)
	add	a, #0x12
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:229: u8 t1_p1 = NO_VALUE, t1_p2 = NO_VALUE;
	ld	-20 (ix), #0xff
	ld	-19 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:230: u8 t2_p1 = NO_VALUE, t2_p2 = NO_VALUE;
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:231: u16 d1_1 = 0xFFFF, d1_2 = 0xFFFF;
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:232: u16 d2_1 = 0xFFFF, d2_2 = 0xFFFF;
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
	ld	-9 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:234: u8 throwerTeam = g_Players[throwerId].TeamId;
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
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:236: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00188$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:237: if (i == throwerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	a, c
	sub	a, -1 (ix)
	jp	Z,00121$
	push	de
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
	pop	de
	ld	a, l
	add	a, #<(_g_Players)
	ld	-7 (ix), a
	ld	a, h
	adc	a, #>(_g_Players)
	ld	-6 (ix), a
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:239: u16 d = Math_Abs32((i16)g_Players[i].X - (i16)g_Players[throwerId].X) + 
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), b
	ld	-2 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, l
	ld	a, h
	ld	d, a
	rlca
	sbc	hl, hl
	push	bc
	push	de
	ld	e, b
	call	_Math_Abs32
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	-3 (ix), l
	ld	-2 (ix), h
	pop	de
	pop	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), b
	ld	-25 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -26 (ix)
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -25 (ix)
	sbc	a, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
	rlca
	sbc	a, a
	ld	b, a
	ld	d, a
	push	bc
	ex	de, hl
	push	hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	call	_Math_Abs32
	push	hl
	pop	iy
	ex	de, hl
	pop	de
	pop	bc
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, l
	add	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -2 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, l
	ld	d, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:242: if (g_Players[i].TeamId == throwerTeam) {
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
;	spillPairReg hl
	ld	a,-8 (ix)
	sub	a,(hl)
	jr	NZ, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:244: if (d < d1_1) { d1_2 = d1_1; t1_p2 = t1_p1; d1_1 = d; t1_p1 = i; }
	ld	a, b
	sub	a, -16 (ix)
	ld	a, d
	sbc	a, -15 (ix)
	jr	NC, 00111$
	ld	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-13 (ix), a
	ld	a, -20 (ix)
	ld	-19 (ix), a
	ld	-16 (ix), b
	ld	-15 (ix), d
	ld	a, -1 (ix)
	ld	-20 (ix), a
	jp	00121$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:245: else if (d < d1_2) { d1_2 = d; t1_p2 = i; }
	ld	a, b
	sub	a, -14 (ix)
	ld	a, d
	sbc	a, -13 (ix)
	jr	NC, 00121$
	ld	-14 (ix), b
	ld	-13 (ix), d
	ld	a, -1 (ix)
	ld	-19 (ix), a
	jp	00121$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:248: if (d < d2_1) { d2_2 = d2_1; t2_p2 = t2_p1; d2_1 = d; t2_p1 = i; }
	ld	a, b
	sub	a, -12 (ix)
	ld	a, d
	sbc	a, -11 (ix)
	jr	NC, 00116$
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -18 (ix)
	ld	-17 (ix), a
	ld	-12 (ix), b
	ld	-11 (ix), d
	ld	a, -1 (ix)
	ld	-18 (ix), a
	jp	00121$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:249: else if (d < d2_2) { d2_2 = d; t2_p2 = i; }
	ld	a, b
	sub	a, -10 (ix)
	ld	a, d
	sbc	a, -9 (ix)
	jr	NC, 00121$
	ld	-10 (ix), b
	ld	-9 (ix), d
	ld	a, -1 (ix)
	ld	-17 (ix), a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:236: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00188$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:254: i16 offsetX = isLeft ? 40 : -40; // Move towards center
	ld	a, e
	or	a, a
	jr	Z, 00195$
	ld	de, #0x0028
	jp	00196$
00195$:
	ld	de, #0xffd8
00196$:
	ld	-8 (ix), e
	ld	-7 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:257: if(t1_p1 != NO_VALUE) { g_Players[t1_p1].TargetX = g_Ball.X + offsetX; g_Players[t1_p1].TargetY = g_Ball.Y - 20; g_Players[t1_p1].Status = PLAYER_STATUS_NONE; }
	ld	a, -20 (ix)
	inc	a
	jr	Z, 00124$
	ld	e, -20 (ix)
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #0x10
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, -4 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	add	a, #0xec
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), b
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:258: if(t1_p2 != NO_VALUE) { g_Players[t1_p2].TargetX = g_Ball.X + offsetX; g_Players[t1_p2].TargetY = g_Ball.Y + 20; g_Players[t1_p2].Status = PLAYER_STATUS_NONE; }
	ld	a, -19 (ix)
	inc	a
	jr	Z, 00126$
	ld	e, -19 (ix)
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #0x10
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, -4 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0014
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:261: if(t2_p1 != NO_VALUE) { g_Players[t2_p1].TargetX = g_Ball.X + (offsetX/2); g_Players[t2_p1].TargetY = g_Ball.Y - 10; g_Players[t2_p1].Status = PLAYER_STATUS_NONE; }
	ld	a, -18 (ix)
	inc	a
	jp	Z,00128$
	ld	e, -18 (ix)
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, #0x10
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00197$
	ex	de, hl
	inc	hl
00197$:
	sra	h
	rr	l
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, -6 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	add	a, #0xf6
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), b
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:262: if(t2_p2 != NO_VALUE) { g_Players[t2_p2].TargetX = g_Ball.X + (offsetX/2); g_Players[t2_p2].TargetY = g_Ball.Y + 10; g_Players[t2_p2].Status = PLAYER_STATUS_NONE; }
	ld	a, -17 (ix)
	inc	a
	jp	Z,00246$
	ld	e, -17 (ix)
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, #0x10
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, d
	jr	Z, 00198$
	ex	de, hl
	inc	hl
00198$:
	sra	h
	rr	l
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, -6 (ix)
	add	a, #0x0e
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x000a
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:265: for(u8 i=0; i<14; i++) {
00246$:
	ld	-1 (ix), #0x00
00190$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:266: if (i == throwerId || i == t1_p1 || i == t1_p2 || i == t2_p1 || i == t2_p2) continue;
	ld	a, c
	sub	a, -1 (ix)
	jp	Z,00137$
	ld	a, -20 (ix)
	sub	a, -1 (ix)
	jp	Z,00137$
	ld	a, -19 (ix)
	sub	a, -1 (ix)
	jr	Z, 00137$
	ld	a, -18 (ix)
	sub	a, -1 (ix)
	jr	Z, 00137$
	ld	a, -17 (ix)
	sub	a, -1 (ix)
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:267: g_Players[i].TargetX = g_Players[i].X;
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
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0010
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:268: g_Players[i].TargetY = g_Players[i].Y;
	ld	hl, #0x000e
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, (de)
	ld	-3 (ix), a
	inc	de
	ld	a, (de)
	ld	-2 (ix), a
	dec	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:269: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:265: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00190$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:272: g_CornerKickTargetId = 1;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:273: g_Timer = 0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:275: return; // Wait for arrival
	jp	00193$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:280: if (g_CornerKickTargetId == 1) {
	ld	a, (_g_CornerKickTargetId+0)
	dec	a
	jp	NZ,00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:281: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:284: g_Ball.Y = g_Players[throwerId].Y - 12;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, b
	add	a, #0xf4
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, l
	ld	d, h
	ld	hl, #_g_Ball
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:285: g_Ball.X = g_Players[throwerId].X;
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #(_g_Ball + 2)
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:286: g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
	ld	a, -2 (ix)
	add	a, #0x08
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, e
	or	a, a
	jr	Z, 00199$
	ld	-8 (ix), #0x93
	ld	-7 (ix), #0
	jp	00200$
00199$:
	ld	-8 (ix), #0x1c
	ld	-7 (ix), #0
00200$:
	ld	a, -8 (ix)
	ld	h, d
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:287: g_Players[throwerId].Direction = isLeft ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -2 (ix)
	add	a, #0x0a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	adc	a, #0x00
	inc	e
	dec	e
	jr	Z, 00201$
	ld	-2 (ix), #0x03
	ld	-1 (ix), #0x00
	jp	00202$
00201$:
	ld	-2 (ix), #0x07
	ld	-1 (ix), #0x00
00202$:
	ld	b, -2 (ix)
	ld	h, a
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:290: if (g_Timer > 120) { 
	ld	a, #0x78
	ld	hl, #_g_Timer
	sub	a, (hl)
	jp	NC,00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:291: u16 d1 = 0xFFFF, d2 = 0xFFFF;
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:292: s_Receivers[0] = NO_VALUE; s_Receivers[1] = NO_VALUE;
	ld	hl, #_TickThrowIn_s_Receivers_65537_1224
	ld	(hl), #0xff
	ld	hl, #(_TickThrowIn_s_Receivers_65537_1224 + 1)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:293: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00192$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:294: if (g_Players[i].TeamId != g_RestartKickTeamId || i == throwerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
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
	ld	de, #_g_Players
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
	ex	de,hl
	ld	hl, #9
	add	hl, de
	ld	b, (hl)
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, b
	jp	NZ,00155$
	ld	a, -1 (ix)
	sub	a, c
	jp	Z,00155$
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:295: u16 d = Math_Abs32((i16)g_Players[i].X - (i16)g_Players[throwerId].X) + Math_Abs32((i16)g_Players[i].Y - (i16)g_Players[throwerId].Y);
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
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
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	-8 (ix), l
	ld	-7 (ix), h
	pop	bc
	ld	l, -12 (ix)
	ld	h, -11 (ix)
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
	rlca
	sbc	hl, hl
	push	bc
	call	_Math_Abs32
	pop	bc
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:296: if (d < d1) { d2 = d1; s_Receivers[1] = s_Receivers[0]; d1 = d; s_Receivers[0] = i; } 
	ld	a, e
	sub	a, -16 (ix)
	ld	a, d
	sbc	a, -15 (ix)
	jr	NC, 00153$
	ld	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-13 (ix), a
	ld	a, (#_TickThrowIn_s_Receivers_65537_1224 + 0)
	ld	(#(_TickThrowIn_s_Receivers_65537_1224 + 1)),a
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	hl, #_TickThrowIn_s_Receivers_65537_1224
	ld	a, -1 (ix)
	ld	(hl), a
	jp	00155$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:297: else if (d < d2) { d2 = d; s_Receivers[1] = i; }
	ld	a, e
	sub	a, -14 (ix)
	ld	a, d
	sbc	a, -13 (ix)
	jr	NC, 00155$
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	hl, #(_TickThrowIn_s_Receivers_65537_1224 + 1)
	ld	a, -1 (ix)
	ld	(hl), a
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:293: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00192$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:300: g_CornerKickTargetId = 2;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:301: s_Timeout = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_Timeout_65537_1224), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:302: s_SelectedReceiverIdx = 0;
	ld	hl, #_TickThrowIn_s_SelectedReceiverIdx_65537_1224
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:303: g_PassTargetPlayer = s_Receivers[0];
	ld	hl, #_TickThrowIn_s_Receivers_65537_1224
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:304: if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = CallFnc_U8_P2(4, GetClosestPlayerToBall, g_RestartKickTeamId, throwerId);
	ld	(_g_PassTargetPlayer+0), a
	inc	a
	jp	NZ,00193$
	ld	a, c
	push	af
	inc	sp
	ld	a, (_g_RestartKickTeamId+0)
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	(_g_PassTargetPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:306: return;
	jp	00193$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:310: if (g_CornerKickTargetId == 2) {
	ld	a, (_g_CornerKickTargetId+0)
	sub	a, #0x02
	jp	NZ,00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:312: g_Ball.Y = g_Players[throwerId].Y - 12;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, b
	add	a, #0xf4
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, l
	ld	d, h
	ld	hl, #_g_Ball
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:313: g_Ball.X = g_Players[throwerId].X;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #(_g_Ball + 2)
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:314: g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_2 : PLAYER_POSE_THROWIN_RIGHT_2;
	ld	a, -2 (ix)
	add	a, #0x08
	ld	-6 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, e
	or	a, a
	jr	Z, 00203$
	ld	-4 (ix), #0x92
	ld	-3 (ix), #0
	jp	00204$
00203$:
	ld	-4 (ix), #0x1d
	ld	-3 (ix), #0
00204$:
	ld	a, -4 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:315: g_Players[throwerId].Direction = isLeft ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, -2 (ix)
	add	a, #0x0a
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, e
	or	a, a
	jr	Z, 00205$
	ld	hl, #0x0003
	jp	00206$
00205$:
	ld	hl, #0x0007
00206$:
	ld	a, l
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:317: bool isHuman = (g_RestartKickTeamId == TEAM_1) || (g_GameWith2Players && g_RestartKickTeamId == TEAM_2);
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	Z, 00208$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00207$
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, #0x02
	jr	Z, 00208$
00207$:
	xor	a, a
	jp	00209$
00208$:
	ld	a, #0x01
00209$:
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:319: g_PassTargetPlayer = s_Receivers[s_SelectedReceiverIdx];
	ld	a, #<(_TickThrowIn_s_Receivers_65537_1224)
	ld	hl, #_TickThrowIn_s_SelectedReceiverIdx_65537_1224
	add	a, (hl)
	ld	b, a
	ld	a, #>(_TickThrowIn_s_Receivers_65537_1224)
	adc	a, #0x00
	ld	d, a
	ld	l, b
	ld	h, d
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:320: if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = s_Receivers[0];
	ld	(_g_PassTargetPlayer+0), a
	inc	a
	jr	NZ, 00164$
	ld	hl, #_TickThrowIn_s_Receivers_65537_1224
	ld	a, (hl)
	ld	(_g_PassTargetPlayer+0), a
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:321: if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = CallFnc_U8_P2(4, GetClosestPlayerToBall, g_RestartKickTeamId, throwerId);
	ld	a, (_g_PassTargetPlayer+0)
	inc	a
	jr	NZ, 00166$
	push	bc
	push	de
	ld	a, c
	push	af
	inc	sp
	ld	a, (_g_RestartKickTeamId+0)
	push	af
	inc	sp
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x04
	call	_CallFnc_U8_P2
	pop	de
	pop	bc
	ld	(_g_PassTargetPlayer+0), a
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:324: s_Timeout++;
	ld	hl, (_TickThrowIn_s_Timeout_65537_1224)
	inc	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:323: if (isHuman) {
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:324: s_Timeout++;
	ld	(_TickThrowIn_s_Timeout_65537_1224), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:325: u8 joyDir = CallFnc_U8(4, GetJoystickDirection);
	push	bc
	push	de
	ld	de, #_GetJoystickDirection
	ld	a, #0x04
	call	_CallFnc_U8
	pop	de
	pop	bc
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:326: bool trigger = CallFnc_U8(5,IsJoystickTriggerPressed);
	push	bc
	push	de
	ld	de, #_IsJoystickTriggerPressed
	ld	a, #0x05
	call	_CallFnc_U8
	pop	de
	pop	bc
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:329: if (joyDir != DIRECTION_NONE && !joyMoved) {
	ld	a, b
	or	a, a
	jr	Z, 00170$
	ld	a, (_TickThrowIn_joyMoved_196612_1257+0)
	or	a, a
	jr	NZ, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:330: s_SelectedReceiverIdx = 1 - s_SelectedReceiverIdx;
	ld	a, (_TickThrowIn_s_SelectedReceiverIdx_65537_1224+0)
	ld	b, a
	ld	hl, #_TickThrowIn_s_SelectedReceiverIdx_65537_1224
	ld	a, #0x01
	sub	a, b
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:331: joyMoved = true;
	ld	hl, #_TickThrowIn_joyMoved_196612_1257
	ld	(hl), #0x01
	jp	00171$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:332: } else if (joyDir == DIRECTION_NONE) {
	ld	a, b
	or	a, a
	jr	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:333: joyMoved = false;
	ld	hl, #_TickThrowIn_joyMoved_196612_1257
	ld	(hl), #0x00
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:336: if (trigger || s_Timeout > 300) { // 5 seconds
	ld	a, d
	or	a, a
	jr	NZ, 00175$
	ld	hl, (_TickThrowIn_s_Timeout_65537_1224)
	ld	a, #0x2c
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	NC, 00193$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:337: if (g_PassTargetPlayer != NO_VALUE) {
	ld	a, (_g_PassTargetPlayer+0)
	inc	a
	jr	Z, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:339: g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	or	a, a
	jr	Z, 00213$
	ld	de, #0x0093
	jp	00214$
00213$:
	ld	de, #0x001c
00214$:
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:340: g_Ball.PossessionPlayerId = throwerId;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:341: CallFnc_VOID_P1(5,PerformPass,g_PassTargetPlayer);
	ld	a, (_g_PassTargetPlayer+0)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:342: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:344: V9990_ClearTextFromLayerA(13, 18, 8);
	ld	a, #0x08
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:345: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:346: g_ThrowInPlayerId = NO_VALUE;
	ld	hl, #_g_ThrowInPlayerId
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:347: g_PassTargetPlayer = NO_VALUE;
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
	jp	00193$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:350: s_Timeout++;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:351: if (s_Timeout > 60) {
	ld	(_TickThrowIn_s_Timeout_65537_1224), hl
	ld	a, #0x3c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:352: if (g_PassTargetPlayer != NO_VALUE) {
	ld	a, (_g_PassTargetPlayer+0)
	inc	a
	jr	Z, 00179$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:354: g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, e
	or	a, a
	jr	Z, 00215$
	ld	de, #0x0093
	jp	00216$
00215$:
	ld	de, #0x001c
00216$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:355: g_Ball.PossessionPlayerId = throwerId;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:356: CallFnc_VOID_P1(5,PerformPass,g_PassTargetPlayer);
	ld	a, (_g_PassTargetPlayer+0)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:357: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:359: V9990_ClearTextFromLayerA(13, 18, 8);
	ld	a, #0x08
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:360: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:361: g_ThrowInPlayerId = NO_VALUE;
	ld	hl, #_g_ThrowInPlayerId
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:362: g_PassTargetPlayer = NO_VALUE;
	ld	hl, #_g_PassTargetPlayer
	ld	(hl), #0xff
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s7_b3.c:366: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG7
	.area _INITIALIZER
	.area _CABS (ABS)
