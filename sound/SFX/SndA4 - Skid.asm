Snd04_Skid_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoiceNull
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG2, Snd04_Skid_PSG2,	$00, $00
	smpsHeaderSFXChannel cPSG3, Snd04_Skid_PSG3,	$00, $00

; PSG2 Data
Snd04_Skid_PSG2:
	smpsPSGvoice        $00
	dc.b	nBb3, $01, nRst, nBb3, nRst, $03

Snd04_Skid_Loop01:
	dc.b	nBb3, $01, nRst, $01
	smpsLoop            $00, $0B, Snd04_Skid_Loop01
	smpsStop

; PSG3 Data
Snd04_Skid_PSG3:
	smpsPSGvoice        $00
	dc.b	nRst, $01, nAb3, nRst, nAb3, nRst, $03

Snd04_Skid_Loop00:
	dc.b	nAb3, $01, nRst, $01
	smpsLoop            $00, $0B, Snd04_Skid_Loop00
	smpsStop
