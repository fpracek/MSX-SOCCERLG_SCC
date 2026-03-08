// ____________________________
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │  ▄▄ ▄  ▄▄▄  ▄ ▄
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ██ █ ██   ██▀█
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▀█▀  ▀█▄█ ██ █
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘
//  by Guillaume 'Aoineko' Blanchard under CC BY-SA license
//─────────────────────────────────────────────────────────────────────────────
// VGM replayer
//  https://vgmrips.net/wiki/VGM_Specification
//─────────────────────────────────────────────────────────────────────────────
#include "msxgl.h"
#include "vgm_player.h"
#include "bios_mainrom.h"
#include "debug.h"

#if (VGM_USE_SCC)
#include "scc.h"
#endif
#if (VGM_USE_MSXMUSIC)
#include "msx-music.h"
#endif
#if (VGM_USE_MSXAUDIO)
#include "msx-audio.h"
#endif

//=============================================================================
// DEFINES
//=============================================================================

#define VGM_IDENT *(u32*)"Vgm "

//=============================================================================
// MEMORY DATA
//=============================================================================

const VGM_Header* g_VGM_Header;
const u8* g_VGM_Pointer;
const u8* g_VGM_Loop;
u16       g_VGM_WaitCount;
u16       g_VGM_WaitFrame;
u8        g_VGM_State;


u8 		  g_VGM_Config; 
const u8* g_VGM_DataStart; 

VGM_Callback g_VGM_NotifyCallback = NULL;

#define VGM_CFG_MAPPED  0x01 // Bit 0: Banking actived/not activated 
#if (ROM_MAPPER == ROM_ASCII16) || (ROM_MAPPER == ROM_NEO16)
    #define VGM_BANK_LIMIT 0xC000 // End of page 2
    #define VGM_BANK_START 0x8000 // Start of page 2
#elif (ROM_MAPPER == ROM_ASCII8) || (ROM_MAPPER == ROM_KONAMI) || (ROM_MAPPER == ROM_KONAMI_SCC) || (ROM_MAPPER == ROM_NEO8) || (ROM_MAPPER == ROM_YAMANOOTO)
    #define VGM_BANK_LIMIT 0xC000 // End of 8kb segment on page 2
    #define VGM_BANK_START 0xA000 // Start of page 2
#else
    #define VGM_BANK_LIMIT 0      // Banking disabled
    #define VGM_BANK_START 0
#endif


#define VGM_FETCH_BYTE(dest) { \
    dest = *g_VGM_Pointer++; \
    if (g_VGM_Config & VGM_CFG_MAPPED) { \
        /* If the pointer is 0xC000 (or 0xA000), the bit #14 or #15 changhes */ \
        if ((u16)g_VGM_Pointer == VGM_BANK_LIMIT) { \
            if (g_VGM_NotifyCallback) { \
                if (!g_VGM_NotifyCallback(0)) { \
                    VGM_Stop(); \
                    return; \
                } \
            } \
            g_VGM_Pointer = (u8*)VGM_BANK_START; \
        } \
    } \
}


//-----------------------------------------------------------------------------
/// Set callback function
//-----------------------------------------------------------------------------
void VGM_SetNotifyCB(VGM_Callback cb)
{
    g_VGM_NotifyCallback = cb;
}

//=============================================================================
// FUNCTIONS
//=============================================================================

//-----------------------------------------------------------------------------
/// Play a VGM data
//-----------------------------------------------------------------------------
/// Play a VGM data with banking auto-detect
bool VGM_Play(const void* addr, bool loop)
{
	VGM_Pause(); // Mute all sound chip
	
	g_VGM_Header = (VGM_Header*)addr;

	if (g_VGM_Header->Ident != VGM_IDENT)
		return FALSE;
	
	g_VGM_State = VGM_STATE_PLAY;
	if (loop)
		g_VGM_State |= VGM_STATE_LOOP;


	g_VGM_Pointer = (u8*)((u16)&g_VGM_Header->Data_offset + (u16)g_VGM_Header->Data_offset);
	
	// Start address for loops 
	g_VGM_DataStart = g_VGM_Pointer; 

	// --- Banking management --- 
	g_VGM_Config = 0; 
	#if (VGM_BANK_LIMIT > 0) // If selected mapper has banking support 
	{ 
		u16 startAddr = (u16)g_VGM_Pointer; 
		// If song start on page 2 (0x8000-0xBFFF) segment mode is active 
		if (startAddr >= 0x8000 && startAddr < VGM_BANK_LIMIT) 
		{ 
			g_VGM_Config |= VGM_CFG_MAPPED; 
		} 
	} 
	#endif 
	// ------------------------------------------

	if (g_VGM_Header->Loop_offset){
		u32 absoluteLoopOffset = (u32)&g_VGM_Header->Loop_offset + g_VGM_Header->Loop_offset;
    	g_VGM_Loop = (u8*)(u16)absoluteLoopOffset;
	}
	else{
		g_VGM_Loop = 0;
	}

	g_VGM_WaitCount = 0;

	if (Sys_Is50Hz())
		VGM_SetFrequency50Hz();
	else
		VGM_SetFrequency60Hz();

	return TRUE;
}

//-----------------------------------------------------------------------------
// Resume music playback
void VGM_Resume()
{
	g_VGM_State |= VGM_STATE_PLAY;

	#if (PSG_USE_RESUME)
	if (VGM_ContainsPSG())
		PSG_Resume();
	#endif

	#if (VGM_USE_MSXMUSIC && MSXMUSIC_USE_RESUME)
	if (VGM_ContainsMSXMusic())
		MSXMusic_Resume();
	#endif

	#if (VGM_USE_MSXAUDIO && MSXAUDIO_USE_RESUME)
	if (VGM_ContainsMSXAudio())
		MSXAudio_Resume();
	#endif

	#if (VGM_USE_SCC && SCC_USE_RESUME)
	if (VGM_ContainsSCC())
		SCC_Resume();
	#endif
}

//-----------------------------------------------------------------------------
// Pause music playback
void VGM_Pause()
{
	g_VGM_State &= ~VGM_STATE_PLAY;
	
	PSG_Mute();

	#if (VGM_USE_MSXMUSIC)
	MSXMusic_Mute();
	#endif
	
	#if (VGM_USE_MSXAUDIO)
	MSXAudio_Mute();
	#endif
	
	#if (VGM_USE_SCC)
	SCC_Mute();
	#endif
}

//-----------------------------------------------------------------------------
// Play a ayVGM data
void VGM_Stop()
{
	VGM_Pause();
	g_VGM_Pointer = (u8*)((u16)&g_VGM_Header->Data_offset + (u16)g_VGM_Header->Data_offset);
	g_VGM_WaitCount = 0;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
/// Decode a frame of VGM data
void VGM_Decode()
{
    if (!(g_VGM_State & VGM_STATE_PLAY))
        return;
    
   
    while (g_VGM_WaitCount < g_VGM_WaitFrame)
    {
        u8 cmd; 
        VGM_FETCH_BYTE(cmd); 
        
        if (cmd == 0xA0) // PSG Write
        { 
            u8 reg, val; 
            VGM_FETCH_BYTE(reg); 
            VGM_FETCH_BYTE(val); 
            PSG_SetRegister(reg, val); 
        }
        #if (VGM_USE_SCC)
        else if (cmd == 0xD2) // SCC Write
        {
            u8 port, regIdx, val, regFinal = 0;
            VGM_FETCH_BYTE(port);
            VGM_FETCH_BYTE(regIdx);
            VGM_FETCH_BYTE(val);

            switch (regIdx)
            {
                case 1: regFinal = 0x80; break;
                case 2: regFinal = 0x8A; break;
                case 3: regFinal = 0x8F; break;
                case 4: regFinal = 0xA0; break;
                case 5: regFinal = 0xE0; break;
            }
            SCC_SetRegister(regFinal + port, val);
        }
        #endif
        #if (VGM_USE_MSXMUSIC)
        else if (cmd == 0x51) // MSX-Music Write
        {
            u8 reg, val;
            VGM_FETCH_BYTE(reg);
            VGM_FETCH_BYTE(val);
            MSXMusic_SetRegister(reg, val);
        }
        #endif
        #if (VGM_USE_MSXAUDIO)
        else if (cmd == 0x5C) // MSX-Audio Write
        {
            u8 reg, val;
            VGM_FETCH_BYTE(reg);
            VGM_FETCH_BYTE(val);
            if ((reg != 0x04) && (reg != 0x18) && (reg != 0x19))
            {
                if (reg == 0x08) val &= 0b11000100;
                MSXAudio_SetRegister(reg, val);
            }
        }
        #endif
        else if (cmd == 0x61) // Wait n samples
        {
            u8 lo, hi;
            VGM_FETCH_BYTE(lo);
            VGM_FETCH_BYTE(hi);
            g_VGM_WaitCount += lo | ((u16)hi << 8);
        }
        else if (cmd == 0x62) { g_VGM_WaitCount += 735; }
        else if (cmd == 0x63) { g_VGM_WaitCount += 882; }
        else if (cmd == 0x66) // End of sound data
        {
            if (g_VGM_State & VGM_STATE_LOOP)
            {
                // 1. Callback 1 (RESET)
                if (g_VGM_Config & VGM_CFG_MAPPED) {
                    if (g_VGM_NotifyCallback) {
                        if (!g_VGM_NotifyCallback(1)) { 
                            VGM_Stop();
                            return;
                        }
                    }
                }

                // 2. pointer restore. 
                // If VGM has un loop point it will be used (g_VGM_Loop)
                // If not we return to begining data
                if (g_VGM_Loop != 0)
                    g_VGM_Pointer = g_VGM_Loop;
                else
                    g_VGM_Pointer = g_VGM_DataStart;

                g_VGM_WaitCount = 0;
                continue; 
            }
            else
            {
                if (g_VGM_NotifyCallback) g_VGM_NotifyCallback(0xFF);
                VGM_Stop();
                return;
            }
        }
        else if ((cmd & 0xF0) == 0x70) 
        {
            g_VGM_WaitCount += 1 + (cmd & 0x0F);
        }
    }

    g_VGM_WaitCount -= g_VGM_WaitFrame;
}