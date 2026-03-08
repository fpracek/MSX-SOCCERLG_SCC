#include "msxgl.h"
#include "yscc_player.h"
#include "debug.h"

u16 			g_YSCC_SamplePos;        // Current read address offset in Bank3 (0x0000-0x2000)
u16  			g_YSCC_SamplePage;       // Current ROM segment mapped in Bank3 for PCM
volatile u16 	g_YSCC_NumBlocksToPlay;  // Remaining 128-byte blocks (volatile + allineato)
u16 			g_YSCC_Period;           // SCC channel period (frequency)
static u16		s_YSCC_SavedSeg3;        // Salva Bank3 (seg15) durante SCC_CopyPCMBlock
static u8       s_YSCC_Buf[128];         // Buffer PCM frame (static per accesso da inline asm)


void YSCC_Init() {
    g_YSCC_Period = 0x0749;
    
            
    SET_BANK_SEGMENT(2, 0x3F); 

    __asm
        ld   hl, #0x9000
        ld   (hl), #0x3F
        push af
        push hl
        ld   a, #0x20
        ld   (0x98E0), a       
        ld   (0x98C0), a        
        xor  a
        ld   (0x988E), a        
        ld   (0x988F), a  ; SCC_CH_ENABLE
        ld   a, #0x0F
        ld   (0x988A), a        
        ld   (0x988B), a        
        ld   (0x988C), a        
        ld   (0x988D), a        
        ld   hl, (_g_YSCC_Period)
        ld   (0x9880), hl       
        ld   (0x9882), hl       
        ld   (0x9884), hl       
        ld   (0x9886), hl       
        ld   hl, #0
        ld   (0x9888), hl       
        pop  hl
        pop  af
    __endasm;
}


bool YSCC_Decode(){
    if (g_YSCC_NumBlocksToPlay > 0) {
        __asm
        	call _YSCC_CopyPCMBlock
        	ld   a, #0x0F
        	ld   (0x988F), a 
    	__endasm;
        
        g_YSCC_NumBlocksToPlay--;

        if (g_YSCC_NumBlocksToPlay == 0) {
            __asm 
                xor a
                ld (0x988F), a
            __endasm;
            return TRUE;
        }
        return FALSE;
    }
}
void YSCC_Play(u8 start_seg, u32 byte_size) {
    DEBUG_PRINT("--> %U\n",byte_size);
	g_YSCC_SamplePage = start_seg;
    g_YSCC_SamplePos = 0;  
    u16 test=(u16)((byte_size + 127) / 128);
    DEBUG_LOG("oo")       ;
    DEBUG_PRINT("--> %i\n",test);
    g_YSCC_NumBlocksToPlay = (byte_size + 127) / 128;
    DEBUG_PRINT("-- %U %i\n",byte_size,g_YSCC_NumBlocksToPlay);
}

void YSCC_CopyPCMBlock() {
    u16  i, base_addr;
    DEBUG_LOG("OO");
    //if (g_YSCC_SamplePage > 135) {
    //    g_YSCC_NumBlocksToPlay = 0;
    //    return;
    //}
    
    s_YSCC_SavedSeg3 = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, g_YSCC_SamplePage);

    base_addr = 0xA000 + g_YSCC_SamplePos;
    for (i = 0; i < 128; i++) {
        s_YSCC_Buf[i] = *((u8*)(base_addr + i));
    }
    
    SET_BANK_SEGMENT(3, s_YSCC_SavedSeg3);

    __asm
        ; --- CH1: LDIR 21 byte buf[0..20] → 0x9800, poi phase reset ---
        ld   hl, #_s_YSCC_Buf
        ld   de, #0x9800
        ld   bc, #0x0015
        ldir
        ld   a, (_g_YSCC_Period + 1)
        ld   (0x9881), a

        ; --- CH2: LDIR 21 byte buf[32..52] → 0x9820, poi phase reset ---
        ld   hl, #_s_YSCC_Buf + 32
        ld   de, #0x9820
        ld   bc, #0x0015
        ldir
        ld   a, (_g_YSCC_Period + 1)
        ld   (0x9883), a

        ; --- CH3: LDIR 21 byte buf[64..84] → 0x9840, poi phase reset ---
        ld   hl, #_s_YSCC_Buf + 64
        ld   de, #0x9840
        ld   bc, #0x0015
        ldir
        ld   a, (_g_YSCC_Period + 1)
        ld   (0x9885), a

        ; --- CH4: LDIR 21 byte buf[96..116] → 0x9860, poi phase reset ---
        ld   hl, #_s_YSCC_Buf + 96
        ld   de, #0x9860
        ld   bc, #0x0015
        ldir
        ld   a, (_g_YSCC_Period + 1)
        ld   (0x9887), a

        ; --- PASS2: ultimi 11 byte per tutti i canali ---
        ld   hl, #_s_YSCC_Buf + 21
        ld   de, #0x9815
        ld   bc, #0x000B
        ldir

        ld   hl, #_s_YSCC_Buf + 53
        ld   de, #0x9835
        ld   bc, #0x000B
        ldir

        ld   hl, #_s_YSCC_Buf + 85
        ld   de, #0x9855
        ld   bc, #0x000B
        ldir

        ld   hl, #_s_YSCC_Buf + 117
        ld   de, #0x9875
        ld   bc, #0x000B
        ldir
    __endasm;

    g_YSCC_SamplePos += 128;
    DEBUG_PRINT("> %i %i %i\n",g_YSCC_SamplePage,g_YSCC_SamplePos,g_YSCC_NumBlocksToPlay);
    if (g_YSCC_SamplePos >= (u16)0x2000) {
        DEBUG_LOG("CAMBIO\n");
        g_YSCC_SamplePage++;
        DEBUG_PRINT("PPP> %i\n",g_YSCC_SamplePage);
        g_YSCC_SamplePos = 0;
    }
}