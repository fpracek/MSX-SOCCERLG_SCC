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
#include "memory.h"
#include "libs/vgm/vgm_player.h"

// -----------------
// *** FUNCTIONS ***
// -----------------

void PenaltyShots() {
    while(g_LastTimeCounter+2<g_TimeCounter){
        V9990_WaitSynch();
    }
    g_MatchStatus = MATCH_PENALTY_SETUP;
    g_FieldScrollingActionInProgress = NO_VALUE;
    
    // 1. Scroll to Midfield
    u16 centerScroll = FIELD_CENTRAL_Y;
    while (g_FieldCurrentYPosition != centerScroll) {
        if (g_FieldCurrentYPosition < centerScroll) g_FieldCurrentYPosition++;
        else g_FieldCurrentYPosition--;
        //V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
        CallFnc_VOID(6,UpdateSpritesPositions);
        V9990_WaitSynch();
    }
    
    //ClearTextFromLayerA(0, 0, 32); 
	CallFnc_VOID(9,ShowHeaderInfo);
    // --- INTRO TEXT ---
    V9990_PrintLayerAStringAtPos(8, 10, "PENALTY SHOOTOUT");
    for(u8 w=0; w<120; w++) V9990_WaitSynch();
    V9990_ClearTextFromLayerA(8, 10, 16);
    
    // 2. Set Targets for Midfield Gathering
    for(u8 i=0; i<15; i++) {
        g_Players[i].Status = PLAYER_STATUS_NONE;
        
        if (i < 7) { // Team 2 (Top)
             g_Players[i].TargetY = 220 + (i/4)*15; 
             g_Players[i].TargetX = 80 + (i%4)*25;
        } else if (i < 14) { // Team 1 (Bottom)
             u8 k = i - 7;
             g_Players[i].TargetY = 260 + (k/4)*15;
             g_Players[i].TargetX = 80 + (k%4)*25;
        } else { // Referee
             g_Players[i].TargetX = 128;
             g_Players[i].TargetY = 243; // Midfield
        }
    }
    
    // 3. Walk to Midfield Loop
    while(true) {
        bool allArrived = true;
        for(u8 i=0; i<15; i++) {
            bool arrived = true;
            if (g_Players[i].X < g_Players[i].TargetX) { g_Players[i].X++; arrived=false; g_Players[i].Direction = DIRECTION_RIGHT; }
            else if (g_Players[i].X > g_Players[i].TargetX) { g_Players[i].X--; arrived=false; g_Players[i].Direction = DIRECTION_LEFT; }
            
            if (g_Players[i].Y < g_Players[i].TargetY) { g_Players[i].Y++; arrived=false; g_Players[i].Direction = DIRECTION_DOWN; }
            else if (g_Players[i].Y > g_Players[i].TargetY) { g_Players[i].Y--; arrived=false; g_Players[i].Direction = DIRECTION_UP; }
            
            if (!arrived) {
                allArrived = false;
                g_Players[i].Status = PLAYER_STATUS_NONE;
            } else {
                g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                if (g_Players[i].Y < 243) g_Players[i].Direction = DIRECTION_DOWN;
                else g_Players[i].Direction = DIRECTION_UP;
                g_Players[i].PatternId = (g_Players[i].Direction == DIRECTION_UP) ? PLAYER_POSE_BACK : PLAYER_POSE_FRONT;
            }
        }
        CallFnc_VOID(6,UpdateSpritesPositions);
        V9990_WaitSynch();
        if (allArrived) break;
    }
    
    g_MatchStatus = MATCH_PENALTY_SHOOTOUT;

    u8 turn = 0;
    u8 shots1 = 0;
    u8 shots2 = 0;
    u8 goals1 = 0;
    u8 goals2 = 0;

    u8 h1_idx = 4;
    u8 h2_idx = 4;
    
    g_Ball.Size = 1;
    g_Ball.KickMoveState = 0; // Ensure no dribble offset interferes with Y
    
    while(true) {
        V9990_WaitSynch();
        
        // --- CHECK WIN CONDITION ---
        if (turn < 10) {
            u8 rem1 = 5 - shots1;
            u8 rem2 = 5 - shots2;
            if (goals1 > goals2 + rem2) { CallFnc_VOID_P1(13,TeamVictory,TEAM_1); return; }
            if (goals2 > goals1 + rem1) { CallFnc_VOID_P1(13,TeamVictory,TEAM_2); return; }
        } else {
            // Sudden death (check after equal number of shots)
            if (shots1 == shots2) {
                if (goals1 > goals2) { CallFnc_VOID_P1(13,TeamVictory,TEAM_1); return; }
                if (goals2 > goals1) { CallFnc_VOID_P1(13,TeamVictory,TEAM_2); return; }
            }
        }
        
        // --- SETUP TURN ---
        u8 kickingTeam = (turn % 2 == 0) ? TEAM_1 : TEAM_2;
        u8 gkTeam = (kickingTeam == TEAM_1) ? TEAM_2 : TEAM_1;
        
        u8 kickerId = NO_VALUE;
        u8 gkId = NO_VALUE;
        
        if (kickingTeam == TEAM_1) {
            u8 k = 8 + ((turn/2) % 6); // Team 1 players 8-13
            kickerId = k;
            gkId = 0; // Team 2 GK
        } else {
            u8 k = 1 + ((turn/2) % 6); // Team 2 players 1-6
            kickerId = k;
            gkId = 7; // Team 1 GK
        }
        
        // Targets (Penalty Area)
        u16 kickSpotX = FIELD_POS_X_CENTER;
        u16 kickSpotY = FIELD_BOUND_Y_TOP + 47; // Penalty Spot (Moved North)
        u16 gkSpotY = FIELD_BOUND_Y_TOP + 4;    // Goal Line
        
        g_Players[kickerId].TargetX = kickSpotX;
        g_Players[kickerId].TargetY = kickSpotY + 6; // Player stands behind ball
        g_Players[gkId].TargetX = kickSpotX;
        g_Players[gkId].TargetY = gkSpotY;

        // Referee Target (Penalty Area - Left side outside box)
        g_Players[REFEREE].TargetX = 50;
        g_Players[REFEREE].TargetY = kickSpotY; 
        
        g_Players[kickerId].Status = PLAYER_STATUS_NONE;
        g_Players[gkId].Status = PLAYER_STATUS_NONE;
        g_Players[REFEREE].Status = PLAYER_STATUS_NONE;
        
        // Place ball on penalty spot
        g_Ball.PossessionPlayerId = NO_VALUE;
        g_Ball.X = kickSpotX;
        g_Ball.Y = kickSpotY; // Ball exactly on spot
        g_Ball.KickMoveState = 0;
        g_BallIsVisible=TRUE;
        CallFnc_VOID(6,UpdateSpritesPositions);
        // --- WALK TO GOAL LOOP ---
        while(true) {
            V9990_WaitSynch();
            
            // Move Kicker
            bool kDone = true;
            if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
            else if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
            
            if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; g_Players[kickerId].Direction=DIRECTION_LEFT; }
            else if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; g_Players[kickerId].Direction=DIRECTION_RIGHT; }
            
            // Move GK
            bool gDone = true;
            if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
            else if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
            
            if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; g_Players[gkId].Direction=DIRECTION_LEFT; }
            else if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; g_Players[gkId].Direction=DIRECTION_RIGHT; }
            
            // Move Referee
            bool rDone = true;
            if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
            else if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
            
            if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }
            else if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
            
            // ANIMATION THROTTLE: Update pose only every 8 frames to simulate walking
            u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
            g_Players[kickerId].Status = animStatus;
            g_Players[gkId].Status = animStatus;
            g_Players[REFEREE].Status = animStatus;

      
            // Camera Follow GK (Smooth Tracking)
            i16 targetCamY = (i16)g_Players[gkId].Y - 106;
            if (targetCamY < 0) targetCamY = 0;
            if (targetCamY > FIELD_CENTRAL_Y) targetCamY = FIELD_CENTRAL_Y;
            
            if (g_FieldCurrentYPosition > targetCamY) g_FieldCurrentYPosition--;
            else if (g_FieldCurrentYPosition < targetCamY) g_FieldCurrentYPosition++;
            
            CallFnc_VOID(6,UpdateSpritesPositions);
            
            if (kDone && gDone && rDone && g_FieldCurrentYPosition == 0) {
                g_ActiveFieldZone = FIELD_NORTH_ZONE;
                break;
            }
        }
        g_VblankSuspended=TRUE; 
        // Prepare for Shot
        g_Players[kickerId].Direction = DIRECTION_UP;
        g_Players[kickerId].PatternId = PLAYER_POSE_BACK;
        g_Players[gkId].Direction = DIRECTION_DOWN;
        g_Players[gkId].PatternId = PLAYER_POSE_FRONT;
        g_Players[REFEREE].PatternId = PLAYER_POSE_RIGHT;
        
        g_Ball.PossessionPlayerId = NO_VALUE;
        g_Ball.X = kickSpotX;
        g_Ball.Y = kickSpotY;
        g_BallIsVisible=TRUE;
        CallFnc_VOID(6,UpdateSpritesPositions);
        V9990_PrintLayerAStringAtPos(10,22, g_History1);
        V9990_PrintLayerAStringAtPos(10,23, g_History2);

        
        for(u8 w=0; w<60; w++) V9990_WaitSynch();
        PlayPCM(PCM_REFEREER);
        // --- AIM / DECIDE ---
        u16 targetX = FIELD_POS_X_CENTER;
        u8 shotDirIdx = 1; // 0=Left, 1=Center, 2=Right
        bool shotTaken = false;
        u8 playerGkChoice = 1; // 0=Left, 1=Center, 2=Right
        
        if (kickingTeam == TEAM_1) {
            g_ShotCursorX = FIELD_POS_X_CENTER;
            i8 aimPos = 1;
            i8 aimDir = 1;
            u16 moveTimer = 0;
            u16 timeoutTimer = 0;

            while(!shotTaken) {
                V9990_WaitSynch();
                
                // Auto-move cursor
                moveTimer++;
                if (moveTimer > 8) { // Speed of cursor
                    moveTimer = 0;
                    aimPos += aimDir;
                    if (aimPos >= 2) {
                        aimPos = 2;
                        aimDir = -1;
                    } else if (aimPos <= 0) {
                        aimPos = 0;
                        aimDir = 1;
                    }
                }

                if (aimPos == 0) g_ShotCursorX = GOAL_X_MIN;
                else if (aimPos == 1) g_ShotCursorX = FIELD_POS_X_CENTER;
                else g_ShotCursorX = GOAL_X_MAX;
                
                struct V9_Sprite attr;
                attr.Y = FIELD_BOUND_Y_TOP - 20 - g_FieldCurrentYPosition;
                attr.X = g_ShotCursorX;
                attr.Pattern = SPRITE_DOWN_ARROW;
                attr.P = 1; attr.SC = 0; attr.D = 0;
                V9_SetSpriteP1(16, &attr);
                
                timeoutTimer++;
                bool joyTrigged = CallFnc_U8(5,IsJoystickTriggerPressed);
                if (joyTrigged || timeoutTimer >= 300) {
                    targetX = g_ShotCursorX;
                    shotDirIdx = (u8)aimPos;
                    shotTaken = true;
                    attr.D = 1;
                    V9_SetSpriteP1(16, &attr);
                }
            }
        } else {
            // CPU Shot
            shotDirIdx = g_FrameCounter % 3;
            if (shotDirIdx == 0) targetX = GOAL_X_MIN;
            else if (shotDirIdx == 1) targetX = FIELD_POS_X_CENTER;
            else targetX = GOAL_X_MAX;

            // Wait loop allowing Player GK to choose direction
            for(u8 w=0; w<120; w++) {
                V9990_WaitSynch();
                u8 joy = CallFnc_U8(4,GetJoystickDirection);
                if (joy == DIRECTION_LEFT) playerGkChoice = 0;
                else if (joy == DIRECTION_RIGHT) playerGkChoice = 2;
                // If none, keep previous choice (sticky) or default center
            }
            shotTaken = true;
        }
        
        // --- EXECUTE SHOT ---
        u16 ballTimer = 0;
        bool goal = false;
        bool saved = false;
        u8 gkDiveDir = DIRECTION_NONE; 
        u8 gkChoice = 1;
        
        if (kickingTeam == TEAM_1) {
            // CPU GK Logic
            u8 gkCountryId = (gkTeam == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
            
            if (gkCountryId == TEAM_GER) {
                 // Germany: 80% Save, 20% Random
                 u8 rnd = g_FrameCounter % 100;
                 if (rnd < 80) gkChoice = shotDirIdx; // Save
                 else gkChoice = (g_FrameCounter * 7 + 3) % 3; // Random
            } else {
                 // Others: Random
                 gkChoice = (g_FrameCounter * 7 + 3) % 3;
            }
        } else {
            // Player GK Logic
            gkChoice = playerGkChoice;
        }
        
        if (gkChoice == 0) gkDiveDir = DIRECTION_LEFT;
        else if (gkChoice == 2) gkDiveDir = DIRECTION_RIGHT;
        else gkDiveDir = DIRECTION_NONE;
        PlayAyFx(AYFX_BALL);
        while (ballTimer < 60) {
            V9990_WaitSynch();
            ballTimer++;
            
            i16 dx = (i16)targetX - (i16)g_Ball.X;
            i16 dy = (i16)(FIELD_BOUND_Y_TOP - 10) - (i16)g_Ball.Y;
            
            g_Ball.Y -= 6;
            g_Ball.X += (dx / 8); 
            
            if (ballTimer < 20) {
                if (gkDiveDir == DIRECTION_LEFT) {
                    g_Players[gkId].X -= 3;
                    g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
                } else if (gkDiveDir == DIRECTION_RIGHT) {
                    g_Players[gkId].X += 3;
                    g_Players[gkId].PatternId = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
                }
            }
            
            if (g_Ball.Y <= FIELD_BOUND_Y_TOP + 8) {
                if (gkChoice == shotDirIdx) {
                    saved = true;
                } else {
                    goal = true;
                }
                
                if (saved) break;
            }
            
            if (goal) {
                 if (g_Ball.Y <= FIELD_BOUND_Y_TOP - 10) break;
            }
            CallFnc_VOID(6,UpdateSpritesPositions);
        }
        
        char resChar = ' ';
        if (goal) {
            resChar = 'O'; // Uppercase for visibility
            if (kickingTeam == TEAM_1) goals1++; else goals2++;
            V9990_PrintLayerAStringAtPos(12, 10, "IN  GOAL");
            PlayPCM(PCM_INGOAL);
            PlayVGM(VGM_PUBLIC_GOAL);
            g_peopleState=!g_peopleState;
	        CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
        } else {
            resChar = 'X'; // Uppercase for visibility
            PlayAyFx(AYFX_BALL_ON_GOALKEEPER);
            V9990_PrintLayerAStringAtPos(14, 10, saved ? "SAVED" : "MISS");
        }
        
        if (kickingTeam == TEAM_1) { if(h1_idx < 19) { g_History1[h1_idx++] = resChar; g_History1[h1_idx] = 0; } shots1++; } 
        else { if(h2_idx < 19) { g_History2[h2_idx++] = resChar; g_History2[h2_idx] = 0; } shots2++; }
        if (goal) {
            g_peopleState=!g_peopleState;
	        CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
        }
        // Update Labels Immediately
        V9990_PrintLayerAStringAtPos(10, 22, g_History1);
        V9990_PrintLayerAStringAtPos(10, 23, g_History2);

        for(u8 w=0; w<120; w++) V9990_WaitSynch();
        
        if (goal) {
            g_peopleState=!g_peopleState;
	        CallFnc_VOID_P1(7,PeopleMoving,g_peopleState);
        }

        V9990_ClearTextFromLayerA(12, 10, 10);
        g_BallIsVisible=FALSE;

        // --- WALK BACK LOOP ---
        g_VblankSuspended=FALSE;
        // Set targets back to midfield slots
        if (kickerId < 7) {
             g_Players[kickerId].TargetY = 220 + (kickerId/4)*15; 
             g_Players[kickerId].TargetX = 80 + (kickerId%4)*25;
        } else {
             u8 k = kickerId - 7;
             g_Players[kickerId].TargetY = 260 + (k/4)*15;
             g_Players[kickerId].TargetX = 80 + (k%4)*25;
        }
        
        // Same for GK
        if (gkId < 7) {
             g_Players[gkId].TargetY = 220 + (gkId/4)*15; 
             g_Players[gkId].TargetX = 80 + (gkId%4)*25;
        } else {
             u8 k = gkId - 7;
             g_Players[gkId].TargetY = 260 + (k/4)*15;
             g_Players[gkId].TargetX = 80 + (k%4)*25;
        }
       

        // Referee back to midfield
        g_Players[REFEREE].TargetX = 128;
        g_Players[REFEREE].TargetY = 243;
        
        while(true) {
            V9990_WaitSynch();
            bool kDone = true;
            bool gDone = true;
            bool rDone = true;

            // Move Kicker
            if (g_Players[kickerId].Y < g_Players[kickerId].TargetY) { g_Players[kickerId].Y++; kDone=false; g_Players[kickerId].Direction=DIRECTION_DOWN; }
            else if (g_Players[kickerId].Y > g_Players[kickerId].TargetY) { g_Players[kickerId].Y--; kDone=false; g_Players[kickerId].Direction=DIRECTION_UP; }
            
            if (g_Players[kickerId].X < g_Players[kickerId].TargetX) { g_Players[kickerId].X++; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_RIGHT; }
            else if (g_Players[kickerId].X > g_Players[kickerId].TargetX) { g_Players[kickerId].X--; kDone=false; if(g_Players[kickerId].Direction==DIRECTION_NONE) g_Players[kickerId].Direction=DIRECTION_LEFT; }
            
            // Move GK
            if (g_Players[gkId].Y < g_Players[gkId].TargetY) { g_Players[gkId].Y++; gDone=false; g_Players[gkId].Direction=DIRECTION_DOWN; }
            else if (g_Players[gkId].Y > g_Players[gkId].TargetY) { g_Players[gkId].Y--; gDone=false; g_Players[gkId].Direction=DIRECTION_UP; }
            
            if (g_Players[gkId].X < g_Players[gkId].TargetX) { g_Players[gkId].X++; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_RIGHT; }
            else if (g_Players[gkId].X > g_Players[gkId].TargetX) { g_Players[gkId].X--; gDone=false; if(g_Players[gkId].Direction==DIRECTION_NONE) g_Players[gkId].Direction=DIRECTION_LEFT; }
            
            // Move Referee
            if (g_Players[REFEREE].Y < g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_DOWN; }
            else if (g_Players[REFEREE].Y > g_Players[REFEREE].TargetY) { g_Players[REFEREE].Y--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_UP; }
            
            if (g_Players[REFEREE].X < g_Players[REFEREE].TargetX) { g_Players[REFEREE].X++; rDone=false; g_Players[REFEREE].Direction=DIRECTION_RIGHT; }
            else if (g_Players[REFEREE].X > g_Players[REFEREE].TargetX) { g_Players[REFEREE].X--; rDone=false; g_Players[REFEREE].Direction=DIRECTION_LEFT; }

            // ANIMATION THROTTLE
            u16 animStatus = ((g_FrameCounter % 8) == 0) ? PLAYER_STATUS_NONE : PLAYER_STATUS_POSITIONED;
            
            // Animation
            if (goal) {
                 // Celebration (Hands Up/Down)
                 u8 anim = (g_FrameCounter / 8) % 2;
                 g_Players[kickerId].PatternId = (anim == 0) ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
                 g_Players[kickerId].Status = PLAYER_STATUS_POSITIONED; // Lock pattern
            } else {
                 g_Players[kickerId].Status = animStatus;
            }
            
            g_Players[gkId].Status = animStatus;
            g_Players[REFEREE].Status = animStatus;
            
            // Camera Scroll (Return to 137)
            if (g_FieldCurrentYPosition < FIELD_CENTRAL_Y) g_FieldCurrentYPosition++;
            
            //V9_SetScrollingBY((u16)g_FieldCurrentYPosition);
            CallFnc_VOID(6,UpdateSpritesPositions);
            
            if (kDone && gDone && rDone && g_FieldCurrentYPosition >= FIELD_CENTRAL_Y) break;
        }
        
        // Reset all players to standing pose to clear celebration
        for(u8 i=0; i<15; i++) {
            if (g_Players[i].Y < 243) {
                g_Players[i].Direction = DIRECTION_DOWN;
                g_Players[i].PatternId = PLAYER_POSE_FRONT;
            } else {
                g_Players[i].Direction = DIRECTION_UP;
                g_Players[i].PatternId = PLAYER_POSE_BACK;
            }
            g_Players[i].Status = PLAYER_STATUS_POSITIONED;
        }
        
        CallFnc_VOID(6,UpdateSpritesPositions);


        VGM_Stop();
        turn++;
    }
}
