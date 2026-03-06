;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lvgm_player
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LVGM_DecodePSG
	.globl _PSG_Mute
	.globl _PSG_SetRegister
	.globl _g_LVGM_Callback
	.globl _g_LVGM_Decode
	.globl _g_LVGM_CurChip
	.globl _g_LVGM_State
	.globl _g_LVGM_Wait
	.globl _g_LVGM_PSG_Default
	.globl _g_LVGM_Devices
	.globl _g_LVGM_LoopAddr
	.globl _g_LVGM_Pointer
	.globl _g_LVGM_Header
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
	.globl _g_LVGM_Ident
	.globl _g_LVGM_RegTable
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
	.globl _LVGM_Play
	.globl _LVGM_Stop
	.globl _LVGM_Pause
	.globl _LVGM_Decode
	.globl _LVGM_Defaultcallback
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
_g_LVGM_Header::
	.ds 2
_g_LVGM_Pointer::
	.ds 2
_g_LVGM_LoopAddr::
	.ds 2
_g_LVGM_Devices::
	.ds 1
_g_LVGM_PSG_Default::
	.ds 1
_g_LVGM_Wait::
	.ds 1
_g_LVGM_State::
	.ds 1
_g_LVGM_CurChip::
	.ds 1
_g_LVGM_Decode::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_LVGM_Callback::
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:55: void LVGM_DecodePSG()
;	---------------------------------
; Function LVGM_DecodePSG
; ---------------------------------
_LVGM_DecodePSG::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:57: u8 op = *g_LVGM_Pointer & 0xF0;
	ld	hl, (_g_LVGM_Pointer)
	ld	c, (hl)
	ld	a, c
	and	a, #0xf0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:58: switch (op)
	ld	b,a
	or	a,a
	jr	Z, 00101$
	sub	a, #0xd0
	jr	Z, 00102$
	jp	00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:60: case 0x00: // R#0n = nn
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:62: u8 reg = *g_LVGM_Pointer;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:63: PSG_SetRegister(reg, *++g_LVGM_Pointer);
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:64: break;
	ld	a, c
	jp	_PSG_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:67: case 0xD0: // More common byte (R#n = X)
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:69: u8 reg = *g_LVGM_Pointer & 0x0F;
	ld	a, c
	and	a, #0x0f
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:70: PSG_SetRegister(reg, g_LVGM_PSG_Default);
	ld	a, (_g_LVGM_PSG_Default+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:71: break;
	ld	a, c
	jp	_PSG_SetRegister
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:86: default:
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:88: PSG_SetRegister(g_LVGM_RegTable[*g_LVGM_Pointer >> 4], *g_LVGM_Pointer);
	ld	de, #_g_LVGM_RegTable+0
	ld	a, c
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:91: }
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:92: }
	jp	_PSG_SetRegister
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
_g_LVGM_RegTable:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0d	; 13
_g_LVGM_Ident:
	.db #0x6c	; 108	'l'
	.db #0x56	; 86	'V'
	.db #0x47	; 71	'G'
	.db #0x4d	; 77	'M'
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:255: bool LVGM_Play(const void* addr, bool loop)
;	---------------------------------
; Function LVGM_Play
; ---------------------------------
_LVGM_Play::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:258: g_LVGM_Header = (const LVGM_Header*)(addr);
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:259: for (u8 i = 0; i < 4; i++)
	ld	(_g_LVGM_Header), hl
	ex	(sp), hl
	ld	-1 (ix), #0x00
00115$:
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:260: if (g_LVGM_Header->Ident[i] != g_LVGM_Ident[i])
	ld	a, -5 (ix)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #<(_g_LVGM_Ident)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_LVGM_Ident)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	c, (hl)
	sub	a, c
	jr	Z, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:261: return FALSE;
	xor	a, a
	jp	00117$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:259: for (u8 i = 0; i < 4; i++)
	inc	-1 (ix)
	jp	00115$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:264: g_LVGM_State = 0;
	ld	hl, #_g_LVGM_State
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:265: if (g_LVGM_Header->Option & LVGM_OPTION_50HZ)
	ld	bc, (_g_LVGM_Header)
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	rrca
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:266: g_LVGM_State |= LVGM_STATE_50HZ;
	ld	hl, #_g_LVGM_State
	ld	(hl), #0x01
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:267: if (loop)
	ld	a, 4 (ix)
	or	a, a
	jr	Z, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:268: g_LVGM_State |= LVGM_STATE_LOOP;
	ld	a, (_g_LVGM_State+0)
	or	a, #0x02
	ld	(_g_LVGM_State+0), a
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:271: g_LVGM_Pointer = (const u8*)(addr) + 5;
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #0x0005
	add	hl, de
	ld	(_g_LVGM_Pointer), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:272: if (g_LVGM_Header->Option & LVGM_OPTION_DEVICE)
	ld	a, (bc)
	bit	2, a
	jr	Z, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:273: g_LVGM_Devices = *g_LVGM_Pointer++;
	ld	hl, (_g_LVGM_Pointer)
	ld	a, (hl)
	ld	(_g_LVGM_Devices+0), a
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
	jp	00110$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:275: g_LVGM_Devices = LVGM_CHIP_PSG;
	ld	hl, #_g_LVGM_Devices
	ld	(hl), #0x01
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:278: g_LVGM_PSG_Default = 0;
	ld	hl, #_g_LVGM_PSG_Default
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:279: if (g_LVGM_Devices & LVGM_CHIP_PSG)
	ld	a, (_g_LVGM_Devices+0)
	rrca
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:280: g_LVGM_PSG_Default = *g_LVGM_Pointer++;
	ld	hl, (_g_LVGM_Pointer)
	ld	a, (hl)
	ld	(_g_LVGM_PSG_Default+0), a
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:283: g_LVGM_LoopAddr = g_LVGM_Pointer;
	ld	hl, (_g_LVGM_Pointer)
	ld	(_g_LVGM_LoopAddr), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:284: g_LVGM_Wait = 0;
	ld	hl, #_g_LVGM_Wait
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:285: g_LVGM_CurChip = LVGM_CHIP_PSG;
	ld	hl, #_g_LVGM_CurChip
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:286: g_LVGM_Decode = LVGM_DecodePSG;
	ld	iy, #_g_LVGM_Decode
	ld	0 (iy), #<(_LVGM_DecodePSG)
	ld	1 (iy), #>(_LVGM_DecodePSG)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:288: LVGM_Pause();
	call	_LVGM_Pause
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.h:235: inline void LVGM_Resume() { g_LVGM_State |= LVGM_STATE_PLAY; }
	ld	a, (_g_LVGM_State+0)
	or	a, #0x80
	ld	(_g_LVGM_State+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:290: return TRUE;
	ld	a, #0x01
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:291: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:295: void LVGM_Stop()
;	---------------------------------
; Function LVGM_Stop
; ---------------------------------
_LVGM_Stop::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:297: LVGM_Pause();
	call	_LVGM_Pause
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:299: g_LVGM_Pointer = (const u8*)(g_LVGM_Header) + 2;
	ld	bc, (_g_LVGM_Header)
	inc	bc
	inc	bc
	ld	(_g_LVGM_Pointer), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:300: if (g_LVGM_Header->Option & LVGM_OPTION_DEVICE)
	ld	hl, (_g_LVGM_Header)
	ld	de, #0x0004
	add	hl, de
	bit	2, (hl)
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:301: g_LVGM_Pointer++;
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:302: g_LVGM_Wait = 0;
	ld	hl, #_g_LVGM_Wait
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:303: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:307: void LVGM_Pause()
;	---------------------------------
; Function LVGM_Pause
; ---------------------------------
_LVGM_Pause::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:309: g_LVGM_State &= ~LVGM_STATE_PLAY;
	ld	a, (_g_LVGM_State+0)
	and	a, #0x7f
	ld	(_g_LVGM_State+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:312: PSG_Mute();
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:326: }
	jp	_PSG_Mute
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:330: void LVGM_Decode()
;	---------------------------------
; Function LVGM_Decode
; ---------------------------------
_LVGM_Decode::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:333: if (!(g_LVGM_State & LVGM_STATE_PLAY))
	ld	a, (_g_LVGM_State+0)
	rlca
	ret	NC
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:334: return;
	jp	00102$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:337: if (g_LVGM_Wait != 0)
	ld	a, (_g_LVGM_Wait+0)
	or	a, a
	jr	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:339: g_LVGM_Wait--;
	ld	hl, #_g_LVGM_Wait
	dec	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:340: return;
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:344: while (1)
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:346: u8 op = *g_LVGM_Pointer & 0xF0;
	ld	hl, (_g_LVGM_Pointer)
	ld	c, (hl)
	ld	a, c
	and	a, #0xf0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:348: if (op == 0xE0) // Wait n+1 cycles (1~16)
	cp	a, #0xe0
	jr	NZ, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:350: g_LVGM_Wait += (*g_LVGM_Pointer & 0x0F);
	ld	a, c
	and	a, #0x0f
	ld	c, a
	ld	a, (_g_LVGM_Wait+0)
	add	a, c
	ld	(_g_LVGM_Wait+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:351: g_LVGM_Pointer++;
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:352: return;
	ret
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:354: else if (op == 0xF0) // Special markers
	sub	a, #0xf0
	jr	NZ, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:356: switch (*g_LVGM_Pointer)
	ld	a,c
	cp	a,#0xf0
	jr	Z, 00105$
	cp	a,#0xfd
	jr	Z, 00106$
	sub	a, #0xfe
	jr	Z, 00109$
	inc	c
	jr	Z, 00110$
	jp	00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:359: case LVGM_OP_PSG: // PSG / AY-3-8910
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:360: g_LVGM_CurChip = LVGM_CHIP_PSG;
	ld	hl, #_g_LVGM_CurChip
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:361: g_LVGM_Decode = LVGM_DecodePSG;
	ld	iy, #_g_LVGM_Decode
	ld	0 (iy), #<(_LVGM_DecodePSG)
	ld	1 (iy), #>(_LVGM_DecodePSG)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:362: break;
	jp	00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:407: case LVGM_OP_NOTIFY:
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:409: if (g_LVGM_Callback(*++g_LVGM_Pointer))
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
	ld	a, (hl)
	ld	hl, (_g_LVGM_Callback)
	call	___sdcc_call_hl
	or	a, a
	jr	Z, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:410: continue;
	jp	00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:416: case LVGM_OP_LOOP: // Loop position
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:418: g_LVGM_Callback(0xFE);
	ld	a, #0xfe
	ld	hl, (_g_LVGM_Callback)
	call	___sdcc_call_hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:420: g_LVGM_LoopAddr = g_LVGM_Pointer + 1;
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_LoopAddr), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:421: break;
	jp	00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:423: case LVGM_OP_END: // End of song
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:424: if (g_LVGM_State & LVGM_STATE_LOOP) // handle loop
	ld	a, (_g_LVGM_State+0)
	bit	1, a
	jp	Z,_LVGM_Stop
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:427: g_LVGM_Callback(0xFF);
	ld	a, #0xff
	ld	hl, (_g_LVGM_Callback)
	call	___sdcc_call_hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:429: g_LVGM_Pointer = g_LVGM_LoopAddr;
	ld	hl, (_g_LVGM_LoopAddr)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:430: break;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:432: LVGM_Stop();
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:433: return;
	ld	(_g_LVGM_Pointer), hl
	jp	00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:434: }
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:437: g_LVGM_Decode();
	ld	hl, (_g_LVGM_Decode)
	call	___sdcc_call_hl
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:439: g_LVGM_Pointer++;
	ld	hl, (_g_LVGM_Pointer)
	inc	hl
	ld	(_g_LVGM_Pointer), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:441: }
	jp	00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\engine/src/vgm/lvgm_player.c:445: bool LVGM_Defaultcallback(u8 id) { id; return TRUE; }
;	---------------------------------
; Function LVGM_Defaultcallback
; ---------------------------------
_LVGM_Defaultcallback::
	ld	a, #0x01
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_LVGM_Callback:
	.dw _LVGM_Defaultcallback
	.area _CABS (ABS)
