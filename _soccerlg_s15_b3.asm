;----------------------------------------------------------------------------
; SCC Replayer - Yamanooto Mapper
; Location: Segment 15 (Bank 3: A000h-BFFFh)
;
; MAPPER YAMANOOTO - registri write-only:
;   ADDR_BANK_2 = 0x9000  controlla $8000-$9FFF  ← SCC chip (Bank2 = 0x3F fisso)
;   ADDR_BANK_3 = 0xB000  controlla $A000-$BFFF  ← codice seg15 / dati PCM alternato
;
; SCHEMA DI ACCESSO SCC (Konami-style):
;   Bank0, Bank1 = FISSI (programma). Bank2 = 0x3F (SCC, mai cambiato).
;   Bank3 = seg15 durante esecuzione; switchato temporaneamente su PCM
;   da _SCC_CopyPCMBlock (page 0, fissa) per leggere i dati e scrivere
;   nella wave table SCC. Dopo la copy, Bank3 ripristinato a seg15.
;
;   Il ret di _ReplayerUpdate torna in page 0 (fissa) che e' sempre accessibile.
;----------------------------------------------------------------------------
.area _SEG15

; SCC Registers (in Bank2, accessibili con Bank2=0x3F)
SCC_CH_ENABLE = 0x988F

; Import/export C symbols
.globl _g_SCC_Period           ; usato da SccInit
.globl _g_SCC_NumBlocksToPlay
.globl _SCC_CopyPCMBlock       ; funzione in page 0 che gestisce Bank3+ldi+page advance

;-----------------------------------------------------------
; SccSearch - scrive 0x3F a $9000 per attivare il chip SCC
; (Yamanooto/Konami-SCC: Bank2=0x3F abilita wave table a $9800-$988F)
;-----------------------------------------------------------
_SccSearch::
    ld   hl, #0x9000
    ld   (hl), #0x3F
    ret

;-----------------------------------------------------------
; SccInit - imposta volumi e frequenze SCC
; g_SCC_Period deve essere scritto da C prima della call
;-----------------------------------------------------------
_SccInit::
    push af
    push hl

    ; Abilita phase reset alla scrittura del registro di frequenza.
    ; Senza questo, la phase del wave table non si sincronizza col VBlank
    ; e si sente rumore invece dell'audio PCM corretto.
    ; bit5=1: reset phase quando si scrive il registro di frequenza
    ld   a, #0x20
    ld   (0x98E0), a        ; SCC deformation register (phase reset on freq write)
    ld   (0x98C0), a        ; SCC+ in SCC mode (compatibilita')

    xor  a
    ld   (0x988E), a        ; vol ch5 = 0
    ld   (SCC_CH_ENABLE), a ; tutti i canali off

    ld   a, #0x0F
    ld   (0x988A), a        ; vol ch1 = max
    ld   (0x988B), a        ; vol ch2 = max
    ld   (0x988C), a        ; vol ch3 = max
    ld   (0x988D), a        ; vol ch4 = max

    ld   hl, (_g_SCC_Period)
    ld   (0x9880), hl       ; periodo ch1
    ld   (0x9882), hl       ; periodo ch2
    ld   (0x9884), hl       ; periodo ch3
    ld   (0x9886), hl       ; periodo ch4
    ld   hl, #0
    ld   (0x9888), hl       ; periodo ch5 = 0

    pop  hl
    pop  af
    ret

;-----------------------------------------------------------
; ReplayerUpdate
; Chiamare ad ogni VBlank con Bank3=seg15.
;
; Delega la copia PCM->SCC a _SCC_CopyPCMBlock (page 0, fisso).
; Quella funzione switcha Bank3 temporaneamente sul segmento PCM,
; fa la ldi copy (Bank3=PCM -> Bank2=SCC), ripristina Bank3=seg15,
; e avanza al segmento successivo se necessario.
; Bank2 rimane = 0x3F per tutto il tempo.
;
; Al ret: Bank3 = seg15 (invariato). Il chiamante C lo ripristina poi.
;-----------------------------------------------------------
_ReplayerUpdate::
    ; Delega copia PCM->wave table a funzione in page 0
    ; (non serve push/pop: _SCC_CopyPCMBlock segue calling convention SDCC)
    call _SCC_CopyPCMBlock

    ; Abilita canali 1-4 (SCC_CH_ENABLE in Bank2=0x3F)
    ld   a, #0x0F
    ld   (SCC_CH_ENABLE), a

    ret