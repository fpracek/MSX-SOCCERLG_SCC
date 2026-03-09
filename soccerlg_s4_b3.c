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
#include "pt3/pt3_player.h"
#include "memory.h"
#include "soccerlg_rawdef.h"
//#include "libs/vgm/vgm_player.h"
#include "libs/yscc/yscc_player.h"

// -----------------
// *** FUNCTIONS ***
// -----------------

// Check joystick trigger pression
bool IsTeamJoystickTriggerPressed(){		
		u8 joyStat = Joystick_Read(JOY_PORT_1);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return true;
		}
		if(Keyboard_IsKeyPressed(KEY_SPACE))
		{
			return true;
		}
	return FALSE;
}

// +++ Get joystick status +++
u8 GetJoystickDirection(){
	u8 dir = Joystick_GetDirection(JOY_PORT_1);
	u8 retValue=DIRECTION_NONE;
	switch (dir){
		case JOY_INPUT_DIR_UP:
			retValue=DIRECTION_UP;
			break;
		case JOY_INPUT_DIR_DOWN:
			retValue=DIRECTION_DOWN;
			break;
		case JOY_INPUT_DIR_LEFT:
			retValue=DIRECTION_LEFT;
			break;
		case JOY_INPUT_DIR_RIGHT:
			retValue=DIRECTION_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_RIGHT:
			retValue=DIRECTION_UP_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_LEFT:
			retValue=DIRECTION_UP_LEFT;
			break;
		case JOY_INPUT_DIR_DOWN_RIGHT:
			retValue=DIRECTION_DOWN_RIGHT;
			break;
		case JOY_INPUT_DIR_DOWN_LEFT:
			retValue=DIRECTION_DOWN_LEFT;
			break;
	}
	if(retValue==DIRECTION_NONE){
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_RIGHT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_RIGHT;
		}		
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_LEFT))
		{
			retValue=DIRECTION_LEFT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_RIGHT))
		{
			retValue=DIRECTION_RIGHT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN;
		}
	}
	return retValue;
}

// +++ Variables initialization +++
void InitVariables(){
    g_ShowButtonsInfo=true;
	// Initialize Ball State
	g_Ball.PossessionPlayerId = NO_VALUE;
	g_Ball.PassTargetPlayerId = NO_VALUE;
	g_Ball.ShotActive = 0;
	g_Ball.LastTouchTeamId = NO_VALUE;
	g_Ball.ComingFromRestart = 0;
	g_Ball.StealCooldown = 0;
    g_FieldCurrentYPosition = 0; // Initialize to avoid garbage scroll in ISR
    g_FieldScrollingActionInProgress = NO_VALUE;
}

// +++ Load presentation image +++
void LoadPresentation(){
    V9_SetScreenMode(V9_MODE_B1);
    V9_SetDisplayEnable(FALSE);
    V9_SetColorMode(V9_COLOR_BD8);
	const u8 colorBlack[3] = { 0, 0, 0 };
	V9_SetPaletteEntry(0, colorBlack);    
	V9_SetBackgroundColor(0);

	V9990_LoadImagePresentationData();
	LoadMsxVdpFonts();
    

    g_MatchStatus=MATCH_PRESENTATION;
    V9_SetInterrupt(V9_INT_NONE);

    g_FieldCurrentYPosition = 0; // Ensure safe value before enabling ISR
    V9_SetDisplayEnable(TRUE);

	V9_SetInterruptLine(71);
    V9_SetInterrupt(V9_INT_VBLANK);
    YSCC_Play(SCC_PRESENTATION_BIN_SEG,(u32)SCC_PRESENTATION_BIN_SIZE);
    g_Timer=0;
	g_TimerActive=TRUE;
    V9_SetInterrupt(V9_INT_VBLANK);
    while (g_Timer!=200)
    {
        
    }
    //SET_BANK_SEGMENT(3,4);
	g_TimerActive=FALSE;
    g_MatchStatus=MATCH_NOT_STARTED;
    V9_SetInterrupt(V9_INT_NONE);
    V9_SetDisplayEnable(FALSE);
}

// +++ Scrolling Tick +++
void TickGameFieldScrolling(){
	
    switch (g_FieldScrollingActionInProgress) {
    case FIELD_NORTH_ZONE:
        g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
        if (g_FieldCurrentYPosition < FIELD_TOP_Y) {
            g_FieldCurrentYPosition = FIELD_TOP_Y;
            g_FieldScrollingActionInProgress = NO_VALUE;
            g_ActiveFieldZone = FIELD_NORTH_ZONE;
        }
        break;
    case FIELD_CENTRAL_ZONE:
        if (g_FieldCurrentYPosition != FIELD_CENTRAL_Y) {
            if (g_FieldCurrentYPosition > FIELD_CENTRAL_Y) {
                g_FieldCurrentYPosition = g_FieldCurrentYPosition - g_FieldScrollSpeed;
                if(g_FieldCurrentYPosition < FIELD_CENTRAL_Y) g_FieldCurrentYPosition = FIELD_CENTRAL_Y;
            }
            else {
                g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
                if(g_FieldCurrentYPosition > FIELD_CENTRAL_Y) g_FieldCurrentYPosition = FIELD_CENTRAL_Y;
            }

        }
        else {
            g_FieldScrollingActionInProgress = NO_VALUE;
            g_ActiveFieldZone = FIELD_CENTRAL_ZONE;
        }
        break;
    case FIELD_SOUTH_ZONE:
        g_FieldCurrentYPosition = g_FieldCurrentYPosition + g_FieldScrollSpeed;
        if (g_FieldCurrentYPosition >= FIELD_BOTTOM_Y) {
            g_FieldCurrentYPosition = FIELD_BOTTOM_Y;
            g_ActiveFieldZone = FIELD_SOUTH_ZONE;
            g_FieldScrollingActionInProgress = NO_VALUE;
        }
        break;
    }
    V9_SetScrollingBY(g_FieldCurrentYPosition);
    for(u8 i=0;i<6;i++){
        CallFnc_VOID_P1(7,PutPonPonGirlSprite,i);
    }
}

// +++ Main soubroutine +++
void MainSub(){
    
    
	

    InitVariables();

	V9_SetPort(V9_P15, 0);

	VDP_SetMode(VDP_MODE_SCREEN0);
	VDP_EnableVBlank(FALSE);
	VDP_ClearVRAM();

	
	LoadMsxVdpFonts();

	Print_SetColor(15, 1);
	Print_SetPosition(0, 0);
	Print_DrawText("Soccer League - 2026 Fausto Pracek");
	Print_SetPosition(0, 1);
	Print_DrawText("fpracek@gmail.com");
	
	const c8* str = "V9990 not found!";
	bool v9990IsFound=V9_Detect();

	if (v9990IsFound){
		str = "V9990 found!";
		Print_SetPosition(0, 7);
		Print_DrawText("The game is running on V9990 monitor.");
	}
	Print_SetPosition(0, 3);
	Print_DrawText(str);
	if(!v9990IsFound){
		for(;;);
	}
	
    V9_SetInterrupt(V9_INT_NONE);


	LoadPresentation();
  	CallFnc_VOID(6,V9990_InitMenuLayers);
	
	CallFnc_VOID(8,ShowMenu);
	MainGameLoop();
	V9_SetPort(V9_P15, 0x10);	
} 

// +++ Main game loop +++
void MainGameLoop(){
	u8 TickAiPlayerId=0;
	u8 AiTickSpeed=0;

	for(;;){
        if(g_MatchStatus==MATCH_IN_ACTION){
		    CallFnc_VOID(8,TickUpdateTime);
	    }
		V9990_WaitSynch();
		CallFnc_VOID(6,UpdateSpritesPositions); // Sprites nel VBlank, prima di tutto
		{ u8 joyDir=GetJoystickDirection(); CallFnc_VOID_P1(6,TickTeamJoystick,joyDir); } // Joystick subito dopo VBlank
		
		if(g_PcmStartPlaying){
			g_PcmStartPlaying=false;
			PlayPCM(g_PmcSoundPlaying);
		}

		if(g_MatchStatus==MATCH_NOT_STARTED && g_FieldScrollingActionInProgress==NO_VALUE && g_ActiveFieldZone==FIELD_CENTRAL_ZONE){
			
			g_MatchStatus=MATCH_BEFORE_KICK_OFF;
            if(g_FirstKickOff){
                g_FirstKickOff=FALSE;
                g_Timer=0;
                g_VgmPublicPresentationEnded=FALSE;
            
            
               while(YSCC_GetFirstSegmentOfCurrentPlaying()==SCC_PUBLIC_PRESENTATION_BIN_SEG){
                    
                 //No move this ouside of the loop (without it the wait loop doesn't work)
               }
               if(!g_modernAudio){
                    YSCC_Stop();
               }
            }
            
            if(!g_modernAudio){
                YSCC_Play(SCC_PLAYERS_BIN_SEG,SCC_PLAYERS_BIN_SIZE);
            }
			
            g_Timer=0;

            while (g_Timer!=45)
            {
                for(u8 i=0;i<15;i++){
				    CallFnc_VOID_P1(9,SetPlayerTarget,i);
			    }   
                  //No move this ouside of the loop (without it the wait loop doesn't work)
            }

			g_Timer=0;
			

		}
		if(g_MatchStatus==MATCH_NOT_STARTED){
			if(YSCC_GetFirstSegmentOfCurrentPlaying()==SCC_PLAYERS_BIN_SEG && g_TimerActive && g_Timer<30){
				continue;
			}
			
		}
       
        TickCornerKick(); 
        if(g_MatchStatus == MATCH_BEFORE_GOAL_KICK){
            CallFnc_VOID(5,TickGoalKick);
        }
        CallFnc_VOID(7,TickThrowIn);

        CallFnc_VOID(6,TickPonPonGirlsAnimation);
		CallFnc_VOID(5,TickPlayerToOwnTarget);
           if (g_SoundRequest != NO_VALUE) {
            PlayPCM(g_SoundRequest);
            g_SoundRequest = NO_VALUE;
        }
		CallFnc_VOID(6,TickGoalCelebration);
		CallFnc_VOID(8,TickActiveFieldZone);
		if(g_FieldScrollingActionInProgress==NO_VALUE){
            // AI runs during ACTION and GK_BALL
            if(g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
                
                // FORCE CHASER UPDATE (Every Frame for responsiveness)
                if (g_Ball.PossessionPlayerId != NO_VALUE) {
                     u8 carrierTeam = g_Players[g_Ball.PossessionPlayerId].TeamId;
                     u8 chaserTeam = (carrierTeam == TEAM_1) ? TEAM_2 : TEAM_1;
                     u8 chaserId = GetClosestPlayerToBall(chaserTeam, NO_VALUE);
                     if (chaserId != NO_VALUE) {
                          CallFnc_VOID_P1(10,TickAI,chaserId);
                     }
                }

                // Referee AI
                if(AiTickSpeed >= 2){ // Speed up AI cycle (was 5)
					AiTickSpeed=0;
                    CallFnc_VOID_P1(10,TickAI,REFEREE);
					CallFnc_VOID_P1(10,TickAI,TickAiPlayerId);
					TickAiPlayerId++;
					if(TickAiPlayerId==14){ // Only iterate 0-13 (Players)
						TickAiPlayerId=0;
					}
					
                    // PRIORITY AI UPDATES
                    if (g_Ball.PossessionPlayerId != NO_VALUE && g_Ball.PossessionPlayerId < 14) {
                        // 1. Ball Carrier
                        if (g_Ball.PossessionPlayerId != TickAiPlayerId) {
                            CallFnc_VOID_P1(10,TickAI,g_Ball.PossessionPlayerId);
                        }
                        // 2. Chaser (Closest Opponent)
                        u8 carrierTeam = g_Players[g_Ball.PossessionPlayerId].TeamId;
                        u8 chaserTeam = (carrierTeam == TEAM_1) ? TEAM_2 : TEAM_1;
                        u8 chaserId = GetClosestPlayerToBall(chaserTeam, NO_VALUE);
                        if (chaserId != NO_VALUE && chaserId != TickAiPlayerId) {
                             CallFnc_VOID_P1(10,TickAI,chaserId);
                        }
                    } else {
                        // Loose Ball: Update closest from both teams
                        u8 c1 = GetClosestPlayerToBall(TEAM_1, NO_VALUE);
                        if (c1 != NO_VALUE && c1 != TickAiPlayerId) CallFnc_VOID_P1(10,TickAI,c1);
                        
                        u8 c2 = GetClosestPlayerToBall(TEAM_2, NO_VALUE);
                        if (c2 != NO_VALUE && c2 != TickAiPlayerId) CallFnc_VOID_P1(10,TickAI,c2);
                    }
				}
				
            }
		}
		EnforcePenaltyBoxRestriction();
		TickShotCursor();
		
  		TickShowKickOff();
		if(g_FieldScrollingActionInProgress==NO_VALUE){
			CallFnc_VOID(9,TickBallCollision);
			CallFnc_VOID(8,TickBallFlying);
			CallFnc_VOID(9,UpdatePassTarget);
            CallFnc_VOID(9,TickGoalkeeperAnimation);
		}
		CallFnc_VOID(9,TickCheckBallBoundaries);
		
	
		AiTickSpeed++;
		// Decrement Cooldown
		if (g_ActionCooldown > 0) {
			g_ActionCooldown--;
		} else {
			// Unlock Human Players poses if cooldown expired
            if (g_Team1ActivePlayer != NO_VALUE && g_Players[g_Team1ActivePlayer].Status == PLAYER_STATUS_POSITIONED) 
                 g_Players[g_Team1ActivePlayer].Status = PLAYER_STATUS_NONE;
            if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && g_Players[g_Team2ActivePlayer].Status == PLAYER_STATUS_POSITIONED)
                 g_Players[g_Team2ActivePlayer].Status = PLAYER_STATUS_NONE;
		}
		
		if (g_ShootCooldown > 0) {
			g_ShootCooldown--;
		}
	}
}

// +++ Kick off +++
void TickShowKickOff(){
	if(g_MatchStatus==MATCH_KICK_OFF){
			V9990_PrintLayerAStringAtPos(12,18,"KICK OFF");
            YSCC_Stop();
            PlayPCM(PCM_REFEREER);
			PlayPCM(PCM_KICKOFF);
			
            //g_PmcSoundPlaying=PCM_KICKOFF;
            //g_PcmStartPlaying=TRUE;

			V9990_ClearTextFromLayerA(12,18,9);
			g_Timer=NO_VALUE;
			u8 playerId=NO_VALUE;
			if(g_RestartKickTeamId==TEAM_1){
				playerId=GetPlayerIdByRole(TEAM_1,PLAYER_ROLE_RIGHT_HALFFIELDER);
			}
			else{
				playerId=GetPlayerIdByRole(TEAM_2,PLAYER_ROLE_LEFT_HALFFIELDER);
			}
			PutBallOnPlayerFeet(playerId);
            
            // Ensure defending human players are selected
            if (g_RestartKickTeamId != TEAM_1) {
                 u8 closest = GetClosestPlayerToBall(TEAM_1, NO_VALUE);
                 if (closest != NO_VALUE) g_Team1ActivePlayer = closest;
            }
            if (g_GameWith2Players && g_RestartKickTeamId != TEAM_2) {
                 u8 closest = GetClosestPlayerToBall(TEAM_2, NO_VALUE);
                 if (closest != NO_VALUE) g_Team2ActivePlayer = closest;
            }

			g_MatchStatus=MATCH_IN_ACTION;
			g_TimerActive=FALSE;
            if(g_modernAudio){
                YSCC_PlayLoop(SCC_STADIUM_BIN_SEG,SCC_STADIUM_BIN_SIZE);
            }
            else{
                YSCC_PlayLoop(SCC_MATCH_BIN_SEG,SCC_MATCH_BIN_SIZE);
            }
			
            
	}
    if(g_MatchStatus==MATCH_BEFORE_OFFSIDE){
         if(g_Timer >= 2) { 
             V9990_ClearTextFromLayerA(10,18,7);
             g_Timer = NO_VALUE;
             
             u8 team = g_RestartKickTeamId; 
             u8 newOwner = GetClosestPlayerToBall(team, NO_VALUE);
             if (newOwner != NO_VALUE) {
                 PutBallOnPlayerFeet(newOwner);
                 g_Ball.KickMoveState = NO_VALUE;
             }
             
             g_MatchStatus = MATCH_IN_ACTION;
         }
    }
}

// +++ Tick shot arrow +++
void TickShotCursor() {
    // 1. Update Position
    g_ShotCursorX += g_ShotCursorDir;
    if (g_ShotCursorX < (GOAL_X_MIN - 30)) {
        g_ShotCursorX = (GOAL_X_MIN - 30);
        g_ShotCursorDir = -g_ShotCursorDir;
    }
    if (g_ShotCursorX > (GOAL_X_MAX + 30)) {
        g_ShotCursorX = (GOAL_X_MAX + 30);
        g_ShotCursorDir = -g_ShotCursorDir;
    }

    // 2. Draw Sprite
    bool show = false;
    if (g_MatchStatus == MATCH_IN_ACTION && g_ActiveFieldZone == FIELD_NORTH_ZONE) {
        show = true;
    }

    struct V9_Sprite attr;
    if (show) {
        // Calculate Screen Y
        int screenY = (FIELD_BOUND_Y_TOP + 14) - g_FieldCurrentYPosition;
        
        // Hide if scrolled off
        if (screenY < -16 || screenY > 212) {
             attr.Y = 216; 
        } else {
             attr.Y = (u8)screenY;
        }
        
        attr.X = (u8)g_ShotCursorX;
        attr.Pattern = SPRITE_UP_ARROW;
        attr.P = 1;
        attr.SC = 0;
        attr.D = 0;
        V9_SetSpriteP1(16, &attr);
    } else {
        // Hide
        attr.Y = 216;
        attr.X = 0; attr.Pattern = 0; attr.P = 0; attr.SC = 0; attr.D = 0;
        V9_SetSpriteP1(16, &attr);
    }
}

// *** Enforce penalty box restriction ***
void EnforcePenaltyBoxRestriction() {
    if (g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
        return;
    }

    u8 gkOwnerId = g_Ball.PossessionPlayerId;
    // Check if a goalkeeper actually has the ball
    if (gkOwnerId == NO_VALUE || g_Players[gkOwnerId].Role != PLAYER_ROLE_GOALKEEPER) {
        return;
    }

    u8 gkTeamId = g_Players[gkOwnerId].TeamId;
    
    // Loop through all field players
    for (u8 i = 0; i < 14; i++) { 
        if (i == gkOwnerId) continue; // Skip the GK himself

        if (gkTeamId == TEAM_1) { // Bottom GK has ball, players can't be in y > PENALTY_BOX_Y_BOTTOM
            if (g_Players[i].TargetY > PENALTY_BOX_Y_BOTTOM) {
                g_Players[i].TargetY = PENALTY_BOX_Y_BOTTOM;
                g_Players[i].Status = PLAYER_STATUS_NONE;
            }
        } else { // Top GK has ball, players can't be in y < PENALTY_BOX_Y_TOP
            if (g_Players[i].TargetY < PENALTY_BOX_Y_TOP) {
                g_Players[i].TargetY = PENALTY_BOX_Y_TOP;
                g_Players[i].Status = PLAYER_STATUS_NONE;
            }
        }
    }
}

// +++ Get player id by role +++
u8 GetPlayerIdByRole(u8 teamId, u8 role){
	u8 playerId=NO_VALUE;
	for(u8 i=0;i<14;i++){
		if(g_Players[i].Role==role && g_Players[i].TeamId==teamId){
			playerId=i;
			break;
		}
	}
	return playerId;
}

// +++ Get closes player to ball +++
u8 GetClosestPlayerToBall(u8 teamId, u8 excludePlayerId){
	u8 closestId = NO_VALUE;
	u16 minDist = 0xFFFF;
	
	for(u8 i=0;i<14;i++){
		if(g_Players[i].TeamId != teamId) continue;
		if(i == excludePlayerId) continue;

		u16 distX = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
		u16 distY = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
		
		u16 totalDist = distX + distY;
		
		if(totalDist < minDist){
			minDist = totalDist;
			closestId = i;
		}
	}
	return closestId;
}

// +++ Set player ball possession +++
void SetPlayerBallPossession(u8 playerId){
	if (playerId == NO_VALUE) {
		return;
	}

	if(g_Players[playerId].TeamId==TEAM_1){
		if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team1ActivePlayer=playerId;
	}
	else{
		if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) g_Team2ActivePlayer=playerId;
	}

	g_Ball.PossessionTimer = 0; // Reset hold timer
}

// +++ Put ball on player feet +++
void PutBallOnPlayerFeet(u8 playerId){
	
	if (g_Ball.PossessionPlayerId != playerId) {
		g_Ball.PossessionPlayerId=playerId;
		g_Ball.LastTouchTeamId=g_Players[playerId].TeamId;
		g_Ball.PassTargetPlayerId = NO_VALUE; // Clear any pending pass
		g_Ball.ShotActive = 0; // Clear any pending shot
		SetPlayerBallPossession(g_Ball.PossessionPlayerId);
        
        // Prevent immediate action (Shot/Pass) upon receiving - Reduced to 8 frames for responsiveness
        g_ActionCooldown = 8;
		
		if (g_Ball.ComingFromRestart) {
			g_ShootCooldown = 45; // 0.75s ban on shooting after restart
			g_Ball.ComingFromRestart = 0;
		}
	}

	// Ball base offsets (near feet) for each direction
	// Indexes: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
	const u8 BallBaseDistX[] = { 0, 0, 4, 6, 4, 0, 4, 6, 4 };
	const u8 BallBaseDistY[] = { 0, 6, 4, 0, 4, 6, 4, 2, 4 };
	
	const u8 DribbleAnimOffsets[] = {5, 4, 2, 0};
	const u8 DribbleAnimOffsetsDiag[] = {3, 3, 1, 0};
	
	// Posiction correction on ball stopped 
	// Indexes: NONE, UP, UP_RIGHT, RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT
	const i8 BallAlignCorrectX[] = { 0, 0, 0, 0, 2, 0, -2, 0, 0 };
	const i8 BallAlignCorrectY[] = { 0, 0, 0, 4, 2, 4, 2, 4, 0 };

	u8 dir = g_Players[playerId].Direction;
	if(dir == DIRECTION_NONE) dir = g_Players[playerId].PreviousDirection; // Fallback se fermo

	// GK Logic: If moving sideways, treat ball position as Front (UP/DOWN)
	u8 calcDir = dir;
	bool isGkSideMove = false;
	if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER && (dir == DIRECTION_LEFT || dir == DIRECTION_RIGHT)) {
		isGkSideMove = true;
		if (g_Players[playerId].TeamId == TEAM_1) calcDir = DIRECTION_UP;
		else calcDir = DIRECTION_DOWN;
	}

	// Use KickMoveState for animation if set
	u8 animStep = g_Ball.KickMoveState;
	if (animStep > 3) animStep = 4; // Default/Reset to 3 (Close) if NO_VALUE (255)

	u8 currentOffset = DribbleAnimOffsets[animStep];
	u8 currentOffsetDiag = DribbleAnimOffsetsDiag[animStep];

	u8 distX = BallBaseDistX[calcDir] + ((calcDir==DIRECTION_UP || calcDir==DIRECTION_DOWN) ? 0 : (calcDir == DIRECTION_LEFT || calcDir == DIRECTION_RIGHT ? currentOffset : currentOffsetDiag));
	u8 distY = BallBaseDistY[calcDir] + ((calcDir==DIRECTION_LEFT || calcDir==DIRECTION_RIGHT) ? 0 : (calcDir == DIRECTION_UP || calcDir == DIRECTION_DOWN ? currentOffset : currentOffsetDiag));

	// Special adjustment: Goalkeepers closer to body (Both Teams)
	if (g_Players[playerId].Role == PLAYER_ROLE_GOALKEEPER) {
		distY = (distY > 2) ? (distY - 2) : distY; // bring ball 2px closer vertically
	}

	i8 extraX = 0;

	switch (calcDir){
		case DIRECTION_UP:
			g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir] + extraX;
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN:
			g_Ball.X=g_Players[playerId].X + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_UP_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_UP_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y - distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN_LEFT:
			g_Ball.X=g_Players[playerId].X - distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
		case DIRECTION_DOWN_RIGHT:
			g_Ball.X=g_Players[playerId].X + distX + BallAlignCorrectX[calcDir];
			g_Ball.Y=g_Players[playerId].Y + distY + BallAlignCorrectY[calcDir];
			break;
	}
	g_Ball.Direction=dir;
}

// +++ Corner kick +++
void TickCornerKick() {
    if (g_MatchStatus != MATCH_BEFORE_CORNER_KICK) return;

    static u16 s_ForceKickTimer = 0;
    if (g_Timer == 0) s_ForceKickTimer = 0;

    // -------------------------------------------------------------------------
    // 1. DETERMINE KICKER ID (Centralized)
    // -------------------------------------------------------------------------
    u8 kickerId = NO_VALUE;
    if (g_Ball.PossessionPlayerId != NO_VALUE) {
        kickerId = g_Ball.PossessionPlayerId;
    } else {
        if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_LEFT_STRIKER);
        else kickerId = GetPlayerIdByRole(g_RestartKickTeamId, PLAYER_ROLE_RIGHT_STRIKER);
    }
    
    // Safety check: if Kicker is still NO_VALUE (shouldn't happen), try closest to corner
    if (kickerId == NO_VALUE) {
         kickerId = GetClosestPlayerToBall(g_RestartKickTeamId, NO_VALUE);
    }

    // -------------------------------------------------------------------------
    // 2. SETUP PHASE (0-3 Seconds: Position Players)
    // -------------------------------------------------------------------------
    
    // Check arrival (Kicker)
    bool kickerArrived = false;
    if (kickerId != NO_VALUE) {
         i16 dx = (i16)g_Players[kickerId].X - (i16)g_Players[kickerId].TargetX;
         i16 dy = (i16)g_Players[kickerId].Y - (i16)g_Players[kickerId].TargetY;
         
         if (dx >= -2 && dx <= 2 && dy >= -2 && dy <= 2) {
             kickerArrived = true;
             g_Players[kickerId].X = g_Players[kickerId].TargetX;
             g_Players[kickerId].Y = g_Players[kickerId].TargetY;
             g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED;
             
             if (g_Ball.PossessionPlayerId != kickerId) {
                 SetPlayerBallPossession(kickerId);
                 g_Ball.PossessionPlayerId = kickerId;
                 PutBallOnPlayerFeet(kickerId);
             }
         }
    }
    
    // Check arrival (Teammates)
    bool teammatesArrived = true;
    for(u8 i=0; i<14; i++) {
        if (g_Players[i].TeamId == g_RestartKickTeamId && i != kickerId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
             // If not positioned, check distance
             if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                 i16 dx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
                 i16 dy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
                 if (dx < -6 || dx > 6 || dy < -6 || dy > 6) {
                     teammatesArrived = false; // Someone is still far away
                 } else {
                     // Force arrival if close
                     g_Players[i].X = g_Players[i].TargetX;
                     g_Players[i].Y = g_Players[i].TargetY;
                     g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                 }
             }
        }
    }

    // Wait until timer finishes AND everyone has arrived
    if (g_Timer < 180 || (kickerId != NO_VALUE && !kickerArrived) || !teammatesArrived) {
        if (g_Timer < 180) g_Timer++;
        
        // ORIENTATION UPDATE
        for(u8 i=0; i<14; i++) {
             // Skip if player is not positioned (running to spot) - except kicker (handled above)
             if (i != kickerId && g_Players[i].Status != PLAYER_STATUS_POSITIONED && 
                 !(g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY)) continue;
             
             u8 lookDir = DIRECTION_NONE;
             
             if (i == kickerId) {
                  // Kicker: Face Pitch
                  if (g_RestartKickTeamId == TEAM_1) lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
                  else lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
             }
             else if (g_Players[i].TeamId == g_RestartKickTeamId) {
                  // Attackers: Face Goal or Corner
                  if (g_RestartKickTeamId == TEAM_1 && i != kickerId) { 
                      // Team 1 Receivers: Face Corner
                      lookDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_UP_LEFT : DIRECTION_UP_RIGHT;
                  } else {
                      // Others: Face Goal
                      lookDir = (g_RestartKickTeamId == TEAM_1) ? DIRECTION_UP : DIRECTION_DOWN;
                  }
             } else {
                  // Defenders: Face Ball
                  i16 dx = (i16)g_Ball.X - (i16)g_Players[i].X;
                  i16 dy = (i16)g_Ball.Y - (i16)g_Players[i].Y;
                  // Simple logic
                  if (dy < -20) lookDir = (dx > 20) ? DIRECTION_UP_RIGHT : ((dx < -20) ? DIRECTION_UP_LEFT : DIRECTION_UP);
                  else if (dy > 20) lookDir = (dx > 20) ? DIRECTION_DOWN_RIGHT : ((dx < -20) ? DIRECTION_DOWN_LEFT : DIRECTION_DOWN);
                  else lookDir = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
             }
             
             if (lookDir != DIRECTION_NONE) {
                  g_Players[i].Direction = lookDir;
                  g_Players[i].PatternId = CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,lookDir);
             }
        }
        return; // END SETUP PHASE
    }

    // Move Text Clearing to here: When actually starting the action
    V9990_ClearTextFromLayerA(10, 12, 11);

    // -------------------------------------------------------------------------
    // 3. ACTION PHASE (Movement/Kick)
    // -------------------------------------------------------------------------
    
    // Safety Force Kicker Position (Again)
    if (kickerId != NO_VALUE) {
         g_Players[kickerId].X = g_Players[kickerId].TargetX;
         g_Players[kickerId].Y = g_Players[kickerId].TargetY;
    }
    
    bool isHuman = (g_RestartKickTeamId == TEAM_1 || (g_GameWith2Players && g_RestartKickTeamId == TEAM_2));
    
    // Timeout Logic (4 seconds = 240 frames)
    if (isHuman) s_ForceKickTimer++;

    if (isHuman) {
       
        // --- TEAM 1 HUMAN (North) ---
        u8 candLeft = NO_VALUE;
        u8 candRight = NO_VALUE;
        
        for(u8 c=0; c<14; c++) {
             if (g_Players[c].TeamId == TEAM_1 && c != kickerId && g_Players[c].Role != PLAYER_ROLE_GOALKEEPER) {
                  u8 tx = g_Players[c].TargetX;
                  // Widened ranges to ensure we catch the players even if they are slightly off
                  if (tx >= 40 && tx <= 110) candLeft = c;
                  if (tx >= 130 && tx <= 220) candRight = c;
             }
        }
        if (candLeft == NO_VALUE) candLeft = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_LEFT_HALFFIELDER);
        if (candRight == NO_VALUE) candRight = GetPlayerIdByRole(TEAM_1, PLAYER_ROLE_RIGHT_HALFFIELDER);
        // Default
        if (g_CornerKickTargetId == NO_VALUE) {
             if (candLeft != NO_VALUE) g_CornerKickTargetId = candLeft;
             else if (candRight != NO_VALUE) g_CornerKickTargetId = candRight; 
        }
        
        // Input
        u8 joyDir = GetJoystickDirection();
        static bool joyMoved = false;
        
        if (joyDir == DIRECTION_LEFT && !joyMoved && candLeft != NO_VALUE) {
            g_CornerKickTargetId = candLeft; joyMoved = true;
        } else if (joyDir == DIRECTION_RIGHT && !joyMoved && candRight != NO_VALUE) {
            g_CornerKickTargetId = candRight; joyMoved = true;
        } else if (joyDir == DIRECTION_NONE) {
            joyMoved = false;
        }
        
        // Correction removed to avoid instability. We trust the selection.
        
        // --- KICKER LOCK RE-ENFORCE ---
        // Re-apply kicker lock here to prevent Input from rotating him
        if (kickerId != NO_VALUE) {
            u8 kDir = (g_CornerKickSide == CORNER_SIDE_LEFT) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
            g_Players[kickerId].Direction = kDir;
            g_Players[kickerId].PatternId = CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,kDir);
            g_Players[kickerId].X = g_Players[kickerId].TargetX;
            g_Players[kickerId].Y = g_Players[kickerId].TargetY;
            // Override status so MovePlayer might skip him if he has ball
            g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; 
        }
        // Trigger
        bool t1Trigger = CallFnc_U8(5,IsJoystickTriggerPressed);
        static bool t1Latched = false;
        if (g_Timer == 180) t1Latched = true;
        if (!t1Trigger) t1Latched = false;
        
        // Highlight
        if (g_CornerKickTargetId != NO_VALUE) {
            g_Ball.PassTargetPlayerId = g_CornerKickTargetId;
            g_PassTargetPlayer = g_CornerKickTargetId;
        }
        if ((t1Trigger && !t1Latched || s_ForceKickTimer > 240) && g_CornerKickTargetId != NO_VALUE) {
            CallFnc_VOID_P1(5,PerformPass,g_CornerKickTargetId);
            g_MatchStatus = MATCH_IN_ACTION;
            g_CornerKickTargetId = NO_VALUE;
        }
    
    } 
    else {
        // --- CPU LOGIC (Team 2 Standard) ---
        if (g_CornerKickTargetId == NO_VALUE) {
             u8 randomRole = ((g_Timer & 1) == 0) ? PLAYER_ROLE_LEFT_STRIKER : PLAYER_ROLE_RIGHT_STRIKER;
             u8 strikerId = GetPlayerIdByRole(g_RestartKickTeamId, randomRole);
             
             // Ensure we don't pick kicker or invalid
             if (strikerId != NO_VALUE && strikerId != kickerId) {
                 g_CornerKickTargetId = strikerId;
             } else {
                 g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
             }
        }
        
        if (g_Timer > 200) {
             if (g_CornerKickTargetId == NO_VALUE) g_CornerKickTargetId = GetClosestPlayerToBall(g_RestartKickTeamId, kickerId);
             
             CallFnc_VOID_P1(5,PerformPass,g_CornerKickTargetId);
             g_MatchStatus = MATCH_IN_ACTION; 
             g_CornerKickTargetId = NO_VALUE;
        } else {
            g_Timer++;
        }
    }
}
