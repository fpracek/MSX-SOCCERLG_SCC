// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────
────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "v9990.h"
#include "print.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"
#include "pt3/pt3_player.h"
#include "memory.h"
#include "psg.h"
//#include "libs/vgm/vgm_player.h"
#include "libs/yscc/yscc_player.h"
#include "soccerlg_rawdef.h"

// ---------------------
// *** TEAM PALETTES ***
//----------------------

const unsigned char g_Data_Palette_Team_ITA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT_BORDERS)
	0x09, 0x16, 0x1B, // [7] #4CB7DA (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_AUS[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT_BORDERS)
	0x05, 0x03, 0x01, // [7] #2F1F0D (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_FRA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x1A, 0x1B, // [6] #DCD7D9 (T-SHIRT BORDERS)
	0x04, 0x04, 0x1B, // [7] #2121DE (T-SHIRT)
	0x1B, 0x1A, 0x1B, // [8] #DCD7D9 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_GER[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x05, 0x03, 0x01, // [6] #2F1F0D (T-SHIRT_BORDERS)
	0x1B, 0x1A, 0x1B, // [7] #DCD7D9 (T-SHIRT)
	0x1F, 0x00, 0x00, // [8] #FF0000 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_GBR[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x01, 0x01, 0x01, // [6] #0C0C0C (T-SHIRT BORDERS)
	0x1B, 0x1A, 0x1B, // [7] #DCD7D9 (T-SHIRT)
	0x01, 0x01, 0x01, // [8] #0C0C0C (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};
const unsigned char g_Data_Palette_Team_BRA[] =
{
	0x00, 0x00, 0x00, // [0] Transparent (treat as color-key / background)
	0x14, 0x09, 0x14, // [1] #A349A4
	0x01, 0x01, 0x01, // [2] #010101 (SHOES)
	0x05, 0x03, 0x01, // [3] #2F1F0D 
	0x1B, 0x1A, 0x1B, // [4] #DCD7D9 
	0x1E, 0x1A, 0x08, // [5] #F7D647 (FACE)
	0x1B, 0x13, 0x09, // [6] #DD9C48 (T-SHIRT BORDERS)
	0x00, 0x0A, 0x03, // [7] #04521b (T-SHIRT)
	0x1B, 0x13, 0x09, // [8] #DD9C48 (SHORTS)
	0x1B, 0x13, 0x09, // [9] #DD9C48
	0x1F, 0x1E, 0x01, // [A] #FAF60F
	0x1D, 0x03, 0x02, // [B] #EB1A12
	0x05, 0x03, 0x01, // [C] #2F1F0E
	0x01, 0x01, 0x01, // [D] #0C0C0C
	0x01, 0x01, 0x01, // [E] #0D0D0D
	0x01, 0x01, 0x01, // [F] #0E0E0E
};

// -------------------------------------
// *** MENU TEAMS PICTURES POSITIONS ***
// -------------------------------------

static const struct { u16 x; u16 y; } g_TeamPos[6] = {
    { 33, 101 }, { 114, 101 }, { 197, 101 },   // Row 1
    { 33, 184 }, { 114, 184 }, { 197, 184 } // Row 2
};
static const struct { u16 x; u16 y; } g_TeamGrayPos[6] = {
    { 1, 4 }, { 11, 4 }, { 21, 4 },   // Row 1
    { 1, 14}, { 11, 14 }, { 21, 14 } // Row 2
};

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Team selection +++
u8 SelectTeam(u8 cursorPatternId, u8 excludeIndex) {

    u8 currentIdx = 0;
    if (currentIdx == excludeIndex) currentIdx++;

    u8 dir = DIRECTION_NONE;
    u8 oldDir = DIRECTION_NONE;
    bool trigger = false;
    bool oldTrigger = true; // Force release first

    while (true) {
        V9990_WaitSynch();
        dir=CallFnc_U8(4,GetJoystickDirection);
        
        trigger=CallFnc_U8(4,IsTeamJoystickTriggerPressed);

        if (dir != DIRECTION_NONE && dir != oldDir) {
            u8 nextIdx = currentIdx;

            if (dir == DIRECTION_RIGHT) {
                if ((currentIdx % 3) < 2) nextIdx++;
            } else if (dir == DIRECTION_LEFT) {
                if ((currentIdx % 3) > 0) nextIdx--;
            } else if (dir == DIRECTION_UP) {
                if (currentIdx >= 3) nextIdx -= 3;
            } else if (dir == DIRECTION_DOWN) {
                if (currentIdx < 3) nextIdx += 3;
            }

            if (nextIdx == excludeIndex) {
                if (dir == DIRECTION_RIGHT) {
                    if ((nextIdx % 3) < 2) nextIdx++; else nextIdx = currentIdx;
                } else if (dir == DIRECTION_LEFT) {
                    if ((nextIdx % 3) > 0) nextIdx--; else nextIdx = currentIdx;
                } else {
                    nextIdx = currentIdx;
                }
            }
            currentIdx = nextIdx;
        }
        oldDir = dir;

        if (trigger && !oldTrigger) {
            PlayAyFx(AYFX_BALL);
			return currentIdx;
        }
        oldTrigger = trigger;

        struct V9_Sprite attr;
        attr.Y = g_TeamPos[currentIdx].y+2;
        attr.X = g_TeamPos[currentIdx].x;
        attr.Pattern = cursorPatternId;
        attr.P = 0; 
        attr.SC = 0;
		attr.D = 0;
        V9_SetSpriteP1(0, &attr);
    }
}

// +++ Menu sprite blinking +++
void MenuSpriteBlinking(){
	u8 ms=g_MatchStatus;
    V9_SetSpriteEnable(false);

    V9_SetInterrupt(V9_INT_VBLANK);
    g_MatchStatus=MATCH_PRESENTATION;
    
    g_TimerActive=TRUE;
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
    g_TimerActive=FALSE;

	V9_SetSpriteEnable(true);
	
    g_TimerActive=TRUE;
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
    g_TimerActive=FALSE;

	V9_SetSpriteEnable(false);

    g_TimerActive=TRUE;
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
    g_TimerActive=FALSE;
	V9_SetSpriteEnable(true);

    g_TimerActive=TRUE;
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
    g_TimerActive=FALSE;

	V9_SetSpriteEnable(false);

    g_TimerActive=TRUE;
    g_Timer=0;  
    while (g_Timer<=20)
    {
        ResetPlayersInfo();
    }
    g_TimerActive=FALSE;
	V9_SetSpriteEnable(true);
    g_MatchStatus=ms;

}

// +++ Reset players info +++
void ResetPlayersInfo(){
	CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE);
	for(u8 i=0;i<14;i++){
		g_Players[i].Direction=DIRECTION_NONE;
		g_Players[i].PreviousDirection=g_Players[i].Direction;
		g_Players[i].LastPose=0;
		g_Players[i].Status=PLAYER_STATUS_NONE;
		g_Players[i].Status=PLAYER_STATUS_NONE;
	}
}

// +++ Show menu ++++
void ShowMenu(){
	g_MatchStatus=MATCH_SHOW_MENU;
    V9_SetInterrupt(V9_INT_NONE); // Ensure interrupts are off during loading
    g_PonPonGirlsAreVisible = FALSE;
    g_FieldCurrentYPosition = -1; // Sync global variable to desired menu scroll
	// Set scroll immediately to -1 (alignment) and block ISR updates
	V9_SetScrollingBY(-1);
	V9_SetScrollingY(-1);
    YSCC_PlayLoop(SCC_MENU_BIN_SEG,SCC_MENU_BIN_SIZE);
	for(u8 i=0;i<32;i++){
		struct V9_Sprite attr;
		attr.D = 1;
        V9_SetSpriteP1(i, &attr);
	}
	V9_SetDisplayEnable(FALSE);
	// Removed scroll reset to keep the -1 alignment set at the start
	
	V9_FillVRAM(V9_P1_PGT_B, 0x00, 128*212); // Clean layer A pattern
    
    V9990_LoadMenuTeamsData();
	V9_SelectPaletteP1(0,1);
	for (u8 y=0;y<64;y++){
		for (u8 x=0;x<64;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 32);
		}
	}
    for (u8 y=4;y<25;y++){
		u16 tileId=256+32*(y-5);
		for (u8 x=1;x<31;x++){
            V9_Poke16(V9_CellAddrP1A(x,y-1), tileId);
            V9_Poke16(V9_CellAddrP1B(x,y-1), tileId);
			tileId++;
		}
	}
	V9990_LoadSprites();
	
	loop (i, 125)
  		V9_SetSpriteEnableP1(i, FALSE);

	V9_SetInterrupt(V9_INT_VBLANK); 
	
	V9_SetDisplayEnable(TRUE);
	V9990_PrintLayerAStringAtPos(4,0,"    PLAYER TEAM SELECT");
    V9990_InitScrollText();

    g_Team1PaletteId = SelectTeam(SPRITE_PLAYER, NO_VALUE);
	
	

	for(u8 y=g_TeamGrayPos[g_Team1PaletteId].y;y<g_TeamGrayPos[g_Team1PaletteId].y+9;y++){
		for(u8 x=g_TeamGrayPos[g_Team1PaletteId].x;x<g_TeamGrayPos[g_Team1PaletteId].x+10;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}
	
	V9_SetScrollingBY(-1);
	V9_SetScrollingY(-1);

	MenuSpriteBlinking();


    V9990_PrintLayerAStringAtPos(4,0,"     CPU TEAM SELECT   ");
	
    g_Team2PaletteId = SelectTeam(SPRITE_CPU, g_Team1PaletteId);


	for(u8 y=g_TeamGrayPos[g_Team2PaletteId].y;y<g_TeamGrayPos[g_Team2PaletteId].y+9;y++){
		for(u8 x=g_TeamGrayPos[g_Team2PaletteId].x;x<g_TeamGrayPos[g_Team2PaletteId].x+10;x++){
			V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}

	V9_SetScrollingBY(-1);
	V9_SetScrollingY(-1);

	MenuSpriteBlinking();

	struct V9_Sprite attr;
	attr.D = 1; 
	V9_SetSpriteP1(0, &attr);
	
	V9_SetSpriteEnable(TRUE);

    V9990_ClearTextFromLayerA(0, SCROLLTEXT_ROW, SCROLLTEXT_COLS);

	V9_SetDisplayEnable(FALSE);


	V9990_StopScrollText();
	if(g_ShowButtonsInfo){
		g_ShowButtonsInfo=false;
		V9_FillVRAM(V9_P1_PGT_A, 0x00, 128*212); 
        V9990_LoadButtonsImageData();
		V9_SelectPaletteP1(0,1);
		u16 tileId=0;

		for (u8 y=0;y<64;y++){
			for (u8 x=0;x<32;x++){
				V9_Poke16(V9_CellAddrP1A(x,y), tileId++);
			}
		}
		V9_SetInterrupt(V9_INT_VBLANK); 
		V9_SetDisplayEnable(TRUE);
        bool joyTriggered=FALSE;
		while(!joyTriggered){
            joyTriggered=CallFnc_U8(4,IsTeamJoystickTriggerPressed);
			V9990_WaitSynch();
		}
	
		V9_SetDisplayEnable(FALSE);
	}
    YSCC_Stop();
	g_MatchStatus=MATCH_NOT_STARTED;

	V9990_LoadP1LayerA();
	V9990_LoadP1LayerB();



    CallFnc_VOID(6,V9990_InitPalette);
    

    CallFnc_VOID(9,ShowField);

	V9_SetDisplayEnable(TRUE);

    V9_SetInterrupt(V9_INT_VBLANK);


	GameStart();
}
// +++ Set team 1 palette +++
void SetTeam1Palette(){
	V9_SetPalette(32, 16, GetTeamPaletteById(g_Team1PaletteId));
}
// +++ Set team 2 palette +++
void SetTeam2Palette(){
	V9_SetPalette(48, 16, GetTeamPaletteById(g_Team2PaletteId));
}
// +++ Get team palette id +++
const u16* GetTeamPaletteById(u8 id){
	const u16* palette=g_Data_Palette_Team_ITA;
	switch (id){
		case TEAM_AUS:
			palette=g_Data_Palette_Team_AUS;
			break; 
		case TEAM_BRA:
			palette=g_Data_Palette_Team_BRA;
			break;
		case TEAM_ITA:
			palette=g_Data_Palette_Team_ITA;
			break;
		case TEAM_GBR:
			palette=g_Data_Palette_Team_GBR;
			break;
		case TEAM_GER:
			palette=g_Data_Palette_Team_GER;
			break;
		case TEAM_FRA:
			palette=g_Data_Palette_Team_FRA;
			break;
	}
	return palette;
}
// +++ Game start +++
void GameStart(){
	g_VblankSuspended=FALSE;
	g_PonPonGirlsAreVisible=TRUE;
	g_BallIsVisible=TRUE;
	g_TimeCounter=0;
    g_LastTimeCounter=0;
	g_FirstKickOff=TRUE;
    g_PcmStartPlaying=FALSE;
    g_PmcSoundPlaying=NO_VALUE;
    g_PassTargetPlayer=NO_VALUE;
    g_Team1ActivePlayer=NO_VALUE;
	V9_SetDisplayEnable(FALSE);
    g_SecondsToEndOfMatch=MATCH_DURATION;
	g_RestartKickTeamId=TEAM_1;
	g_FieldScrollSpeed=FIELD_SCROLL_PRESENTATION_SPEED;
	g_FieldScrollingActionInProgress=NO_VALUE;
	g_FieldCurrentYPosition=FIELD_TOP_Y;
	g_Team1Score=0;
	g_Team2Score=0;
	V9_SetScrollingY(0);
	V9_SetScrollingBY(1);
	SetTeam1Palette();
	SetTeam2Palette();
	CallFnc_VOID(9,SetTeamsPresentationSpritesPosition);
	g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
	CallFnc_VOID(9,ShowHeaderInfo);
    CallFnc_VOID(6,InitPonPonGirls);
    V9_SetDisplayEnable(TRUE);
    V9_SetInterrupt(V9_INT_VBLANK);
	if(g_modernAudio){
		YSCC_Play(SCC_MODERN_PRESENTATION_BIN_SEG,SCC_MODERN_PRESENTATION_BIN_SIZE);
	}
	else{
		YSCC_Play(SCC_PUBLIC_PRESENTATION_BIN_SEG,SCC_PUBLIC_PRESENTATION_BIN_SIZE);
	}
	
}
// Get no moving plaer pattern id +++
u8 GetNoMovingPlayerPatternId(u8 direction){
	u8 patternId=PLAYER_POSE_FRONT_PLAYING; // Default fallback
	switch (direction){
		case DIRECTION_DOWN:
			patternId=PLAYER_POSE_FRONT_PLAYING;
			break;
		case DIRECTION_UP:
			patternId=PLAYER_POSE_BACK_PLAYING;
			break;
		case DIRECTION_LEFT:
			patternId=PLAYER_POSE_LEFT;
			break;
		case DIRECTION_RIGHT:
			patternId=PLAYER_POSE_RIGHT;
			break;
		case DIRECTION_UP_LEFT:
			patternId=PLAYER_POSE_MOVE_UP_LEFT_2;
			break;
		case DIRECTION_UP_RIGHT:
			patternId=PLAYER_POSE_MOVE_UP_RIGHT_1;
			break;
		case DIRECTION_DOWN_LEFT:
			patternId=PLAYER_POSE_MOVE_DOWN_LEFT_1;
			break;
		case DIRECTION_DOWN_RIGHT:
			patternId=PLAYER_POSE_MOVE_DOWN_RIGHT_2;
			break;
        case DIRECTION_NONE:
            // Fallback for NONE - assume facing front or use existing pose if possible, 
            // but here we return a safe pattern (Front)
            patternId=PLAYER_POSE_FRONT_PLAYING;
            break;
	}
	return patternId;
}
// +++ Shot +++
void PerformShot(u16 targetX, u16 targetY) {
    u8 fromId = g_Ball.PossessionPlayerId;
    if (fromId == NO_VALUE) return;

    i16 dx, dy, adx, ady;
    u8 newDir;

    // TURN PLAYER (Generic logic towards target point)
    dx = (i16)targetX - (i16)g_Players[fromId].X;
    dy = (i16)targetY - (i16)g_Players[fromId].Y;
    adx = (dx < 0) ? -dx : dx;
    ady = (dy < 0) ? -dy : dy;

    if (adx > ady * 2) {
        newDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
    } else if (ady > adx * 2) {
        newDir = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
    } else {
        if (dx > 0) newDir = (dy > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_UP_RIGHT;
        else newDir = (dy > 0) ? DIRECTION_DOWN_LEFT : DIRECTION_UP_LEFT;
    }
    g_Players[fromId].Direction = newDir;

	// Set Shot Pose
	if (newDir == DIRECTION_UP || newDir == DIRECTION_UP_LEFT || newDir == DIRECTION_UP_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_FRONT;
	else if (newDir == DIRECTION_DOWN || newDir == DIRECTION_DOWN_LEFT || newDir == DIRECTION_DOWN_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_BACK;
	else if (newDir == DIRECTION_LEFT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_LEFT;
	else if (newDir == DIRECTION_RIGHT) g_Players[fromId].PatternId = PLAYER_POSE_SHOT_RIGHT;

    g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose

    // Stop Player Movement
    g_Players[fromId].TargetX = g_Players[fromId].X;
    g_Players[fromId].TargetY = g_Players[fromId].Y;

    CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE);
    g_Ball.PossessionPlayerId = NO_VALUE;
    g_Ball.PassTargetPlayerId = NO_VALUE;
    g_Ball.ShotActive = 1;
    g_Ball.TargetX = targetX;
    g_Ball.TargetY = targetY;
    g_Ball.PassStartX = g_Ball.X;
    g_Ball.PassStartY = g_Ball.Y;
    
	// Calculate Arc Distance based on Goal Line (not target inside net) to ensure ball shrinks before entering
	i16 arcDy = dy;
	if (targetY < FIELD_BOUND_Y_TOP) { // Shooting UP
		arcDy = (i16)FIELD_BOUND_Y_TOP - (i16)g_Players[fromId].Y;
	} else if (targetY > FIELD_BOUND_Y_BOTTOM) { // Shooting DOWN
		arcDy = (i16)FIELD_BOUND_Y_BOTTOM - (i16)g_Players[fromId].Y;
	}
    g_Ball.PassTotalDist = (u16)(Math_Abs32(dx) + Math_Abs32(arcDy));
    PlayAyFx(AYFX_BALL);
}
// +++ Tick ball flying +++
void TickBallFlying() {
    // Only process ball physics if match is active or during specific states where ball might resolve
    if(g_MatchStatus == MATCH_BEFORE_THROW_IN || g_MatchStatus == MATCH_THROW_IN || 
       g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_GOAL_KICK ||
       g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_CORNER_KICK ||
       g_MatchStatus == MATCH_BEFORE_KICK_OFF) {
           return;
    }

	// If someone has the ball, it's not flying
	if (g_Ball.PossessionPlayerId != NO_VALUE) return;

	// Check if ball should be moving
	bool isMovingToPlayer = (g_Ball.PassTargetPlayerId != NO_VALUE);
	bool isFreeMoving = (g_Ball.ShotActive != 0);

	if (!isMovingToPlayer && !isFreeMoving) return;

	// 1. DETERMINE TARGET
	i16 tx, ty;
	if (isMovingToPlayer) {
		tx = g_Players[g_Ball.PassTargetPlayerId].X;
		ty = g_Players[g_Ball.PassTargetPlayerId].Y;
	} else {
		tx = g_Ball.TargetX;
		ty = g_Ball.TargetY;
	}

	// 2. MOVE BALL
	i16 dx = tx - (i16)g_Ball.X;
	i16 dy = ty - (i16)g_Ball.Y;
	
	// Speed Logic
	u8 speed = 3; 
	if (g_Ball.ShotActive == 1) speed = 5; // Fast High Shot/Kick
	else if (g_Ball.ShotActive == 2) speed = 3; // Slower Bounce
	else if (g_Ball.ShotActive == 3) speed = 2; // Rolling

	// Check Arrival
	if (dx > -speed && dx < speed && dy > -speed && dy < speed) {
		
		// --- ARRIVED AT TARGET ---

		if (isMovingToPlayer) {
			// Sticky Pass -> Magnet to player
			g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
			CallFnc_VOID_P1(4,PutBallOnPlayerFeet,g_Ball.PassTargetPlayerId);
			g_Ball.PassTargetPlayerId = NO_VALUE;
			g_Ball.Size = 1;
			return;
		} 
		else {
			// Free Ball Event (Shot or Bounce End)
			
			// If it was a HIGH SHOT (State 1) -> Try to Bounce
			if (g_Ball.ShotActive == 1) {
				
				// Standard Bounce Logic
				// Valid field area for bounce?
				bool isInsideField = (ty >= FIELD_BOUND_Y_TOP && ty <= FIELD_BOUND_Y_BOTTOM);

				if (isInsideField) {
					// START BOUNCE (State 2)
					
					// Calculate Bounce Target (extend vector by 20%)
					i16 totalVectorX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
					i16 totalVectorY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;

					// New start is current position
					g_Ball.PassStartX = g_Ball.X;
					g_Ball.PassStartY = g_Ball.Y;

					// New target
					i16 bounceDx = totalVectorX / 4; 
					i16 bounceDy = totalVectorY / 4; 
					
					// Don't bounce off screen
					i16 newTx = (i16)g_Ball.X + bounceDx;
					i16 newTy = (i16)g_Ball.Y + bounceDy;
					
					// Clamp Target
					if (newTx < FIELD_BOUND_X_LEFT) newTx = FIELD_BOUND_X_LEFT;
					else if (newTx > FIELD_BOUND_X_RIGHT) newTx = FIELD_BOUND_X_RIGHT;
					
					if (newTy < FIELD_BOUND_Y_TOP) newTy = FIELD_BOUND_Y_TOP;
					else if (newTy > FIELD_BOUND_Y_BOTTOM) newTy = FIELD_BOUND_Y_BOTTOM;

					g_Ball.TargetX = newTx;
					g_Ball.TargetY = newTy;
					
					// Recalculate Distance for the bounce phase
					g_Ball.PassTotalDist = (u16)(Math_Abs32(bounceDx) + Math_Abs32(bounceDy));
					
					if (g_Ball.PassTotalDist > 5) {
						g_Ball.ShotActive = 2; // Enter Bounce State
						return; 
					}
				}
			} else if (g_Ball.ShotActive == 2) {
				// TRANSITION TO ROLL (State 3)
				// Small forward movement on ground
				
				i16 vecX = (i16)g_Ball.TargetX - (i16)g_Ball.PassStartX;
				i16 vecY = (i16)g_Ball.TargetY - (i16)g_Ball.PassStartY;
				
				g_Ball.PassStartX = g_Ball.X;
				g_Ball.PassStartY = g_Ball.Y;
				
				// Roll distance = approx 1/4 of bounce distance (which was 1/4 of shot)
				i16 rollDx = vecX / 4; 
				i16 rollDy = vecY / 4; 
				
				// Ensure minimum roll if it was moving fast? 
				// Just let it die purely if very slow.
				
				i16 rollTx = (i16)g_Ball.X + rollDx;
				i16 rollTy = (i16)g_Ball.Y + rollDy;
				
				// Bounds Check
				if (rollTx < FIELD_BOUND_X_LEFT) rollTx = FIELD_BOUND_X_LEFT;
				else if (rollTx > FIELD_BOUND_X_RIGHT) rollTx = FIELD_BOUND_X_RIGHT;
				if (rollTy < FIELD_BOUND_Y_TOP) rollTy = FIELD_BOUND_Y_TOP;
				else if (rollTy > FIELD_BOUND_Y_BOTTOM) rollTy = FIELD_BOUND_Y_BOTTOM;

				g_Ball.TargetX = rollTx;
				g_Ball.TargetY = rollTy;
				g_Ball.PassTotalDist = (u16)(Math_Abs32(rollDx) + Math_Abs32(rollDy));
				
				if (g_Ball.PassTotalDist > 2) {
					g_Ball.ShotActive = 3; // ROLLING
					return;
				}
			}

			// STOP BALL (End of Bounce/Roll or Out of Bounds or blocked)
			g_Ball.ShotActive = 0;
			g_Ball.PassTargetPlayerId = NO_VALUE;
			g_Ball.PossessionPlayerId = NO_VALUE;
			g_Ball.Size = 1;
			
			return;
		}
	}

	// 3. UPDATE POSITION
	if (Math_Abs32(dx) > Math_Abs32(dy)) {
		g_Ball.X += (dx > 0 ? speed : -speed);
		if (dx != 0) g_Ball.Y += (dy * speed) / Math_Abs32(dx);
	} else {
		g_Ball.Y += (dy > 0 ? speed : -speed);
		if (dy != 0) g_Ball.X += (dx * speed) / Math_Abs32(dy);
	}

	// 4. UPDATE SIZE (HEIGHT ARC)
	i16 diffStartX = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
	i16 diffStartY = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
	u16 distCovered = (u16)(Math_Abs32(diffStartX) + Math_Abs32(diffStartY));
	
	u16 totalDist = g_Ball.PassTotalDist;
	if (totalDist == 0) totalDist = 1; // Safety

	// Check out of bounds safety (Ball disappears fix)
	if (g_Ball.X == 0 || g_Ball.X > 255 || g_Ball.Y == 0 || g_Ball.Y > 211) {
		// Reset if widely out of bounds
        // But only if really far, to allow goal-line cross
        if(g_Ball.Y > 230 || g_Ball.Y < 20) {
             // Let CheckBallBoundaries handle goal/out logic, 
             // but if it's crazy values, clamp or stop.
        }
	}

	if (g_Ball.ShotActive == 2) {
		// BOUNCE ARC (Low)
		u16 ratio = (distCovered * 100) / totalDist;
		if (ratio < 20 || ratio > 80) g_Ball.Size = 2;
		else g_Ball.Size = 3;
	} 
	else if (g_Ball.ShotActive == 3) {
		// ROLLING (Ground)
		g_Ball.Size = 1;
	}
	else if (g_Ball.ShotActive == 1) {
		// SHOT ARC (High)
        if (totalDist > 140) {
             // Long Kick (GK Clearance) -> Very High Arc (Unreachable)
             u16 ratio = (distCovered * 100) / totalDist;
             if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
             else if (ratio < 30 || ratio > 70) g_Ball.Size = 3;
             else g_Ball.Size = 5; // Size 5 = Impossible to reach
        } else {
		    // Normal Shot -> Cap at Size 2 (User Request)
		    g_Ball.Size = 2;
        }
	}
	else {
		// PASS ARC (Medium)
        if (totalDist > 140) {
             // Long Pass (GK Kick) -> Very High Arc
             u16 ratio = (distCovered * 100) / totalDist;
             if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
             else if (ratio < 30 || ratio > 70) g_Ball.Size = 3;
             else g_Ball.Size = 5; // Size 5 = Impossible to reach
        }
		else if (totalDist > 40) {
			u16 ratio = (distCovered * 100) / totalDist;
			if (ratio < 15 || ratio > 85) g_Ball.Size = 2;
			else g_Ball.Size = 3;
		} else {
			g_Ball.Size = 2;
		}
	}
	
}
// +++ Active field zone +++
void TickActiveFieldZone(){

    // If a zone transition is already happening (e.g. triggered by goal celebration), let it finish
    if (g_FieldScrollingActionInProgress != NO_VALUE) return;

    // Continuous Ball Tracking
    // Enable for BEFORE_KICK_OFF to ensure centering and stability
    if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER || g_MatchStatus == MATCH_BEFORE_KICK_OFF) {
        
        // Calculate target scroll position to center the ball
        // Screen Height is 212, so center is 106
        i16 targetY = (i16)g_Ball.Y - 106;
        
        // Clamp to Field Boundaries
        if (targetY < FIELD_TOP_Y) targetY = FIELD_TOP_Y;
        if (targetY > FIELD_BOTTOM_Y) targetY = FIELD_BOTTOM_Y;
        
        // Smooth Scrolling (Proportional)
        i16 diff = targetY - (i16)g_FieldCurrentYPosition;
        
        // SNAP LOGIC for Positioning Phase: If very close, lock it to prevent micro-jitter
        if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && diff > -2 && diff < 2) {
             g_FieldCurrentYPosition = targetY;
             // Update Zone and return immediately
             if (g_FieldCurrentYPosition < 80) g_ActiveFieldZone = FIELD_NORTH_ZONE;
             else if (g_FieldCurrentYPosition > 170) g_ActiveFieldZone = FIELD_SOUTH_ZONE;
             else g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
             return;
        }

        // Deadzone to ignore dribble bobbing (approx +/- 4px) and prevent micro-jitter
        if (diff > 6 || diff < -6) {
             i16 move = diff / 8;
             // Ensure minimum speed if outside deadzone to prevent asymptotic creeping
             if (move == 0) move = (diff > 0) ? 1 : -1;
             
             g_FieldCurrentYPosition += move;
        }
        
        // Clamp Result
        if (g_FieldCurrentYPosition < FIELD_TOP_Y) g_FieldCurrentYPosition = FIELD_TOP_Y;
        if (g_FieldCurrentYPosition > FIELD_BOTTOM_Y) g_FieldCurrentYPosition = FIELD_BOTTOM_Y;

        // Apply Scroll
        // Note: V9_SetScrollingBY is called in ISR using g_FieldCurrentYPosition
        
        // Update Zone variable for other logic (approximate)
        if (g_FieldCurrentYPosition < 80) g_ActiveFieldZone = FIELD_NORTH_ZONE;
        else if (g_FieldCurrentYPosition > 170) g_ActiveFieldZone = FIELD_SOUTH_ZONE;
        else g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
    }

	g_Ball.PreviousY=g_Ball.Y;
}
void TickUpdateTime(){
	if(g_MatchStatus==MATCH_IN_ACTION){
		if(g_TimeCounter!=g_LastTimeCounter){
			g_LastTimeCounter=g_TimeCounter;
			g_SecondsToEndOfMatch--;
			CallFnc_VOID(9,ShowHeaderInfo);
			if(g_SecondsToEndOfMatch==0){
				YSCC_Stop();
    			PlayPCM(PCM_REFEREER);
				CallFnc_VOID(11,TimeUp);
			}
		}
	}
	if(g_Timer!=NO_VALUE){
		if(g_FrameCounter==38){
			g_Timer++;
		}
	}
	
}
void BallInGoal(u8 teamScored){
	g_VblankSuspended=TRUE; 
	g_Ball.Size=1;
	// Placeholder for Goal Logic
	V9990_PrintLayerAStringAtPos(12,18,"IN  GOAL");
    
    g_GoalScorerId = g_Ball.PossessionPlayerId;
    
    // Better heuristic: if possession is NO_VALUE, use closest player of scoring team
    if (g_GoalScorerId == NO_VALUE) {
        g_GoalScorerId = CallFnc_U8_P2(4,GetClosestPlayerToBall, teamScored, NO_VALUE);
    }
    
	if(teamScored==TEAM_1){
		// Scored UP (North)
		g_Ball.Y = FIELD_BOUND_Y_TOP - 12;
		g_Team1Score++;
	}
	else{
		// Scored DOWN (South)
		g_Ball.Y = FIELD_BOUND_Y_BOTTOM + 12L;
		g_Team2Score++;
	}
	CallFnc_VOID(9,ShowHeaderInfo);
    CallFnc_VOID(6,PutBallSprite);
	
    if (g_modernAudio) {
        YSCC_Stop();
        YSCC_Play(SCC_MODERN_INGOAL_BIN_SEG, SCC_MODERN_INGOAL_BIN_SIZE);
    } else {
        PlayPCM(PCM_INGOAL);
        YSCC_Stop();
        YSCC_PlayLoop(SCC_PUBLIC_GOAL_BIN_SEG, SCC_PUBLIC_GOAL_BIN_SIZE);
    }
	
	g_MatchStatus=MATCH_AFTER_IN_GOAL;
	g_RestartKickTeamId = (teamScored == TEAM_1) ? TEAM_2 : TEAM_1;
	g_Timer = 0; // Start timer for celebration/reset
    g_Ball.ShotActive = 0;
    g_Ball.PassTargetPlayerId = NO_VALUE;
    g_Ball.PossessionPlayerId = NO_VALUE;
	g_VblankSuspended=FALSE;
}
