// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "v9990.h"
#include "print.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"
#include "pcm/pcmenc.h"
#include "memory.h"
#include "psg.h"
#include "soccerlg_rawdef.h"
#include "ayfx/ayfx_player.h"
//#include "libs/vgm/vgm_player.h"
#include "libs/yscc/yscc_player.h"

// ------------------
// *** STRUCTURES ***
// ------------------

struct MusicEntry
{
    const c8* Name;
    u16       Data;
    u8        Segment;
};

// -----------------
// *** VARIABLES ***
// -----------------
bool            g_PonPonGirlsAreVisible=TRUE;
bool            g_BallIsVisible=TRUE;
u16             g_TimeCounter=0;
u16				g_LastTimeCounter=0;
bool 			g_VSynch;
bool   			g_FirstKickOff;
bool 			g_VgmPublicPresentationEnded;
u8				g_FrameCounter;
u8       		g_Timer;
u8              g_FieldScrollingActionInProgress = NO_VALUE; // Initialize to prevent ISR from running logic before MainSub
int             g_FieldCurrentYPosition;
u8              g_FieldScrollSpeed;
u8              g_ActiveFieldZone;
u8              g_MatchStatus;
PonPonGirlInfo  g_PonPonGirls[6];
BallInfo        g_Ball;
PlayerInfo  	g_Players[15];
u8              g_Team1PaletteId;
u8              g_Team2PaletteId;
bool			g_ShowButtonsInfo;
u8          	g_Team1ActivePlayer;
u8          	g_Team2ActivePlayer;
u8				g_SecondsToEndOfMatch;
u8				g_Team1Score;
u8				g_Team2Score;
u8				g_RestartKickTeamId;
u8				g_PassTargetPlayer;
u8 				g_ponPonPatternIndex;
PonPonGirlInfo  g_PonPonGirls[6];
char            g_History1[20] = "PLY:      ";
char            g_History2[20] = "CPU:      ";
bool			g_PcmStartPlaying=FALSE;
u8 				g_PmcSoundPlaying=NO_VALUE;
u8              g_CornerKickTargetId = NO_VALUE;
u8              g_CornerKickSide = CORNER_SIDE_LEFT;
u8              g_ActionCooldown=0; 
u8              g_ShootCooldown=0;
bool		    g_GameWith2Players=FALSE;
bool            g_GkIsGroundKick = FALSE; 
u8 				g_GkAnimPlayerId = NO_VALUE;
i8              g_GkRecoilY = 0;
u8              g_GoalKickSide = CORNER_SIDE_LEFT;
u8 				g_GkAnimTimer = 0;
u8              g_ThrowInPlayerId = NO_VALUE;
u8              g_GoalScorerId = NO_VALUE;
u8 				g_ponPonPatternIndex=0;
u8 				g_PonPonGrilsPoseCounter=0;
bool 			g_peopleState=FALSE;
u8   			g_ponPonGirlsInitailized=FALSE;
u8              g_SoundRequest=NO_VALUE;
u16             g_ShotCursorX = 120;
i8              g_ShotCursorDir = 2;
u8              g_currentVGMPlayingSegment=NO_VALUE;
u8				g_currentVGMPlayerSong;
bool 			g_TimerActive = FALSE;
bool  			g_VblankSuspended=FALSE;



// -----------------
// *** CONSTANTS ***
// -----------------

extern const unsigned char 	g_Data_Fonts[]; 								// Segment 20
extern const unsigned char 	g_Data_Img_Presentation_Part1a[8192]; 			// Segment 21
extern const unsigned char 	g_Data_Img_Presentation_Part1b[8192]; 			// Segment 22
extern const unsigned char 	g_Data_Img_Presentation_Part2a[8192]; 			// Segment 23
extern const unsigned char 	g_Data_Img_Presentation_Part2b[8192]; 			// Segment 24
extern const unsigned char 	g_Data_Img_Presentation_Part3a[8192]; 			// Segment 25
extern const unsigned char 	g_Data_Img_Presentation_Part3b[8192]; 			// Segment 26
extern const unsigned char 	g_Data_Img_Presentation_Part4[5120]; 			// Segment 27
extern const unsigned char  g_Data_P1_LayerA_Stda[8192];					// Segment 28
extern const unsigned char  g_Data_P1_LayerA_Stdb[8192];					// Segment 29
extern const unsigned char 	g_Data_LayerA_Menu_Teams_Part1a[8192];			// Segment 30
extern const unsigned char 	g_Data_LayerA_Menu_Teams_Part1b[8192];			// Segment 31
extern const unsigned char 	g_Data_LayerA_Menu_Teams_Part2[4096];			// Segment 32
extern const unsigned char  g_Data_Palette_Teams_Colors[];					// Segment 32
extern const unsigned char  g_Data_Teams_Gray_Part1a[8192];					// Segment 33
extern const unsigned char  g_Data_Teams_Gray_Part1b[8192];					// Segment 34
extern const unsigned char  g_Data_Teams_Gray_Part2[4096];					// Segment 35
extern const unsigned char  g_Data_Palette_Gray_Scale[];					// Segment 35
extern const unsigned char  g_Data_Palette_Buttons[];						// Segment 35
extern const unsigned char  g_Data_Sprites_Part1a[8192];					// Segment 36
extern const unsigned char  g_Data_Sprites_Part1b[8192];					// Segment 37
extern const unsigned char  g_Data_Sprites_Part1c[61];						// Segment 27
extern const unsigned char  g_Data_Sprites_Part2a[8192];					// Segment 38
extern const unsigned char  g_Data_Sprites_Part2b[8192];					// Segment 39
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part1a[8192]; 	// Segment 40
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part1b[8192]; 	// Segment 41
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part2a[8192]; 	// Segment 42
extern const unsigned char  g_Data_Img_Buttons_Presentation_Part2b[8192]; 	// Segment 43
extern const unsigned char  g_Data_PCM_CornerKicka[8192];					// Segment 44
extern const unsigned char  g_Data_PCM_CornerKickb[2212];					// Segment 45
extern const unsigned char  g_Data_PCM_KickOffa[8192];						// Segment 46
extern const unsigned char  g_Data_PCM_KickOffb[5593];						// Segment 47
extern const unsigned char 	g_Data_PCM_InGoal_1a[8192];						// Segment 48
extern const unsigned char 	g_Data_PCM_InGoal_1b[7600];						// Segment 49
extern const unsigned char 	g_Data_PCM_InGoal_2a[8192];						// Segment 50
extern const unsigned char 	g_Data_PCM_InGoal_2b[5994];						// Segment 51
extern const unsigned char 	g_Data_PCM_InGoal_3a[8192];						// Segment 52
extern const unsigned char 	g_Data_PCM_InGoal_3b[4896];						// Segment 53
extern const unsigned char 	g_Data_PCM_ThrowIna[8192];						// Segment 54
extern const unsigned char 	g_Data_PCM_ThrowInb[5530];						// Segment 55
extern const unsigned char 	g_Data_PCM_GoalKicka[8192];						// Segment 56
extern const unsigned char 	g_Data_PCM_GoalKickb[2292];						// Segment 57
extern const unsigned char  g_Data_PCM_Refereer[5541];						// Segment 58
extern const unsigned char  g_Data_Field_LayerB_Part1a[8192];				// Segment 59
extern const unsigned char  g_Data_Field_LayerB_Part1b[8192];				// Segment 60
extern const unsigned char  g_Data_Field_LayerB_Part2a[8192];				// Segment 61
extern const unsigned char  g_Data_Field_LayerB_Part2b[8192];				// Segment 62
extern const unsigned char  g_Data_Field_LayerB_Part3a[8192];				// Segment 63
extern const unsigned char  g_Data_Field_LayerB_Part3b[8192];				// Segment 64
extern const unsigned char  g_Data_Field_LayerB_Part4a[8192];				// Segment 65
extern const unsigned char  g_Data_Field_LayerB_Part4b[7168];				// Segment 66
extern const unsigned char  g_Data_Field_LayerB_Part5a[8192];				// Segment 67
extern const unsigned char  g_Data_Field_LayerB_Part5b[8192];				// Segment 68
extern const unsigned char  g_Data_AYFX_Bank[334];							// Segment 69

const TeamStats g_TeamStats[] = {
    { 3, 12, 5, 5, 14 }, // AUS (Standard)
    { 7, 15, 8, 9, 14 }, // BRA (Fast 1.33, Strong, Pass++)
    { 3, 17, 4, 5, 16 }, // ITA (Aggressive++, GK+)
    { 7, 15, 8, 9, 14 }, // FRA (Pass++) -> BRAZIL (Index 3 in header)
    { 3, 15, 6, 5, 14 }, // GBR (Aggressive+)
    { 6, 16, 7, 8, 15 }  // GER (Fast 1.25, Strong, Pass+)
};


// -----------------------------
// *** TRAMPOLINES FUNCTIONS ***
// -----------------------------

// +++ Call void function without parameters +++
void CallFnc_VOID(u8 segment, void (*func)()) {
    u8 _old = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, segment);
    func();
    SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 2 u16 parameters +++
void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call function without parameters with u8 returned value +++
u8 CallFnc_U8(u8 segment, u8 (*func)()) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u16 returned value +++
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
    u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
	return _res;
}
// +++ Call function without parameter and with bool returned value +++
bool CallFnc_BOOL(u8 segment, bool (*func)()) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 1 u8 parameter and with bool returned value +++
bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}

// -----------
// *** PCM ***
// -----------

void PlayPCM(u8 id){
	bool isSCCPlaying=YSCC_GetFirstSegmentOfCurrentPlaying()!=0xFFFF;
	YSCC_Pause();
	u8 currentSegment2 = GET_BANK_SEGMENT(2);
	u8 currentSegment3 = GET_BANK_SEGMENT(3);
	switch(id){
		case PCM_CORNERKICK:
			SET_BANK_SEGMENT(2, 44);
			SET_BANK_SEGMENT(3, 45);
			PCM_Play_11K((u16)g_Data_PCM_CornerKicka);
			break;
		case PCM_KICKOFF:
			SET_BANK_SEGMENT(2, 46);
			SET_BANK_SEGMENT(3, 47);
			PCM_Play_11K((u16)g_Data_PCM_KickOffa);
			break;
		case PCM_INGOAL:
			SET_BANK_SEGMENT(2, 48);
			SET_BANK_SEGMENT(3, 49);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_1a);
			SET_BANK_SEGMENT(2, 50);
			SET_BANK_SEGMENT(3, 51);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_2a);
			SET_BANK_SEGMENT(2, 52);
			SET_BANK_SEGMENT(3, 53);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_3a);
			PCM_Play_11K((u16)g_Data_PCM_InGoal_3a);
			break;
		case PCM_THROWIN:
			SET_BANK_SEGMENT(2, 54);
			SET_BANK_SEGMENT(3, 55);
			PCM_Play_11K((u16)g_Data_PCM_ThrowIna);
			break;
		case PCM_GOALKICK:
			SET_BANK_SEGMENT(2, 56);
			SET_BANK_SEGMENT(3, 57);
			PCM_Play_11K((u16)g_Data_PCM_GoalKicka);
			break;
		case PCM_REFEREER:
			SET_BANK_SEGMENT(3, 58);
			PCM_Play_11K((u16)g_Data_PCM_Refereer);
			break;	
	}
	SET_BANK_SEGMENT(2, currentSegment2);
	SET_BANK_SEGMENT(3, currentSegment3);
	if(isSCCPlaying){
		YSCC_Resume();
	}
}

// -----------
// *** AY ***
// -----------
void PlayAyFx(u8 id){
	ayFX_Mute();
	ayFX_SetChannel(PSG_CHANNEL_C);
	u8 currentSegment = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, 69);
	ayFX_PlayBank(id,0);
	SET_BANK_SEGMENT(3, currentSegment);

}

// ---------------------
// *** MSX VDP FONTS ***
// ---------------------
// +++ Load standard MSX Vdp fonts +++
void LoadMsxVdpFonts() {
    u8 currentSegment = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, 20); 
	Print_SetTextFont((const void*)g_Data_Fonts, 1);
    SET_BANK_SEGMENT(3, currentSegment);
}

// -------------
// *** V9990 ***
// -------------

// +++ Wait V9990 synch +++
void V9990_WaitSynch()
{
	while(!g_VSynch) {}
	g_VSynch = FALSE;


}
// +++ Load buttons image data +++
void V9990_LoadButtonsImageData(){
		u8 currentSegment = GET_BANK_SEGMENT(3);
		SET_BANK_SEGMENT(3, 40); 
		V9_WriteVRAM(V9_P1_PGT_A, g_Data_Img_Buttons_Presentation_Part1a, sizeof(g_Data_Img_Buttons_Presentation_Part1a)); 
		SET_BANK_SEGMENT(3, 41); 
		V9_WriteVRAM(V9_P1_PGT_A + 8192L, g_Data_Img_Buttons_Presentation_Part1b, sizeof(g_Data_Img_Buttons_Presentation_Part1b));
		SET_BANK_SEGMENT(3, 42); 
		V9_WriteVRAM(V9_P1_PGT_A + 16384L, g_Data_Img_Buttons_Presentation_Part2a, sizeof(g_Data_Img_Buttons_Presentation_Part2a)); 
		SET_BANK_SEGMENT(3, 43); 
		V9_WriteVRAM(V9_P1_PGT_A + 16384L+8192L, g_Data_Img_Buttons_Presentation_Part2b, sizeof(g_Data_Img_Buttons_Presentation_Part2b)); 	
 	    SET_BANK_SEGMENT(3, 35);
		V9_SetPalette(0, 16, g_Data_Palette_Buttons); 
		SET_BANK_SEGMENT(3, currentSegment);
}
// +++ Load P1 mode layer A +++
void V9990_LoadP1LayerA(){
	u8 currentSegment = GET_BANK_SEGMENT(3);
	V9_FillVRAM(V9_P1_PGT_A, 0x00, 128*212); // Clean layer A pattern
	SET_BANK_SEGMENT(3, 28); 
	V9_WriteVRAM(V9_P1_PGT_A, g_Data_P1_LayerA_Stda, sizeof(g_Data_P1_LayerA_Stda)); 
    SET_BANK_SEGMENT(3, 30); 
	V9_WriteVRAM(V9_P1_PGT_A + 8192L, g_Data_LayerA_Menu_Teams_Part1a, sizeof(g_Data_LayerA_Menu_Teams_Part1a));
	SET_BANK_SEGMENT(3, 31); 
	V9_WriteVRAM(V9_P1_PGT_A + 16384L, g_Data_LayerA_Menu_Teams_Part1b, sizeof(g_Data_LayerA_Menu_Teams_Part1b));
    SET_BANK_SEGMENT(3, 32); 
	V9_WriteVRAM(V9_P1_PGT_A + 8192L + 16384L, g_Data_LayerA_Menu_Teams_Part2, sizeof(g_Data_LayerA_Menu_Teams_Part2));
	V9_FillVRAM16(V9_P1_PNT_A, 0x0000, 64*64); // Init layer A
	SET_BANK_SEGMENT(3, currentSegment);

}
void V9990_LoadP1LayerB(){
	u8 currentSegment = GET_BANK_SEGMENT(3);
	V9_FillVRAM(V9_P1_PGT_B, 0x00, 128*212); 
	SET_BANK_SEGMENT(3, 59); 
	V9_WriteVRAM(V9_P1_PGT_B, g_Data_Field_LayerB_Part1a, sizeof(g_Data_Field_LayerB_Part1a)); 
	SET_BANK_SEGMENT(3, 60); 
	V9_WriteVRAM(V9_P1_PGT_B+8192L, g_Data_Field_LayerB_Part1b, sizeof(g_Data_Field_LayerB_Part1b)); 
	SET_BANK_SEGMENT(3, 61); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L, g_Data_Field_LayerB_Part2a, sizeof(g_Data_Field_LayerB_Part2a)); 
	SET_BANK_SEGMENT(3, 62); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384 + 8192L, g_Data_Field_LayerB_Part2b, sizeof(g_Data_Field_LayerB_Part2b)); 
	SET_BANK_SEGMENT(3, 63); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*2, g_Data_Field_LayerB_Part3a, sizeof(g_Data_Field_LayerB_Part3a)); 
	SET_BANK_SEGMENT(3, 64); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*2 + 8192L, g_Data_Field_LayerB_Part3b, sizeof(g_Data_Field_LayerB_Part3b)); 

	SET_BANK_SEGMENT(3, 65); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*3, g_Data_Field_LayerB_Part4a, sizeof(g_Data_Field_LayerB_Part4a)); 
	SET_BANK_SEGMENT(3, 66); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*3 + 8192L, g_Data_Field_LayerB_Part4b, sizeof(g_Data_Field_LayerB_Part4b)); 

	SET_BANK_SEGMENT(3, 67); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*4, g_Data_Field_LayerB_Part5a, sizeof(g_Data_Field_LayerB_Part5a)); 
	SET_BANK_SEGMENT(3, 68); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L*4 + 8192L, g_Data_Field_LayerB_Part5b, sizeof(g_Data_Field_LayerB_Part5b)); 
	SET_BANK_SEGMENT(3, currentSegment);

}
// +++ Load image for presentation inside V9990 VRAM +++
void V9990_LoadImagePresentationData(){
	u8 currentSegment = GET_BANK_SEGMENT(3);
   	SET_BANK_SEGMENT(3, 21); 
	V9_WriteVRAM(V9_BMP_PGT, g_Data_Img_Presentation_Part1a, sizeof(g_Data_Img_Presentation_Part1a)); 
   	SET_BANK_SEGMENT(3, 22); 
	V9_WriteVRAM(V9_BMP_PGT+8192L, g_Data_Img_Presentation_Part1b, sizeof(g_Data_Img_Presentation_Part1b)); 

    SET_BANK_SEGMENT(3, 23); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L, g_Data_Img_Presentation_Part2a, sizeof(g_Data_Img_Presentation_Part2a)); 
    SET_BANK_SEGMENT(3, 24); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L + 8192L, g_Data_Img_Presentation_Part2b, sizeof(g_Data_Img_Presentation_Part2b)); 

    SET_BANK_SEGMENT(3, 25); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L+16384L, g_Data_Img_Presentation_Part3a, sizeof(g_Data_Img_Presentation_Part3a)); 
    SET_BANK_SEGMENT(3, 26); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L+16384L+8192L, g_Data_Img_Presentation_Part3b, sizeof(g_Data_Img_Presentation_Part3b));

    SET_BANK_SEGMENT(3, 27); 
	V9_WriteVRAM(V9_BMP_PGT + 16384L+16384L+16384L, g_Data_Img_Presentation_Part4, sizeof(g_Data_Img_Presentation_Part4));
    SET_BANK_SEGMENT(3, currentSegment);
}
// +++ Load menu teams data +++
void V9990_LoadMenuTeamsData(){
	u8 currentSegment = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, 33); 
	V9_WriteVRAM(V9_P1_PGT_B + 8192L, g_Data_Teams_Gray_Part1a, sizeof(g_Data_Teams_Gray_Part1a));
	SET_BANK_SEGMENT(3, 34); 
	V9_WriteVRAM(V9_P1_PGT_B + 16384L, g_Data_Teams_Gray_Part1b, sizeof(g_Data_Teams_Gray_Part1b));

    SET_BANK_SEGMENT(3,35); 
	V9_WriteVRAM(V9_P1_PGT_B + 8192L + 16384L, g_Data_Teams_Gray_Part2, sizeof(g_Data_Teams_Gray_Part2));
	V9_FillVRAM16(V9_P1_PNT_B, 0x0000, 64*64); 
	V9_SetPalette(16, 16, g_Data_Palette_Gray_Scale);
	SET_BANK_SEGMENT(3, 32); 
	V9_SetPalette(0, 16, g_Data_Palette_Teams_Colors);
	SET_BANK_SEGMENT(3, currentSegment);
}
// +++ Load sprites +++
void V9990_LoadSprites(){
	u8 currentSegment = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, 36); 
	V9_SetSpritePatternAddr(V9_P1_SGT_08000);
	V9_WriteVRAM(0x08000, g_Data_Sprites_Part1a, sizeof(g_Data_Sprites_Part1a));	
	SET_BANK_SEGMENT(3, 37); 
	V9_WriteVRAM(0x08000 + 8192L, g_Data_Sprites_Part1b, sizeof(g_Data_Sprites_Part1b));
	SET_BANK_SEGMENT(3, 38); 
	V9_WriteVRAM(0x08000+sizeof(g_Data_Sprites_Part1a)+sizeof(g_Data_Sprites_Part1b), g_Data_Sprites_Part2a, sizeof(g_Data_Sprites_Part2a));	
	SET_BANK_SEGMENT(3, 39); 
	V9_WriteVRAM(0x08000+sizeof(g_Data_Sprites_Part1a)+sizeof(g_Data_Sprites_Part1b)+8192L, g_Data_Sprites_Part2b, sizeof(g_Data_Sprites_Part2b));	
	SET_BANK_SEGMENT(3, currentSegment);

}
// +++ Print a string on screen ++++
void V9990_PrintLayerAStringAtPos(u8 x, u8 y, const c8* str)
{
	u8 pos=0;
	while (*str != 0){
        V9_Poke16(V9_CellAddrP1A(x,y), *(str++));
		x++;
		pos++;
	}
		
}
// +++ Clear text +++
void V9990_ClearTextFromLayerA(u8 x, u8 y, u8 length){
	for(u8 i=0;i<length;i++){
		V9_Poke16(V9_CellAddrP1A(x,y), 0);
		x++;
	}
}

// ---------------------
// *** SCROLL TEXT ***
// ---------------------
// Row 25 = pixels 200-207 (ultima riga completamente visibile in 212px)
#define SCROLLTEXT_SPEED  6  // avanza di 1 char ogni N frame

static const c8 s_ScrollText[] =
    "   2026 MSX SOCCER LEAGUE  BY FAUSTO PRACEK  -  ASSOCIAZIONE ITALIANA MSX - POWERED BY MSXGL  -  "
    "SPECIAL THANKS TO ARTURO RAGOZINI FOR HIS HELP WITH SOUND EFFECTS  -  "
    "THE GAME IS A TRIBUTE TO THE 1983 EXCITING SOCCER  -  "
    "NO COPYRIGHT INFRINGEMENT INTENDED   ";

static u16 s_ScrollTextLen;
static u16 s_ScrollTextPos;
static u8  s_ScrollTickCount;

// Inizializza il scrolltext: calcola lunghezza, riempie la riga con i primi 32 caratteri
void V9990_InitScrollText() {
    s_ScrollTextLen = 0;
    while (s_ScrollText[s_ScrollTextLen] != 0) s_ScrollTextLen++;
    s_ScrollTextPos   = 0;
    s_ScrollTickCount = 0;
    for (u8 col = 0; col < SCROLLTEXT_COLS; col++) {
        u16 idx = (col < s_ScrollTextLen) ? col : 0;
        V9_Poke16(V9_CellAddrP1A(col, SCROLLTEXT_ROW), (u16)s_ScrollText[idx]);
    }
}

// Ferma lo scrolling e azzera la riga (carattere trasparente 0)
void V9990_StopScrollText() {
    s_ScrollTextLen = 0; // disabilita il tick
    V9990_ClearTextFromLayerA(0, SCROLLTEXT_ROW, SCROLLTEXT_COLS);
}

// Avanza il testo di 1 carattere ogni SCROLLTEXT_SPEED frame. Chiamare ad ogni VBlank.
static void V9990_TickScrollText() {
    if (s_ScrollTextLen == 0) return;
    s_ScrollTickCount++;
    if (s_ScrollTickCount < SCROLLTEXT_SPEED) return;
    s_ScrollTickCount = 0;

    s_ScrollTextPos++;
    if (s_ScrollTextPos >= s_ScrollTextLen) s_ScrollTextPos = 0;

    for (u8 col = 0; col < SCROLLTEXT_COLS; col++) {
        u16 idx = s_ScrollTextPos + col;
        if (idx >= s_ScrollTextLen) idx -= s_ScrollTextLen;
        V9_Poke16(V9_CellAddrP1A(col, SCROLLTEXT_ROW), (u16)s_ScrollText[idx]);
    }
}

// +++ VBlank interrupt +++
void V9_InterruptVBlank(){
	g_VSynch = TRUE;
	g_FrameCounter++;
	if(g_FrameCounter==60){
		g_TimeCounter++;
		g_FrameCounter=0;
	}
    g_Timer++;

	// SCROLL REGISTER AGGIORNATO PRIMA DI TUTTO (deve accadere nel VBlank, prima che PlaySounds possa sforare)
	if (g_FieldScrollingActionInProgress != NO_VALUE) {
		CallFnc_VOID(4,TickGameFieldScrolling);
	}
    else {
		 if(!g_VblankSuspended && g_MatchStatus!=MATCH_BEFORE_KICK_OFF && g_MatchStatus!=MATCH_SHOW_MENU){
        	V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
		}
    }

	// PlaySounds dopo lo scroll: se YSCC_Decode sfora il VBlank, lo scroll e' gia' scritto correttamente
	PlaySounds();
	if (g_MatchStatus == MATCH_SHOW_MENU) {
		V9990_TickScrollText();
	}
}
// +++ Install VBlank interrupt +++
void InterruptHook()
{

__asm
	// Flush VDP interruption signal
	in		a, (P_VDP_STAT)

	// Call VDP interruption handler
	in		a, (V9_P06)
	out		(V9_P06), a
	// V-Blank interruption
	rra
	call	c, _V9_InterruptVBlank
__endasm;
}

// -------------------------------
// *** MISCELLANEUS FUNCTIONS ***
// -------------------------------

i32 Math_Abs32(i32 v) { return (v < 0) ? -v : v; }

const TeamStats* GetTeamStats(u8 teamId) {
    if (teamId > 5) return &g_TeamStats[0];
    return &g_TeamStats[teamId];
}
void PlaySounds(){

	YSCC_Decode();
	//if(g_currentVGMPlayingSegment!=NO_VALUE){
		u8 currentSegment = GET_BANK_SEGMENT(3);
		//SET_BANK_SEGMENT(3, g_currentVGMPlayingSegment);
		//VGM_Decode();
		SET_BANK_SEGMENT(3, 69);
		ayFX_Update();
		PSG_Apply();
		SET_BANK_SEGMENT(3, currentSegment);
		
	//}
	
}

// ------------
// *** MAIN ***
// ------------
void main(){
	//DEBUG_INIT();
    Bios_SetHookDirectCallback(H_KEYI, InterruptHook);
	Bios_ClearHook(H_TIMI);
	SET_BANK_SEGMENT(3,69);
	ayFX_InitBank(g_Data_AYFX_Bank);
	ayFX_SetChannel(PSG_CHANNEL_C);
	ayFX_SetMode(AYFX_MODE_FIXED);
	YSCC_Init();
	CallFnc_VOID(4,MainSub);
}
