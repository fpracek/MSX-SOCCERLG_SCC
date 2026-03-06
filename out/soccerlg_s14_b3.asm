;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s14_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _TickReferee
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
	.area _SEG14
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:22: void TickReferee(u8 playerId) {
;	---------------------------------
; Function TickReferee
; ---------------------------------
_TickReferee::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:23: u16 ballX = g_Ball.X;
	ld	hl, #_g_Ball + 2
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:24: u16 ballY = g_Ball.Y;
	ld	bc, (#_g_Ball + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:25: u16 refX = g_Players[playerId].X;
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
	ld	a, -10 (ix)
	add	a, #0x02
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:26: u16 refY = g_Players[playerId].Y;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:28: u16 targetY = ballY;
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:31: if (ballY > 230 && ballY < 260 && ballX > 110 && ballX < 140) {
	ld	a, #0xe6
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00107$
	ld	a, c
	sub	a, #0x04
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00107$
	ld	a, #0x6e
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jr	NC, 00107$
	ld	a, -2 (ix)
	sub	a, #0x8c
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:32: targetY = ballY - 40; 
	ld	a, c
	add	a, #0xd8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	-4 (ix), c
	ld	-3 (ix), a
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:34: if (g_Ball.PossessionPlayerId != NO_VALUE) {
	ld	a, (#_g_Ball + 6)
	cp	a, #0xff
	jr	Z, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:35: if (g_Players[g_Ball.PossessionPlayerId].TeamId == TEAM_1) targetY = ballY - 20;
	push	de
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
	pop	de
	ld	iy, #_g_Players
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	ld	a, 9 (iy)
	dec	a
	jr	NZ, 00102$
	ld	a, c
	add	a, #0xec
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	-4 (ix), c
	ld	-3 (ix), a
	jp	00108$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:36: else targetY = ballY + 20;
	ld	hl, #0x0014
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:40: u16 targetX = (ballX < 128) ? ballX + 60 : ballX - 60;
	ld	a, -2 (ix)
	sub	a, #0x80
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00156$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	bc, #0x003c
	add	hl, bc
	jp	00157$
00156$:
	ld	a, -2 (ix)
	add	a, #0xc4
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:42: if (targetX < FIELD_BOUND_X_LEFT + 10) targetX = FIELD_BOUND_X_LEFT + 10;
	ld	a, l
	sub	a, #0x14
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00113$
	ld	hl, #0x0014
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:43: if (targetX > FIELD_BOUND_X_RIGHT - 10) targetX = FIELD_BOUND_X_RIGHT - 10;
	ld	a, #0xe2
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00115$
	ld	hl, #0x00e2
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:45: u8 moveDir = DIRECTION_NONE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:46: i16 diffY = (i16)targetY - (i16)refY;
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:47: i16 diffX = (i16)targetX - (i16)refX;
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	cp	a, a
	sbc	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:49: if (diffY < -8) moveDir = DIRECTION_UP;
	ld	a, -2 (ix)
	sub	a, #0xf8
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	NC, 00119$
	ld	c, #0x01
	jp	00120$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:50: else if (diffY > 8) moveDir = DIRECTION_DOWN;
	ld	b, -2 (ix)
	ld	e, -1 (ix)
	ld	a, #0x08
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jp	PO, 00312$
	xor	a, #0x80
00312$:
	jp	P, 00120$
	ld	c, #0x05
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:52: if (diffX < -16 || diffX > 16) {
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	de, #0x7ff0
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C, 00127$
	ld	a, #0x10
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00313$
	xor	a, #0x80
00313$:
	jp	P, 00128$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:53: if (moveDir == DIRECTION_UP) moveDir = (diffX > 0) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00314$
	xor	a, #0x80
00314$:
	rlca
	and	a,#0x01
	ld	e, a
	ld	a, c
	dec	a
	jr	NZ, 00125$
	ld	a, e
	or	a, a
	jr	Z, 00158$
	ld	bc, #0x0002
	jp	00128$
00158$:
	ld	bc, #0x0008
	jp	00128$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:54: else if (moveDir == DIRECTION_DOWN) moveDir = (diffX > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
	ld	a, c
	sub	a,#0x05
	jr	NZ, 00122$
	or	a,e
	jr	Z, 00160$
	ld	bc, #0x0004
	jp	00128$
00160$:
	ld	bc, #0x0006
	jp	00128$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:55: else moveDir = (diffX > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
	ld	a, e
	or	a, a
	jr	Z, 00162$
	ld	de, #0x0003
	jp	00163$
00162$:
	ld	de, #0x0007
00163$:
	ld	c, e
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:58: g_Players[playerId].Direction = moveDir;
	pop	hl
	push	hl
	ld	de, #0x000a
	add	hl, de
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:66: g_Players[playerId].Status = PLAYER_STATUS_NONE;
	ld	a, -10 (ix)
	add	a, #0x12
	ld	e, a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:61: if (moveDir != DIRECTION_NONE) {
	ld	a, c
	or	a, a
	jp	Z, 00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:62: if (moveDir <= DIRECTION_UP_LEFT) g_Players[playerId].Y--;
	ld	a, #0x08
	sub	a, c
	jr	C, 00131$
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0xff
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:63: if (moveDir >= DIRECTION_DOWN_RIGHT && moveDir <= DIRECTION_DOWN_LEFT) g_Players[playerId].Y++;
	ld	a, c
	sub	a, #0x04
	jr	C, 00133$
	ld	a, #0x06
	sub	a, c
	jr	C, 00133$
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:64: if (moveDir == DIRECTION_LEFT || moveDir == DIRECTION_UP_LEFT || moveDir == DIRECTION_DOWN_LEFT) g_Players[playerId].X--;
	ld	a,c
	cp	a,#0x07
	jr	Z, 00135$
	cp	a,#0x08
	jr	Z, 00135$
	sub	a, #0x06
	jr	NZ, 00136$
00135$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, b
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, l
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:65: if (moveDir == DIRECTION_RIGHT || moveDir == DIRECTION_UP_RIGHT || moveDir == DIRECTION_DOWN_RIGHT) g_Players[playerId].X++;
	ld	a,c
	cp	a,#0x03
	jr	Z, 00139$
	cp	a,#0x02
	jr	Z, 00139$
	sub	a, #0x04
	jr	NZ, 00140$
00139$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:66: g_Players[playerId].Status = PLAYER_STATUS_NONE;
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
	jp	00145$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:68: g_Players[playerId].Status = PLAYER_STATUS_POSITIONED;
	ld	a, #0x04
	ld	(de), a
	inc	de
	xor	a, a
	ld	(de), a
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:72: if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x32
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00147$
	pop	hl
	push	hl
	ld	(hl), #0x32
	inc	hl
	ld	(hl), #0x00
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:73: if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb3
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00149$
	pop	hl
	push	hl
	ld	(hl), #0xb3
	inc	hl
	ld	(hl), #0x01
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:74: if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00151$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:75: if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xec
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00154$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0xec
	inc	hl
	ld	(hl), #0x00
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgSCC/soccerlg_s14_b3.c:76: }
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
	.area _SEG14
	.area _INITIALIZER
	.area _CABS (ABS)
