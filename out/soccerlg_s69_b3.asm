;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s69_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_Data_AYFX_Bank
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	.area _SEG69
	.area _SEG69
_g_Data_AYFX_Bank:
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x6f	; 111	'o'
	.db #0xe9	; 233
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x2f	; 47
	.db #0x5c	; 92
	.db #0x03	; 3
	.db #0x6e	; 110	'n'
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x12	; 18
	.db #0x2d	; 45
	.db #0x99	; 153
	.db #0x04	; 4
	.db #0x6d	; 109	'm'
	.db #0x76	; 118	'v'
	.db #0x05	; 5
	.db #0x14	; 20
	.db #0x2c	; 44
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x6b	; 107	'k'
	.db #0x48	; 72	'H'
	.db #0x07	; 7
	.db #0x16	; 22
	.db #0x6a	; 106	'j'
	.db #0xf1	; 241
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0xe9	; 233
	.db #0xbd	; 189
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x4c	; 76	'L'
	.db #0x09	; 9
	.db #0xa7	; 167
	.db #0xee	; 238
	.db #0x09	; 9
	.db #0xa6	; 166
	.db #0xa8	; 168
	.db #0x0a	; 10
	.db #0xa5	; 165
	.db #0x7f	; 127
	.db #0x0b	; 11
	.db #0xa4	; 164
	.db #0x7c	; 124
	.db #0x0c	; 12
	.db #0xa3	; 163
	.db #0x3d	; 61
	.db #0x0d	; 13
	.db #0xa2	; 162
	.db #0x90	; 144
	.db #0x0e	; 14
	.db #0xa1	; 161
	.db #0x9b	; 155
	.db #0x0f	; 15
	.db #0xa1	; 161
	.db #0x7a	; 122	'z'
	.db #0x11	; 17
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x55	; 85	'U'
	.db #0x11	; 17
	.db #0x57	; 87	'W'
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x5a	; 90	'Z'
	.db #0x0f	; 15
	.db #0x5b	; 91
	.db #0x0e	; 14
	.db #0x1c	; 28
	.db #0x5c	; 92
	.db #0x0d	; 13
	.db #0x1d	; 29
	.db #0x5d	; 93
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x5e	; 94
	.db #0x0b	; 11
	.db #0x1e	; 30
	.db #0x6f	; 111	'o'
	.db #0x76	; 118	'v'
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x6f	; 111	'o'
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x6e	; 110	'n'
	.db #0x48	; 72	'H'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x6d	; 109	'm'
	.db #0xf1	; 241
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x58	; 88	'X'
	.db #0x0b	; 11
	.db #0x54	; 84	'T'
	.db #0x0e	; 14
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x6f	; 111	'o'
	.db #0x2f	; 47
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x6e	; 110	'n'
	.db #0x92	; 146
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x6d	; 109	'm'
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x10	; 16
	.db #0x6b	; 107	'k'
	.db #0xcc	; 204
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x69	; 105	'i'
	.db #0x99	; 153
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x6a	; 106	'j'
	.db #0x76	; 118	'v'
	.db #0x05	; 5
	.db #0x0e	; 14
	.db #0x69	; 105	'i'
	.db #0xb8	; 184
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x57	; 87	'W'
	.db #0x0e	; 14
	.db #0x55	; 85	'U'
	.db #0x0f	; 15
	.db #0x53	; 83	'S'
	.db #0x10	; 16
	.db #0x51	; 81	'Q'
	.db #0x11	; 17
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x6f	; 111	'o'
	.db #0x8f	; 143
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0xef	; 239
	.db #0x2f	; 47
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xe9	; 233
	.db #0x02	; 2
	.db #0xaa	; 170
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xa7	; 167
	.db #0x76	; 118	'v'
	.db #0x05	; 5
	.db #0xa4	; 164
	.db #0x48	; 72	'H'
	.db #0x07	; 7
	.db #0xa2	; 162
	.db #0xb5	; 181
	.db #0x09	; 9
	.db #0xa1	; 161
	.db #0x7c	; 124
	.db #0x0c	; 12
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0xe9	; 233
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xaf	; 175
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xaf	; 175
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xaf	; 175
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0xac	; 172
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x82	; 130
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x6f	; 111	'o'
	.db #0x94	; 148
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x6e	; 110	'n'
	.db #0x1a	; 26
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0xec	; 236
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0xeb	; 235
	.db #0xc6	; 198
	.db #0x03	; 3
	.db #0x10	; 16
	.db #0xea	; 234
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0xe9	; 233
	.db #0x35	; 53	'5'
	.db #0x05	; 5
	.db #0x10	; 16
	.db #0xe8	; 232
	.db #0xec	; 236
	.db #0x05	; 5
	.db #0x13	; 19
	.db #0xe7	; 231
	.db #0xe1	; 225
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0xe5	; 229
	.db #0x67	; 103	'g'
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0xe4	; 228
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0xe3	; 227
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0xe2	; 226
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0xe2	; 226
	.db #0x38	; 56	'8'
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0x69	; 105	'i'
	.db #0x09	; 9
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xef	; 239
	.db #0xd0	; 208
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0xaf	; 175
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x8f	; 143
	.db #0xad	; 173
	.db #0x68	; 104	'h'
	.db #0x01	; 1
	.db #0x8d	; 141
	.db #0xad	; 173
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x8d	; 141
	.db #0xac	; 172
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0xac	; 172
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0xa7	; 167
	.db #0xd0	; 208
	.db #0x02	; 2
	.db #0x87	; 135
	.db #0xa7	; 167
	.db #0xe0	; 224
	.db #0x01	; 1
	.db #0x87	; 135
	.db #0xa7	; 167
	.db #0x68	; 104	'h'
	.db #0x01	; 1
	.db #0x87	; 135
	.db #0xa7	; 167
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0xa7	; 167
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0xa7	; 167
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xeb	; 235
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x20	; 32
	.area _INITIALIZER
	.area _CABS (ABS)
