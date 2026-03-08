;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s5_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Stop
	.globl _GetNoMovingPlayerPatternId
	.globl _PutBallOnPlayerFeet
	.globl _SetPlayerBallPossession
	.globl _GetPlayerIdByRole
	.globl _PlayAyFx
	.globl _GetTeamStats
	.globl _V9990_ClearTextFromLayerA
	.globl _CallFnc_U8_P1
	.globl _CallFnc_U8_P2
	.globl _CallFnc_VOID_P1
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
	.globl _Keyboard_IsKeyPressed
	.globl _Joystick_Read
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
	.globl _IsJoystickTriggerPressed
	.globl _PerformPass
	.globl _IsOffside
	.globl _TickGoalKick
	.globl _GoalkeeperWithBall
	.globl _TickPlayerToOwnTarget
	.globl _PutPlayerSprite
	.globl _UpdatePlayerPatternByDirection
	.globl _GetPatternIdByPoseAndDirection
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
_TickGoalKick_s_SafetyTimeout_65537_1249:
	.ds 2
_TickGoalKick_s_SetupDone_65537_1249:
	.ds 1
_TickPlayerToOwnTarget_s_GkMoveTick_131072_1305:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:191: static u16 s_SafetyTimeout = 0;
	ld	hl, #0x0000
	ld	(_TickGoalKick_s_SafetyTimeout_65537_1249), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:192: static bool s_SetupDone = false;
	ld	iy, #_TickGoalKick_s_SetupDone_65537_1249
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:485: static u8 s_GkMoveTick = 0;
	ld	iy, #_TickPlayerToOwnTarget_s_GkMoveTick_131072_1305
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG5
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:25: bool IsJoystickTriggerPressed(){
;	---------------------------------
; Function IsJoystickTriggerPressed
; ---------------------------------
_IsJoystickTriggerPressed::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:26: u8 joyStat = Joystick_Read(JOY_PORT_1);
	ld	l, #0x0f
;	spillPairReg hl
;	spillPairReg hl
	call	_Joystick_Read
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:27: if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
	bit	4, l
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:29: return TRUE;
	ld	a, #0x01
	ret
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:32: if(Keyboard_IsKeyPressed(KEY_SPACE))
	ld	a, #0x08
	call	_Keyboard_IsKeyPressed
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:34: return TRUE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:36: return FALSE;
	ld	a, #0x01
	ret	NZ
	xor	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:37: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:39: void PerformPass(u8 toPlayerId) {
;	---------------------------------
; Function PerformPass
; ---------------------------------
_PerformPass::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-21
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:41: u8 fromId = g_Ball.PossessionPlayerId;
	ld	a, (#(_g_Ball + 6) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:45: if (fromId == NO_VALUE) return;
	ld	-2 (ix), a
	inc	a
	jp	Z,00155$
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:46: if (toPlayerId == NO_VALUE) return;
	ld	a, -1 (ix)
	inc	a
	jp	Z,00155$
	jp	00104$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:49: if (g_Players[toPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;
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
	ex	(sp), hl
	pop	de
	push	de
	ld	hl, #13
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z,00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:53: if (g_Players[fromId].Role != PLAYER_ROLE_GOALKEEPER) {
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
	ld	-19 (ix), l
	ld	-18 (ix), h
	ld	a, -19 (ix)
	add	a, #0x0d
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:54: if (IsOffside(toPlayerId)) {
	ld	a, -1 (ix)
	call	_IsOffside
	or	a, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:56: return;
	jp	NZ,00155$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:61: dx = (i16)g_Players[toPlayerId].X - (i16)g_Players[fromId].X;
	ld	a, -21 (ix)
	add	a, #0x02
	ld	-15 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -19 (ix)
	add	a, #0x02
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	-5 (ix), a
	ld	a, b
	sbc	a, d
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:62: dy = (i16)g_Players[toPlayerId].Y - (i16)g_Players[fromId].Y;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	-11 (ix), a
	ld	a, b
	sbc	a, d
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:63: adx = (dx < 0) ? -dx : dx;
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	bit	7, -8 (ix)
	jr	Z, 00157$
	xor	a, a
	sub	a, -5 (ix)
	ld	-3 (ix), a
	sbc	a, a
	sub	a, -4 (ix)
	ld	-2 (ix), a
	jp	00158$
00157$:
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
00158$:
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:64: ady = (dy < 0) ? -dy : dy;
	ld	a, -11 (ix)
	ld	-5 (ix), a
	ld	a, -10 (ix)
	ld	-4 (ix), a
	bit	7, -4 (ix)
	jr	Z, 00159$
	xor	a, a
	sub	a, -11 (ix)
	ld	-3 (ix), a
	sbc	a, a
	sub	a, -10 (ix)
	ld	-2 (ix), a
	jp	00160$
00159$:
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	ld	-2 (ix), a
00160$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:66: if (adx > ady * 2) {
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00322$
	xor	a, #0x80
00322$:
	jp	P, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:67: newDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00323$
	xor	a, #0x80
00323$:
	jp	P, 00161$
	ld	bc, #0x0003
	jp	00162$
00161$:
	ld	bc, #0x0007
00162$:
	ld	-4 (ix), c
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:68: } else if (ady > adx * 2) {
	ex	de, hl
	add	hl, hl
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:69: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	xor	a, a
	cp	a, -5 (ix)
	sbc	a, -4 (ix)
	jp	PO, 00324$
	xor	a, #0x80
00324$:
	rlca
	and	a,#0x01
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:68: } else if (ady > adx * 2) {
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00325$
	xor	a, #0x80
00325$:
	jp	P, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:69: newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
	ld	a, l
	or	a, a
	jr	Z, 00163$
	ld	bc, #0x0005
	jp	00164$
00163$:
	ld	bc, #0x0001
00164$:
	ld	-4 (ix), c
	jp	00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:71: if (dx > 0) newDir = (dy > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_UP_RIGHT;
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00326$
	xor	a, #0x80
00326$:
	jp	P, 00112$
	ld	a, l
	or	a, a
	jr	Z, 00165$
	ld	bc, #0x0004
	jp	00166$
00165$:
	ld	bc, #0x0002
00166$:
	ld	-4 (ix), c
	jp	00119$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:72: else newDir = (dy > 0) ? DIRECTION_DOWN_LEFT : DIRECTION_UP_LEFT;
	ld	a, l
	or	a, a
	jr	Z, 00167$
	ld	bc, #0x0006
	jp	00168$
00167$:
	ld	bc, #0x0008
00168$:
	ld	-4 (ix), c
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:74: g_Players[fromId].Direction = newDir;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:77: if (newDir == DIRECTION_UP || newDir == DIRECTION_UP_LEFT || newDir == DIRECTION_UP_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_FRONT;
	ld	a, -4 (ix)
	dec	a
	jr	Z, 00130$
	ld	a, -4 (ix)
	sub	a, #0x08
	jr	Z, 00130$
	ld	a, -4 (ix)
	sub	a, #0x02
	jr	NZ, 00131$
00130$:
	ld	a, -19 (ix)
	add	a, #0x08
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x18
	jp	00132$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:78: else if (newDir == DIRECTION_DOWN || newDir == DIRECTION_DOWN_LEFT || newDir == DIRECTION_DOWN_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_BACK;
	ld	a, -4 (ix)
	sub	a, #0x05
	jr	Z, 00125$
	ld	a, -4 (ix)
	sub	a, #0x06
	jr	Z, 00125$
	ld	a, -4 (ix)
	sub	a, #0x04
	jr	NZ, 00126$
00125$:
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x15
	jp	00132$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:79: else if (newDir == DIRECTION_LEFT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_LEFT;
	ld	a, -4 (ix)
	sub	a, #0x07
	jr	NZ, 00123$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0xa4
	jp	00132$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:80: else if (newDir == DIRECTION_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_RIGHT;
	ld	a, -4 (ix)
	sub	a, #0x03
	jr	NZ, 00132$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x1b
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:82: g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose for this frame
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:85: g_Players[fromId].TargetX = g_Players[fromId].X;
	ld	a, -19 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:86: g_Players[fromId].TargetY = g_Players[fromId].Y;
	ld	a, -19 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:89: CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE); 
	ld	a, #0xff
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x04
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:90: g_Ball.PossessionPlayerId = NO_VALUE; 
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:92: g_Ball.PassTargetPlayerId = toPlayerId;
	ld	hl, #(_g_Ball + 16)
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:93: g_Ball.ShotActive = 0; // Not a shot
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:96: if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	l, -17 (ix)
	ld	h, -16 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:108: g_Ball.X = g_Ball.X; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:96: if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (hl)
	or	a, a
	jp	NZ, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:99: bool applyOffset = true;
	ld	c, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:101: if (g_GkIsGroundKick) {
	ld	a, (_g_GkIsGroundKick+0)
	or	a, a
	jr	Z, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:102: applyOffset = false;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:108: g_Ball.X = g_Ball.X; 
	ld	de, (#(_g_Ball + 2) + 0)
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:109: g_Ball.Y = g_Ball.Y;
	ld	de, (#_g_Ball + 0)
	ld	(_g_Ball), de
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:113: if (g_MatchStatus == MATCH_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK ||
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x09
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:114: g_MatchStatus == MATCH_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK) {
	cp	a,#0x02
	jr	Z, 00137$
	cp	a,#0x0a
	jr	Z, 00137$
	sub	a, #0x05
	jr	NZ, 00138$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:115: applyOffset = false;
	ld	c, #0x00
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:120: if (applyOffset) {
	ld	a, c
	or	a, a
	jr	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:121: i8 offX = 0; i8 offY = 0;
	ld	bc, #0x0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:122: switch (newDir) {
	ld	a, #0x08
	sub	a, -4 (ix)
	jr	C, 00150$
	ld	e, -4 (ix)
	ld	d, #0x00
	ld	hl, #00344$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00344$:
	jp	00150$
	jp	00142$
	jp	00147$
	jp	00145$
	jp	00149$
	jp	00143$
	jp	00148$
	jp	00144$
	jp	00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:123: case DIRECTION_UP:        offY = -30; break;
00142$:
	ld	b, #0xe2
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:124: case DIRECTION_DOWN:      offY = 30; break;
00143$:
	ld	b, #0x1e
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:125: case DIRECTION_LEFT:      offX = -30; break;
00144$:
	ld	c, #0xe2
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:126: case DIRECTION_RIGHT:     offX = 30; break;
00145$:
	ld	c, #0x1e
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:127: case DIRECTION_UP_LEFT:   offX = -21; offY = -21; break;
00146$:
	ld	bc, #0xebeb
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:128: case DIRECTION_UP_RIGHT:  offX = 21; offY = -21; break;
00147$:
	ld	bc, #0xeb15
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:129: case DIRECTION_DOWN_LEFT: offX = -21; offY = 21; break;
00148$:
	ld	bc, #0x15eb
	jp	00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:130: case DIRECTION_DOWN_RIGHT:offX = 21; offY = 21; break;
00149$:
	ld	bc, #0x1515
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:131: }
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:132: g_Ball.X += offX;
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	a, c
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:133: g_Ball.Y += offY;
	ld	hl, (#_g_Ball + 0)
	ld	a, b
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	add	hl, bc
	ex	de, hl
	ld	(_g_Ball), de
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:139: g_Ball.PassStartX = g_Ball.X;
	ld	bc, (#(_g_Ball + 2) + 0)
	ld	((_g_Ball + 17)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:140: g_Ball.PassStartY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
	ld	((_g_Ball + 19)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:143: g_ActionCooldown = 20;
	ld	hl, #_g_ActionCooldown
	ld	(hl), #0x14
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:144: g_Ball.KickMoveState = 0;
	ld	hl, #(_g_Ball + 13)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:146: dx = (i16)g_Players[toPlayerId].X - (i16)g_Ball.X;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (#(_g_Ball + 2) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:147: dy = (i16)g_Players[toPlayerId].Y - (i16)g_Ball.Y;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:148: g_Ball.PassTotalDist = (u16)((dx<0?-dx:dx) + (dy<0?-dy:dy)); 
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, h
	jr	Z, 00169$
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
00169$:
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	bit	7, h
	jr	Z, 00171$
	ld	hl, #0x0000
	cp	a, a
	sbc	hl, de
	jp	00172$
00171$:
	ex	de, hl
00172$:
	add	hl, bc
	ex	de, hl
	ld	((_g_Ball + 21)), de
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:149: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:151: bool IsOffside(u8 playerId) {
;	---------------------------------
; Function IsOffside
; ---------------------------------
_IsOffside::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:152: u8 teamId = g_Players[playerId].TeamId;
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
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:153: u16 playerY = g_Players[playerId].Y;
	ld	a, (de)
	ld	-6 (ix), a
	inc	de
	ld	a, (de)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:154: u8 opponentCount = 0;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:158: if (teamId == TEAM_1) {
	ld	a, -7 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00198$
	xor	a, a
00198$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:159: if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:158: if (teamId == TEAM_1) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:159: if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, -3 (ix)
	sub	a, #0xf3
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	C, 00107$
	xor	a, a
	jp	00129$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:161: if (playerY <= FIELD_POS_Y_CENTER) return FALSE; // Own half
	ld	a, #0xf3
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	C, 00107$
	xor	a, a
	jp	00129$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:166: if (teamId == TEAM_1) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:167: if (playerY >= g_Ball.Y) return FALSE; 
	ld	hl, (#_g_Ball + 0)
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jr	C, 00141$
	xor	a, a
	jp	00129$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:169: if (playerY <= g_Ball.Y) return FALSE;
	ld	hl, (#_g_Ball + 0)
	ld	a, l
	sub	a, -6 (ix)
	ld	a, h
	sbc	a, -5 (ix)
	jr	C, 00141$
	xor	a, a
	jp	00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:173: for (i = 0; i < 14; i++) {
00141$:
	ld	c, #0x00
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:174: if (g_Players[i].TeamId == teamId) continue;
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
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a,-7 (ix)
	sub	a,(hl)
	jr	Z, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:178: if (g_Players[i].Y <= playerY) opponentCount++;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:177: if (teamId == TEAM_1) { // Attacking UP
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:178: if (g_Players[i].Y <= playerY) opponentCount++;
	ld	a, -6 (ix)
	sub	a, e
	ld	a, -5 (ix)
	sbc	a, d
	jr	C, 00124$
	inc	-1 (ix)
	jp	00124$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:180: if (g_Players[i].Y >= playerY) opponentCount++;
	ld	a, e
	sub	a, -6 (ix)
	ld	a, d
	sbc	a, -5 (ix)
	jr	C, 00124$
	inc	-1 (ix)
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:173: for (i = 0; i < 14; i++) {
	inc	c
	ld	a, c
	sub	a, #0x0e
	jr	C, 00128$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:184: if (opponentCount < 2) return TRUE;
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	NC, 00127$
	ld	a, #0x01
	jp	00129$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:185: return FALSE;
	xor	a, a
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:186: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:188: void TickGoalKick() {
;	---------------------------------
; Function TickGoalKick
; ---------------------------------
_TickGoalKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:189: if (g_MatchStatus != MATCH_BEFORE_GOAL_KICK) return;
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x05
	jp	NZ,00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:196: if (g_RestartKickTeamId == TEAM_1) gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,TEAM_1, PLAYER_ROLE_GOALKEEPER);
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00104$
	ld	hl, #0x01
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	-10 (ix), a
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:197: else gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,TEAM_2, PLAYER_ROLE_GOALKEEPER);
	ld	hl, #0x02
	push	hl
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x04
	call	_CallFnc_U8_P2
	ld	-10 (ix), a
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:199: if (gkId == NO_VALUE) return; 
	ld	a, -10 (ix)
	inc	a
	jp	Z,00244$
	jp	00107$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:202: if (g_Timer < 10) {
	ld	a, (_g_Timer+0)
	sub	a, #0x0a
	jr	NC, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:203: s_SetupDone = false;
	ld	hl, #_TickGoalKick_s_SetupDone_65537_1249
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:204: s_SafetyTimeout = 0;
	ld	hl, #0x0000
	ld	(_TickGoalKick_s_SafetyTimeout_65537_1249), hl
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:208: if (g_Timer < 60) {
	ld	a, (_g_Timer+0)
	sub	a, #0x3c
	jr	NC, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:209: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:210: return;
	jp	00244$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:212: g_Ball.Size = 1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:214: if (!s_SetupDone) {
	ld	a, (_TickGoalKick_s_SetupDone_65537_1249+0)
	or	a, a
	jp	NZ, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:215: s_SetupDone = true;
	ld	hl, #_TickGoalKick_s_SetupDone_65537_1249
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:216: s_SafetyTimeout = 0;
	ld	hl, #0x0000
	ld	(_TickGoalKick_s_SafetyTimeout_65537_1249), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:219: if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
	ld	a, (_g_GoalKickSide+0)
	or	a, a
	jr	NZ, 00113$
	ld	bc, #0x0050
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:220: else targetX = GK_BOX_X_MAX;
	ld	bc, #0x00a0
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:223: if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:224: ballY = GK_BOX_Y_BOTTOM_MIN; 
	ld	de, #0x0195
	jp	00117$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:226: ballY = GK_BOX_Y_TOP_MAX; 
	ld	de, #0x004b
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:230: g_Ball.X = targetX;
	ld	((_g_Ball + 2)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:231: g_Ball.Y = ballY;
	ld	(_g_Ball), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:232: g_Ball.PossessionPlayerId = NO_VALUE;
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:237: runStartY = ballY + 32; 
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:236: if (g_RestartKickTeamId == TEAM_1) {
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:237: runStartY = ballY + 32; 
	ld	hl, #0x0020
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:238: if(runStartY > FIELD_BOUND_Y_BOTTOM) runStartY = FIELD_BOUND_Y_BOTTOM;
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	a, #0xb3
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00124$
	ld	-2 (ix), #0xb3
	ld	-1 (ix), #0x01
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:240: runStartY = ballY - 32;
	ld	a, e
	add	a, #0xe0
	ld	e, a
	ld	a, d
	adc	a, #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:241: if(runStartY < FIELD_BOUND_Y_TOP) runStartY = FIELD_BOUND_Y_TOP;
	ld	-2 (ix), e
	ld	-1 (ix), a
	ld	d, a
	ld	a, e
	sub	a, #0x32
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00124$
	ld	-2 (ix), #0x32
	ld	-1 (ix), #0
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:244: g_Players[gkId].TargetX = targetX;
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
	ex	de, hl
	ld	hl, #_g_Players
	add	hl, de
	ex	de, hl
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:245: g_Players[gkId].TargetY = runStartY;
	ld	hl, #0x000e
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:246: g_Players[gkId].Status = PLAYER_STATUS_NONE; 
	ld	hl, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:248: if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
	ld	hl, #0x000a
	add	hl, de
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00126$
	ld	(hl), #0x01
	jp	00127$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:249: else g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	(hl), #0x05
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:251: if (g_RestartKickTeamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00129$
	ld	a, #0x02
	ld	(#_g_FieldScrollingActionInProgress), a
	jp	00287$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:252: else g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
	xor	a, a
	ld	(#_g_FieldScrollingActionInProgress), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:255: for(u8 i=0; i<14; i++){
00287$:
	ld	-1 (ix), #0x00
00241$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:256: if(i == gkId) continue;
	ld	a, -10 (ix)
	sub	a, -1 (ix)
	jp	Z,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:257: if(g_Players[i].TeamId == REFEREE) continue;
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	iy, #0x0009
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	add	iy, de
	ld	a, 0 (iy)
	sub	a, #0x0e
	jp	Z,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:258: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	a, -9 (ix)
	add	a, #0x0d
	ld	e, a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	or	a, a
	jp	Z, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:261: g_Players[i].Status = PLAYER_STATUS_NONE;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	bc, #0x0012
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:264: u16 targetX = g_Players[i].X;
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:257: if(g_Players[i].TeamId == REFEREE) continue;
	ld	c, 0 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:258: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	a, (de)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:271: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
	ld	-5 (ix), a
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 00583$
	xor	a, a
00583$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:272: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 320; // Defenders move out of box (Safe < 350)
	ld	a, -5 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00585$
	xor	a, a
00585$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:266: if (g_RestartKickTeamId == TEAM_1) {
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00168$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:268: if(g_Players[i].TeamId == TEAM_1) {
	dec	c
	jr	NZ, 00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:270: targetY = 260; // Midfielders (Closer to center)
	ld	-3 (ix), #0x04
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:271: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
	ld	a, e
	or	a, a
	jr	NZ, 00137$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00138$
00137$:
	ld	-3 (ix), #0xc8
	ld	-2 (ix), #0
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:272: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 320; // Defenders move out of box (Safe < 350)
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00140$
	ld	a, -5 (ix)
	sub	a, #0x02
	jp	NZ,00169$
00140$:
	ld	-3 (ix), #0x40
	ld	-2 (ix), #0x01
	jp	00169$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:274: targetY = 250;
	ld	-3 (ix), #0xfa
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:275: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 240; // Keep distance (Safer < 250)
	ld	a, e
	or	a, a
	jr	NZ, 00143$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00144$
00143$:
	ld	-3 (ix), #0xf0
	ld	-2 (ix), #0
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:276: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 150;
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00146$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00169$
00146$:
	ld	-3 (ix), #0x96
	ld	-2 (ix), #0
	jp	00169$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:280: if(g_Players[i].TeamId == TEAM_2) {
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00165$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:282: targetY = 220; // Midfielders (Closer to center)
	ld	-3 (ix), #0xdc
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:283: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 250;
	ld	a, e
	or	a, a
	jr	NZ, 00152$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00153$
00152$:
	ld	-3 (ix), #0xfa
	ld	-2 (ix), #0
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:284: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 160; // Defenders move out of box (Safe > 130)
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00155$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00169$
00155$:
	ld	-3 (ix), #0xa0
	ld	-2 (ix), #0
	jp	00169$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:286: targetY = 240; // Keep distance (Safer > 230)
	ld	-3 (ix), #0xf0
	ld	-2 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:287: if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 240; // Keep distance
	ld	a, e
	or	a, a
	jr	NZ, 00158$
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00159$
00158$:
	ld	-3 (ix), #0xf0
	ld	-2 (ix), #0
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:288: if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 300;
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00161$
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00169$
00161$:
	ld	-3 (ix), #0x2c
	ld	-2 (ix), #0x01
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:293: if (targetX < 30) targetX = 30;
	ld	a, -7 (ix)
	ld	b, -6 (ix)
	sub	a, #0x1e
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00171$
	ld	-7 (ix), #0x1e
	ld	-6 (ix), #0
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:294: if (targetX > 220) targetX = 220;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, #0xdc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00173$
	ld	-7 (ix), #0xdc
	ld	-6 (ix), #0
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:296: g_Players[i].TargetX = targetX;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:297: g_Players[i].TargetY = targetY;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:255: for(u8 i=0; i<14; i++){
	inc	-1 (ix)
	jp	00241$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:302: if (g_Timer >= 60 && g_Timer < 115) {
	ld	a,(_g_Timer+0)
	cp	a,#0x3c
	jr	C, 00185$
	sub	a, #0x73
	jr	NC, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:304: if (g_RestartKickTeamId == TEAM_1) ballY = GK_BOX_Y_BOTTOM_MIN; 
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00179$
	ld	bc, #0x0195
	jp	00180$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:305: else ballY = GK_BOX_Y_TOP_MAX;
	ld	bc, #0x004b
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:308: if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
	ld	a, (_g_GoalKickSide+0)
	or	a, a
	jr	NZ, 00182$
	ld	de, #0x0050
	jp	00183$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:309: else targetX = GK_BOX_X_MAX;
	ld	de, #0x00a0
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:311: g_Ball.X = targetX;
	ld	((_g_Ball + 2)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:312: g_Ball.Y = ballY;
	ld	(_g_Ball), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:313: g_Ball.PossessionPlayerId = NO_VALUE; // Ensure no one grabs it
	ld	hl, #(_g_Ball + 6)
	ld	(hl), #0xff
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:317: i16 dx = (i16)g_Players[gkId].X - (i16)g_Players[gkId].TargetX;
	ld	c, -10 (ix)
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	pop	iy
	ld	a, 16 (iy)
	ld	-6 (ix), a
	ld	a, 17 (iy)
	ld	-5 (ix), a
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:318: i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:320: bool arrived = (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4);
	ld	a, -4 (ix)
	sub	a, #0xfc
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00246$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00610$
	xor	a, #0x80
00610$:
	jp	M, 00246$
	ld	a, c
	sub	a, #0xfc
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00246$
	ld	a, #0x04
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00611$
	xor	a, #0x80
00611$:
	jp	P, 00247$
00246$:
	xor	a, a
	jp	00248$
00247$:
	ld	a, #0x01
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:322: if (arrived) {
	or	a, a
	jp	Z, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:323: g_Players[gkId].X = g_Players[gkId].TargetX;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:324: g_Players[gkId].Y = g_Players[gkId].TargetY;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
	ld	h, d
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:326: if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
	ld	hl, #0x000a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00188$
	ld	a, #0x01
	ld	(bc), a
	jp	00189$
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:327: else g_Players[gkId].Direction = DIRECTION_DOWN;
	ld	a, #0x05
	ld	(bc), a
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:328: g_Players[gkId].PatternId = CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,g_Players[gkId].Direction);
	ld	hl, #0x0008
	add	hl, de
	ld	a, (bc)
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x08
	call	_CallFnc_U8_P1
	pop	de
	pop	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:329: g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
	ld	hl, #0x0012
	add	hl, de
	ld	c,l
	ld	b,h
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:318: i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:332: u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
	ld	hl, #_g_Ball
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00255$
	ld	a, e
	sub	a, -4 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -3 (ix)
	jp	00256$
00255$:
	ld	a, -4 (ix)
	sub	a, e
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, d
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:334: if (distY > 16) {
	ld	d, a
	ld	a, #0x10
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	NC, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:338: bool areaSafe = true;
	ld	e, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:339: for(u8 i=0; i<14; i++) {
	ld	-3 (ix), #0x00
00243$:
	ld	a, -3 (ix)
	sub	a, #0x0e
	jp	NC, 00214$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:340: if (i == gkId) continue;
	ld	a, -10 (ix)
	sub	a, -3 (ix)
	jp	Z,00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:341: if (g_Players[i].TeamId == REFEREE) continue;
	push	de
	ld	e, -3 (ix)
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
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	d, (hl)
	ld	a, d
	sub	a, #0x0e
	jr	Z, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:343: u16 py = g_Players[i].Y;
	ld	a, 0 (iy)
	ld	-5 (ix), a
	ld	a, 1 (iy)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:345: if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal (Y=430)
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:347: if (g_Players[i].TeamId == TEAM_1 && py > 350) areaSafe = false;
	dec	d
	ld	a, #0x01
	jr	Z, 00619$
	xor	a, a
00619$:
	ld	d, a
	or	a, a
	jr	Z, 00198$
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x5e
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00198$
	ld	e, #0x00
	jp	00210$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:348: else if (g_Players[i].TeamId != TEAM_1 && py > 280) areaSafe = false; // Relaxed to 280
	bit	0, d
	jr	NZ, 00210$
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x01
	sbc	a, l
	jr	NC, 00210$
	ld	e, #0x00
	jp	00210$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:351: if (g_Players[i].TeamId == TEAM_2 && py < 130) areaSafe = false;
	ld	a, d
	sub	a, #0x02
	ld	a, #0x01
	jr	Z, 00621$
	xor	a, a
00621$:
	ld	d, a
	or	a, a
	jr	Z, 00205$
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -5 (ix)
	ld	h, -4 (ix)
	sub	a, #0x82
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00205$
	ld	e, #0x00
	jp	00210$
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:352: else if (g_Players[i].TeamId != TEAM_2 && py < 200) areaSafe = false; // Relaxed to 200
	bit	0, d
	jr	NZ, 00210$
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sub	a, #0xc8
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00210$
	ld	e, #0x00
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:354: if (!areaSafe) break;
	ld	a, e
	or	a, a
	jr	Z, 00214$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:339: for(u8 i=0; i<14; i++) {
	inc	-3 (ix)
	jp	00243$
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:357: if (areaSafe) {
	ld	a, e
	or	a, a
	jr	Z, 00222$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:358: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00223$
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:360: s_SafetyTimeout++;
	ld	hl, (_TickGoalKick_s_SafetyTimeout_65537_1249)
	inc	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:361: if (s_SafetyTimeout > 240) { // 4 seconds timeout force proceed
	ld	(_TickGoalKick_s_SafetyTimeout_65537_1249), hl
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:362: g_Timer++;
	ld	hl, #_g_Timer
	inc	(hl)
	jp	00223$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:364: if (g_Timer > 90) g_Timer = 90; // Hold timer until safe
	ld	a, #0x5a
	ld	iy, #_g_Timer
	sub	a, 0 (iy)
	jr	NC, 00216$
	ld	0 (iy), #0x5a
	jp	00223$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:365: else g_Timer++; // Allow advancing up to wait point
	ld	hl, #_g_Timer
	inc	(hl)
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:369: if (g_Timer > 100) {
	ld	a, #0x64
	ld	hl, #_g_Timer
	sub	a, (hl)
	jr	NC, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:332: u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
	ld	de, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:372: if (g_RestartKickTeamId == TEAM_1) kickY = g_Ball.Y + 4; // Adjusted for perfect foot alignment
	ld	a, (_g_RestartKickTeamId+0)
	dec	a
	jr	NZ, 00225$
	inc	de
	inc	de
	inc	de
	inc	de
	jp	00226$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:373: else kickY = g_Ball.Y - 6;
	ld	a, e
	add	a, #0xfa
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:375: g_Players[gkId].TargetY = kickY;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:376: g_Players[gkId].Status = PLAYER_STATUS_NONE;
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
	jp	00244$
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:380: g_Timer++;
	ld	iy, #_g_Timer
	inc	0 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:381: if (g_Timer > 102) { // Kick immediately upon arrival (was 110)
	ld	a, #0x66
	sub	a, 0 (iy)
	jr	NC, 00244$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:382: V9990_ClearTextFromLayerA(10, 18, 9); 
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x12
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0a
	call	_V9990_ClearTextFromLayerA
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:383: GoalkeeperWithBall(g_RestartKickTeamId, true); 
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_RestartKickTeamId+0)
	call	_GoalkeeperWithBall
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:384: g_GkRecoilY = 0;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x00
	jp	00244$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:389: if (g_Timer < 100) g_Timer = 61; // Hold at 61 while moving to start
	ld	a, (_g_Timer+0)
	sub	a, #0x64
	jr	NC, 00235$
	ld	hl, #_g_Timer
	ld	(hl), #0x3d
	jp	00244$
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:390: else g_Timer = 101; // Hold at 101 while moving to ball
	ld	hl, #_g_Timer
	ld	(hl), #0x65
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:392: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:394: void GoalkeeperWithBall(u8 teamId, bool isSteal) {
;	---------------------------------
; Function GoalkeeperWithBall
; ---------------------------------
_GoalkeeperWithBall::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-7
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:395: u8 gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_GOALKEEPER);
	xor	a, a
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdByRole
	ld	a, #0x04
	call	_CallFnc_U8_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:396: if(gkId == NO_VALUE) return;
	ld	-7 (ix), a
	inc	a
	jp	Z,00162$
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:398: g_GkAnimPlayerId = gkId;
	ld	a, -7 (ix)
	ld	(_g_GkAnimPlayerId+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:399: g_GkAnimTimer = 0;
	ld	hl, #_g_GkAnimTimer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:402: if (teamId == TEAM_1) {
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00283$
	xor	a, a
00283$:
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:403: if (isSteal) g_Players[gkId].PatternId = PLAYER_POSE_BACK;
	ld	c, -7 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:402: if (teamId == TEAM_1) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:403: if (isSteal) g_Players[gkId].PatternId = PLAYER_POSE_BACK;
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00104$
	ld	bc, #_g_Players+0
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, bc
	ld	bc, #0x0008
	add	hl, bc
	ld	(hl), #0x11
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:404: else g_Players[gkId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
	ld	a, #<(_g_Players)
	add	a, -5 (ix)
	ld	c, a
	ld	a, #>(_g_Players)
	adc	a, -4 (ix)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x9e
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:405: g_Players[gkId].Direction = DIRECTION_UP; // Face Up (Attack Direction)
	ld	bc, #_g_Players+0
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, bc
	ld	bc, #0x000a
	add	hl, bc
	ld	(hl), #0x01
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:408: g_Players[gkId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)
	ld	a, -5 (ix)
	add	a, #<(_g_Players)
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #>(_g_Players)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:409: g_Players[gkId].Direction = DIRECTION_DOWN; // Face Down (Attack Direction)
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x05
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:413: g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
	ld	a, -5 (ix)
	add	a, #<(_g_Players)
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #>(_g_Players)
	ld	b, a
	ld	hl, #0x0012
	add	hl, bc
	ld	(hl), #0x04
	inc	hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:417: bool closeToLine = false;
	ld	(hl), #0x00
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:418: if (teamId == TEAM_2) { // GK 2 (Top)
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:419: g_GkRecoilY = -1;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:420: if (g_Players[gkId].Y <= FIELD_BOUND_Y_TOP + 4) closeToLine = true;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x36
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00115$
	ld	e, #0x01
	jp	00115$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:422: g_GkRecoilY = 1;
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:423: if (g_Players[gkId].Y >= FIELD_BOUND_Y_BOTTOM - 4) closeToLine = true;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0xaf
	ld	a, b
	sbc	a, #0x01
	jr	C, 00115$
	ld	e, #0x01
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:426: if (closeToLine || isSteal) g_GkRecoilY = 0; // No recoil for Steals
	ld	a, e
	or	a, a
	jr	NZ, 00116$
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00117$
00116$:
	ld	hl, #_g_GkRecoilY
	ld	(hl), #0x00
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:427: g_GkIsGroundKick = isSteal; // Track if this is a ground kick (no offset needed)
	ld	a, -3 (ix)
	ld	(_g_GkIsGroundKick+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:430: CallFnc_VOID_P1(4,SetPlayerBallPossession,gkId);
	ld	a, -7 (ix)
	push	af
	inc	sp
	ld	de, #_SetPlayerBallPossession
	ld	a, #0x04
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:431: g_Ball.PossessionPlayerId = gkId; // Fix: Ensure AI knows GK has ball immediately to prevent chasing
	ld	hl, #(_g_Ball + 6)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:432: g_Ball.ShotActive = 0;
	ld	hl, #(_g_Ball + 27)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:434: g_MatchStatus = MATCH_BALL_ON_GOALKEEPER;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x0d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:437: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00161$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:438: if(i == gkId) continue;
	ld	a, -7 (ix)
	sub	a, -1 (ix)
	jp	Z,00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:439: if(g_Players[i].TeamId == REFEREE) continue;
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
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	bc,#9
	add	hl,bc
	ld	b, (hl)
	ld	a, b
	sub	a, #0x0e
	jp	Z,00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:440: if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, #13
	add	hl, de
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:450: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
	ld	a, c
	sub	a, #0x05
	ld	a, #0x00
	rla
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:446: if(g_Players[i].TeamId == teamId) {
	ld	a, -2 (ix)
	sub	a, b
	jr	NZ, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:449: if(teamId == TEAM_1) { // Moving UP
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:450: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
	bit	0, e
	jr	NZ, 00129$
	ld	de, #0x00a0
	jp	00157$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:451: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
	ld	a, c
	sub	a, #0x03
	jr	C, 00126$
	ld	de, #0x00f0
	jp	00157$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:452: else ty = 350;
	ld	de, #0x015e
	jp	00157$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:454: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 320;
	bit	0, e
	jr	NZ, 00135$
	ld	de, #0x0140
	jp	00157$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:455: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
	ld	a, c
	sub	a, #0x03
	jr	C, 00132$
	ld	de, #0x00f0
	jp	00157$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:456: else ty = 130;
	ld	de, #0x0082
	jp	00157$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:461: if(teamId == TEAM_1) { // Opponent is Team 2 (Top) -> Retreat UP? No, Team 2 Defends Top.
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:463: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243; // Midfield
	bit	0, e
	jr	NZ, 00144$
	ld	de, #0x00f3
	jp	00157$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:464: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 106;
	ld	a, c
	sub	a, #0x03
	jr	C, 00141$
	ld	de, #0x006a
	jp	00157$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:465: else ty = 130;
	ld	de, #0x0082
	jp	00157$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:468: if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243;
	bit	0, e
	jr	NZ, 00150$
	ld	de, #0x00f3
	jp	00157$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:469: else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 318;
	ld	a, c
	sub	a, #0x03
	jr	C, 00147$
	ld	de, #0x013e
	jp	00157$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:470: else ty = 350;
	ld	de, #0x015e
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:475: g_Players[i].TargetY = ty;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	bc, #0x000e
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:476: g_Players[i].Status = PLAYER_STATUS_NONE; // Unlock movement
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:437: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00161$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:478: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:481: void TickPlayerToOwnTarget(){
;	---------------------------------
; Function TickPlayerToOwnTarget
; ---------------------------------
_TickPlayerToOwnTarget::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-23
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:482: if(g_MatchStatus!=MATCH_NOT_STARTED){
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jp	Z, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:483: bool allPlayersInPosition = true;
	ld	-21 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:486: s_GkMoveTick++;
	ld	hl, #_TickPlayerToOwnTarget_s_GkMoveTick_131072_1305
	inc	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:487: for(u8 i=0;i<15;i++){
	ld	-1 (ix), #0x00
00306$:
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	NC, 00298$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:488: if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jp	NZ,00117$
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
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	bc,#13
	add	hl,bc
	ld	a, (hl)
	or	a, a
	jp	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:489: if (g_Ball.ShotActive) continue; 
	ld	a, (#_g_Ball + 27)
	or	a, a
	jp	NZ, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:491: if ((s_GkMoveTick & 1) == 0) { 
	ld	a, (_TickPlayerToOwnTarget_s_GkMoveTick_131072_1305+0)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:504: i16 diff = (i16)desiredX - (i16)g_Players[i].X;
	ld	a, -13 (ix)
	add	a, #0x02
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:491: if ((s_GkMoveTick & 1) == 0) { 
	bit	0, c
	jp	NZ,00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:494: u16 desiredX = g_Ball.X;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:496: const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
	ld	a, -13 (ix)
	ld	-5 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	call	_GetTeamStats
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:497: if (stats->GkSkill >= 15) {
	ld	-5 (ix), e
	ld	-4 (ix), d
	ex	de,hl
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	sub	a, #0x0f
	jr	C, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:498: desiredX = (g_Ball.X + FIELD_POS_X_CENTER) / 2;
	ld	hl, #(_g_Ball + 2)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x78
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:501: if (desiredX < minX) desiredX = minX;
	ld	a, -3 (ix)
	sub	a, #0x60
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00106$
	ld	-3 (ix), #0x60
	ld	-2 (ix), #0
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:502: if (desiredX > maxX) desiredX = maxX;
	ld	a, #0x90
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00108$
	ld	-3 (ix), #0x90
	ld	-2 (ix), #0
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:504: i16 diff = (i16)desiredX - (i16)g_Players[i].X;
	ld	a, -3 (ix)
	ld	-9 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:507: if (diff > 2) g_Players[i].X++;
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, #0x02
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00854$
	xor	a, #0x80
00854$:
	jp	P, 00112$
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	inc	bc
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00115$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:508: else if (diff < -2) g_Players[i].X--;
	ld	a, -3 (ix)
	sub	a, #0xfe
	ld	a, -2 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00115$
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	dec	bc
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:511: g_Players[i].TargetX = g_Players[i].X;
	ld	a, -13 (ix)
	add	a, #0x10
	ld	c, a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:515: if(i != REFEREE) continue;
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x01
	jr	Z, 00856$
	xor	a, a
00856$:
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:514: if(g_MatchStatus == MATCH_AFTER_IN_GOAL) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jr	NZ, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:515: if(i != REFEREE) continue;
	bit	0, -6 (ix)
	jp	Z, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:517: g_Players[i].TargetX=FIELD_POS_X_CENTER - 30; 
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
	ld	a, #<(_g_Players)
	add	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, #>(_g_Players)
	adc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:518: g_Players[i].TargetY=FIELD_POS_Y_CENTER - 40; 
	ld	a, -5 (ix)
	add	a, #0x0e
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xcb
	inc	hl
	ld	(hl), #0x00
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:521: if (i == REFEREE && (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER)) continue;
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00124$
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jp	Z,00297$
	sub	a, #0x0d
	jp	Z,00297$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:524: bool isSetPieceSetup = (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN);
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x02
	jr	Z, 00310$
	cp	a,#0x05
	jr	Z, 00310$
	cp	a,#0x0e
	jr	Z, 00310$
	sub	a, #0x03
	jr	Z, 00310$
	xor	a, a
	jp	00311$
00310$:
	ld	a, #0x01
00311$:
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:525: bool isGkRestart = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0d
	ld	a, #0x01
	jr	Z, 00866$
	xor	a, a
00866$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:527: if (!isSetPieceSetup && !isGkRestart) {
	ld	a, -20 (ix)
	or	a,a
	jr	NZ, 00135$
	or	a,c
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:528: if (g_Team1ActivePlayer != NO_VALUE && i == g_Team1ActivePlayer) continue;
	ld	a, (_g_Team1ActivePlayer+0)
	inc	a
	jr	Z, 00128$
	ld	a, -1 (ix)
	ld	hl, #_g_Team1ActivePlayer
	sub	a, (hl)
	jp	Z,00297$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:529: if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && i == g_Team2ActivePlayer) continue;
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00135$
	ld	a, (_g_Team2ActivePlayer+0)
	inc	a
	jr	Z, 00135$
	ld	a, -1 (ix)
	ld	hl, #_g_Team2ActivePlayer
	sub	a, (hl)
	jp	Z,00297$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:533: bool playerInPosition = (g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY);
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
	ld	-19 (ix), l
	ld	-18 (ix), h
	ld	a, -19 (ix)
	add	a, #0x02
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -19 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, e
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00318$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -19 (ix)
	ld	-5 (ix), a
	ld	a, -18 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	jr	NZ, 00873$
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	jr	Z, 00319$
00873$:
00318$:
	xor	a, a
	jp	00320$
00319$:
	ld	a, #0x01
00320$:
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:536: if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && !playerInPosition) {
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00138$
	ld	a, -15 (ix)
	or	a, a
	jr	NZ, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:537: allPlayersInPosition = false;
	ld	-21 (ix), #0x00
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:540: u8 step = 1;
	ld	-14 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:542: if(g_MatchStatus==MATCH_IN_ACTION){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jp	NZ,00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:543: u8 countryId = (g_Players[i].TeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	ld	c, -19 (ix)
	ld	b, -18 (ix)
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	dec	a
	jr	NZ, 00321$
	ld	a, (_g_Team1PaletteId+0)
	jp	00322$
00321$:
	ld	a, (_g_Team2PaletteId+0)
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:544: const TeamStats* stats = GetTeamStats(countryId);
	call	_GetTeamStats
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:545: u8 speed = stats->Speed;
	ld	a, (de)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:556: u8 tick = g_FrameCounter % 12; // Common multiple
	ld	a, (_g_FrameCounter+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x000c
	call	__modsint
	pop	bc
	ld	-4 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:557: bool move = false;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:558: if (speed == 0) { if ((tick % 4) == 0) move = true; }
	ld	a, c
	or	a, a
	jr	NZ, 00170$
	ld	a, -4 (ix)
	and	a, #0x03
	jp	NZ,00171$
	ld	-6 (ix), #0x01
	jp	00171$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:559: else if (speed == 1) { if ((tick % 3) == 0) move = true; }
	ld	a, c
	dec	a
	jr	NZ, 00167$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0003
	call	__modsint
	ld	a, d
	or	a, e
	jp	NZ, 00171$
	ld	-6 (ix), #0x01
	jp	00171$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:560: else if (speed == 2) { if ((tick % 2) == 0) move = true; }
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00164$
	bit	0, -4 (ix)
	jp	NZ,00171$
	ld	-6 (ix), #0x01
	jp	00171$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:561: else if (speed == 3) { 
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:563: move = true; 
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:564: step = 1; 
	ld	-14 (ix), #0x01
	jp	00171$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:566: else if (speed == 4) { if ((tick % 4) != 3) move = true; }
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00158$
	ld	a, -4 (ix)
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	Z, 00171$
	ld	-6 (ix), #0x01
	jp	00171$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:567: else if (speed == 6) {
	ld	a, c
	sub	a, #0x06
	jr	NZ, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:569: move = true;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:570: step = ((tick % 4) == 0) ? 2 : 1;
	ld	a, -4 (ix)
	and	a, #0x03
	jr	NZ, 00323$
	ld	-5 (ix), #0x02
	ld	-4 (ix), #0
	jp	00324$
00323$:
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
00324$:
	ld	a, -5 (ix)
	ld	-14 (ix), a
	jp	00171$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:572: else if (speed == 7) {
	ld	a, c
	sub	a, #0x07
	jr	NZ, 00152$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:574: move = true;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:575: step = ((tick % 3) == 0) ? 2 : 1;
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0003
	call	__modsint
	ld	a, d
	or	a, e
	jr	NZ, 00325$
	ld	bc, #0x0002
	jp	00326$
00325$:
	ld	bc, #0x0001
00326$:
	ld	-14 (ix), c
	jp	00171$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:577: else if (speed >= 8) { 
	ld	a, c
	sub	a, #0x08
	jr	C, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:579: move = true;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:580: step = ((tick % 2) == 0) ? 2 : 1;
	bit	0, -4 (ix)
	jr	NZ, 00327$
	ld	bc, #0x0002
	jp	00328$
00327$:
	ld	bc, #0x0001
00328$:
	ld	-14 (ix), c
	jp	00171$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:582: else move = true;
	ld	-6 (ix), #0x01
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:584: if (!move) continue;
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00182$
	jp	00297$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:586: g_Players[i].AiTickCounter=0;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0014
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:588: if (g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK || 
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x05
	jr	Z, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:589: g_MatchStatus == MATCH_BEFORE_THROW_IN || g_MatchStatus == MATCH_BEFORE_OFFSIDE ||
	cp	a,#0x02
	jr	Z, 00174$
	cp	a,#0x03
	jr	Z, 00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:590: g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	cp	a,#0x0e
	jr	Z, 00174$
	sub	a, #0x0d
	jr	NZ, 00182$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:591: step = 2;
	ld	-14 (ix), #0x02
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:595: if(!playerInPosition){
	ld	a, -15 (ix)
	or	a, a
	jp	NZ, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:596: g_Players[i].Status=PLAYER_STATUS_NONE;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:598: i16 dx = (i16)g_Players[i].TargetX - (i16)g_Players[i].X;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-23 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-22 (ix), a
	pop	bc
	push	bc
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-3 (ix), c
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:599: i16 dy = (i16)g_Players[i].TargetY - (i16)g_Players[i].Y;
	ld	a, -19 (ix)
	add	a, #0x0e
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	-11 (ix), c
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:601: if (dx > 0) {
	ld	a, -3 (ix)
	ld	-9 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00907$
	xor	a, #0x80
00907$:
	rlca
	and	a,#0x01
	ld	-7 (ix), a
	or	a, a
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:602: if (dx < step) g_Players[i].X = g_Players[i].TargetX;
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jp	PO, 00908$
	xor	a, #0x80
00908$:
	jp	P, 00184$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -23 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -22 (ix)
	ld	(hl), a
	jp	00193$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:603: else g_Players[i].X += step;
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00193$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:604: } else if (dx < 0) {
	bit	7, -8 (ix)
	jr	Z, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:605: if (-dx < step) g_Players[i].X = g_Players[i].TargetX;
	xor	a, a
	sub	a, -3 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -2 (ix)
	ld	b, a
	ld	e, -14 (ix)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	PO, 00909$
	xor	a, #0x80
00909$:
	jp	P, 00187$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -23 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -22 (ix)
	ld	(hl), a
	jp	00193$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:606: else g_Players[i].X -= step;
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	ex	de, hl
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:609: if (dy > 0) {
	ld	a, -11 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-5 (ix), a
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00910$
	xor	a, #0x80
00910$:
	rlca
	and	a,#0x01
	ld	-4 (ix), a
	or	a, a
	jp	Z, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:610: if (dy < step) g_Players[i].Y = g_Players[i].TargetY;
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	jp	PO, 00911$
	xor	a, #0x80
00911$:
	jp	P, 00195$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00204$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:611: else g_Players[i].Y += step;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -11 (ix)
	add	a, -3 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	adc	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00204$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:612: } else if (dy < 0) {
	bit	7, -5 (ix)
	jp	Z, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:613: if (-dy < step) g_Players[i].Y = g_Players[i].TargetY;
	xor	a, a
	sub	a, -11 (ix)
	ld	-3 (ix), a
	sbc	a, a
	sub	a, -10 (ix)
	ld	-2 (ix), a
	ld	c, -14 (ix)
	ld	b, #0x00
	ld	a, -3 (ix)
	sub	a, c
	ld	a, -2 (ix)
	sbc	a, b
	jp	PO, 00912$
	xor	a, #0x80
00912$:
	jp	P, 00198$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00204$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:614: else g_Players[i].Y -= step;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -3 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	sbc	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:617: if(dx > 0 && dy < 0) g_Players[i].Direction=DIRECTION_UP_RIGHT;
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00229$
	bit	7, -5 (ix)
	jr	Z, 00229$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
	jp	00230$
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:618: else if(dx < 0 && dy < 0) g_Players[i].Direction=DIRECTION_UP_LEFT;
	ld	a, -8 (ix)
	rlca
	and	a,#0x01
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00225$
	bit	7, -5 (ix)
	jr	Z, 00225$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x08
	jp	00230$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:619: else if(dx < 0 && dy > 0) g_Players[i].Direction=DIRECTION_DOWN_LEFT;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00221$
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00221$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
	jp	00230$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:620: else if(dx > 0 && dy > 0) g_Players[i].Direction=DIRECTION_DOWN_RIGHT;
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00217$
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00217$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
	jp	00230$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:621: else if(dy < 0) g_Players[i].Direction=DIRECTION_UP;
	bit	7, -5 (ix)
	jr	Z, 00214$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x01
	jp	00230$
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:622: else if(dy > 0) g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00211$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
	jp	00230$
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:623: else if(dx > 0) g_Players[i].Direction=DIRECTION_RIGHT;
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00208$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
	jp	00230$
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:624: else if(dx < 0) g_Players[i].Direction=DIRECTION_LEFT;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00230$
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x07
00230$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:627: if(g_Players[i].Y < FIELD_BOUND_Y_TOP) g_Players[i].Y = FIELD_BOUND_Y_TOP;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00233$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:628: if(g_Players[i].Y > FIELD_BOUND_Y_BOTTOM) g_Players[i].Y = FIELD_BOUND_Y_BOTTOM;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00235$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:629: if(g_Players[i].X < FIELD_BOUND_X_LEFT) g_Players[i].X = FIELD_BOUND_X_LEFT;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00237$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:630: if(g_Players[i].X > FIELD_BOUND_X_RIGHT) g_Players[i].X = FIELD_BOUND_X_RIGHT;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00241$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:488: if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	ld	a, #0x01
	jr	Z, 00914$
	xor	a, a
00914$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:634: if (g_MatchStatus == MATCH_IN_ACTION || (isSetPieceSetup && g_Ball.PossessionPlayerId == i)) {
	ld	b, a
	or	a, a
	jr	NZ, 00254$
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00255$
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NZ, 00255$
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:635: if (g_Ball.PossessionPlayerId == i) {
	ld	hl, #(_g_Ball + 6)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NZ, 00255$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:638: if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
	ld	de, #_g_Ball + 13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:637: if (!playerInPosition && g_MatchStatus == MATCH_IN_ACTION) {
	ld	a, -15 (ix)
	or	a,a
	jr	NZ, 00249$
	or	a,b
	jr	Z, 00249$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:638: if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
	ld	a, (de)
	inc	a
	jr	NZ, 00243$
	ld	(de), a
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:639: g_Ball.KickMoveState++;
	ld	a, (de)
	inc	a
	ld	c, a
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:640: if (g_Ball.KickMoveState > 3) g_Ball.KickMoveState = 0;
	ld	a, #0x03
	sub	a, c
	jr	NC, 00245$
	xor	a, a
	ld	(de), a
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:641: if (g_Ball.KickMoveState == 1) PlayAyFx(AYFX_BALL);
	ld	a, (de)
	dec	a
	jr	NZ, 00250$
	ld	a, #0x05
	call	_PlayAyFx
	jp	00250$
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:643: g_Ball.KickMoveState = 0;
	xor	a, a
	ld	(de), a
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:645: CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutBallOnPlayerFeet
	ld	a, #0x04
	call	_CallFnc_VOID_P1
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:649: if (playerInPosition) {
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:650: if (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x02
	jr	Z, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:651: g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN) {
	cp	a,#0x05
	jr	Z, 00268$
	cp	a,#0x0e
	jr	Z, 00268$
	sub	a, #0x03
	jr	NZ, 00269$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:652: if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x04
	or	a, b
	jr	Z, 00269$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:653: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:654: g_Players[i].Direction = DIRECTION_NONE;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:655: u8 useDir = g_Players[i].PreviousDirection;
	ld	c, -19 (ix)
	ld	b, -18 (ix)
	ld	hl, #11
	add	hl, bc
	ld	a, (hl)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:656: if (useDir == DIRECTION_NONE) {
	or	a, a
	jr	NZ, 00265$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:658: if(g_MatchStatus == MATCH_BEFORE_THROW_IN) {
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x03
	jr	NZ, 00262$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:660: if(g_Ball.X < 128) useDir = DIRECTION_RIGHT; else useDir = DIRECTION_LEFT;
	ld	hl, (#_g_Ball + 2)
	ld	de, #0x0080
	cp	a, a
	sbc	hl, de
	jr	NC, 00259$
	ld	c, #0x03
	jp	00265$
00259$:
	ld	c, #0x07
	jp	00265$
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:662: useDir = DIRECTION_DOWN; 
	ld	c, #0x05
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:665: g_Players[i].PatternId =CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,useDir);
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	push	hl
	ld	a, c
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x08
	call	_CallFnc_U8_P1
	pop	hl
	ld	(hl), a
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:669: if(g_MatchStatus==MATCH_IN_ACTION){
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x0c
	jr	NZ, 00274$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:670: g_Players[i].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:673: if (g_Players[i].TeamId == REFEREE) {
	ld	a, -19 (ix)
	add	a, #0x09
	ld	-3 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jr	NZ, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:674: if(g_MatchStatus == MATCH_BEFORE_KICK_OFF || g_MatchStatus == MATCH_AFTER_IN_GOAL) {
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	Z, 00275$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x06
	jr	NZ, 00279$
00275$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:675: g_Players[i].Direction = DIRECTION_DOWN;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:676: g_Players[i].PatternId = PLAYER_POSE_FRONT;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	(hl), #0x10
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:677: g_Players[i].Status = PLAYER_STATUS_POSITIONED;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:678: CallFnc_VOID_P1(5,PutPlayerSprite,i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutPlayerSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:684: if(g_MatchStatus==MATCH_BEFORE_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	dec	a
	jp	NZ,00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:686: if(g_Players[i].TeamId!=REFEREE && g_Players[i].PatternId!=PLAYER_POSE_BACK && g_Players[i].PatternId!=PLAYER_POSE_FRONT){
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jp	Z,00297$
	ld	a, -19 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	cp	a, #0x11
	jr	Z, 00297$
	sub	a, #0x10
	jr	Z, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:687: g_Players[i].Status=PLAYER_STATUS_POSITIONED;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:617: if(dx > 0 && dy < 0) g_Players[i].Direction=DIRECTION_UP_RIGHT;
	ld	a, -19 (ix)
	add	a, #0x0a
	ld	e, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:673: if (g_Players[i].TeamId == REFEREE) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:689: if(g_Players[i].TeamId==TEAM_1){
	dec	a
	ld	a, #0x01
	jr	Z, 00944$
	xor	a, a
00944$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:688: if (i != g_GoalScorerId) {
	ld	a, -1 (ix)
	ld	hl, #_g_GoalScorerId
	sub	a, (hl)
	jr	Z, 00287$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:689: if(g_Players[i].TeamId==TEAM_1){
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00281$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:690: g_Players[i].PatternId=PLAYER_POSE_BACK;
	ld	a, #0x11
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:691: g_Players[i].Direction=DIRECTION_UP;
	ld	a, #0x01
	ld	(de), a
	jp	00288$
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:694: g_Players[i].PatternId=PLAYER_POSE_FRONT;
	ld	a, #0x10
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:695: g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, #0x05
	ld	(de), a
	jp	00288$
00287$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:698: if(g_Players[i].TeamId==TEAM_1) g_Players[i].Direction=DIRECTION_UP;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00284$
	ld	a, #0x01
	ld	(de), a
	jp	00288$
00284$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:699: else g_Players[i].Direction=DIRECTION_DOWN;
	ld	a, #0x05
	ld	(de), a
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:701: CallFnc_VOID_P1(5,PutPlayerSprite,i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PutPlayerSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:487: for(u8 i=0;i<15;i++){
	inc	-1 (ix)
	jp	00306$
00298$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:708: if(g_MatchStatus==MATCH_BEFORE_KICK_OFF && allPlayersInPosition && g_FieldScrollingActionInProgress==NO_VALUE){
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00307$
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00307$
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	NZ, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:710: g_Ball.Size=1;
	ld	hl, #(_g_Ball + 4)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:711: VGM_Stop();
	call	_VGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:712: g_FieldScrollSpeed=FIELD_SCROLL_GAME_SPEED;
	ld	hl, #_g_FieldScrollSpeed
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:713: g_MatchStatus=MATCH_KICK_OFF;
	ld	hl, #_g_MatchStatus
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:715: g_Timer=0;
	ld	hl, #_g_Timer
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:716: g_TimerActive=TRUE;
	ld	hl, #_g_TimerActive
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:717: g_GoalScorerId = NO_VALUE; 
	ld	hl, #_g_GoalScorerId
	ld	(hl), #0xff
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:721: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:723: void PutPlayerSprite(u8 playerId){
;	---------------------------------
; Function PutPlayerSprite
; ---------------------------------
_PutPlayerSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:725: attr.D=0;
	ld	hl, #3
	add	hl, sp
	res	4, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:726: attr.SC=2;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	or	a, #0x80
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:727: u16 minY = (g_FieldCurrentYPosition > 32) ? (u16)(g_FieldCurrentYPosition - 32) : 0;
	ld	a, #0x20
	ld	iy, #_g_FieldCurrentYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00282$
	xor	a, #0x80
00282$:
	jp	P, 00145$
	ld	a, (_g_FieldCurrentYPosition+0)
	add	a, #0xe0
	ld	e, a
	ld	a, (_g_FieldCurrentYPosition+1)
	adc	a, #0xff
	ld	d, a
	jp	00146$
00145$:
	ld	de, #0x0000
00146$:
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:728: u16 maxY = g_FieldCurrentYPosition + 244;
	ld	hl, (_g_FieldCurrentYPosition)
	ld	de, #0x00f4
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:730: attr.Y = g_Players[playerId].Y-g_FieldCurrentYPosition;
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
	ex	de, hl
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_g_FieldCurrentYPosition+0)
	ld	b, a
	ld	a, l
	sub	a, b
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:731: if(g_Players[playerId].TeamId==TEAM_2){
	ld	hl, #0x0009
	add	hl, de
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:732: attr.SC=3;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	or	a, #0xc0
	ld	(hl), a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:735: if(g_Players[playerId].TeamId==REFEREE){
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	sub	a, #0x0e
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:736: attr.SC=1;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	or	a, #0x40
	ld	(hl), a
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:739: if(g_Players[playerId].Y>maxY){
	ld	l, e
	ld	h, d
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, -2 (ix)
	sub	a, b
	ld	a, -1 (ix)
	sbc	a, l
	jr	NC, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:740: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:742: if(g_Players[playerId].Y<minY){
	ld	l, e
	ld	h, d
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, b
	sub	a, -4 (ix)
	ld	a, l
	sbc	a, -3 (ix)
	jr	NC, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:743: attr.D=1;
	ld	hl, #3
	add	hl, sp
	set	4, (hl)
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:746: if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
	ld	hl, #0x000d
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:745: if(g_MatchStatus!=MATCH_NOT_STARTED && g_MatchStatus!=MATCH_KICK_OFF){
	ld	a, (_g_MatchStatus+0)
	or	a, a
	jr	Z, 00112$
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x07
	jr	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:746: if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:747: CallFnc_VOID_P1(5,UpdatePlayerPatternByDirection,playerId);
	push	bc
	push	de
	ld	a, c
	push	af
	inc	sp
	ld	de, #_UpdatePlayerPatternByDirection
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	pop	de
	pop	bc
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:750: if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:758: if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
	ld	hl, #0x0002
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:760: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	ld	hl, #0x0008
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:750: if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
	ld	a, b
	or	a, a
	jp	NZ, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:751: attr.SC=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	and	a, #0x3f
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:754: if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x0c
	jr	Z, 00120$
	sub	a, #0x0d
	jp	NZ,00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:755: g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:756: u8 team = g_Players[playerId].TeamId;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:758: if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
	ld	hl, #0x0004
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	add	a, #0x06
	ld	-4 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, l
	sub	a, -2 (ix)
	jr	NZ, 00117$
	ld	a, h
	sub	a, -1 (ix)
	jr	NZ, 00117$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, -2 (ix)
	jr	NZ, 00293$
	ld	a, h
	sub	a, -1 (ix)
	jp	Z,00125$
00293$:
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:759: if(g_Players[playerId].LastPose==0){
	ld	hl, #0x000c
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:760: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	dec	b
	ld	a, #0x01
	jr	Z, 00295$
	xor	a, a
00295$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:759: if(g_Players[playerId].LastPose==0){
	ld	a, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:760: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
	or	a,a
	jr	NZ, 00115$
	or	a,b
	ld	a, #0xa4
	jr	NZ, 00148$
	ld	a, #0x2b
00148$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:761: g_Players[playerId].LastPose=1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
	jp	00116$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:764: g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_2 : PLAYER_POSE_GK_H_MOVE_FRONT_2;
	ld	a, b
	or	a, a
	jr	Z, 00149$
	ld	hl, #0x00a3
	jp	00150$
00149$:
	ld	hl, #0x002c
00150$:
	ld	a, l
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:765: g_Players[playerId].LastPose=0;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x00
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:767: g_Players[playerId].OldX=g_Players[playerId].X;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:768: g_Players[playerId].OldY=g_Players[playerId].Y;	
	ld	l, e
	ld	h, d
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	jp	00125$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:773: CallFnc_VOID_P1(5,UpdatePlayerPatternByDirection,playerId);
	push	bc
	ld	a, c
	push	af
	inc	sp
	ld	de, #_UpdatePlayerPatternByDirection
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	pop	bc
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:776: attr.Pattern = g_Players[playerId].PatternId;
	ld	hl, #0+1
	add	hl, sp
	ex	de, hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:779: if(g_Players[playerId].TeamId != REFEREE && g_MatchStatus != MATCH_PENALTY_SHOOTOUT && g_MatchStatus != MATCH_PENALTY_SETUP && g_MatchStatus != MATCH_VICTORY_LAP)
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	b, (hl)
	ld	a, b
	sub	a, #0x0e
	jr	Z, 00137$
	ld	a,(_g_MatchStatus+0)
	cp	a,#0x11
	jr	Z, 00137$
	cp	a,#0x12
	jr	Z, 00137$
	sub	a, #0x10
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:781: bool isHumanTeam = (g_Players[playerId].TeamId == TEAM_1) || (g_GameWith2Players && g_Players[playerId].TeamId == TEAM_2);
	ld	a, b
	dec	a
	jr	Z, 00152$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00151$
	ld	a, b
	sub	a, #0x02
	jr	Z, 00152$
00151$:
	xor	a, a
	jp	00153$
00152$:
	ld	a, #0x01
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:783: if (isHumanTeam) {
	or	a, a
	jr	Z, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:785: if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) {
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:786: if (playerId==g_Team1ActivePlayer || (g_GameWith2Players && playerId==g_Team2ActivePlayer)) {
	ld	a, (_g_Team1ActivePlayer+0)
	sub	a, c
	jr	Z, 00126$
	ld	a, (_g_GameWith2Players+0)
	or	a, a
	jr	Z, 00131$
	ld	a, (_g_Team2ActivePlayer+0)
	sub	a, c
	jr	NZ, 00131$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:788: attr.Pattern=(u8)(attr.Pattern+64);
	ld	a, (de)
	add	a, #0x40
	ld	(de), a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:793: if (playerId == g_PassTargetPlayer) {
	ld	a, (_g_PassTargetPlayer+0)
	sub	a, c
	jr	NZ, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:794: attr.Pattern=(u8)(attr.Pattern+64);
	ld	a, (de)
	add	a, #0x40
	ld	(de), a
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:800: attr.X = g_Players[playerId].X;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	hl, #2
	add	hl, sp
	ld	(hl), b
	inc	hl
	ld	a, e
	and	a, #0x03
	push	bc
	ld	c,a
	ld	a, (hl)
	and	a, #0xfc
	or	a, c
	pop	bc
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:801: attr.P = 1;
	ld	hl, #3
	add	hl, sp
	set	5, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:802: V9_SetSpriteP1(playerId, &attr);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:781: inline void V9_SetSpriteP1(u8 id, const V9_Sprite* attr) { V9_WriteVRAM(V9_P1_SPAT + (id * 4), (const u8*)attr, 4); }
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
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
	jr	NC, 00307$
	inc	d
00307$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ex	de, hl
	call	_V9_SetWriteAddress
	ld	de, #0x0004
	ld	hl, #0
	add	hl, sp
	call	_V9_WriteVRAM_CurrentAddr
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:802: V9_SetSpriteP1(playerId, &attr);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:804: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:806: void UpdatePlayerPatternByDirection(u8 playerId){
;	---------------------------------
; Function UpdatePlayerPatternByDirection
; ---------------------------------
_UpdatePlayerPatternByDirection::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:807: if(g_Players[playerId].Status==PLAYER_STATUS_POSITIONED){
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
	ld	c, e
	ld	b, d
	ld	hl, #18
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x04
	or	a, b
	jp	Z,00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:808: return;
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:812: if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
	ld	hl, #0x000a
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	c, (hl)
	ld	hl, #0x000b
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:813: if(g_Players[playerId].Direction==DIRECTION_NONE){
	ld	a,c
	cp	a,b
	jr	Z, 00112$
	or	a, a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:814: g_Players[playerId].PatternId=CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection); 
	ld	hl, #0x0008
	add	hl, de
	push	hl
	push	de
	push	bc
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x08
	call	_CallFnc_U8_P1
	pop	de
	pop	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:815: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	pop	hl
	push	hl
	ld	a, (hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), a
	jp	00113$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:818: g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:819: g_Players[playerId].LastPose=0;
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x00
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:825: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:826: if(g_Players[playerId].LastPose==1){
	ld	hl, #0x000c
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:827: g_Players[playerId].LastPose=0;
	dec	a
	jr	NZ, 00107$
	ld	(hl),a
	jp	00113$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:830: g_Players[playerId].LastPose=1;
	ld	(hl), #0x01
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:836: if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
	ld	c, e
	ld	b, d
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:812: if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
	pop	hl
	push	hl
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:836: if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
	sub	a, #0x0e
	jr	NZ, 00119$
	ld	a, (_g_MatchStatus+0)
	dec	a
	jr	NZ, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:839: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:840: g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, -1 (ix)
	call	_GetPatternIdByPoseAndDirection
	pop	de
	ld	(de), a
	jp	00122$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:844: if(g_Players[playerId].Direction!=DIRECTION_NONE){
	ld	a, c
	or	a, a
	jr	Z, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:845: g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, -1 (ix)
	call	_GetPatternIdByPoseAndDirection
	pop	hl
	ld	(hl), a
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:848: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:850: u8 GetPatternIdByPoseAndDirection(u8 playerId){
;	---------------------------------
; Function GetPatternIdByPoseAndDirection
; ---------------------------------
_GetPatternIdByPoseAndDirection::
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:851: u8 pose = g_Players[playerId].LastPose;
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
	ex	de, hl
	push	de
	pop	iy
	ld	c, 12 (iy)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:852: u8 dir = g_Players[playerId].Direction;
	ld	hl, #10
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:855: if (dir > 8) dir = DIRECTION_NONE;
	ld	a, #0x08
	sub	a, e
	jr	NC, 00102$
	ld	e, #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:857: if (dir == DIRECTION_NONE) {
	ld	a, e
	or	a, a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:858: return CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,dir); // Assuming logic for NONE inside
	ld	a, e
	push	af
	inc	sp
	ld	de, #_GetNoMovingPlayerPatternId
	ld	a, #0x08
	call	_CallFnc_U8_P1
	ret
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:876: return k_MovePats[dir * 2 + (pose ? 1 : 0)];
	sla	e
	ld	a, c
	or	a, a
	jr	Z, 00107$
	ld	hl, #0x0001
	jp	00108$
00107$:
	ld	hl, #0x0000
00108$:
	add	hl, de
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #_GetPatternIdByPoseAndDirection_k_MovePats_65537_1400
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s5_b3.c:877: }
	ret
_GetPatternIdByPoseAndDirection_k_MovePats_65537_1400:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x83	; 131
	.db #0x82	; 130
	.area _SEG5
	.area _INITIALIZER
	.area _CABS (ABS)
