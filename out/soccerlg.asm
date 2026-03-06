;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VGM_Decode
	.globl _VGM_Resume
	.globl _VGM_Stop
	.globl _VGM_Play
	.globl _VGM_SetNotifyCB
	.globl _ayFX_Update
	.globl _ayFX_Mute
	.globl _ayFX_PlayBank
	.globl _ayFX_InitBank
	.globl _PCM_Play_11K
	.globl _PSG_Apply
	.globl _MainSub
	.globl _TickGameFieldScrolling
	.globl _V9_SetPaletteEntry
	.globl _V9_SetScrollingBY
	.globl _V9_Poke16_CurrentAddr
	.globl _V9_WriteVRAM_CurrentAddr
	.globl _V9_FillVRAM16_CurrentAddr
	.globl _V9_FillVRAM_CurrentAddr
	.globl _V9_SetWriteAddress
	.globl _V9_SetRegister
	.globl _Print_SetTextFont
	.globl _g_VblankSuspended
	.globl _g_TimerActive
	.globl _g_currentVGMPlayingSegment
	.globl _g_ShotCursorDir
	.globl _g_ShotCursorX
	.globl _g_SoundRequest
	.globl _g_ponPonGirlsInitailized
	.globl _g_peopleState
	.globl _g_PonPonGrilsPoseCounter
	.globl _g_ponPonPatternIndex
	.globl _g_GoalScorerId
	.globl _g_ThrowInPlayerId
	.globl _g_GkAnimTimer
	.globl _g_GoalKickSide
	.globl _g_GkRecoilY
	.globl _g_GkAnimPlayerId
	.globl _g_GkIsGroundKick
	.globl _g_GameWith2Players
	.globl _g_ShootCooldown
	.globl _g_ActionCooldown
	.globl _g_CornerKickSide
	.globl _g_CornerKickTargetId
	.globl _g_PmcSoundPlaying
	.globl _g_PcmStartPlaying
	.globl _g_History2
	.globl _g_History1
	.globl _g_FieldScrollingActionInProgress
	.globl _g_LastTimeCounter
	.globl _g_TimeCounter
	.globl _g_BallIsVisible
	.globl _g_PonPonGirlsAreVisible
	.globl _g_currentVGMPlayerSong
	.globl _g_PonPonGirls
	.globl _g_PassTargetPlayer
	.globl _g_RestartKickTeamId
	.globl _g_Team2Score
	.globl _g_Team1Score
	.globl _g_SecondsToEndOfMatch
	.globl _g_Team2ActivePlayer
	.globl _g_Team1ActivePlayer
	.globl _g_ShowButtonsInfo
	.globl _g_Team2PaletteId
	.globl _g_Team1PaletteId
	.globl _g_Players
	.globl _g_Ball
	.globl _g_MatchStatus
	.globl _g_ActiveFieldZone
	.globl _g_FieldScrollSpeed
	.globl _g_FieldCurrentYPosition
	.globl _g_Timer
	.globl _g_FrameCounter
	.globl _g_VgmPublicPresentationEnded
	.globl _g_FirstKickOff
	.globl _g_VSynch
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
	.globl _g_MusicEntry
	.globl _g_TeamStats
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
	.globl _CallFnc_VOID
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID_P2
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_U8
	.globl _CallFnc_U8_P1
	.globl _CallFnc_U16_P1
	.globl _CallFnc_U8_P2
	.globl _CallFnc_BOOL
	.globl _CallFnc_BOOL_P1
	.globl _PlayPCM
	.globl _PlayAyFx
	.globl _PlayVGM
	.globl _VGMNotification
	.globl _LoadMsxVdpFonts
	.globl _V9990_WaitSynch
	.globl _V9990_LoadButtonsImageData
	.globl _V9990_LoadP1LayerA
	.globl _V9990_LoadP1LayerB
	.globl _V9990_LoadImagePresentationData
	.globl _V9990_LoadMenuTeamsData
	.globl _V9990_LoadSprites
	.globl _V9990_PrintLayerAStringAtPos
	.globl _V9990_ClearTextFromLayerA
	.globl _V9_InterruptVBlank
	.globl _InterruptHook
	.globl _Math_Abs32
	.globl _GetTeamStats
	.globl _PlaySounds
	.globl _main
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
_g_VSynch::
	.ds 1
_g_FirstKickOff::
	.ds 1
_g_VgmPublicPresentationEnded::
	.ds 1
_g_FrameCounter::
	.ds 1
_g_Timer::
	.ds 1
_g_FieldCurrentYPosition::
	.ds 2
_g_FieldScrollSpeed::
	.ds 1
_g_ActiveFieldZone::
	.ds 1
_g_MatchStatus::
	.ds 1
_g_Ball::
	.ds 30
_g_Players::
	.ds 315
_g_Team1PaletteId::
	.ds 1
_g_Team2PaletteId::
	.ds 1
_g_ShowButtonsInfo::
	.ds 1
_g_Team1ActivePlayer::
	.ds 1
_g_Team2ActivePlayer::
	.ds 1
_g_SecondsToEndOfMatch::
	.ds 1
_g_Team1Score::
	.ds 1
_g_Team2Score::
	.ds 1
_g_RestartKickTeamId::
	.ds 1
_g_PassTargetPlayer::
	.ds 1
_g_PonPonGirls::
	.ds 30
_g_currentVGMPlayerSong::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_PonPonGirlsAreVisible::
	.ds 1
_g_BallIsVisible::
	.ds 1
_g_TimeCounter::
	.ds 2
_g_LastTimeCounter::
	.ds 2
_g_FieldScrollingActionInProgress::
	.ds 1
_g_History1::
	.ds 20
_g_History2::
	.ds 20
_g_PcmStartPlaying::
	.ds 1
_g_PmcSoundPlaying::
	.ds 1
_g_CornerKickTargetId::
	.ds 1
_g_CornerKickSide::
	.ds 1
_g_ActionCooldown::
	.ds 1
_g_ShootCooldown::
	.ds 1
_g_GameWith2Players::
	.ds 1
_g_GkIsGroundKick::
	.ds 1
_g_GkAnimPlayerId::
	.ds 1
_g_GkRecoilY::
	.ds 1
_g_GoalKickSide::
	.ds 1
_g_GkAnimTimer::
	.ds 1
_g_ThrowInPlayerId::
	.ds 1
_g_GoalScorerId::
	.ds 1
_g_ponPonPatternIndex::
	.ds 1
_g_PonPonGrilsPoseCounter::
	.ds 1
_g_peopleState::
	.ds 1
_g_ponPonGirlsInitailized::
	.ds 1
_g_SoundRequest::
	.ds 1
_g_ShotCursorX::
	.ds 2
_g_ShotCursorDir::
	.ds 1
_g_currentVGMPlayingSegment::
	.ds 1
_g_TimerActive::
	.ds 1
_g_VblankSuspended::
	.ds 1
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
	.area _CODE
;./soccerlg.c:177: void CallFnc_VOID(u8 segment, void (*func)()) {
;	---------------------------------
; Function CallFnc_VOID
; ---------------------------------
_CallFnc_VOID::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:178: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:179: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:180: func();
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:181: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:181: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:182: }
	inc	sp
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
_g_TeamStats:
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
_g_MusicEntry:
	.dw __str_0
	.dw #0xa000
	.db #0x4b	; 75	'K'
	.dw __str_1
	.dw #0xa000
	.db #0x50	; 80	'P'
	.dw __str_2
	.dw #0xa000
	.db #0x54	; 84	'T'
	.dw __str_3
	.dw #0xa000
	.db #0x58	; 88	'X'
	.dw __str_4
	.dw #0xa000
	.db #0x5c	; 92
	.dw __str_5
	.dw #0xa000
	.db #0x60	; 96
	.dw __str_6
	.dw #0xa000
	.db #0x64	; 100	'd'
__str_0:
	.ascii "Menu"
	.db 0x00
__str_1:
	.ascii "Players presentation"
	.db 0x00
__str_2:
	.ascii "Game melody"
	.db 0x00
__str_3:
	.ascii "Public goal"
	.db 0x00
__str_4:
	.ascii "Public presentation"
	.db 0x00
__str_5:
	.ascii "Refereer"
	.db 0x00
__str_6:
	.ascii "Victory"
	.db 0x00
;./soccerlg.c:184: void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_VOID_P1
; ---------------------------------
_CallFnc_VOID_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:185: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:186: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:187: func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:188: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:188: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:189: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:191: void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
;	---------------------------------
; Function CallFnc_VOID_P2
; ---------------------------------
_CallFnc_VOID_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:192: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:193: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:194: func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:195: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:195: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:196: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:198: void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
;	---------------------------------
; Function CallFnc_VOID_16_P2
; ---------------------------------
_CallFnc_VOID_16_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, e
	ld	b, d
;./soccerlg.c:199: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:200: SET_BANK_SEGMENT(3, segment);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, e
	ld	h, d
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:201: func(p1,p2);
	ld	e, 6 (ix)
	ld	d, 7 (ix)
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:202: SET_BANK_SEGMENT(3, _old);
	ld	c, -2 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:202: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:203: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:205: u8 CallFnc_U8(u8 segment, u8 (*func)()) {
;	---------------------------------
; Function CallFnc_U8
; ---------------------------------
_CallFnc_U8::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:207: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:208: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:209: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:210: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:211: return _res;
	ld	a, c
;./soccerlg.c:212: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:214: u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U8_P1
; ---------------------------------
_CallFnc_U8_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:216: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:217: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:218: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:219: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:220: return _res;
	ld	a, c
;./soccerlg.c:221: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:223: u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U16_P1
; ---------------------------------
_CallFnc_U16_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:225: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:226: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:227: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:228: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:229: return _res;
;./soccerlg.c:230: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:232: u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
;	---------------------------------
; Function CallFnc_U8_P2
; ---------------------------------
_CallFnc_U8_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:234: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:235: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:236: _res = func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
	ld	c, a
;./soccerlg.c:237: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:238: return _res;
	ld	a, c
;./soccerlg.c:239: }
	inc	sp
	pop	ix
	pop	hl
	pop	bc
	jp	(hl)
;./soccerlg.c:241: bool CallFnc_BOOL(u8 segment, bool (*func)()) {
;	---------------------------------
; Function CallFnc_BOOL
; ---------------------------------
_CallFnc_BOOL::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:243: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:244: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:245: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:246: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:247: return _res;
	ld	a, c
;./soccerlg.c:248: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:250: bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_BOOL_P1
; ---------------------------------
_CallFnc_BOOL_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:252: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:253: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:254: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:255: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:256: return _res;
	ld	a, c
;./soccerlg.c:257: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:263: void PlayPCM(u8 id){
;	---------------------------------
; Function PlayPCM
; ---------------------------------
_PlayPCM::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ld	c, a
;./soccerlg.c:264: bool isVGMPlaying=VGM_IsPlaying();
	ld	a, (_g_VGM_State+0)
	and	a, #0x80
	ld	-3 (ix), a
;./soccerlg.c:265: VGM_Stop();
	push	bc
	call	_VGM_Stop
	pop	bc
;./soccerlg.c:266: u8 currentSegment2 = GET_BANK_SEGMENT(2);
	ld	hl, (#(_g_Bank0Segment + 4) + 0)
	ld	-2 (ix), l
;./soccerlg.c:267: u8 currentSegment3 = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:268: switch(id){
	ld	a, #0x05
	sub	a, c
	jp	C, 00107$
	ld	b, #0x00
	ld	hl, #00482$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00482$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
;./soccerlg.c:269: case PCM_CORNERKICK:
00101$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002c
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x2c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002d
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x2d
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:272: PCM_Play_11K((u16)g_Data_PCM_CornerKicka);
	ld	hl, #_g_Data_PCM_CornerKicka
	call	_PCM_Play_11K
;./soccerlg.c:273: break;
	jp	00107$
;./soccerlg.c:274: case PCM_KICKOFF:
00102$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002e
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x2e
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002f
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x2f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:277: PCM_Play_11K((u16)g_Data_PCM_KickOffa);
	ld	hl, #_g_Data_PCM_KickOffa
	call	_PCM_Play_11K
;./soccerlg.c:278: break;
	jp	00107$
;./soccerlg.c:279: case PCM_INGOAL:
00103$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0030
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x30
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0031
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x31
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:282: PCM_Play_11K((u16)g_Data_PCM_InGoal_1a);
	ld	hl, #_g_Data_PCM_InGoal_1a
	call	_PCM_Play_11K
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0032
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x32
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0033
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x33
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:285: PCM_Play_11K((u16)g_Data_PCM_InGoal_2a);
	ld	hl, #_g_Data_PCM_InGoal_2a
	call	_PCM_Play_11K
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0034
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0d
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x34
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0035
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0d
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x35
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:288: PCM_Play_11K((u16)g_Data_PCM_InGoal_3a);
	ld	hl, #_g_Data_PCM_InGoal_3a
	call	_PCM_Play_11K
;./soccerlg.c:289: PCM_Play_11K((u16)g_Data_PCM_InGoal_3a);
	ld	hl, #_g_Data_PCM_InGoal_3a
	call	_PCM_Play_11K
;./soccerlg.c:290: break;
	jp	00107$
;./soccerlg.c:291: case PCM_THROWIN:
00104$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0036
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0d
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x36
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0037
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0d
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x37
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:294: PCM_Play_11K((u16)g_Data_PCM_ThrowIna);
	ld	hl, #_g_Data_PCM_ThrowIna
	call	_PCM_Play_11K
;./soccerlg.c:295: break;
	jp	00107$
;./soccerlg.c:296: case PCM_GOALKICK:
00105$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0038
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x38
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x9000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0039
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x39
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:299: PCM_Play_11K((u16)g_Data_PCM_GoalKicka);
	ld	hl, #_g_Data_PCM_GoalKicka
	call	_PCM_Play_11K
;./soccerlg.c:300: break;
	jp	00107$
;./soccerlg.c:301: case PCM_REFEREER:
00106$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x003a
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x3a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:303: PCM_Play_11K((u16)g_Data_PCM_Refereer);
	ld	hl, #_g_Data_PCM_Refereer
	call	_PCM_Play_11K
;./soccerlg.c:305: }
00107$:
;./soccerlg.c:306: SET_BANK_SEGMENT(2, currentSegment2);
	ld	c, -2 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:194: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x9000
	ld	(hl), c
;./soccerlg.c:307: SET_BANK_SEGMENT(3, currentSegment3);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:308: if(isVGMPlaying){
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00402$
;./soccerlg.c:309: VGM_Resume();
	call	_VGM_Resume
00402$:
;./soccerlg.c:311: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:316: void PlayAyFx(u8 id){
;	---------------------------------
; Function PlayAyFx
; ---------------------------------
_PlayAyFx::
	ld	b, a
;./soccerlg.c:317: ayFX_Mute();
	push	bc
	call	_ayFX_Mute
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/ayfx/ayfx_player.h:131: inline void ayFX_SetChannel(u8 chan) { ayFX_Channel = 3 - chan; }
	ld	hl, #_ayFX_Channel
	ld	(hl), #0x01
;./soccerlg.c:319: u8 currentSegment = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	c, l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0045
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x11
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x45
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:321: ayFX_PlayBank(id,0);
	push	bc
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	call	_ayFX_PlayBank
	pop	bc
;./soccerlg.c:322: SET_BANK_SEGMENT(3, currentSegment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:322: SET_BANK_SEGMENT(3, currentSegment);
;./soccerlg.c:324: }
	ret
;./soccerlg.c:331: void PlayVGM(u8 vgmId){
;	---------------------------------
; Function PlayVGM
; ---------------------------------
_PlayVGM::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;./soccerlg.c:332: g_currentVGMPlayerSong=vgmId;
	ld	-1 (ix), a
	ld	(_g_currentVGMPlayerSong+0), a
;./soccerlg.c:333: u8 currentSegment = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-4 (ix), l
;./soccerlg.c:334: g_currentVGMPlayingSegment=g_MusicEntry[vgmId].Segment;
	ld	bc, #_g_MusicEntry+0
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	ld	c, e
	ld	b, d
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
;./soccerlg.c:335: SET_BANK_SEGMENT(3, g_currentVGMPlayingSegment);
	ld	(_g_currentVGMPlayingSegment+0), a
	ld	c, a
	ld	b, #0x00
	ld	-3 (ix), c
	ld	-2 (ix), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	srl	b
	rr	c
	srl	b
	rr	c
	ld	a, c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, -3 (ix)
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:336: VGM_Play((void*)g_MusicEntry[vgmId].Data,vgmId!=VGM_PLAYERS_PRESENTATION && vgmId!=VGM_PUBLIC_PRESENTATION && vgmId!=VGM_REFEERER);
	ld	a, -1 (ix)
	dec	a
	jr	Z, 00138$
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	Z, 00138$
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	NZ, 00139$
00138$:
	ld	c, #0x00
	jp	00140$
00139$:
	ld	c, #0x01
00140$:
	ex	de, hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	push	af
	inc	sp
	ex	de, hl
	call	_VGM_Play
;./soccerlg.c:337: SET_BANK_SEGMENT(3, currentSegment);
	ld	c, -4 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:338: VGM_Resume();
	call	_VGM_Resume
;./soccerlg.c:339: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:341: bool VGMNotification(u8 id)
;	---------------------------------
; Function VGMNotification
; ---------------------------------
_VGMNotification::
	ld	c, a
;./soccerlg.c:343: __asm di __endasm;
	di	
;./soccerlg.c:345: switch (id)
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	inc	c
	jr	Z, 00103$
	jp	00104$
;./soccerlg.c:347: case 0x00: // End of data segment
00101$:
;./soccerlg.c:348: g_currentVGMPlayingSegment++;
	ld	iy, #_g_currentVGMPlayingSegment
	inc	0 (iy)
;./soccerlg.c:349: break;
	jp	00104$
;./soccerlg.c:351: case 0x01: // Reach loop marker
00102$:
;./soccerlg.c:352: g_currentVGMPlayingSegment=g_MusicEntry[g_currentVGMPlayerSong].Segment;
	ld	bc, #_g_MusicEntry+0
	ld	de, (_g_currentVGMPlayerSong)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	(_g_currentVGMPlayingSegment+0), a
;./soccerlg.c:353: break;
	jp	00104$
;./soccerlg.c:355: case 0xFF: // Jump to loop marker
00103$:
;./soccerlg.c:356: g_VgmPublicPresentationEnded=TRUE;
	ld	iy, #_g_VgmPublicPresentationEnded
	ld	0 (iy), #0x01
;./soccerlg.c:358: }
00104$:
;./soccerlg.c:359: __asm ei __endasm;
	ei	
;./soccerlg.c:360: return TRUE;
	ld	a, #0x01
;./soccerlg.c:361: }
	ret
;./soccerlg.c:366: void LoadMsxVdpFonts() {
;	---------------------------------
; Function LoadMsxVdpFonts
; ---------------------------------
_LoadMsxVdpFonts::
;./soccerlg.c:367: u8 currentSegment = GET_BANK_SEGMENT(3);
	ld	bc, (#(_g_Bank0Segment + 6) + 0)
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0014
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x05
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x14
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:369: Print_SetTextFont((const void*)g_Data_Fonts, 1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Data_Fonts
	call	_Print_SetTextFont
	pop	bc
;./soccerlg.c:370: SET_BANK_SEGMENT(3, currentSegment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:370: SET_BANK_SEGMENT(3, currentSegment);
;./soccerlg.c:371: }
	ret
;./soccerlg.c:378: void V9990_WaitSynch()
;	---------------------------------
; Function V9990_WaitSynch
; ---------------------------------
_V9990_WaitSynch::
;./soccerlg.c:380: while(!g_VSynch) {}
00101$:
	ld	a, (_g_VSynch+0)
	or	a, a
	jr	Z, 00101$
;./soccerlg.c:381: g_VSynch = FALSE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x00
;./soccerlg.c:384: }
	ret
;./soccerlg.c:386: void V9990_LoadButtonsImageData(){
;	---------------------------------
; Function V9990_LoadButtonsImageData
; ---------------------------------
_V9990_LoadButtonsImageData::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;./soccerlg.c:387: u8 currentSegment = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0028
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0a
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x28
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:389: V9_WriteVRAM(V9_P1_PGT_A, g_Data_Img_Buttons_Presentation_Part1a, sizeof(g_Data_Img_Buttons_Presentation_Part1a)); 
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x0000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0029
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0a
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x29
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:391: V9_WriteVRAM(V9_P1_PGT_A + 8192L, g_Data_Img_Buttons_Presentation_Part1b, sizeof(g_Data_Img_Buttons_Presentation_Part1b));
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x2000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002a
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0a
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x2a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:393: V9_WriteVRAM(V9_P1_PGT_A + 16384L, g_Data_Img_Buttons_Presentation_Part2a, sizeof(g_Data_Img_Buttons_Presentation_Part2a)); 
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x4000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part2a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x002b
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x0a
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x2b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:395: V9_WriteVRAM(V9_P1_PGT_A + 16384L+8192L, g_Data_Img_Buttons_Presentation_Part2b, sizeof(g_Data_Img_Buttons_Presentation_Part2b)); 	
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: inline void V9_WriteVRAM(u32 addr, const u8* src, u16 count) { V9_SetWriteAddress(addr); V9_WriteVRAM_CurrentAddr(src, count); }
	ld	de, #0x6000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Buttons_Presentation_Part2b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0023
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x23
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:397: V9_SetPalette(0, 16, g_Data_Palette_Buttons); 
	ld	bc, #_g_Data_Palette_Buttons+0
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
;	spillPairReg hl
;	spillPairReg hl
	ld	hl, #0x0
;	spillPairReg hl
;	spillPairReg hl
00211$:
	ld	a, h
	sub	a, #0x10
	jr	NC, 00192$
	ld	-1 (ix), l
	inc	l
	push	hl
	push	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	bc
	inc	bc
	inc	bc
	inc	h
	jp	00211$
;./soccerlg.c:397: ERROR: no line number 397 in file ./soccerlg.c
00192$:
;./soccerlg.c:398: ERROR: no line number 398 in file ./soccerlg.c
	ld	c, -2 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:398: ERROR: no line number 398 in file ./soccerlg.c
;./soccerlg.c:399: ERROR: no line number 399 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:401: ERROR: no line number 401 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadP1LayerA
; ---------------------------------
_V9990_LoadP1LayerA::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:402: ERROR: no line number 402 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: ERROR: no line number 353 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x001c
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x07
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x1c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:405: ERROR: no line number 405 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_P1_LayerA_Stda
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x001e
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x07
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x1e
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:407: ERROR: no line number 407 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_LayerA_Menu_Teams_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x001f
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x07
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x1f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:409: ERROR: no line number 409 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x4000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_LayerA_Menu_Teams_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0020
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x20
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:411: ERROR: no line number 411 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #_g_Data_LayerA_Menu_Teams_Part2
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:362: ERROR: no line number 362 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	hl, #0x0007
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #0x0000
	call	_V9_FillVRAM16_CurrentAddr
;./soccerlg.c:413: ERROR: no line number 413 in file ./soccerlg.c
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:413: ERROR: no line number 413 in file ./soccerlg.c
;./soccerlg.c:415: ERROR: no line number 415 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:416: ERROR: no line number 416 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadP1LayerB
; ---------------------------------
_V9990_LoadP1LayerB::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:417: ERROR: no line number 417 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:353: ERROR: no line number 353 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x6a00
	xor	a, a
	call	_V9_FillVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x003b
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x0e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x3b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:420: ERROR: no line number 420 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x003c
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x0f
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x3c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:422: ERROR: no line number 422 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x003d
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x0f
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x3d
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:424: ERROR: no line number 424 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x4000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part2a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x003e
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x0f
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x3e
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:426: ERROR: no line number 426 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part2b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x003f
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x0f
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x3f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:428: ERROR: no line number 428 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x8000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part3a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0040
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x10
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x40
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:430: ERROR: no line number 430 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xa000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part3b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0041
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x10
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x41
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:433: ERROR: no line number 433 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part4a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0042
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x10
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x42
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:435: ERROR: no line number 435 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xe000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x1c00
	ld	hl, #_g_Data_Field_LayerB_Part4b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0043
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x10
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x43
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:438: ERROR: no line number 438 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	hl, #0x0005
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part5a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0044
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x11
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x44
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:440: ERROR: no line number 440 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	hl, #0x0005
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Field_LayerB_Part5b
	call	_V9_WriteVRAM_CurrentAddr
;./soccerlg.c:441: ERROR: no line number 441 in file ./soccerlg.c
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:441: ERROR: no line number 441 in file ./soccerlg.c
;./soccerlg.c:443: ERROR: no line number 443 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:445: ERROR: no line number 445 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadImagePresentationData
; ---------------------------------
_V9990_LoadImagePresentationData::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:446: ERROR: no line number 446 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0015
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x05
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x15
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:448: ERROR: no line number 448 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x0000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0016
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x05
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x16
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:450: ERROR: no line number 450 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0017
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x05
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x17
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:453: ERROR: no line number 453 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x4000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part2a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0018
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x06
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x18
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:455: ERROR: no line number 455 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part2b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0019
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x06
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x19
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:458: ERROR: no line number 458 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x8000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part3a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x001a
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x06
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x1a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:460: ERROR: no line number 460 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xa000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Img_Presentation_Part3b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x001b
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x06
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x1b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:463: ERROR: no line number 463 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x1400
	ld	hl, #_g_Data_Img_Presentation_Part4
	call	_V9_WriteVRAM_CurrentAddr
;./soccerlg.c:464: ERROR: no line number 464 in file ./soccerlg.c
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:464: ERROR: no line number 464 in file ./soccerlg.c
;./soccerlg.c:465: ERROR: no line number 465 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:467: ERROR: no line number 467 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadMenuTeamsData
; ---------------------------------
_V9990_LoadMenuTeamsData::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;./soccerlg.c:468: ERROR: no line number 468 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-5 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0021
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x21
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:470: ERROR: no line number 470 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x2000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Teams_Gray_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0022
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x22
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:472: ERROR: no line number 472 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x4000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Teams_Gray_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0023
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x23
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:475: ERROR: no line number 475 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x6000
	ld	hl, #0x0004
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #_g_Data_Teams_Gray_Part2
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:362: ERROR: no line number 362 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xe000
	ld	hl, #0x0007
	call	_V9_SetWriteAddress
	ld	de, #0x1000
	ld	hl, #0x0000
	call	_V9_FillVRAM16_CurrentAddr
;./soccerlg.c:477: ERROR: no line number 477 in file ./soccerlg.c
	ld	-4 (ix), #<(_g_Data_Palette_Gray_Scale)
	ld	-3 (ix), #>(_g_Data_Palette_Gray_Scale)
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
	ld	-2 (ix), #0x10
	ld	-1 (ix), #0x00
00196$:
	ld	a, -1 (ix)
	sub	a, #0x10
	jr	NC, 00158$
	ld	c, -2 (ix)
	inc	-2 (ix)
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	a, c
	call	_V9_SetPaletteEntry
	ld	a, -4 (ix)
	add	a, #0x03
	ld	-4 (ix), a
	jr	NC, 00245$
	inc	-3 (ix)
00245$:
	inc	-1 (ix)
	jp	00196$
;./soccerlg.c:477: ERROR: no line number 477 in file ./soccerlg.c
00158$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0020
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x08
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x20
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:479: ERROR: no line number 479 in file ./soccerlg.c
	ld	bc, #_g_Data_Palette_Teams_Colors+0
;./soccerlg.c:1028: ERROR: no line number 1028 in file ./soccerlg.c
;	spillPairReg hl
;	spillPairReg hl
	ld	hl, #0x0
;	spillPairReg hl
;	spillPairReg hl
00199$:
	ld	a, h
	sub	a, #0x10
	jr	NC, 00177$
	ld	-1 (ix), l
	inc	l
	push	hl
	push	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_V9_SetPaletteEntry
	pop	bc
	pop	hl
	inc	bc
	inc	bc
	inc	bc
	inc	h
	jp	00199$
;./soccerlg.c:479: ERROR: no line number 479 in file ./soccerlg.c
00177$:
;./soccerlg.c:480: ERROR: no line number 480 in file ./soccerlg.c
	ld	c, -5 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:480: ERROR: no line number 480 in file ./soccerlg.c
;./soccerlg.c:481: ERROR: no line number 481 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:483: ERROR: no line number 483 in file ./soccerlg.c
;	---------------------------------
; Function V9990_LoadSprites
; ---------------------------------
_V9990_LoadSprites::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:484: ERROR: no line number 484 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0024
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x09
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x24
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:739: ERROR: no line number 739 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	l, #0x02
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x19
	call	_V9_SetRegister
;./soccerlg.c:487: ERROR: no line number 487 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0x8000
	ld	hl, #0x0000
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Sprites_Part1a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0025
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x09
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x25
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:489: ERROR: no line number 489 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xa000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Sprites_Part1b
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0026
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x09
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x26
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:491: ERROR: no line number 491 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xc000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Sprites_Part2a
	call	_V9_WriteVRAM_CurrentAddr
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0027
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x09
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x27
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), a
;./soccerlg.c:493: ERROR: no line number 493 in file ./soccerlg.c
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:371: ERROR: no line number 371 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ld	de, #0xe000
	ld	h, l
	call	_V9_SetWriteAddress
	ld	de, #0x2000
	ld	hl, #_g_Data_Sprites_Part2b
	call	_V9_WriteVRAM_CurrentAddr
;./soccerlg.c:494: ERROR: no line number 494 in file ./soccerlg.c
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:494: ERROR: no line number 494 in file ./soccerlg.c
;./soccerlg.c:496: ERROR: no line number 496 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:498: ERROR: no line number 498 in file ./soccerlg.c
;	---------------------------------
; Function V9990_PrintLayerAStringAtPos
; ---------------------------------
_V9990_PrintLayerAStringAtPos::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;./soccerlg.c:501: ERROR: no line number 501 in file ./soccerlg.c
	ld	e, 4 (ix)
	ld	d, 5 (ix)
00101$:
	ld	a, (de)
	or	a, a
	jr	Z, 00106$
;./soccerlg.c:502: ERROR: no line number 502 in file ./soccerlg.c
	inc	de
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: ERROR: no line number 1426 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
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
	ld	c, -1 (ix)
	ld	b, #0x00
	add	hl, bc
	add	hl, hl
	ld	a, h
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
	ld	a, h
	add	a, #0xc0
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0x07
	ld	c, a
	jr	NC, 00119$
	inc	b
00119$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	ex	de, hl
	push	hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_V9_SetWriteAddress
	pop	de
	pop	hl
	push	hl
	call	_V9_Poke16_CurrentAddr
;./soccerlg.c:503: ERROR: no line number 503 in file ./soccerlg.c
	inc	-1 (ix)
;./soccerlg.c:504: ERROR: no line number 504 in file ./soccerlg.c
	jp	00101$
00106$:
;./soccerlg.c:507: ERROR: no line number 507 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:509: ERROR: no line number 509 in file ./soccerlg.c
;	---------------------------------
; Function V9990_ClearTextFromLayerA
; ---------------------------------
_V9990_ClearTextFromLayerA::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, a
	ld	-2 (ix), l
;./soccerlg.c:510: ERROR: no line number 510 in file ./soccerlg.c
	ld	-1 (ix), #0x00
00105$:
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	jr	NC, 00107$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:1426: ERROR: no line number 1426 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
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
	jr	NC, 00120$
	inc	d
00120$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h:396: ERROR: no line number 396 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/v9990.h
	push	bc
	ex	de, hl
	call	_V9_SetWriteAddress
	pop	bc
	ld	hl, #0x0000
	call	_V9_Poke16_CurrentAddr
;./soccerlg.c:512: ERROR: no line number 512 in file ./soccerlg.c
	inc	c
;./soccerlg.c:510: ERROR: no line number 510 in file ./soccerlg.c
	inc	-1 (ix)
	jp	00105$
00107$:
;./soccerlg.c:514: ERROR: no line number 514 in file ./soccerlg.c
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:516: ERROR: no line number 516 in file ./soccerlg.c
;	---------------------------------
; Function V9_InterruptVBlank
; ---------------------------------
_V9_InterruptVBlank::
;./soccerlg.c:517: ERROR: no line number 517 in file ./soccerlg.c
	ld	hl, #_g_VSynch
	ld	(hl), #0x01
;./soccerlg.c:518: ERROR: no line number 518 in file ./soccerlg.c
	ld	iy, #_g_FrameCounter
	inc	0 (iy)
;./soccerlg.c:519: ERROR: no line number 519 in file ./soccerlg.c
	ld	a, (_g_FrameCounter+0)
	sub	a, #0x3c
	jr	NZ, 00102$
;./soccerlg.c:520: ERROR: no line number 520 in file ./soccerlg.c
	ld	hl, (_g_TimeCounter)
	inc	hl
	ld	(_g_TimeCounter), hl
;./soccerlg.c:521: ERROR: no line number 521 in file ./soccerlg.c
	ld	0 (iy), #0x00
00102$:
;./soccerlg.c:523: ERROR: no line number 523 in file ./soccerlg.c
	call	_PlaySounds
;./soccerlg.c:525: ERROR: no line number 525 in file ./soccerlg.c
	ld	iy, #_g_Timer
	inc	0 (iy)
;./soccerlg.c:529: ERROR: no line number 529 in file ./soccerlg.c
	ld	a, (_g_FieldScrollingActionInProgress+0)
	inc	a
	jr	Z, 00108$
;./soccerlg.c:530: ERROR: no line number 530 in file ./soccerlg.c
	ld	de, #_TickGameFieldScrolling
	ld	a, #0x04
	jp	_CallFnc_VOID
00108$:
;./soccerlg.c:533: ERROR: no line number 533 in file ./soccerlg.c
	ld	a, (_g_VblankSuspended+0)
	or	a, a
	ret	NZ
	ld	a, (_g_MatchStatus+0)
	dec	a
	ret	Z
	ld	a, (_g_MatchStatus+0)
	sub	a, #0x13
	ret	Z
;./soccerlg.c:534: ERROR: no line number 534 in file ./soccerlg.c
	ld	hl, (_g_FieldCurrentYPosition)
;./soccerlg.c:540: ERROR: no line number 540 in file ./soccerlg.c
	jp	_V9_SetScrollingBY
;./soccerlg.c:542: ERROR: no line number 542 in file ./soccerlg.c
;	---------------------------------
; Function InterruptHook
; ---------------------------------
_InterruptHook::
;./soccerlg.c:555: ERROR: no line number 555 in file ./soccerlg.c
	in	a, (0x99)
	in	a, (0x66)
	out	(0x66), a
	rra
	call	c, _V9_InterruptVBlank
;./soccerlg.c:556: ERROR: no line number 556 in file ./soccerlg.c
	ret
;./soccerlg.c:562: ERROR: no line number 562 in file ./soccerlg.c
;	---------------------------------
; Function Math_Abs32
; ---------------------------------
_Math_Abs32::
	ld	c, l
	ld	b, h
	bit	7, b
	jr	Z, 00103$
	ld	hl, #0x0000
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	hl, #0x0000
	sbc	hl, bc
	ret
00103$:
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ret
;./soccerlg.c:564: ERROR: no line number 564 in file ./soccerlg.c
;	---------------------------------
; Function GetTeamStats
; ---------------------------------
_GetTeamStats::
	ld	c, a
;./soccerlg.c:565: ERROR: no line number 565 in file ./soccerlg.c
	ld	a, #0x05
	sub	a, c
	jr	NC, 00102$
	ld	de, #_g_TeamStats
	ret
00102$:
;./soccerlg.c:566: ERROR: no line number 566 in file ./soccerlg.c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_TeamStats
	add	hl, de
	ex	de, hl
;./soccerlg.c:567: ERROR: no line number 567 in file ./soccerlg.c
	ret
;./soccerlg.c:568: ERROR: no line number 568 in file ./soccerlg.c
;	---------------------------------
; Function PlaySounds
; ---------------------------------
_PlaySounds::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;./soccerlg.c:569: ERROR: no line number 569 in file ./soccerlg.c
	ld	a, (_g_currentVGMPlayingSegment+0)
	inc	a
	jr	Z, 00155$
;./soccerlg.c:570: ERROR: no line number 570 in file ./soccerlg.c
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:571: ERROR: no line number 571 in file ./soccerlg.c
	ld	a, (_g_currentVGMPlayingSegment+0)
	ld	c, a
	ld	b, #0x00
	ld	e, c
	ld	d, b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	c, e
	ld	b, d
	srl	b
	rr	c
	srl	b
	rr	c
	ld	a, c
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:572: ERROR: no line number 572 in file ./soccerlg.c
	call	_VGM_Decode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0045
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x11
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x45
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:574: ERROR: no line number 574 in file ./soccerlg.c
	call	_ayFX_Update
;./soccerlg.c:575: ERROR: no line number 575 in file ./soccerlg.c
	call	_PSG_Apply
;./soccerlg.c:576: ERROR: no line number 576 in file ./soccerlg.c
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:576: ERROR: no line number 576 in file ./soccerlg.c
00155$:
;./soccerlg.c:579: ERROR: no line number 579 in file ./soccerlg.c
	inc	sp
	pop	ix
	ret
;./soccerlg.c:583: ERROR: no line number 583 in file ./soccerlg.c
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./soccerlg.c:584: ERROR: no line number 584 in file ./soccerlg.c
	ld	bc, #_InterruptHook
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:37: ERROR: no line number 37 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	hl, #0xfd9a
	ld	(hl), #0xc3
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:38: ERROR: no line number 38 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	(0xfd9b), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h:62: ERROR: no line number 62 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios_hook.h
	ld	l, #0x9f
	ld	(hl), #0xc9
;./soccerlg.c:586: ERROR: no line number 586 in file ./soccerlg.c
	ld	hl, #_VGMNotification
	call	_VGM_SetNotifyCB
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: ERROR: no line number 190 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	hl, #0x0045
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: ERROR: no line number 191 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x11
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: ERROR: no line number 195 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h
	ld	a, #0x45
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: ERROR: no line number 101 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h
	ld	(#0xb000),a
;./soccerlg.c:588: ERROR: no line number 588 in file ./soccerlg.c
	ld	hl, #_g_Data_AYFX_Bank
	call	_ayFX_InitBank
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/ayfx/ayfx_player.h:131: ERROR: no line number 131 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/ayfx/ayfx_player.h
	ld	a, #0x01
	ld	(#_ayFX_Channel), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/ayfx/ayfx_player.h:124: ERROR: no line number 124 in file E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/ayfx/ayfx_player.h
	ld	iy, #_ayFX_Mode
	ld	0 (iy), #0x00
;./soccerlg.c:592: ERROR: no line number 592 in file ./soccerlg.c
	ld	de, #_MainSub
	ld	a, #0x04
;./soccerlg.c:593: ERROR: no line number 593 in file ./soccerlg.c
	jp	_CallFnc_VOID
	.area _CODE
	.area _INITIALIZER
__xinit__g_PonPonGirlsAreVisible:
	.db #0x01	; 1
__xinit__g_BallIsVisible:
	.db #0x01	; 1
__xinit__g_TimeCounter:
	.dw #0x0000
__xinit__g_LastTimeCounter:
	.dw #0x0000
__xinit__g_FieldScrollingActionInProgress:
	.db #0xff	; 255
__xinit__g_History1:
	.ascii "PLY:      "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__g_History2:
	.ascii "CPU:      "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__g_PcmStartPlaying:
	.db #0x00	; 0
__xinit__g_PmcSoundPlaying:
	.db #0xff	; 255
__xinit__g_CornerKickTargetId:
	.db #0xff	; 255
__xinit__g_CornerKickSide:
	.db #0x00	; 0
__xinit__g_ActionCooldown:
	.db #0x00	; 0
__xinit__g_ShootCooldown:
	.db #0x00	; 0
__xinit__g_GameWith2Players:
	.db #0x00	; 0
__xinit__g_GkIsGroundKick:
	.db #0x00	; 0
__xinit__g_GkAnimPlayerId:
	.db #0xff	; 255
__xinit__g_GkRecoilY:
	.db #0x00	;  0
__xinit__g_GoalKickSide:
	.db #0x00	; 0
__xinit__g_GkAnimTimer:
	.db #0x00	; 0
__xinit__g_ThrowInPlayerId:
	.db #0xff	; 255
__xinit__g_GoalScorerId:
	.db #0xff	; 255
__xinit__g_ponPonPatternIndex:
	.db #0x00	; 0
__xinit__g_PonPonGrilsPoseCounter:
	.db #0x00	; 0
__xinit__g_peopleState:
	.db #0x00	; 0
__xinit__g_ponPonGirlsInitailized:
	.db #0x00	; 0
__xinit__g_SoundRequest:
	.db #0xff	; 255
__xinit__g_ShotCursorX:
	.dw #0x0078
__xinit__g_ShotCursorDir:
	.db #0x02	;  2
__xinit__g_currentVGMPlayingSegment:
	.db #0xff	; 255
__xinit__g_TimerActive:
	.db #0x00	; 0
__xinit__g_VblankSuspended:
	.db #0x00	; 0
	.area _CABS (ABS)
