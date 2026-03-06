;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s3_b1
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PerformShot
	.globl _SetPlayerTarget
	.globl _GetBestPassTarget
	.globl _GetNoMovingPlayerPatternId
	.globl _V9990_PrintLayerAStringAtPos
	.globl _PutPlayerSprite
	.globl _SetPlayerBallPossession
	.globl _GetPlayerIdByRole
	.globl _IsTeamJoystickTriggerPressed
	.globl _GetJoystickDirection
	.globl _IsJoystickTriggerPressed
	.globl _PerformPass
	.globl _PutBallOnPlayerFeet
	.globl _GetClosestPlayerToBall
	.globl _PlayAyFx
	.globl _V9990_ClearTextFromLayerA
	.globl _PlayPCM
	.globl _Trampoline_U8_P1
	.globl _Trampoline_U8_P2
	.globl _Trampoline_VOID_16_P2
	.globl _Trampoline_U8
	.globl _Trampoline_BOOL
	.globl _Trampoline_VOID_P1
	.globl _V9990_LoadP1LayerA
	.globl _V9_SetPaletteEntry
	.globl _V9_SetScreenMode
	.globl _V9_Poke16_CurrentAddr
	.globl _V9_WriteVRAM_CurrentAddr
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
	.globl _g_Data_Palette_LayerB_Standard
	.globl _g_Data_Palette_LayerA_Standard
	.globl _g_PonPonGirlsPos
	.globl _g_GirlPatterns
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
	.globl _V9990_InitPalette
	.globl _V9990_InitMenuLayers
	.globl _InitPonPonGirls
	.globl _TickGoalCelebration
	.globl _UpdateSpritesPositions
	.globl _PutBallSprite
	.globl _TickPonPonGirlsAnimation
	.globl _TickTeamJoystick
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
_PutBallSprite_s_StopCooldown_65538_1214:
	.ds 1
_TickThrowIn_s_ThrowTargetId_65537_1356:
	.ds 1
_TickThrowIn_s_JoyMoved_65537_1356:
	.ds 1
_TickThrowIn_s_ForceThrowTimer_65537_1356:
	.ds 2
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:231: static u8 s_StopCooldown = 0;
	ld	iy, #_PutBallSprite_s_StopCooldown_65538_1214
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:908: static u8 s_ThrowTargetId = NO_VALUE;
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1356
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:909: static bool s_JoyMoved = false;
	ld	iy, #_TickThrowIn_s_JoyMoved_65537_1356
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:910: static u16 s_ForceThrowTimer = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1356), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG3
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:74: void V9990_InitPalette(){
;	---------------------------------
; Function V9990_InitPalette
; ---------------------------------
_V9990_InitPalette::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:75: V9_SetPalette(0, 16, g_Data_Palette_LayerA_Standard);
	ld	hl, #_g_Data_Palette_LayerA_Standard+0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1028: if (g_Ball.Y < 140) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	bc, #0x0
00107$:
	ld	a, b
	sub	a, #0x10
	jr	NC, 00102$
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
	jp	00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:75: V9_SetPalette(0, 16, g_Data_Palette_LayerA_Standard);
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:76: V9_SetPalette(16, 16, g_Data_Palette_LayerB_Standard);
	ld	hl, #_g_Data_Palette_LayerB_Standard+0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1028: if (g_Ball.Y < 140) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	bc, #0x10
00110$:
	ld	a, b
	sub	a, #0x10
	jr	NC, 00104$
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
	jp	00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:76: V9_SetPalette(16, 16, g_Data_Palette_LayerB_Standard);
00104$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:77: V9_SelectPaletteP1(0,1);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:78: }
	jp	_V9_SetRegister
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
_g_GirlPatterns:
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0xf2	; 242
_g_PonPonGirlsPos:
	.db #0x1e	; 30
	.db #0x32	; 50	'2'
	.db #0x46	; 70	'F'
	.db #0xaf	; 175
	.db #0xc3	; 195
	.db #0xd7	; 215
_g_Data_Palette_LayerA_Standard:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_g_Data_Palette_LayerB_Standard:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x17	; 23
	.db #0x1b	; 27
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x13	; 19
	.db #0x09	; 9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:80: void V9990_InitMenuLayers(){   
;	---------------------------------
; Function V9990_InitMenuLayers
; ---------------------------------
_V9990_InitMenuLayers::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:81: V9990_InitPalette();
	call	_V9990_InitPalette
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:82: V9_SetScreenMode(V9_MODE_P1);
	xor	a, a
	call	_V9_SetScreenMode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:258: inline void V9_SetFlag(u8 reg, u8 mask, u8 flag) { V9_SetRegister(reg, V9_GetRegister(reg) & (~mask) | flag); }
	ld	a, #0x08
	call	_V9_GetRegister
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	res	7, l
	ld	a, #0x08
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:85: V9990_LoadP1LayerA();
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:86: }
	jp	_V9990_LoadP1LayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:87: void InitPonPonGirls(){
;	---------------------------------
; Function InitPonPonGirls
; ---------------------------------
_InitPonPonGirls::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:88: g_ponPonPatternIndex=0;
	ld	hl, #_g_ponPonPatternIndex
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:90: for(u8 i=0;i<6;i++){
	ld	-1 (ix), #0x00
00103$:
	ld	a, -1 (ix)
	sub	a, #0x06
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:91: g_PonPonGirls[i].X=g_PonPonGirlsPos[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_PonPonGirls
	add	hl, de
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, #<(_g_PonPonGirlsPos)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_PonPonGirlsPos)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:92: g_PonPonGirls[i].Y=42;
	ld	l, e
	ld	h, d
	ld	(hl), #0x2a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:93: g_PonPonGirls[i].PatternId=SPRITE_GIRL_1;
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x7a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:94: PutPonPonGirlSprite(i);
	ld	a, -1 (ix)
	call	_PutPonPonGirlSprite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:90: for(u8 i=0;i<6;i++){
	inc	-1 (ix)
	jp	00103$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:97: }
	inc	sp
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:99: void TickGoalCelebration(){
;	---------------------------------
; Function TickGoalCelebration
; ---------------------------------
_TickGoalCelebration::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:100: if(g_MatchStatus!=MATCH_AFTER_IN_GOAL) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jp	NZ,00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:104: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:106: if((g_Timer % 10) < 5){
	ld	a, (_g_Timer+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x000a
	call	__modsint
	ld	a, e
	sub	a, #0x05
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00104$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x08
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:107: V9_SetBackgroundColor(8); // Cyan/Flash
	jp	00105$
00104$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:109: V9_SetBackgroundColor(1); // Default Blue
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:115: if (g_Timer < 120) {
	ld	a, (_g_Timer+0)
	sub	a, #0x78
	jp	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:116: u8 scoringTeamId = (g_RestartKickTeamId == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00160$
	ld	bc, #0x0002
	jp	00161$
00160$:
	ld	bc, #0x0001
00161$:
	ld	-11 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:119: u16 limitY_Top = FIELD_BOUND_Y_TOP;
	ld	-10 (ix), #0x32
	ld	-9 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:120: u16 limitY_Bottom = FIELD_BOUND_Y_BOTTOM;
	ld	-8 (ix), #0xb3
	ld	-7 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:122: if (g_Ball.Y < FIELD_CENTRAL_Y) { // Top Goal
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x89
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:123: limitY_Bottom = FIELD_BOUND_Y_TOP + 160; 
	ld	-8 (ix), #0xd2
	ld	-7 (ix), #0
	jp	00200$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:125: limitY_Top = FIELD_BOUND_Y_BOTTOM - 160;
	ld	-10 (ix), #0x13
	ld	-9 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:133: for(u8 i=0; i<15; i++){
00200$:
	ld	-1 (ix), #0x00
00154$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:134: if(i == REFEREE) continue;
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	Z,00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:135: u8 dir = g_Players[i].Direction;
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
	ld	a, -13 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:138: if (g_Players[i].TeamId == scoringTeamId) {
	pop	de
	push	de
	ld	hl, #9
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:162: if (isBack) g_Players[i].PatternId = (animFrame1) ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -13 (ix)
	add	a, #0x08
	ld	-6 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:138: if (g_Players[i].TeamId == scoringTeamId) {
	ld	a, -11 (ix)
	sub	a, e
	jp	NZ,00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:142: if ((g_Timer % 19) == 0) {
	ld	a, (_g_Timer+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0013
	call	__modsint
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:144: u8 rnd = (g_Timer * 3) + (i * 37); 
	ld	a, (_g_Timer+0)
	ld	e, a
	add	a, a
	add	a, e
	ld	e, a
	ld	a, -1 (ix)
	push	de
	ld	e, a
	add	a, a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	add	a, e
	pop	de
	add	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:145: dir = (rnd % 8) + 1; 
	and	a, #0x07
	inc	a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:146: g_Players[i].Direction = dir;
	ld	-2 (ix), a
	ld	(bc), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:149: i8 dy = k_CelebDY[dir];
	ld	a, #<(_TickGoalCelebration_k_CelebDY_131073_1186)
	add	a, -2 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_TickGoalCelebration_k_CelebDY_131073_1186)
	adc	a, #0x00
	ld	h, a
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:150: i8 dx = k_CelebDX[dir];
	ld	a, #<(_TickGoalCelebration_k_CelebDX_131073_1186)
	add	a, -2 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_TickGoalCelebration_k_CelebDX_131073_1186)
	adc	a, #0x00
	ld	h, a
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:152: if (dy < 0 && g_Players[i].Y > limitY_Top) g_Players[i].Y--;
	ld	a, c
	rlca
	and	a,#0x01
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00117$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -10 (ix)
	sub	a, e
	ld	a, -9 (ix)
	sbc	a, d
	jr	NC, 00117$
	dec	de
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00118$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:153: else if (dy > 0 && g_Players[i].Y < limitY_Bottom) g_Players[i].Y++;
	xor	a, a
	sub	a, c
	jp	PO, 00387$
	xor	a, #0x80
00387$:
	jp	P, 00118$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, -8 (ix)
	ld	a, d
	sbc	a, -7 (ix)
	jr	NC, 00118$
	inc	de
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:155: if (dx < 0 && g_Players[i].X > FIELD_BOUND_X_LEFT) g_Players[i].X--;
	bit	7, b
	jr	Z, 00124$
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	a, #0x0a
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00124$
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00125$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:156: else if (dx > 0 && g_Players[i].X < FIELD_BOUND_X_RIGHT) g_Players[i].X++;
	xor	a, a
	sub	a, b
	jp	PO, 00388$
	xor	a, #0x80
00388$:
	jp	P, 00125$
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0xec
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00125$
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:159: bool animFrame1 = ((g_Timer / 8) % 2) == 0;
	ld	a, (_g_Timer+0)
	ld	e, a
	ld	d, #0x00
	ld	c, e
	ld	b, d
	bit	7, d
	jr	Z, 00162$
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00162$:
	ld	-3 (ix), c
	ld	-2 (ix), b
	sra	-2 (ix)
	rr	-3 (ix)
	sra	-2 (ix)
	rr	-3 (ix)
	sra	-2 (ix)
	rr	-3 (ix)
	ld	de, #0x0002
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	a, -3 (ix)
	or	a, a
	or	a, -2 (ix)
	ld	a, #0x01
	jr	Z, 00390$
	xor	a, a
00390$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:162: if (isBack) g_Players[i].PatternId = (animFrame1) ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00128$
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00163$
	ld	-3 (ix), #0x32
	ld	-2 (ix), #0
	jp	00164$
00163$:
	ld	-3 (ix), #0x33
	ld	-2 (ix), #0
00164$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00133$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:163: else g_Players[i].PatternId = (animFrame1) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00165$
	ld	-3 (ix), #0x30
	ld	-2 (ix), #0
	jp	00166$
00165$:
	ld	-3 (ix), #0x31
	ld	-2 (ix), #0
00166$:
	ld	a, -3 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
	jp	00133$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:167: bool isUp = (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT);
	ld	a, -2 (ix)
	dec	a
	jr	Z, 00168$
	ld	a, -2 (ix)
	sub	a, #0x08
	jr	Z, 00168$
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	Z, 00168$
	xor	a, a
	jp	00169$
00168$:
	ld	a, #0x01
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:168: g_Players[i].PatternId = isUp ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
	or	a, a
	jr	Z, 00173$
	ld	-3 (ix), #0x11
	ld	-2 (ix), #0
	jp	00174$
00173$:
	ld	-3 (ix), #0x10
	ld	-2 (ix), #0
00174$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:133: for(u8 i=0; i<15; i++){
	inc	-1 (ix)
	jp	00154$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:173: if(g_Timer > 150){
	ld	a, #0x96
	ld	hl, #_g_Timer
	sub	a, (hl)
	jp	NC, 00158$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:480: inline void V9_SetBackgroundColor(u8 color) { V9_SetRegister(15, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_V9_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:175: V9990_ClearTextFromLayerA(12, 18, 8); // "IN  GOAL"
	ld	a, #0x08
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0c
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:177: g_MatchStatus = MATCH_BEFORE_KICK_OFF;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:178: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:179: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:180: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:181: if(g_Team1ActivePlayer!=NO_VALUE) g_Players[g_Team1ActivePlayer].Status=PLAYER_STATUS_NONE;
	ld	a, (_g_Team1ActivePlayer+0)
	inc	a
	jr	Z, 00138$
	ld	bc, #_g_Players+0
	ld	de, (_g_Team1ActivePlayer)
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
	ld	bc, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:182: if(g_Team2ActivePlayer!=NO_VALUE) g_Players[g_Team2ActivePlayer].Status=PLAYER_STATUS_NONE;
	ld	a, (_g_Team2ActivePlayer+0)
	inc	a
	jr	Z, 00140$
	ld	bc, #_g_Players+0
	ld	de, (_g_Team2ActivePlayer)
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
	ld	bc, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:183: g_Team1ActivePlayer=NO_VALUE;
	ld	hl, #_g_Team1ActivePlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:184: g_Team2ActivePlayer=NO_VALUE;
	ld	hl, #_g_Team2ActivePlayer
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:186: g_Ball.X = FIELD_POS_X_CENTER;
	ld	hl, #0x0078
	ld	((_g_Ball + 2)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:187: g_Ball.Y = FIELD_POS_Y_CENTER;
	ld	l, #0xf3
	ld	(_g_Ball), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:188: g_Ball.PreviousY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 7)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:189: PutBallSprite();
	call	_PutBallSprite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:191: for(u8 i=0; i<15; i++){
	ld	de, #_g_Players
	ld	-1 (ix), #0x00
00156$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:192: if(i==REFEREE || g_Players[i].TeamId==TEAM_1 || g_Players[i].TeamId==TEAM_2){
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x01
	jr	Z, 00397$
	xor	a, a
00397$:
	ld	c, a
	or	a, a
	jr	NZ, 00143$
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
	ld	iy, #_g_Players
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	ld	a, 9 (iy)
	cp	a, #0x01
	jr	Z, 00143$
	sub	a, #0x02
	jr	NZ, 00157$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:194: if (i==REFEREE) {
	ld	a, c
	or	a, a
	jr	Z, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:195: g_Players[i].Direction=DIRECTION_RIGHT;
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
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, e
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, d
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:196: g_Players[i].LastPose=0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	bc, #0x000c
	add	hl, bc
	ld	(hl), #0x00
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:198: Trampoline_VOID_P1(4,SetPlayerTarget,i);
	push	de
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_SetPlayerTarget
	ld	a, #0x04
	call	_Trampoline_VOID_P1
	pop	de
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:191: for(u8 i=0; i<15; i++){
	inc	-1 (ix)
	jp	00156$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:203: g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x01
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:205: }
	ld	sp, ix
	pop	ix
	ret
_TickGoalCelebration_k_CelebDX_131073_1186:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
_TickGoalCelebration_k_CelebDY_131073_1186:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:208: void UpdateSpritesPositions(){
;	---------------------------------
; Function UpdateSpritesPositions
; ---------------------------------
_UpdateSpritesPositions::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:209: for (u8 i=0;i<15;i++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, #0x0f
	jp	NC,_PutBallSprite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:210: Trampoline_VOID_P1(2,PutPlayerSprite,i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PutPlayerSprite
	ld	a, #0x02
	call	_Trampoline_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:209: for (u8 i=0;i<15;i++){
	inc	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:212: PutBallSprite();
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:213: }
	jp	00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:215: void PutBallSprite(){
;	---------------------------------
; Function PutBallSprite
; ---------------------------------
_PutBallSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:217: attr.D=!g_BallIsVisible;
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	a, (_g_BallIsVisible+0)
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
	ld	e, a
	ld	a, (hl)
	and	a, #0xef
	or	a, e
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:218: attr.SC=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:219: attr.Y = g_Ball.Y-g_FieldCurrentYPosition;
	ld	hl, #_g_Ball+0
	ld	d, (hl)
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	e, a
	ld	a, d
	sub	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:222: u8 logicalSize = g_Ball.Size;
	ld	hl, #_g_Ball + 4
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:224: if (g_Ball.PossessionPlayerId != NO_VALUE) logicalSize = 1;
	ld	a, (#_g_Ball + 6)
	inc	a
	jr	Z, 00102$
	ld	e, #0x01
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:226: if (logicalSize == 0) logicalSize = 1;
	ld	a, e
	or	a, a
	jr	NZ, 00104$
	ld	e, #0x01
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:227: if (logicalSize > 4) logicalSize = 4;
	ld	a, #0x04
	sub	a, e
	jr	NC, 00106$
	ld	e, #0x04
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:232: bool rawMovement = (g_Ball.OldX != g_Ball.X || g_Ball.OldY != g_Ball.Y);
	ld	hl, #(_g_Ball + 9)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -2 (ix)
	sub	a, -4 (ix)
	jr	NZ, 00117$
	ld	a, -1 (ix)
	sub	a, -3 (ix)
	jr	NZ, 00117$
	ld	hl, #(_g_Ball + 11)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, -2 (ix)
	jr	NZ, 00117$
	ld	a, h
	sub	a, -1 (ix)
	jr	NZ, 00117$
	ld	d, #0x00
	jp	00118$
00117$:
	ld	d, #0x01
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:235: g_Ball.OldX = g_Ball.X;
	ld	hl, #(_g_Ball + 9)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:236: g_Ball.OldY = g_Ball.Y;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	hl, #(_g_Ball + 11)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:238: if (rawMovement) {
	ld	a, d
	or	a, a
	jr	Z, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:239: s_StopCooldown = 15; // Keep animation active for ~1/4 sec after last move
	ld	a, #0x0f
	ld	(#_PutBallSprite_s_StopCooldown_65538_1214), a
	jp	00111$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:241: if (s_StopCooldown > 0) s_StopCooldown--;
	ld	a, (_PutBallSprite_s_StopCooldown_65538_1214+0)
	or	a, a
	jr	Z, 00111$
	ld	iy, #_PutBallSprite_s_StopCooldown_65538_1214
	dec	0 (iy)
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:244: bool isAnimating = (s_StopCooldown > 0);
	ld	a, (_PutBallSprite_s_StopCooldown_65538_1214+0)
	or	a, a
	ld	a, #0x01
	jr	NZ, 00120$
	xor	a, a
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:248: bool useAlt = isAnimating && ((g_FrameCounter & 8) != 0);
	or	a, a
	jr	Z, 00121$
	ld	a, (_g_FrameCounter+0)
	bit	3, a
	jr	NZ, 00122$
00121$:
	xor	a, a
	jp	00123$
00122$:
	ld	a, #0x01
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:255: u8 idx = (logicalSize - 1) * 2 + (useAlt ? 1 : 0);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	dec	l
	sla	l
	or	a, a
	jr	Z, 00124$
	ld	de, #0x0001
	jp	00125$
00124$:
	ld	de, #0x0000
00125$:
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:256: attr.Pattern = k_BallPatterns[idx & 7];
	ld	de, #_PutBallSprite_k_BallPatterns_65539_1217+0
	ld	a, l
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x07
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:258: attr.X = g_Ball.X;
	ld	de, (#(_g_Ball + 2) + 0)
	ld	hl, #2
	add	hl, sp
	ld	(hl), e
	inc	hl
	ld	a, d
	and	a, #0x03
	push	bc
	ld	c,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, c
	pop	bc
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:259: attr.P = attr.D;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x01
	ld	hl, #3
	add	hl, sp
	rrca
	rrca
	rrca
	and	a, #0x20
	ld	e, a
	ld	a, (hl)
	and	a, #0xdf
	or	a, e
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:260: V9_SetSpriteP1(15, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0xfe3c
	ld	hl, #0x0003
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:260: V9_SetSpriteP1(15, &attr);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:261: }
	ld	sp, ix
	pop	ix
	ret
_PutBallSprite_k_BallPatterns_65539_1217:
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x74	; 116	't'
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:264: void TickPonPonGirlsAnimation(){
;	---------------------------------
; Function TickPonPonGirlsAnimation
; ---------------------------------
_TickPonPonGirlsAnimation::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:265: if(g_MatchStatus!=MATCH_AFTER_IN_GOAL){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jr	Z, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:266: if(!g_ponPonGirlsInitailized){
	ld	a, (_g_ponPonGirlsInitailized+0)
	or	a, a
	jr	NZ, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:267: InitPonPonGirls();
	call	_InitPonPonGirls
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:268: g_ponPonGirlsInitailized=true;
	ld	hl, #_g_ponPonGirlsInitailized
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:272: for(u8 i=0; i<6; i++){
00123$:
	ld	c, #0x00
00113$:
	ld	a, c
	sub	a, #0x06
	ret	NC
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:273: PutPonPonGirlSprite(i);
	push	bc
	ld	a, c
	call	_PutPonPonGirlSprite
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:272: for(u8 i=0; i<6; i++){
	inc	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:275: return;
	jp	00113$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:277: g_ponPonGirlsInitailized=false;
	ld	hl, #_g_ponPonGirlsInitailized
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:278: if(g_PonPonGrilsPoseCounter==PON_PON_GIRLS_POSE_SPEED){
	ld	a, (_g_PonPonGrilsPoseCounter+0)
	sub	a, #0x03
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:279: g_PonPonGrilsPoseCounter=0;
	ld	hl, #_g_PonPonGrilsPoseCounter
	ld	(hl), #0x00
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:282: g_PonPonGrilsPoseCounter++;
	ld	hl, #_g_PonPonGrilsPoseCounter
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:283: return;
	ret
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:288: g_ponPonPatternIndex++;
	ld	iy, #_g_ponPonPatternIndex
	inc	0 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:289: if(g_ponPonPatternIndex >= 9) g_ponPonPatternIndex = 0;
	ld	a, (_g_ponPonPatternIndex+0)
	sub	a, #0x09
	jr	C, 00110$
	ld	0 (iy), #0x00
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:291: u8 pat = g_GirlPatterns[g_ponPonPatternIndex];
	ld	bc, #_g_GirlPatterns+0
	ld	hl, (_g_ponPonPatternIndex)
	ld	h, #0x00
	add	hl, bc
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:293: for(u8 i=0; i<6; i++){
	ld	b, #0x00
00116$:
	ld	a, b
	sub	a, #0x06
	jr	NC, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:294: g_PonPonGirls[i].PatternId = pat;
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_PonPonGirls
	add	hl, de
	ld	de, #0x0004
	add	hl, de
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:295: PutPonPonGirlSprite(i);
	push	bc
	ld	a, b
	call	_PutPonPonGirlSprite
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:293: for(u8 i=0; i<6; i++){
	inc	b
	jp	00116$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:297: g_peopleState=!g_peopleState;
	ld	a, (_g_peopleState+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:298: PeopleMoving(g_peopleState);
	ld	(_g_peopleState+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:299: }
	jp	_PeopleMoving
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:301: void TickTeamJoystick(u8 direction){
;	---------------------------------
; Function TickTeamJoystick
; ---------------------------------
_TickTeamJoystick::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-59
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:304: if (g_MatchStatus == MATCH_NOT_STARTED || 
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jp	Z,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:305: g_MatchStatus == MATCH_PLAYERS_PRESENTATION || 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:306: g_MatchStatus == MATCH_AFTER_IN_GOAL || 
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0b
	jp	Z,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:307: g_MatchStatus == MATCH_BEFORE_CORNER_KICK || 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:308: g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
	cp	a,#0x06
	jp	Z,00290$
	cp	a,#0x02
	jp	Z,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:309: g_MatchStatus == MATCH_BEFORE_THROW_IN ||
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:310: g_MatchStatus == MATCH_BEFORE_OFFSIDE) {
	cp	a,#0x05
	jp	Z,00290$
	cp	a,#0x03
	jp	Z,00290$
	sub	a, #0x0e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:311: return;
	jp	Z,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:315: if(g_Team1ActivePlayer==NO_VALUE){
	ld	a, (_g_Team1ActivePlayer+0)
	inc	a
	jp	Z,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:316: return;
	jp	00110$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:319: playerId=g_Team1ActivePlayer;
	ld	a, (_g_Team1ActivePlayer+0)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:326: bool frameTriggerPressed = Trampoline_U8(2,IsTeamJoystickTriggerPressed);
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_U8
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:329: bool canSwitch = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:330: if (g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, (#(_g_Ball + 6) + 0)
	cp	a, #0xff
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:331: canSwitch = true; // Always allow switch on loose ball
	ld	c, #0x01
	jp	00118$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:333: u8 ballOwner = g_Ball.PossessionPlayerId;
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:334: if (g_Players[ballOwner].TeamId != teamId) {
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
	dec	a
	jr	Z, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:335: canSwitch = true;
	ld	c, #0x01
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:339: if (canSwitch) {
	ld	a, c
	or	a, a
	jp	Z, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:342: bool forceSwitch = frameTriggerPressed;
	ld	c, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:346: bool inputActive = (direction != DIRECTION_NONE);
	ld	a, -1 (ix)
	sub	a,#0x01
	ld	a, #0x00
	rla
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:348: if (!inputActive || forceSwitch) {
	xor	a,#0x01
	jr	Z, 00136$
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00140$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:350: u8 closestId = Trampoline_U8_P2(2,GetClosestPlayerToBall,teamId, NO_VALUE);
	push	bc
	ld	hl, #0xff01
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:353: if (closestId != NO_VALUE && g_Players[closestId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	-10 (ix), a
	inc	a
	jr	Z, 00120$
	ld	e, -10 (ix)
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
	ld	a, (hl)
	or	a, a
	jr	NZ, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:355: closestId = Trampoline_U8_P2(2,GetClosestPlayerToBall,teamId, closestId);
	push	bc
	ld	h, -10 (ix)
	ld	l, #0x01
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	-10 (ix), a
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:358: if (closestId != playerId && closestId != NO_VALUE) {
	ld	a, -10 (ix)
	sub	a, -2 (ix)
	jp	Z,00140$
	ld	a, -10 (ix)
	inc	a
	jp	Z,00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:360: if (forceSwitch) {
	ld	a, c
	or	a, a
	jr	Z, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:362: if (teamId == TEAM_1) g_Team1ActivePlayer = closestId;
	ld	a, -10 (ix)
	ld	(_g_Team1ActivePlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:364: playerId = closestId; 
	ld	a, -10 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:367: frameTriggerPressed = false;
	ld	-11 (ix), #0x00
	jp	00140$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:372: u8 histThreshold = (g_Ball.PossessionPlayerId == NO_VALUE) ? 10 : 30;
	ld	a, (#(_g_Ball + 6) + 0)
	inc	a
	jr	NZ, 00292$
	ld	-4 (ix), #0x0a
	ld	-3 (ix), #0
	jp	00293$
00292$:
	ld	-4 (ix), #0x1e
	ld	-3 (ix), #0
00293$:
	ld	a, -4 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:375: u16 distX_Curr = (g_Players[playerId].X > g_Ball.X) ? (g_Players[playerId].X - g_Ball.X) : (g_Ball.X - g_Players[playerId].X);
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
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	bc, (#_g_Ball + 2)
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
	jr	NC, 00294$
	ld	a, -4 (ix)
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sbc	a, b
	jp	00295$
00294$:
	ld	a, c
	sub	a, -4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, -3 (ix)
00295$:
	ld	-6 (ix), l
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:376: u16 distY_Curr = (g_Players[playerId].Y > g_Ball.Y) ? (g_Players[playerId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[playerId].Y);
	ld	a, (de)
	ld	-4 (ix), a
	inc	de
	ld	a, (de)
	ld	-3 (ix), a
	ld	de, (#_g_Ball + 0)
	ld	a, e
	sub	a, -4 (ix)
	ld	a, d
	sbc	a, -3 (ix)
	jr	NC, 00296$
	ld	a, -4 (ix)
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sbc	a, d
	jp	00297$
00296$:
	ld	a, e
	sub	a, -4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, -3 (ix)
00297$:
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:377: u16 distCurr = distX_Curr + distY_Curr;
	ld	a, -6 (ix)
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -5 (ix)
	adc	a, h
	ld	-8 (ix), l
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:379: u16 distX_New = (g_Players[closestId].X > g_Ball.X) ? (g_Players[closestId].X - g_Ball.X) : (g_Ball.X - g_Players[closestId].X);
	push	de
	ld	e, -10 (ix)
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
	ld	-6 (ix), a
	ld	a, #>(_g_Players)
	adc	a, h
	ld	-5 (ix), a
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
	jr	NC, 00298$
	ld	a, -4 (ix)
	sub	a, c
	ld	c, a
	ld	a, -3 (ix)
	sbc	a, b
	ld	b, a
	jp	00299$
00298$:
	ld	a, c
	sub	a, -4 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -3 (ix)
	ld	b, a
00299$:
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:380: u16 distY_New = (g_Players[closestId].Y > g_Ball.Y) ? (g_Players[closestId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[closestId].Y);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00300$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	jp	00301$
00300$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
00301$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:381: u16 distNew = distX_New + distY_New;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:383: if (distNew < (distCurr - histThreshold)) {
	ld	c, -9 (ix)
	ld	b, #0x00
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:384: if (teamId == TEAM_1) g_Team1ActivePlayer = closestId;
	ld	a, -10 (ix)
	ld	(_g_Team1ActivePlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:386: playerId = closestId;
	ld	a, -10 (ix)
	ld	-2 (ix), a
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:393: if (g_Players[playerId].Status == PLAYER_STATUS_POSITIONED) return;
	ld	bc, #_g_Players+0
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
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, -15 (ix)
	add	a, #0x12
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x04
	or	a, b
	jp	Z,00290$
	jp	00142$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:400: if (g_ActionCooldown > 0) frameTriggerPressed = false;
	ld	a, (_g_ActionCooldown+0)
	or	a, a
	jr	Z, 00144$
	ld	-11 (ix), #0x00
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:402: if (frameTriggerPressed && g_Ball.PossessionPlayerId == NO_VALUE) {
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00151$
	ld	a, (#(_g_Ball + 6) + 0)
	inc	a
	jp	NZ,00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:403: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
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
	ld	hl, (#_g_Ball + 2)
	ld	a, -4 (ix)
	sub	a, l
	ld	c, a
	ld	a, -3 (ix)
	sbc	a, h
	ld	b, a
	ld	-10 (ix), c
	ld	-9 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:404: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	hl, #_g_Ball
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
	ld	c, -4 (ix)
	ld	b, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:405: if (dx > -16 && dx < 16 && dy > -16 && dy < 16) {
	ld	a, #0xf0
	cp	a, -10 (ix)
	ld	a, #0xff
	sbc	a, -9 (ix)
	jp	PO, 00790$
	xor	a, #0x80
00790$:
	jp	P, 00151$
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	a, e
	sub	a, #0x10
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00151$
	ld	a, #0xf0
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	jp	PO, 00791$
	xor	a, #0x80
00791$:
	jp	P, 00151$
	ld	a, c
	sub	a, #0x10
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:406: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:409: if(g_Ball.PossessionPlayerId==playerId){
	ld	hl, #(_g_Ball + 6)
	ld	a,-2 (ix)
	sub	a,(hl)
	jp	NZ,00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:414: if (frameTriggerPressed) {
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:418: if (g_MatchStatus == MATCH_IN_ACTION) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jp	NZ,00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:420: if (g_ActionCooldown > 0) {
	ld	a, (_g_ActionCooldown+0)
	or	a, a
	jp	NZ, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:423: bool isShooting = false;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:430: u16 plY = g_Players[playerId].Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:431: u16 plX = g_Players[playerId].X;
	ld	a, -15 (ix)
	ld	-10 (ix), a
	ld	a, -14 (ix)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:435: if (plY >= FIELD_BOUND_Y_TOP && plY <= (FIELD_BOUND_Y_TOP + 120)) { 
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, #0x32
	ld	a, -9 (ix)
	sbc	a, #0x00
	jr	C, 00183$
	ld	a, #0xaa
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:436: if (checkDir == DIRECTION_UP || checkDir == DIRECTION_UP_LEFT || checkDir == DIRECTION_UP_RIGHT) {
	ld	a, -1 (ix)
	dec	a
	jr	Z, 00160$
	ld	a, -1 (ix)
	sub	a, #0x08
	jr	Z, 00160$
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	NZ, 00183$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:439: bool allowed = true;
	ld	-3 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:440: if (plY < (FIELD_BOUND_Y_TOP + 20)) {
	ld	a, -7 (ix)
	sub	a, #0x46
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	NC, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:441: if (plX < (GOAL_X_MIN - 5) || plX > (GOAL_X_MAX + 5)) allowed = false;
	ld	a, -5 (ix)
	sub	a, #0x5b
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	C, 00153$
	ld	a, #0x95
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jr	NC, 00157$
00153$:
	ld	-3 (ix), #0x00
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:444: if (allowed) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:445: isShooting = true;
	ld	-8 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:446: Trampoline_VOID_16_P2(4,PerformShot,g_ShotCursorX, FIELD_BOUND_Y_TOP - 40);
	ld	hl, #0x000a
	push	hl
	ld	hl, (_g_ShotCursorX)
	push	hl
	ld	de, #_PerformShot
	ld	a, #0x04
	call	_Trampoline_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:463: Trampoline_VOID_16_P2(4,PerformShot,g_ShotCursorX, FIELD_BOUND_Y_BOTTOM + 40);
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:469: if (isShooting) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:470: if (g_ShootCooldown > 0) return; // Prevent shooting if cooldown active
	ld	a, (_g_ShootCooldown+0)
	or	a, a
	jp	NZ,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:471: g_ActionCooldown = 20;
	ld	hl, #_g_ActionCooldown
	ld	(hl), #0x14
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:472: return;
	jp	00290$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:481: if(direction != DIRECTION_NONE){
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:482: g_Players[playerId].Direction = direction;
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	-4 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:486: g_PassTargetPlayer = Trampoline_U8_P1(4,GetBestPassTarget,playerId);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_GetBestPassTarget
	ld	a, #0x04
	call	_Trampoline_U8_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:488: if (g_PassTargetPlayer != NO_VALUE) {
	ld	(_g_PassTargetPlayer+0), a
	inc	a
	jr	Z, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:490: Trampoline_VOID_P1(2,PerformPass,g_PassTargetPlayer);
	ld	a, (_g_PassTargetPlayer+0)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:493: return; 
	jp	00290$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:497: if((g_FrameCounter % 2)!=0){ 
	ld	iy, #_g_FrameCounter
	bit	0, 0 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:498: return;
	jp	NZ,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:501: if(g_Ball.KickMoveState==NO_VALUE){
	ld	a, (#(_g_Ball + 13) + 0)
	inc	a
	jr	NZ, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:502: g_Ball.KickMoveState=0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:505: u8 moveDir = direction;
	ld	a, -1 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:506: if(g_Ball.KickMoveState != 0){
	ld	a, (#(_g_Ball + 13) + 0)
	ld	-3 (ix), a
	or	a, a
	jr	Z, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:507: moveDir = g_Players[playerId].Direction;
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, (hl)
	ld	-11 (ix), a
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:512: if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
	ld	a, -15 (ix)
	add	a, #0x0b
	ld	-10 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:509: if(moveDir==DIRECTION_NONE){
	ld	a, -11 (ix)
	or	a, a
	jr	NZ, 00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:510: g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:511: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:512: if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:513: g_Players[playerId].PatternId=Trampoline_U8_P1(4,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection);
	ld	a, -15 (ix)
	add	a, #0x08
	ld	-4 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x04
	call	_Trampoline_U8_P1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:515: g_Ball.KickMoveState=0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
	jp	00290$
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:521: const u8 BallBaseDistX[] = { 0, 0, 4, 6, 4, 0, 4, 6, 4 };
	ld	-59 (ix), #0x00
	ld	-58 (ix), #0x00
	ld	-57 (ix), #0x04
	ld	-56 (ix), #0x06
	ld	-55 (ix), #0x04
	ld	-54 (ix), #0x00
	ld	-53 (ix), #0x04
	ld	-52 (ix), #0x06
	ld	-51 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:522: const u8 BallBaseDistY[] = { 0, 6, 4, 0, 4, 6, 4, 0, 4 };
	ld	-50 (ix), #0x00
	ld	-49 (ix), #0x06
	ld	-48 (ix), #0x04
	ld	-47 (ix), #0x00
	ld	-46 (ix), #0x04
	ld	-45 (ix), #0x06
	ld	-44 (ix), #0x04
	ld	-43 (ix), #0x00
	ld	-42 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:541: const i8 BallAlignCorrectX[] = { 0, 0, 0, 0, 2, 0, -2, 0, 0 };
	ld	-41 (ix), #0x00
	ld	-40 (ix), #0x00
	ld	-39 (ix), #0x00
	ld	-38 (ix), #0x00
	ld	-37 (ix), #0x02
	ld	-36 (ix), #0x00
	ld	-35 (ix), #0xfe
	ld	-34 (ix), #0x00
	ld	-33 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:542: const i8 BallAlignCorrectY[] = { 0, 0, 0, 8, 2, -2, 2, 8, 0 };
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x00
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x08
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0xfe
	ld	-26 (ix), #0x02
	ld	-25 (ix), #0x08
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:544: const u8 DribbleAnimOffsets[] = {5, 4, 2, 0};
	ld	-23 (ix), #0x05
	ld	-22 (ix), #0x04
	ld	-21 (ix), #0x02
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:545: const u8 DribbleAnimOffsetsDiag[] = {3, 3, 1, 0};
	ld	-19 (ix), #0x03
	ld	-18 (ix), #0x03
	ld	-17 (ix), #0x01
	ld	-16 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:547: u8 animStep = g_Ball.KickMoveState;
	ld	a, (#(_g_Ball + 13) + 0)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:548: u8 diagStep = (animStep % 2) ? 1 : 2;
	bit	0, -3 (ix)
	jr	Z, 00302$
	ld	bc, #0x0001
	jp	00303$
00302$:
	ld	bc, #0x0002
00303$:
	ld	-2 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:550: u8 currentOffset = DribbleAnimOffsets[animStep];
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	hl, #36
	add	hl, sp
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:551: u8 currentOffsetDiag = DribbleAnimOffsetsDiag[animStep];
	push	de
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	hl, #42
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:553: u8 distX = BallBaseDistX[moveDir] + ((moveDir==DIRECTION_UP || moveDir==DIRECTION_DOWN) ? 0 : (moveDir == DIRECTION_LEFT || moveDir == DIRECTION_RIGHT ? currentOffset : currentOffsetDiag));
	push	de
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	b, (hl)
	ld	a, -11 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00806$
	xor	a, a
00806$:
	ld	c, a
	ld	a, -11 (ix)
	sub	a, #0x07
	ld	a, #0x01
	jr	Z, 00808$
	xor	a, a
00808$:
	ld	-8 (ix), a
	bit	0, c
	jr	NZ, 00307$
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	NZ, 00304$
00307$:
	xor	a, a
	ld	d, a
	jp	00305$
00304$:
	bit	0, -8 (ix)
	jr	NZ, 00312$
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ, 00309$
00312$:
	ld	a, e
	jp	00310$
00309$:
	ld	a, -3 (ix)
00310$:
	ld	d, #0x00
00305$:
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	add	a, l
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:554: u8 distY = BallBaseDistY[moveDir] + ((moveDir==DIRECTION_LEFT || moveDir==DIRECTION_RIGHT) ? 0 : (moveDir == DIRECTION_UP || moveDir == DIRECTION_DOWN ? currentOffset : currentOffsetDiag));
	push	de
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #11
	add	hl, sp
	add	hl, de
	pop	de
	ld	b, (hl)
	bit	0, -8 (ix)
	jr	NZ, 00317$
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ, 00314$
00317$:
	ld	de, #0x0000
	jp	00315$
00314$:
	bit	0, c
	jr	NZ, 00320$
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	Z, 00320$
	ld	e, -3 (ix)
00320$:
00315$:
	ld	a, b
	add	a, e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:403: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-5 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:557: switch(moveDir){
	ld	a, #0x08
	sub	a, -11 (ix)
	jp	C, 00215$
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #00817$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00817$:
	jp	00215$
	jp	00207$
	jp	00211$
	jp	00210$
	jp	00213$
	jp	00208$
	jp	00214$
	jp	00209$
	jp	00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:558: case DIRECTION_UP:
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:559: g_Players[playerId].Y -= 2;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	dec	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:560: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:561: case DIRECTION_DOWN:
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:562: g_Players[playerId].Y += 2;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:563: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:564: case DIRECTION_LEFT:
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:565: g_Players[playerId].X -= 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	dec	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:566: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:567: case DIRECTION_RIGHT:
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:568: g_Players[playerId].X += 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:569: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:570: case DIRECTION_UP_RIGHT:
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:571: g_Players[playerId].Y -= diagStep;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -2 (ix)
	ld	d, #0x00
	cp	a, a
	sbc	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:572: g_Players[playerId].X += diagStep;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:573: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:574: case DIRECTION_UP_LEFT:
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:575: g_Players[playerId].Y -= diagStep;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -2 (ix)
	ld	d, #0x00
	cp	a, a
	sbc	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:576: g_Players[playerId].X -= diagStep;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:577: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:578: case DIRECTION_DOWN_RIGHT:
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:579: g_Players[playerId].Y += diagStep;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	push	iy
	pop	hl
	add	hl, de
	ex	de, hl
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:580: g_Players[playerId].X += diagStep;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	iy
	pop	hl
	add	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:581: break;
	jp	00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:582: case DIRECTION_DOWN_LEFT:
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:583: g_Players[playerId].Y += diagStep;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -2 (ix)
	ld	d, #0x00
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:584: g_Players[playerId].X -= diagStep;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:586: }
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:588: if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, e
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00217$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:589: if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	cp	a, e
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00219$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:590: if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, e
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00221$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:591: if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, e
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00223$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:595: if (moveDir == DIRECTION_UP) {
	ld	a, c
	or	a, a
	jr	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:596: g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:597: g_Ball.X = g_Players[playerId].X + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
	jp	00246$
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:598: } else if (moveDir == DIRECTION_DOWN) {
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	NZ, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:599: g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir] + 5;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	bc, #0x0005
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:600: g_Ball.X = g_Players[playerId].X + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
	jp	00246$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:601: } else if (moveDir == DIRECTION_LEFT) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:602: g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:603: g_Ball.Y = g_Players[playerId].Y + BallAlignCorrectY[moveDir] - 4;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, l
	add	a, #0xfc
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
	jp	00246$
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:604: } else if (moveDir == DIRECTION_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ, 00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:605: g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:606: g_Ball.Y = g_Players[playerId].Y + BallAlignCorrectY[moveDir] - 4;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, l
	add	a, #0xfc
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
	jp	00246$
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:404: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:607: } else if (moveDir == DIRECTION_UP_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ, 00233$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:608: g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:609: g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
	jp	00246$
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:610: } else if (moveDir == DIRECTION_UP_LEFT) {
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	NZ, 00230$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:611: g_Ball.Y = g_Players[playerId].Y - distY + BallAlignCorrectY[moveDir];
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:612: g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
	jp	00246$
00230$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:613: } else if (moveDir == DIRECTION_DOWN_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x04
	jr	NZ, 00227$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:614: g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir];
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:615: g_Ball.X = g_Players[playerId].X + distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
	jp	00246$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:616: } else if (moveDir == DIRECTION_DOWN_LEFT) {
	ld	a, -11 (ix)
	sub	a, #0x06
	jr	NZ, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:617: g_Ball.Y = g_Players[playerId].Y + distY + BallAlignCorrectY[moveDir];
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #27
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:618: g_Ball.X = g_Players[playerId].X - distX + BallAlignCorrectX[moveDir];
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	hl, #18
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 2)), de
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:621: g_Players[playerId].TargetY=g_Players[playerId].Y;
	ld	a, -15 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:622: g_Players[playerId].TargetX=g_Players[playerId].X;
	ld	a, -15 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:623: g_Players[playerId].Status=PLAYER_STATUS_HAS_BALL; 
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:624: g_Players[playerId].Direction=moveDir;
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	c, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, -11 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:626: g_Players[playerId].PatternId=Trampoline_U8_P1(4,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection);
	ld	a, -15 (ix)
	add	a, #0x08
	ld	e, a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	d, a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	push	bc
	push	de
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x04
	call	_Trampoline_U8_P1
	pop	de
	pop	bc
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:627: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	ld	a, (bc)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:629: g_Ball.Direction = moveDir;
	ld	hl, #(_g_Ball + 5)
	ld	a, -11 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:631: g_Ball.KickMoveState++;
	ld	a, (#(_g_Ball + 13) + 0)
	ld	c, a
	inc	c
	ld	hl, #(_g_Ball + 13)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:632: if(g_Ball.KickMoveState>3){
	ld	a, #0x03
	sub	a, c
	jr	NC, 00248$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:633: g_Ball.KickMoveState=0;
	ld	(hl), #0x00
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:635: if(g_Ball.KickMoveState==1) PlayAyFx(AYFX_BALL);
	ld	a, (#(_g_Ball + 13) + 0)
	dec	a
	jp	NZ,00290$
	ld	a, #0x05
	call	_PlayAyFx
	jp	00290$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:641: if (frameTriggerPressed) {
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00273$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:642: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (#_g_Ball + 2)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:643: i16 dy = (i16)g_Players[playerId].Y - (i16)g_Ball.Y;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:646: if (dx > -24 && dx < 24 && dy > -24 && dy < 24) {
	ld	a, #0xe8
	cp	a, c
	ld	a, #0xff
	sbc	a, b
	jp	PO, 00832$
	xor	a, #0x80
00832$:
	jp	P, 00273$
	ld	a, c
	sub	a, #0x18
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00273$
	ld	a, #0xe8
	cp	a, e
	ld	a, #0xff
	sbc	a, d
	jp	PO, 00833$
	xor	a, #0x80
00833$:
	jp	P, 00273$
	ld	a, e
	sub	a, #0x18
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00273$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:658: if (dx < 0) {
	ld	a, b
	rlca
	and	a,#0x01
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:656: if (dy < 0) {
	bit	7, d
	jr	Z, 00261$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:658: if (dx < 0) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00255$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:659: slidePose = PLAYER_POSE_TACKLE_FROM_UP_LEFT;    // UP-LEFT -> Slides towards Bottom-Right
	ld	-6 (ix), #0x24
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:660: slideDir = DIRECTION_DOWN_RIGHT;
	ld	-5 (ix), #0x04
	jp	00262$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:662: slidePose = PLAYER_POSE_TACKLE_FROM_UP_RIGHT;   // UP-RIGHT -> Slides towards Bottom-Left
	ld	-6 (ix), #0xac
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:663: slideDir = DIRECTION_DOWN_LEFT;
	ld	-5 (ix), #0x06
	jp	00262$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:667: if (dx < 0) {
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00258$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:668: slidePose = PLAYER_POSE_TACKLE_FROM_DOWN_LEFT;  // DOWN-LEFT -> Slides towards Top-Right
	ld	-6 (ix), #0x22
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:669: slideDir = DIRECTION_UP_RIGHT;
	ld	-5 (ix), #0x02
	jp	00262$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:671: slidePose = PLAYER_POSE_TACKLE_FROM_DOWN_RIGHT; // DOWN-RIGHT -> Slides towards Top-Left
	ld	-6 (ix), #0xae
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:672: slideDir = DIRECTION_UP_LEFT;
	ld	-5 (ix), #0x08
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:675: PlayAyFx(AYFX_TACKLE);
	ld	a, #0x01
	call	_PlayAyFx
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:677: if (slidePose != 0) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00264$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:678: g_Players[playerId].PatternId = slidePose;
	ld	a, -15 (ix)
	add	a, #0x08
	ld	-4 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:679: g_Players[playerId].Direction = slideDir;
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	-4 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:683: Trampoline_VOID_P1(2,PutBallOnPlayerFeet,playerId);
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:684: g_Ball.StealCooldown = 45; // Protect possession for 0.75s
	ld	hl, #(_g_Ball + 15)
	ld	(hl), #0x2d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:686: if (slidePose != 0) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00266$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:687: g_Players[playerId].Status = PLAYER_STATUS_POSITIONED; // Lock visual (Override HAS_BALL)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:690: g_ActionCooldown = 15; // Set 15 frames cooldown to avoid immediate pass
	ld	hl, #_g_ActionCooldown
	ld	(hl), #0x0f
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:691: return;
	jp	00290$
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:695: if((g_FrameCounter % 2)!=0){ 
	ld	hl, #_g_FrameCounter
	bit	0, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:696: return;
	jp	NZ,00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:403: i16 dx = (i16)g_Players[playerId].X - (i16)g_Ball.X;
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-9 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:701: if (direction <= 8) {
	ld	a, #0x08
	sub	a, -1 (ix)
	jp	C, 00277$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:702: g_Players[playerId].X += k_MoveDX[direction];
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	add	a, #<(_TickTeamJoystick_k_MoveDX_131075_1301)
	ld	-3 (ix), a
	ld	a, #0x00
	adc	a, #>(_TickTeamJoystick_k_MoveDX_131075_1301)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:703: g_Players[playerId].Y += k_MoveDY[direction];
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	add	a, #<(_TickTeamJoystick_k_MoveDY_131075_1301)
	ld	-3 (ix), a
	ld	a, #0x00
	adc	a, #>(_TickTeamJoystick_k_MoveDY_131075_1301)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00277$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:707: if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00279$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:708: if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00281$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:710: g_Players[playerId].TargetY=g_Players[playerId].Y;
	ld	a, -15 (ix)
	add	a, #0x0e
	ld	-5 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:711: g_Players[playerId].TargetX=g_Players[playerId].X;
	ld	a, -15 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:512: if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
	ld	a, -15 (ix)
	add	a, #0x0b
	ld	-3 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:712: if(direction==DIRECTION_NONE){
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00285$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:713: g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:714: if(g_Players[playerId].PreviousDirection!=DIRECTION_NONE){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, a
	jr	Z, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:715: g_Players[playerId].PatternId=Trampoline_U8_P1(4,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection);
	ld	a, -15 (ix)
	add	a, #0x08
	ld	-5 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, -6 (ix)
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x04
	call	_Trampoline_U8_P1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
	jp	00286$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:720: g_Players[playerId].Status=PLAYER_STATUS_NONE;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:722: g_Players[playerId].Direction=direction;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:723: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:727: }
	ld	sp, ix
	pop	ix
	ret
_TickTeamJoystick_k_MoveDX_131075_1301:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x02	;  2
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xfe	; -2
	.db #0xfe	; -2
	.db #0xfe	; -2
_TickTeamJoystick_k_MoveDY_131075_1301:
	.db #0x00	;  0
	.db #0xfe	; -2
	.db #0xfe	; -2
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x02	;  2
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xfe	; -2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:728: void CornerKick(u8 teamId){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:730: V9990_PrintLayerAStringAtPos(10,12,"CORNER KICK");
	ld	hl, #___str_0
	push	hl
	ld	l, #0x0c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_PrintLayerAStringAtPos
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:731: PlayPCM(PCM_REFEREER);
	ld	a, #0x05
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:732: PlayPCM(PCM_CORNERKICK);
	xor	a, a
	call	_PlayPCM
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:733: g_MatchStatus=MATCH_BEFORE_CORNER_KICK;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:734: g_RestartKickTeamId = teamId;
	ld	a, -2 (ix)
	ld	(_g_RestartKickTeamId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:735: g_CornerKickTargetId = NO_VALUE;
	ld	hl, #_g_CornerKickTargetId
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:736: g_Timer = 0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:739: if (g_Ball.X < FIELD_POS_X_CENTER) g_CornerKickSide = CORNER_SIDE_LEFT;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:740: else g_CornerKickSide = CORNER_SIDE_RIGHT;
	ld	hl, #_g_CornerKickSide
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:745: u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
	jp	00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:740: else g_CornerKickSide = CORNER_SIDE_RIGHT;
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:745: u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
	ld	de, #0x000a
	jp	00156$
00155$:
	ld	de, #0x00ec
00156$:
	ld	-23 (ix), e
	ld	-22 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:746: u16 kickY = (teamId == TEAM_1) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:749: if (teamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00105$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x00
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:750: else g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x02
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:754: if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = Trampoline_U8_P2(2,GetPlayerIdByRole,teamId, PLAYER_ROLE_LEFT_STRIKER);
	ld	a, (_g_CornerKickSide+0)
	or	a, a
	jr	NZ, 00108$
	push	bc
	ld	h, #0x05
	ld	l, -2 (ix)
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	-19 (ix), a
	jp	00109$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:755: else kickerId = Trampoline_U8_P2(2,GetPlayerIdByRole,teamId, PLAYER_ROLE_RIGHT_STRIKER);
	push	bc
	ld	h, #0x06
	ld	l, -2 (ix)
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	-19 (ix), a
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:758: g_Ball.PossessionPlayerId = NO_VALUE; 
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:759: Trampoline_VOID_P1(2,SetPlayerBallPossession,NO_VALUE);
	push	bc
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:760: if(teamId == TEAM_1) g_Team1ActivePlayer = kickerId; // Ensure kicker is selected active
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00111$
	ld	a, -19 (ix)
	ld	(_g_Team1ActivePlayer+0), a
	jp	00112$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:761: else g_Team2ActivePlayer = kickerId;
	ld	a, -19 (ix)
	ld	(_g_Team2ActivePlayer+0), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:769: i8 offX = 0; i8 offY = 0;
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:770: if (teamId == TEAM_2 && g_CornerKickSide == CORNER_SIDE_RIGHT) {
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00114$
	ld	a, (_g_CornerKickSide+0)
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:771: offX = -30;
	ld	l, #0xe2
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:772: offY = -5;
	ld	-1 (ix), #0xfb
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:775: g_Ball.X = kickX + offX;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:776: g_Ball.Y = kickY + offY;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:777: g_Ball.PreviousY = g_Ball.Y;
	ld	((_g_Ball + 7)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:781: bool attackingUp = (teamId == TEAM_1);
	ld	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:785: u16 yBoxInside     = (attackingUp) ? (FIELD_BOUND_Y_TOP + 40) : (FIELD_BOUND_Y_BOTTOM - 40);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:786: u16 yBoxOutside    = (attackingUp) ? (FIELD_BOUND_Y_TOP + 90) : (FIELD_BOUND_Y_BOTTOM - 90);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:787: u16 yMidfieldAdv   = (attackingUp) ? (FIELD_BOUND_Y_TOP + 160) : (FIELD_BOUND_Y_BOTTOM - 160);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:789: u16 ySafety        = (attackingUp) ? (FIELD_BOUND_Y_BOTTOM - 100) : (FIELD_BOUND_Y_TOP + 100);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:791: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00152$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:792: g_Players[i].Status = PLAYER_STATUS_NONE;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:793: g_Players[i].TargetX = g_Players[i].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:794: g_Players[i].TargetY = g_Players[i].Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:796: u8 role = g_Players[i].Role;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:797: bool isAttacker = (g_Players[i].TeamId == teamId);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:800: if (i == kickerId) {
	ld	a, -19 (ix)
	sub	a, -1 (ix)
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:801: g_Players[i].TargetX = kickX;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -23 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -22 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:802: g_Players[i].TargetY = kickY;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -21 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -20 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:803: continue;
	jp	00149$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:806: if (isAttacker) {
	ld	a, c
	or	a, a
	jp	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:808: if (role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:810: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:811: g_Players[i].TargetY = (attackingUp) ? FIELD_BOUND_Y_BOTTOM - 20 : FIELD_BOUND_Y_TOP + 20;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:813: else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:814: if (role == PLAYER_ROLE_LEFT_DEFENDER) {
	ld	a, c
	or	a, a
	jr	Z, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:816: g_Players[i].TargetX = FIELD_POS_X_CENTER - 30;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:817: g_Players[i].TargetY = yMidfieldAdv;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00149$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:820: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:821: g_Players[i].TargetY = ySafety;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
	jp	00149$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:824: else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:825: if (role == PLAYER_ROLE_LEFT_HALFFIELDER) {
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:827: g_Players[i].TargetX = FIELD_POS_X_CENTER - 50; 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x46
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:828: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:831: g_Players[i].TargetX = FIELD_POS_X_CENTER + 30;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x96
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:832: g_Players[i].TargetY = yMidfieldAdv;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
	jp	00149$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:838: g_Players[i].TargetX = FIELD_POS_X_CENTER + 50;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0xaa
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:839: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:844: if (role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:846: g_Players[i].TargetX = FIELD_POS_X_CENTER;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:847: g_Players[i].TargetY = (attackingUp) ? FIELD_POS_Y_TEAM2_GOALKEEPER : FIELD_POS_Y_TEAM1_GOALKEEPER;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:849: else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:851: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_DEFENDER) ? FIELD_POS_X_CENTER - 20 : FIELD_POS_X_CENTER + 20;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:852: g_Players[i].TargetY = yBoxInside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -17 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00149$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:854: else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:856: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_HALFFIELDER) ? FIELD_POS_X_CENTER - 40 : FIELD_POS_X_CENTER + 40;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:857: g_Players[i].TargetY = yBoxOutside;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -15 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00149$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:861: g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_STRIKER) ? FIELD_POS_X_LEFT + 20 : FIELD_POS_X_RIGHT - 20;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:862: g_Players[i].TargetY = yMidfield;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xf3
	inc	hl
	ld	(hl), #0x00
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:791: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00152$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:866: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "CORNER KICK"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:868: void PeopleMoving(bool isBasicMoving){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:869: u16 tileId=PUBLIC_TILE_1;
	ld	bc, #0x0000
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:870: u8  yPosition=0;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:871: if(!g_ActiveFieldZone==FIELD_NORTH_ZONE){
	ld	a, (_g_ActiveFieldZone+0)
	or	a, a
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:872: yPosition=62;
	ld	-5 (ix), #0x3e
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:876: if(!isBasicMoving){
	ld	a, e
	or	a, a
	jr	NZ, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:877: tileId=PUBLIC_TILE_2;
	ld	bc, #0x0801
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:879: for (u8 y=yPosition;y<yPosition+2;y++){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:880: for (u8 x=0;x<32;x++){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:880: for (u8 x=0;x<32;x++){
	inc	-1 (ix)
	jp	00110$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:879: for (u8 y=yPosition;y<yPosition+2;y++){
	inc	-2 (ix)
	jp	00113$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:884: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:886: void PutPonPonGirlSprite(u8 ponPonGirlId){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:888: attr.D=!g_PonPonGirlsAreVisible;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:890: attr.SC=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:891: int diffY = (int)g_PonPonGirls[ponPonGirlId].Y - g_FieldCurrentYPosition;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:892: attr.X=g_PonPonGirls[ponPonGirlId].X;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:893: if(diffY < -32 || diffY > 212){
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:894: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:895: attr.Y=216; // Force off-screen
	ld	-7 (ix), #0xd8
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:897: attr.Y=(u8)diffY;
	ld	-7 (ix), c
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:899: attr.Pattern = g_PonPonGirls[ponPonGirlId].PatternId;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:900: attr.P = 1;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:901: V9_SetSpriteP1(ponPonGirlId+20, &attr);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:901: V9_SetSpriteP1(ponPonGirlId+20, &attr);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:902: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:904: void TickThrowIn() {
;	---------------------------------
; Function TickThrowIn
; ---------------------------------
_TickThrowIn::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-42
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:905: if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x03
	jp	NZ,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:912: if (g_Timer == 0) {
	ld	a, (_g_Timer+0)
	or	a, a
	jp	NZ, 00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:913: s_ThrowTargetId = NO_VALUE;
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1356
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:914: s_JoyMoved = false;
	ld	hl, #_TickThrowIn_s_JoyMoved_65537_1356
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:915: s_ForceThrowTimer = 0;
	ld	hl, #0x0000
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1356), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:918: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:919: g_Ball.X = FIELD_BOUND_X_LEFT;
	ld	hl, #0x000a
	ld	((_g_Ball + 2)), hl
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:921: g_Ball.X = FIELD_BOUND_X_RIGHT;
	ld	hl, #0x00ec
	ld	((_g_Ball + 2)), hl
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:925: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, (#_g_Ball + 0)
	ld	de, #0x0032
	cp	a, a
	sbc	hl, de
	jr	NC, 00107$
	ld	hl, #0x0032
	ld	(_g_Ball), hl
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:926: if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) g_Ball.Y = FIELD_BOUND_Y_BOTTOM;
	ld	hl, (#_g_Ball + 0)
	ld	a, #0xb3
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00109$
	ld	hl, #0x01b3
	ld	(_g_Ball), hl
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:928: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:931: u8 bestId = NO_VALUE;
	ld	-8 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:932: u16 minDist = 65535;
	ld	bc, #0xffff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:935: u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
	ld	-22 (ix), #0xff
	ld	-21 (ix), #0xff
	ld	-20 (ix), #0xff
	ld	-19 (ix), #0xff
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:936: u8 o1=NO_VALUE, o2=NO_VALUE; u16 do1=65535, do2=65535;
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:938: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00259$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:941: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
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
;	spillPairReg hl
;	spillPairReg hl
	ld	-7 (ix), l
	ld	-6 (ix), h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:918: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:941: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jr	NC, 00111$
	ld	a, e
	sub	a, l
	ld	-5 (ix), a
	ld	a, d
	sbc	a, h
	ld	-4 (ix), a
	jp	00112$
00111$:
	ld	a, l
	sub	a, e
	ld	-5 (ix), a
	ld	a, h
	sbc	a, d
	ld	-4 (ix), a
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:942: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:925: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:942: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	a, e
	sub	a, -3 (ix)
	ld	a, d
	sbc	a, -2 (ix)
	jr	NC, 00114$
	ld	a, -3 (ix)
	sub	a, e
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, d
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	jp	00115$
00114$:
	ld	a, e
	sub	a, -3 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -2 (ix)
	ld	d, a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:945: if(g_Players[i].TeamId == g_RestartKickTeamId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #9
	add	hl, de
	ld	e, (hl)
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, e
	jr	NZ, 00260$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00260$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:946: if(dist < minDist) { minDist = dist; bestId = i; }
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jr	NC, 00260$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, -1 (ix)
	ld	-8 (ix), a
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:938: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00259$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:949: g_ThrowInPlayerId = bestId;
	ld	a, -8 (ix)
	ld	(_g_ThrowInPlayerId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:952: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00262$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:953: if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
	ld	a, (_g_ThrowInPlayerId+0)
	sub	a, -1 (ix)
	jp	Z,00145$
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	bc,#13
	add	hl,bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00145$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	-10 (ix), a
	sub	a, #0x0e
	jp	Z,00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:956: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:918: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:956: if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00127$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-8 (ix), a
	jp	00128$
00127$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-8 (ix), a
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:957: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:925: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:957: if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00130$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	add	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	adc	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	jp	00131$
00130$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	add	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	adc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:959: if (g_Players[i].TeamId == g_RestartKickTeamId) {
	ld	a, -10 (ix)
	ld	hl, #_g_RestartKickTeamId
	sub	a, (hl)
	jr	NZ, 00143$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:961: if (dist < dt1) { dt2=dt1; t2=t1; dt1=dist; t1=i; }
	ld	a, -3 (ix)
	sub	a, -20 (ix)
	ld	a, -2 (ix)
	sbc	a, -19 (ix)
	jr	NC, 00135$
	ld	a, -20 (ix)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	ld	-17 (ix), a
	ld	a, -22 (ix)
	ld	-21 (ix), a
	ld	a, -3 (ix)
	ld	-20 (ix), a
	ld	a, -2 (ix)
	ld	-19 (ix), a
	ld	a, -1 (ix)
	ld	-22 (ix), a
	jp	00145$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:962: else if (dist < dt2) { dt2=dist; t2=i; }
	ld	a, -3 (ix)
	sub	a, -18 (ix)
	ld	a, -2 (ix)
	sbc	a, -17 (ix)
	jr	NC, 00145$
	ld	a, -3 (ix)
	ld	-18 (ix), a
	ld	a, -2 (ix)
	ld	-17 (ix), a
	ld	a, -1 (ix)
	ld	-21 (ix), a
	jp	00145$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:965: if (dist < do1) { do2=do1; o2=o1; do1=dist; o1=i; }
	ld	a, -3 (ix)
	sub	a, -14 (ix)
	ld	a, -2 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00140$
	ld	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -16 (ix)
	ld	-15 (ix), a
	ld	a, -3 (ix)
	ld	-14 (ix), a
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-16 (ix), a
	jp	00145$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:966: else if (dist < do2) { do2=dist; o2=i; }
	ld	a, -3 (ix)
	sub	a, -12 (ix)
	ld	a, -2 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00145$
	ld	a, -3 (ix)
	ld	-12 (ix), a
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-15 (ix), a
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:952: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00262$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:971: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jp	Z,00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:972: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
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
	add	a, #0x10
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	hl, #(_g_Ball + 2)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:973: g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #_g_Ball
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:974: g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_NONE;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	a, -4 (ix)
	add	a, #0x12
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:975: if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:972: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:975: if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	a, #<(_g_Players)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x78
	ld	a, -5 (ix)
	sbc	a, #0x00
	jr	NC, 00148$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	jp	00151$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:976: else g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x07
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:981: bool isLeft = (g_Ball.X < FIELD_POS_X_CENTER);
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	de, #0x0078
	cp	a, a
	sbc	hl, de
	ld	a, #0x00
	rla
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:982: u8 crowdIds[4] = {t1, t2, o1, o2};
	ld	a, -22 (ix)
	ld	-42 (ix), a
	ld	a, -21 (ix)
	ld	-41 (ix), a
	ld	a, -16 (ix)
	ld	-40 (ix), a
	ld	a, -15 (ix)
	ld	-39 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:985: i16 yOffsets[4] = {-30, 20, -15, 35}; 
	ld	-38 (ix), #0xe2
	ld	-37 (ix), #0xff
	ld	-36 (ix), #0x14
	ld	-35 (ix), #0
	ld	-34 (ix), #0xf1
	ld	-33 (ix), #0xff
	ld	-32 (ix), #0x23
	ld	-31 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:986: u16 xOffsets[4] = {15, 35, 25, 45}; 
	ld	-30 (ix), #0x0f
	ld	-29 (ix), #0
	ld	-28 (ix), #0x23
	ld	-27 (ix), #0
	ld	-26 (ix), #0x19
	ld	-25 (ix), #0
	ld	-24 (ix), #0x2d
	ld	-23 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:988: for(u8 k=0; k<4; k++) {
	ld	-2 (ix), #0x00
00264$:
	ld	a, -2 (ix)
	sub	a, #0x04
	jp	NC, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:989: u8 pid = crowdIds[k];
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:990: if(pid != NO_VALUE) {
	ld	-3 (ix), a
	inc	a
	jp	Z,00265$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:991: g_Players[pid].Status = PLAYER_STATUS_NONE;
	ld	c, -3 (ix)
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
	ld	hl, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:994: i16 ty = (i16)g_Ball.Y + yOffsets[k];
	ld	de, (#_g_Ball + 0)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	push	de
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #6
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:996: if(ty < FIELD_BOUND_Y_TOP) ty = FIELD_BOUND_Y_TOP;
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x32
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00153$
	ld	de, #0x0032
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:997: if(ty > FIELD_BOUND_Y_BOTTOM) ty = FIELD_BOUND_Y_BOTTOM;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xb3
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	PO, 00717$
	xor	a, #0x80
00717$:
	jp	P, 00155$
	ld	de, #0x01b3
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:998: g_Players[pid].TargetY = (u16)ty;
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:918: if (g_Ball.X < FIELD_POS_X_CENTER) {
	ld	de, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1002: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	ld	hl, #0x0010
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	push	de
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #14
	add	hl, sp
	add	hl, de
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1003: g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
	ld	a, c
	add	a, #0x0a
	ld	c, a
	jr	NC, 00718$
	inc	b
00718$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1002: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1001: if (isLeft) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1002: g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1003: g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
	ld	a, #0x07
	ld	(bc), a
	jp	00265$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1005: g_Players[pid].TargetX = g_Ball.X - xOffsets[k];
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1006: g_Players[pid].Direction = DIRECTION_RIGHT; // Look at thrower
	ld	a, #0x03
	ld	(bc), a
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:988: for(u8 k=0; k<4; k++) {
	inc	-2 (ix)
	jp	00264$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1022: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jr	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1023: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	bc, (_g_ThrowInPlayerId)
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
	ex	de, hl
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1024: g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #0x000e
	add	hl, de
	ex	de, hl
	ld	bc, (#_g_Ball + 0)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:925: if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
	ld	hl, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1028: if (g_Ball.Y < 140) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	ld	a, l
	sub	a, #0x8c
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00168$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x00
	jp	00171$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1029: else if (g_Ball.Y > 280) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	a, #0x18
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00165$
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x02
	jp	00171$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1030: else g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	ld	hl, #_g_FieldScrollingActionInProgress
	ld	(hl), #0x01
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1034: if (g_ThrowInPlayerId != NO_VALUE) {
	ld	a, (_g_ThrowInPlayerId+0)
	inc	a
	jp	Z,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1035: i16 dx = (i16)g_Players[g_ThrowInPlayerId].X - (i16)g_Players[g_ThrowInPlayerId].TargetX;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #0x0002
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1036: i16 dy = (i16)g_Players[g_ThrowInPlayerId].Y - (i16)g_Players[g_ThrowInPlayerId].TargetY;
	ld	l, e
	ld	h, d
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	-2 (ix), l
	ld	-1 (ix), a
	ld	hl, #14
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1038: if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
	ld	a, c
	sub	a, #0xfc
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C, 00251$
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00721$
	xor	a, #0x80
00721$:
	jp	M, 00251$
	ld	a, e
	sub	a, #0xfc
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jp	C, 00251$
	ld	a, #0x04
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00722$
	xor	a, #0x80
00722$:
	jp	M, 00251$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1039: g_Players[g_ThrowInPlayerId].X = g_Players[g_ThrowInPlayerId].TargetX;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1040: g_Players[g_ThrowInPlayerId].Y = g_Players[g_ThrowInPlayerId].TargetY;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	hl, #14
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1041: g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_POSITIONED;
	ld	bc, (_g_ThrowInPlayerId)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1044: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	bc, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:972: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	de, (_g_ThrowInPlayerId)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1045: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	de, #_g_Players
	add	hl, de
	ld	de, #0x0008
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1044: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	a, c
	sub	a, #0x78
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1045: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x93
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1046: g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x03
	jp	00174$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1048: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_RIGHT_1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x1c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1049: g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x07
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1053: g_Ball.X = g_Players[g_ThrowInPlayerId].X;
	ld	bc, (_g_ThrowInPlayerId)
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
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	((_g_Ball + 2)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1055: if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:972: g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
	ld	de, (_g_ThrowInPlayerId)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1045: g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
	ld	de, #_g_Players
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1055: if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
	ld	a, (hl)
	inc	hl
	ld	e, (hl)
	ld	-2 (ix), a
	ld	-1 (ix), e
	ld	a, c
	sub	a, #0x78
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00176$
	ld	a, -2 (ix)
	add	a, #0xf2
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
	jp	00177$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1056: else g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 12;
	ld	a, -2 (ix)
	add	a, #0xf4
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	(_g_Ball), bc
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1058: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1062: u8 crowdReady = 1;
	ld	(hl), #0x01
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1064: for(i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1066: u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
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
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	de, #16
	add	hl, de
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1044: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	hl, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1066: u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00271$
	ld	a, -11 (ix)
	sub	a, l
	ld	b, a
	ld	a, -10 (ix)
	sbc	a, h
	jp	00272$
00271$:
	ld	a, l
	sub	a, -11 (ix)
	ld	b, a
	ld	a, h
	sbc	a, -10 (ix)
00272$:
	ld	-5 (ix), b
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1067: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	a, -13 (ix)
	add	a, #0x0e
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1074: i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1067: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, -3 (ix)
	ld	a, h
	sbc	a, -2 (ix)
	jr	NC, 00273$
	ld	a, -3 (ix)
	sub	a, l
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, h
	jp	00274$
00273$:
	ld	a, l
	sub	a, -3 (ix)
	ld	e, a
	ld	a, h
	sbc	a, -2 (ix)
00274$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1069: if (tdx < 100 && tdy < 100) {
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -5 (ix)
	ld	l, -4 (ix)
	sub	a, #0x64
	ld	a, l
	sbc	a, #0x00
	jp	NC, 00267$
	ld	a, e
	sub	a, #0x64
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00267$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1071: if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
	ld	a, -13 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x04
	or	a, d
	jp	Z,00267$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1073: i16 pdx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
	ld	a, -13 (ix)
	add	a, #0x02
	ld	-5 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de, hl
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	cp	a, a
	sbc	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1074: i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	sbc	a, -2 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1075: if (pdx >= -4 && pdx <= 4 && pdy >= -4 && pdy <= 4) {
	ld	a, e
	sub	a, #0xfc
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00179$
	ld	a, #0x04
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00724$
	xor	a, #0x80
00724$:
	jp	M, 00179$
	ld	a, l
	sub	a, #0xfc
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00179$
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00725$
	xor	a, #0x80
00725$:
	jp	M, 00179$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1076: g_Players[i].X = g_Players[i].TargetX;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1077: g_Players[i].Y = g_Players[i].TargetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1078: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
	jp	00267$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1080: crowdReady = 0;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1081: break;
	jp	00189$
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1064: for(i=0; i<14; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	C, 00266$
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1087: if (crowdReady) {
	ld	a, c
	or	a, a
	jr	Z, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1088: g_Timer++;
	ld	iy, #_g_Timer
	inc	0 (iy)
	jp	00192$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1090: g_Timer = 1; // Wait
	ld	a, #0x01
	ld	(#_g_Timer), a
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1094: if (g_Timer > 60) {
	ld	a, #0x3c
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jp	NC, 00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1100: u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1102: for(i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1103: if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
	ld	a, (_g_ThrowInPlayerId+0)
	sub	a, -1 (ix)
	jp	Z,00206$
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	bc,#13
	add	hl,bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00206$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	hl, #9
	add	hl, bc
	ld	c, (hl)
	ld	a, c
	sub	a, #0x0e
	jp	Z,00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1105: if (g_Players[i].TeamId == g_RestartKickTeamId) {
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, c
	jp	NZ,00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1106: u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1044: if(g_Ball.X < FIELD_POS_X_CENTER) {
	ld	de, (#(_g_Ball + 2) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1106: u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00275$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00276$
00275$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00276$:
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1107: u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1067: u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1107: u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00277$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00278$
00277$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00278$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1108: u16 d = dx+dy;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1110: if (d < 200) { // Safety check
	ld	c, l
	ld	b, h
	ld	a, c
	sub	a, #0xc8
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1111: if (d < dt1) { dt2=dt1; t2=t1; dt1=d; t1=i; }
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00200$
	ld	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -15 (ix)
	ld	-14 (ix), a
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -1 (ix)
	ld	-15 (ix), a
	jp	00206$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1112: else if (d < dt2) { dt2=d; t2=i; }
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00206$
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -1 (ix)
	ld	-14 (ix), a
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1102: for(i=0; i<14; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	C, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1116: c1 = t1; c2 = t2;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1120: if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1;
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	inc	a
	jr	NZ, 00209$
	ld	a, -15 (ix)
	inc	a
	jr	Z, 00209$
	ld	a, -15 (ix)
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1356+0), a
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1122: if (s_ThrowTargetId == NO_VALUE) {
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	inc	a
	jr	NZ, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1123: s_ThrowTargetId = Trampoline_U8_P2(2,GetClosestPlayerToBall,g_RestartKickTeamId, g_ThrowInPlayerId);
	push	bc
	ld	a, (_g_ThrowInPlayerId+0)
	ld	h, a
	ld	a, (_g_RestartKickTeamId+0)
	ld	l, a
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	pop	bc
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1356+0), a
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1127: bool isHuman = (g_RestartKickTeamId == TEAM_1);
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	ld	a, #0x01
	jr	Z, 00736$
	xor	a, a
00736$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1128: if (g_GameWith2Players) isHuman = true; 
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00214$
	ld	e, #0x01
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1129: if (g_RestartKickTeamId == TEAM_2 && !g_GameWith2Players) isHuman = false;
	ld	a, (_g_RestartKickTeamId+0)
	sub	a, #0x02
	jr	NZ, 00216$
	ld	a, (_g_GameWith2Players+0)
	or	a,a
	jr	NZ, 00216$
	ld	e,a
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1131: if (isHuman) {
	ld	a, e
	or	a, a
	jp	Z, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1133: u8 joy = Trampoline_U8(2,GetJoystickDirection);
	push	bc
	ld	de, #_GetJoystickDirection
	ld	a, #0x02
	call	_Trampoline_U8
	pop	bc
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1134: bool trig = Trampoline_BOOL(2,IsJoystickTriggerPressed);
	push	bc
	push	de
	ld	de, #_IsJoystickTriggerPressed
	ld	a, #0x02
	call	_Trampoline_BOOL
	pop	de
	pop	bc
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1137: if (joy != DIRECTION_NONE && !s_JoyMoved) {
	ld	a, d
	or	a, a
	jr	Z, 00227$
	ld	a, (_TickThrowIn_s_JoyMoved_65537_1356+0)
	or	a, a
	jr	NZ, 00227$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1139: if (c1 != NO_VALUE && c2 != NO_VALUE) {
	ld	a, c
	inc	a
	jr	Z, 00222$
	ld	a, b
	inc	a
	jr	Z, 00222$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1140: if (s_ThrowTargetId == c1) s_ThrowTargetId = c2;
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	sub	a, c
	jr	NZ, 00219$
	ld	a, b
	ld	(#_TickThrowIn_s_ThrowTargetId_65537_1356), a
	jp	00222$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1141: else s_ThrowTargetId = c1;
	ld	a, c
	ld	(#_TickThrowIn_s_ThrowTargetId_65537_1356), a
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1143: s_JoyMoved = true;
	ld	a, #0x01
	ld	(#_TickThrowIn_s_JoyMoved_65537_1356), a
	jp	00228$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1144: } else if (joy == DIRECTION_NONE) {
	ld	a, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1145: s_JoyMoved = false;
	or	a,a
	jr	NZ, 00228$
	ld	(#_TickThrowIn_s_JoyMoved_65537_1356), a
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1149: g_PassTargetPlayer = s_ThrowTargetId; 
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	ld	(_g_PassTargetPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1152: s_ForceThrowTimer++;
	ld	hl, (_TickThrowIn_s_ForceThrowTimer_65537_1356)
	inc	hl
	ld	(_TickThrowIn_s_ForceThrowTimer_65537_1356), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1155: if ((trig || s_ForceThrowTimer > 240) && s_ThrowTargetId != NO_VALUE) {
	ld	a, e
	or	a, a
	jr	NZ, 00233$
	ld	hl, (_TickThrowIn_s_ForceThrowTimer_65537_1356)
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	NC, 00269$
00233$:
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	inc	a
	jp	Z,00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1156: g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, (_g_ThrowInPlayerId+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1157: Trampoline_VOID_P1(2,SetPlayerBallPossession,g_ThrowInPlayerId);
	ld	a, (_g_ThrowInPlayerId+0)
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1158: g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; // Reset to feet
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	(_g_Ball), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1159: Trampoline_VOID_P1(2,PerformPass,s_ThrowTargetId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1160: g_MatchStatus = MATCH_IN_ACTION;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1161: V9990_ClearTextFromLayerA(13, 18, 9); // Correct coords: 10, 18 (len 9 is enough for "THROW IN")
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1162: g_Ball.ShotActive = 1; // High Arc for throw
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1163: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
	jp	00269$
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1167: if (g_Timer > 100) {
	ld	a, #0x64
	ld	hl, #_g_Timer
	sub	a, (hl)
	jp	NC, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1168: if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1; 
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	inc	a
	jr	NZ, 00235$
	ld	a, c
	inc	a
	jr	Z, 00235$
	ld	hl, #_TickThrowIn_s_ThrowTargetId_65537_1356
	ld	(hl), c
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1169: if (s_ThrowTargetId == NO_VALUE) s_ThrowTargetId = Trampoline_U8_P2(2,GetClosestPlayerToBall,g_RestartKickTeamId, g_ThrowInPlayerId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	inc	a
	jr	NZ, 00238$
	ld	a, (_g_ThrowInPlayerId+0)
	ld	h, a
	ld	a, (_g_RestartKickTeamId+0)
	ld	l, a
	push	hl
	ld	de, #_GetClosestPlayerToBall
	ld	a, #0x02
	call	_Trampoline_U8_P2
	ld	(_TickThrowIn_s_ThrowTargetId_65537_1356+0), a
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1172: if (g_Timer > 120) {
	ld	a, #0x78
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1173: g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
	ld	hl, #(_g_Ball + 6)
	ld	a, (_g_ThrowInPlayerId+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1174: Trampoline_VOID_P1(2,SetPlayerBallPossession,g_ThrowInPlayerId);
	ld	a, (_g_ThrowInPlayerId+0)
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1175: g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; 
	ld	bc, (_g_ThrowInPlayerId)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	(_g_Ball), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1176: Trampoline_VOID_P1(2,PerformPass,s_ThrowTargetId);
	ld	a, (_TickThrowIn_s_ThrowTargetId_65537_1356+0)
	push	af
	inc	sp
	ld	de, #_PerformPass
	ld	a, #0x02
	call	_Trampoline_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1177: g_MatchStatus = MATCH_IN_ACTION; 
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1178: V9990_ClearTextFromLayerA(13, 18, 9);
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0d
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1179: g_Ball.ShotActive = 1; 
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1180: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
	jp	00269$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1182: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00269$
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1185: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00269$
00251$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1190: g_Timer = 1; 
	ld	hl, #_g_Timer
	ld	(hl), #0x01
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlg/soccerlg_s3_b1.c:1193: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG3
	.area _INITIALIZER
	.area _CABS (ABS)
