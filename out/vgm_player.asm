;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module vgm_player
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSG_Resume
	.globl _PSG_Mute
	.globl _PSG_SetRegister
	.globl _g_VGM_NotifyCallback
	.globl _g_VGM_DataStart
	.globl _g_VGM_Config
	.globl _g_VGM_State
	.globl _g_VGM_WaitFrame
	.globl _g_VGM_WaitCount
	.globl _g_VGM_Loop
	.globl _g_VGM_Pointer
	.globl _g_VGM_Header
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
	.globl _VGM_SetNotifyCB
	.globl _VGM_Play
	.globl _VGM_Resume
	.globl _VGM_Pause
	.globl _VGM_Stop
	.globl _VGM_Decode
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
_g_VGM_Header::
	.ds 2
_g_VGM_Pointer::
	.ds 2
_g_VGM_Loop::
	.ds 2
_g_VGM_WaitCount::
	.ds 2
_g_VGM_WaitFrame::
	.ds 2
_g_VGM_State::
	.ds 1
_g_VGM_Config::
	.ds 1
_g_VGM_DataStart::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_VGM_NotifyCallback::
	.ds 2
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
;./libs/vgm_player.c:82: void VGM_SetNotifyCB(VGM_Callback cb)
;	---------------------------------
; Function VGM_SetNotifyCB
; ---------------------------------
_VGM_SetNotifyCB::
	ld	(_g_VGM_NotifyCallback), hl
;./libs/vgm_player.c:84: g_VGM_NotifyCallback = cb;
;./libs/vgm_player.c:85: }
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
;./libs/vgm_player.c:95: bool VGM_Play(const void* addr, bool loop)
;	---------------------------------
; Function VGM_Play
; ---------------------------------
_VGM_Play::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	push	af
;./libs/vgm_player.c:97: VGM_Pause(); // Mute all sound chip
	push	hl
	call	_VGM_Pause
	pop	hl
;./libs/vgm_player.c:99: g_VGM_Header = (VGM_Header*)addr;
	ld	(_g_VGM_Header), hl
;./libs/vgm_player.c:101: if (g_VGM_Header->Ident != VGM_IDENT)
	ld	hl, (_g_VGM_Header)
	ex	(sp), hl
	pop	de
	push	de
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, (#___str_0 + 0)
	ld	bc, (#___str_0 + 2)
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ, 00151$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, bc
	jr	Z, 00102$
00151$:
;./libs/vgm_player.c:102: return FALSE;
	xor	a, a
	jp	00119$
00102$:
;./libs/vgm_player.c:104: g_VGM_State = VGM_STATE_PLAY;
	ld	iy, #_g_VGM_State
	ld	0 (iy), #0x80
;./libs/vgm_player.c:105: if (loop)
	ld	a, 4 (ix)
	or	a, a
	jr	Z, 00104$
;./libs/vgm_player.c:106: g_VGM_State |= VGM_STATE_LOOP;
	ld	0 (iy), #0x82
00104$:
;./libs/vgm_player.c:109: g_VGM_Pointer = (u8*)((u16)&g_VGM_Header->Data_offset + (u16)g_VGM_Header->Data_offset);
	pop	hl
	push	hl
	ld	de, #0x0034
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
	add	hl, bc
	ld	(_g_VGM_Pointer), hl
;./libs/vgm_player.c:112: g_VGM_DataStart = g_VGM_Pointer; 
	ld	hl, (_g_VGM_Pointer)
	ld	(_g_VGM_DataStart), hl
;./libs/vgm_player.c:115: g_VGM_Config = 0; 
	ld	iy, #_g_VGM_Config
	ld	0 (iy), #0x00
;./libs/vgm_player.c:118: u16 startAddr = (u16)g_VGM_Pointer; 
	ld	hl, (_g_VGM_Pointer)
;./libs/vgm_player.c:120: if (startAddr >= 0x8000 && startAddr < VGM_BANK_LIMIT) 
	ld	a,h
	cp	a,#0x80
	jr	C, 00106$
	sub	a, #0xc0
	jr	NC, 00106$
;./libs/vgm_player.c:122: g_VGM_Config |= VGM_CFG_MAPPED; 
	ld	0 (iy), #0x01
00106$:
;./libs/vgm_player.c:128: if (g_VGM_Header->Loop_offset){
	pop	hl
	push	hl
	ld	de, #0x001c
	add	hl, de
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	hl
	ld	a, d
	or	a, e
	or	a, b
	or	a, c
	jr	Z, 00109$
;./libs/vgm_player.c:129: u32 absoluteLoopOffset = (u32)&g_VGM_Header->Loop_offset + g_VGM_Header->Loop_offset;
	add	hl, bc
;./libs/vgm_player.c:130: g_VGM_Loop = (u8*)(u16)absoluteLoopOffset;
	ld	(_g_VGM_Loop), hl
	jp	00110$
00109$:
;./libs/vgm_player.c:133: g_VGM_Loop = 0;
	ld	hl, #0x0000
	ld	(_g_VGM_Loop), hl
00110$:
;./libs/vgm_player.c:136: g_VGM_WaitCount = 0;
	ld	hl, #0x0000
	ld	(_g_VGM_WaitCount), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:190: inline u8 Sys_GetBIOSInfo() { return g_BASRVN[0]; }
	ld	a, (#_g_BASRVN + 0)
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:205: inline u8 Sys_GetFrequency() { return Sys_GetBIOSInfo() & 0x80; }
	and	a, #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:219: inline bool Sys_Is50Hz() { return Sys_GetFrequency() == SYS_FREQ_50HZ; }
	sub	a, #0x80
	jr	NZ, 00112$
;./libs/vgm_player.c:138: if (Sys_Is50Hz())
;./libs/vgm_player.h:119: inline void VGM_SetFrequency50Hz() { g_VGM_State |= VGM_STATE_50HZ; g_VGM_WaitFrame = VGM_WAIT_50HZ; }
	ld	a, (_g_VGM_State+0)
	or	a, #0x01
	ld	(_g_VGM_State+0), a
	ld	hl, #0x0372
	ld	(_g_VGM_WaitFrame), hl
;./libs/vgm_player.c:139: VGM_SetFrequency50Hz();
	jp	00113$
00112$:
;./libs/vgm_player.h:123: inline void VGM_SetFrequency60Hz() { g_VGM_State &= ~VGM_STATE_50HZ; g_VGM_WaitFrame = VGM_WAIT_60HZ; }
	ld	a, (_g_VGM_State+0)
	and	a, #0xfe
	ld	(_g_VGM_State+0), a
	ld	hl, #0x02df
	ld	(_g_VGM_WaitFrame), hl
;./libs/vgm_player.c:141: VGM_SetFrequency60Hz();
00113$:
;./libs/vgm_player.c:143: return TRUE;
	ld	a, #0x01
00119$:
;./libs/vgm_player.c:144: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
___str_0:
	.ascii "Vgm "
	.db 0x00
;./libs/vgm_player.c:148: void VGM_Resume()
;	---------------------------------
; Function VGM_Resume
; ---------------------------------
_VGM_Resume::
;./libs/vgm_player.c:150: g_VGM_State |= VGM_STATE_PLAY;
	ld	a, (_g_VGM_State+0)
	or	a, #0x80
	ld	(_g_VGM_State+0), a
;./libs/vgm_player.h:149: inline bool VGM_ContainsPSG() { return (g_VGM_Header->Version >= 0x0151) && g_VGM_Header->AY8910_clock; }
	ld	bc, (_g_VGM_Header)
	ld	e, c
	ld	d, b
	ld	hl, #8
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	hl
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, #0x51
	ld	a, d
	sbc	a, #0x01
	ld	de, #0x0000
	sbc	hl, de
	jr	C, 00106$
	ld	hl, #116
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	or	a, e
	or	a, b
	or	a, c
	jr	NZ, 00107$
00106$:
	xor	a, a
	jp	00108$
00107$:
	ld	a, #0x01
00108$:
;./libs/vgm_player.c:153: if (VGM_ContainsPSG())
	or	a, a
;./libs/vgm_player.c:154: PSG_Resume();
	jp	NZ,_PSG_Resume
;./libs/vgm_player.c:171: }
	ret
;./libs/vgm_player.c:175: void VGM_Pause()
;	---------------------------------
; Function VGM_Pause
; ---------------------------------
_VGM_Pause::
;./libs/vgm_player.c:177: g_VGM_State &= ~VGM_STATE_PLAY;
	ld	a, (_g_VGM_State+0)
	and	a, #0x7f
	ld	(_g_VGM_State+0), a
;./libs/vgm_player.c:179: PSG_Mute();
;./libs/vgm_player.c:192: }
	jp	_PSG_Mute
;./libs/vgm_player.c:196: void VGM_Stop()
;	---------------------------------
; Function VGM_Stop
; ---------------------------------
_VGM_Stop::
;./libs/vgm_player.c:198: VGM_Pause();
	call	_VGM_Pause
;./libs/vgm_player.c:199: g_VGM_Pointer = (u8*)((u16)&g_VGM_Header->Data_offset + (u16)g_VGM_Header->Data_offset);
	ld	hl, (_g_VGM_Header)
	ld	bc, #0x0034
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
	add	hl, bc
	ld	(_g_VGM_Pointer), hl
;./libs/vgm_player.c:200: g_VGM_WaitCount = 0;
	ld	hl, #0x0000
	ld	(_g_VGM_WaitCount), hl
;./libs/vgm_player.c:201: }
	ret
;./libs/vgm_player.c:206: void VGM_Decode()
;	---------------------------------
; Function VGM_Decode
; ---------------------------------
_VGM_Decode::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;./libs/vgm_player.c:208: if (!(g_VGM_State & VGM_STATE_PLAY))
	ld	a, (_g_VGM_State+0)
	rlca
	jp	NC,00177$
;./libs/vgm_player.c:209: return;
	jp	00174$
;./libs/vgm_player.c:212: while (g_VGM_WaitCount < g_VGM_WaitFrame)
00174$:
	ld	hl, #_g_VGM_WaitFrame
	ld	a, (_g_VGM_WaitCount+0)
	sub	a, (hl)
	inc	hl
	ld	a, (_g_VGM_WaitCount+1)
	sbc	a, (hl)
	jp	NC, 00176$
;./libs/vgm_player.c:215: VGM_FETCH_BYTE(cmd); 
	ld	hl, (_g_VGM_Pointer)
	ld	c, (hl)
	ld	hl, (_g_VGM_Pointer)
	inc	hl
	ld	(_g_VGM_Pointer), hl
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00110$
	ld	hl, (_g_VGM_Pointer)
	ld	a, l
	or	a, a
	jr	NZ, 00110$
	ld	a, h
	sub	a, #0xc0
	jr	NZ, 00110$
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00106$
	push	bc
	xor	a, a
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jr	NZ, 00106$
	call	_VGM_Stop
	jp	00177$
00106$:
	ld	hl, #0xa000
	ld	(_g_VGM_Pointer), hl
00110$:
;./libs/vgm_player.c:217: if (cmd == 0xA0) // PSG Write
	ld	a, c
	sub	a, #0xa0
	jp	NZ,00172$
;./libs/vgm_player.c:220: VGM_FETCH_BYTE(reg); 
	ld	hl, (_g_VGM_Pointer)
	ld	c, (hl)
	ld	hl, (_g_VGM_Pointer)
	inc	hl
	ld	(_g_VGM_Pointer), hl
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00118$
	ld	hl, (_g_VGM_Pointer)
	ld	a, l
	or	a, a
	jr	NZ, 00118$
	ld	a, h
	sub	a, #0xc0
	jr	NZ, 00118$
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00114$
	push	bc
	xor	a, a
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jr	NZ, 00114$
	call	_VGM_Stop
	jp	00177$
00114$:
	ld	hl, #0xa000
	ld	(_g_VGM_Pointer), hl
00118$:
;./libs/vgm_player.c:221: VGM_FETCH_BYTE(val); 
	ld	hl, (_g_VGM_Pointer)
	ld	b, (hl)
	ld	hl, (_g_VGM_Pointer)
	inc	hl
	ld	(_g_VGM_Pointer), hl
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00126$
	ld	hl, (_g_VGM_Pointer)
	ld	a, l
	or	a, a
	jr	NZ, 00126$
	ld	a, h
	sub	a, #0xc0
	jr	NZ, 00126$
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00122$
	push	bc
	xor	a, a
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jr	NZ, 00122$
	call	_VGM_Stop
	jp	00177$
00122$:
	ld	hl, #0xa000
	ld	(_g_VGM_Pointer), hl
00126$:
;./libs/vgm_player.c:222: PSG_SetRegister(reg, val); 
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_PSG_SetRegister
	jp	00174$
00172$:
;./libs/vgm_player.c:265: else if (cmd == 0x61) // Wait n samples
	ld	a, c
	sub	a, #0x61
	jp	NZ,00169$
;./libs/vgm_player.c:268: VGM_FETCH_BYTE(lo);
	ld	hl, (_g_VGM_Pointer)
	ld	e, (hl)
	ld	hl, (_g_VGM_Pointer)
	inc	hl
	ld	(_g_VGM_Pointer), hl
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00134$
	ld	hl, (_g_VGM_Pointer)
	ld	a, l
	or	a, a
	jr	NZ, 00134$
	ld	a, h
	sub	a, #0xc0
	jr	NZ, 00134$
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00130$
	push	de
	xor	a, a
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	pop	de
	or	a, a
	jr	NZ, 00130$
	call	_VGM_Stop
	jp	00177$
00130$:
	ld	hl, #0xa000
	ld	(_g_VGM_Pointer), hl
00134$:
;./libs/vgm_player.c:269: VGM_FETCH_BYTE(hi);
	ld	hl, (_g_VGM_Pointer)
	ld	d, (hl)
	ld	hl, (_g_VGM_Pointer)
	inc	hl
	ld	(_g_VGM_Pointer), hl
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00142$
	ld	hl, (_g_VGM_Pointer)
	ld	a, l
	or	a, a
	jr	NZ, 00142$
	ld	a, h
	sub	a, #0xc0
	jr	NZ, 00142$
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00138$
	push	de
	xor	a, a
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	pop	de
	or	a, a
	jr	NZ, 00138$
	call	_VGM_Stop
	jp	00177$
00138$:
	ld	hl, #0xa000
	ld	(_g_VGM_Pointer), hl
00142$:
;./libs/vgm_player.c:270: g_VGM_WaitCount += lo | ((u16)hi << 8);
	ld	b, d
	ld	c, #0x00
	ld	d, c
	ld	a, e
	or	a, c
	ld	c, a
	ld	a, d
	or	a, b
	ld	e, a
	ld	a, c
	ld	hl, #_g_VGM_WaitCount
	add	a, (hl)
	ld	(hl), a
	inc	hl
	ld	a, e
	adc	a, (hl)
	ld	(hl), a
	jp	00174$
00169$:
;./libs/vgm_player.c:272: else if (cmd == 0x62) { g_VGM_WaitCount += 735; }
	ld	a, c
	sub	a, #0x62
	jr	NZ, 00166$
	ld	hl, (_g_VGM_WaitCount)
	ld	bc, #0x02df
	add	hl, bc
	ld	(_g_VGM_WaitCount), hl
	jp	00174$
00166$:
;./libs/vgm_player.c:273: else if (cmd == 0x63) { g_VGM_WaitCount += 882; }
	ld	a, c
	sub	a, #0x63
	jr	NZ, 00163$
	ld	hl, (_g_VGM_WaitCount)
	ld	bc, #0x0372
	add	hl, bc
	ld	(_g_VGM_WaitCount), hl
	jp	00174$
00163$:
;./libs/vgm_player.c:274: else if (cmd == 0x66) // End of sound data
	ld	a, c
	sub	a, #0x66
	jr	NZ, 00160$
;./libs/vgm_player.c:276: if (g_VGM_State & VGM_STATE_LOOP)
	ld	a, (_g_VGM_State+0)
	bit	1, a
	jr	Z, 00155$
;./libs/vgm_player.c:279: if (g_VGM_Config & VGM_CFG_MAPPED) {
	ld	a, (_g_VGM_Config+0)
	rrca
	jr	NC, 00148$
;./libs/vgm_player.c:280: if (g_VGM_NotifyCallback) {
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00148$
;./libs/vgm_player.c:281: if (!g_VGM_NotifyCallback(1)) { 
	ld	a, #0x01
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
	or	a, a
	jr	NZ, 00148$
;./libs/vgm_player.c:282: VGM_Stop();
	call	_VGM_Stop
;./libs/vgm_player.c:283: return;
	jp	00177$
00148$:
;./libs/vgm_player.c:291: if (g_VGM_Loop != 0)
	ld	a, (_g_VGM_Loop+1)
	ld	hl, #_g_VGM_Loop
	or	a, (hl)
	jr	Z, 00150$
;./libs/vgm_player.c:292: g_VGM_Pointer = g_VGM_Loop;
	ld	hl, (_g_VGM_Loop)
	ld	(_g_VGM_Pointer), hl
	jp	00151$
00150$:
;./libs/vgm_player.c:294: g_VGM_Pointer = g_VGM_DataStart;
	ld	hl, (_g_VGM_DataStart)
	ld	(_g_VGM_Pointer), hl
00151$:
;./libs/vgm_player.c:296: g_VGM_WaitCount = 0;
	ld	hl, #0x0000
	ld	(_g_VGM_WaitCount), hl
;./libs/vgm_player.c:297: continue; 
	jp	00174$
00155$:
;./libs/vgm_player.c:301: if (g_VGM_NotifyCallback) g_VGM_NotifyCallback(0xFF);
	ld	a, (_g_VGM_NotifyCallback+1)
	ld	hl, #_g_VGM_NotifyCallback
	or	a, (hl)
	jr	Z, 00153$
	ld	a, #0xff
	ld	hl, (_g_VGM_NotifyCallback)
	call	___sdcc_call_hl
00153$:
;./libs/vgm_player.c:302: VGM_Stop();
	call	_VGM_Stop
;./libs/vgm_player.c:303: return;
	jp	00177$
00160$:
;./libs/vgm_player.c:306: else if ((cmd & 0xF0) == 0x70) 
	ld	-2 (ix), c
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	and	a, #0xf0
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x70
	or	a, b
	jp	NZ,00174$
;./libs/vgm_player.c:308: g_VGM_WaitCount += 1 + (cmd & 0x0F);
	ld	a, -2 (ix)
	and	a, #0x0f
	ld	b, #0x00
	ld	c, a
	inc	bc
	ld	hl, (_g_VGM_WaitCount)
	add	hl, bc
	ld	(_g_VGM_WaitCount), hl
	jp	00174$
00176$:
;./libs/vgm_player.c:312: g_VGM_WaitCount -= g_VGM_WaitFrame;
	ld	hl, #_g_VGM_WaitFrame
	push	de
	ld	de, #_g_VGM_WaitCount
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	(de), a
	pop	de
00177$:
;./libs/vgm_player.c:313: }
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_VGM_NotifyCallback:
	.dw #0x0000
	.area _CABS (ABS)
