
	phase	ramaddr($FFFF0000)
v_startofram:	ds.b $200

v_systemstack:	
unk_0200:	ds.b $200
unk_0400:	ds.b $200
unk_0600:	ds.b $200
unk_0800:	ds.b $200
unk_0A00:	ds.b $102
unk_0B02:	ds.b $82
unk_0B84:	ds.b $102
unk_0C86:	ds.b $82
v_128x128:	ds.b $100*128
			ds.b $2000
unk_AD08:	ds.b $1004
			ds.b $AF4
unk_C800:	ds.b $12
unk_C812:	ds.b 6
unk_C818:	ds.b 6
unk_C81E:	ds.b 6
unk_C824:	ds.b 6
unk_C82A:	ds.b 6
unk_C830:	ds.b 2
v_vdpindex:	ds.l 1
unk_C836:	ds.b $100
unk_C936:	ds.b 1
unk_C937:	ds.b 1
unk_C938:	ds.l 1
unk_C93C:	ds.b 1
unk_C93D:	ds.b 1
			ds.b 2
word_C940:	ds.w 1
word_C942:	ds.w 1
word_C944:	ds.w 1
word_C946:	ds.w 1
			ds.w $38
word_C9B8:	ds.w 1
word_C9BA:	ds.w 1

unk_2A00:	equ ramaddr($FFFF2A00)
v_pal:	equ ramaddr($FFFFD3E4)
v_ngfx_buffer:	equ ramaddr($FFFFD59A)
v_sonic: equ ramaddr($FFFFD866)
v_tails: equ ramaddr($FFFFD868)
v_gamemode:	equ ramaddr($FFFFD822)			; (2 bytes)
v_subgamemode =	v_gamemode+2

v_titleselect:	equ ramaddr($FFFFD826)

v_menu_soundid:	equ ramaddr($FFFFD82A)

unk_FDC1:	equ	ramaddr($FFFFFDC1)

v_lagger:	equ ramaddr($FFFFFFC9)

v_text:		equ ramaddr($FFFFFFC0)
	dephase
	!org 0
