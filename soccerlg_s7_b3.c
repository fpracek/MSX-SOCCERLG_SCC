
// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "v9990.h"
#include "soccerlg.h"
#include "debug.h"


// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Kick Off +++
void CornerKick(u8 teamId){
	// Placeholder for Corner Kick Logic
	V9990_PrintLayerAStringAtPos(10,12,"CORNER KICK");
	PlayPCM(PCM_REFEREER);
     PlayPCM(PCM_CORNERKICK);
	g_MatchStatus=MATCH_BEFORE_CORNER_KICK;
	g_RestartKickTeamId = teamId;
	g_CornerKickTargetId = NO_VALUE;
	g_Timer = 0;
	
    // Detect side based on Ball X
    if (g_Ball.X < FIELD_POS_X_CENTER) g_CornerKickSide = CORNER_SIDE_LEFT;
    else g_CornerKickSide = CORNER_SIDE_RIGHT;
    
    // Position Players
    u8 kickerId = NO_VALUE;
    // Find kick spot
    u16 kickX = (g_CornerKickSide == CORNER_SIDE_LEFT) ? FIELD_BOUND_X_LEFT : FIELD_BOUND_X_RIGHT;
    u16 kickY = (teamId == TEAM_1) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;

    // Force Camera Scroll to the Corner Zone
    if (teamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
    else g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
    
    // Pick Kicker (Attacking Striker on the Ball Side)
    // NOTE: If Left Corner, we pick Left Striker to kick.
    if (g_CornerKickSide == CORNER_SIDE_LEFT) kickerId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_LEFT_STRIKER);
    else kickerId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_RIGHT_STRIKER);
    
    // Reset Possession (Ball sits at flag until player arrives)
    g_Ball.PossessionPlayerId = NO_VALUE; 
    CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE);
    if(teamId == TEAM_1) g_Team1ActivePlayer = kickerId; // Ensure kicker is selected active
    else g_Team2ActivePlayer = kickerId;
    
    // Position Ball with Offsets for visibility
    // Index: 0=T1_L, 1=T1_R, 2=T2_L, 3=T2_R
    // u8 cornerIdx = (teamId == TEAM_1 ? 0 : 2) + g_CornerKickSide;
    // const i8 ballOffsetX[4] = { 0, 0, 0, -30 };
    // const i8 ballOffsetY[4] = { 0, 0, 0, -5 };
    
    i8 offX = 0; i8 offY = 0;
    if (teamId == TEAM_2 && g_CornerKickSide == CORNER_SIDE_RIGHT) {
         offX = -30;
         offY = -5;
    }

    g_Ball.X = kickX + offX;
    g_Ball.Y = kickY + offY;
    g_Ball.PreviousY = g_Ball.Y;
    
    // DEFINE COORDINATES RELATIVE TO ATTACK DIRECTION
    // Team 1 attacks UP (Goal Y ~ 50). Team 2 attacks DOWN (Goal Y ~ 430).
    bool attackingUp = (teamId == TEAM_1);
    
    // Y Coordinates for Positioning
    u16 yGoalLine      = (attackingUp) ? FIELD_BOUND_Y_TOP : FIELD_BOUND_Y_BOTTOM;
    u16 yBoxInside     = (attackingUp) ? (FIELD_BOUND_Y_TOP + 40) : (FIELD_BOUND_Y_BOTTOM - 40);
    u16 yBoxOutside    = (attackingUp) ? (FIELD_BOUND_Y_TOP + 90) : (FIELD_BOUND_Y_BOTTOM - 90);
    u16 yMidfieldAdv   = (attackingUp) ? (FIELD_BOUND_Y_TOP + 160) : (FIELD_BOUND_Y_BOTTOM - 160);
    u16 yMidfield      = FIELD_POS_Y_CENTER;
    u16 ySafety        = (attackingUp) ? (FIELD_BOUND_Y_BOTTOM - 100) : (FIELD_BOUND_Y_TOP + 100);

    for(u8 i=0; i<14; i++) {
        g_Players[i].Status = PLAYER_STATUS_NONE;
        g_Players[i].TargetX = g_Players[i].X;
        g_Players[i].TargetY = g_Players[i].Y;
        
        u8 role = g_Players[i].Role;
        bool isAttacker = (g_Players[i].TeamId == teamId);
        
        // Kicker
        if (i == kickerId) {
             g_Players[i].TargetX = kickX;
             g_Players[i].TargetY = kickY;
             continue;
        } 
        
        if (isAttacker) {
             // --- ATTACKING TEAM ---
             if (role == PLAYER_ROLE_GOALKEEPER) {
                  // Own GK stays back
                  g_Players[i].TargetX = FIELD_POS_X_CENTER;
                  g_Players[i].TargetY = (attackingUp) ? FIELD_BOUND_Y_BOTTOM - 20 : FIELD_BOUND_Y_TOP + 20;
             }
             else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
                  if (role == PLAYER_ROLE_LEFT_DEFENDER) {
                      // Defender 1: Advanced Midfield
                       g_Players[i].TargetX = FIELD_POS_X_CENTER - 30;
                       g_Players[i].TargetY = yMidfieldAdv;
                  } else {
                       // Defender 2: Safety / Defense
                       g_Players[i].TargetX = FIELD_POS_X_CENTER;
                       g_Players[i].TargetY = ySafety;
                  }
             }
             else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                  if (role == PLAYER_ROLE_LEFT_HALFFIELDER) {
                       // Halffielder 1: Outside Box (Vertex Left/Center)
                       g_Players[i].TargetX = FIELD_POS_X_CENTER - 50; 
                       g_Players[i].TargetY = yBoxOutside;
                  } else {
                       // Halffielder 2: Advanced Midfield (Center/Right)
                       g_Players[i].TargetX = FIELD_POS_X_CENTER + 30;
                       g_Players[i].TargetY = yMidfieldAdv;
                  }
             }
             else { 
                  // Strikers (The one not kicking)
                  // "Outside Box (Vertex)"
                  g_Players[i].TargetX = FIELD_POS_X_CENTER + 50;
                  g_Players[i].TargetY = yBoxOutside;
             }
        } 
        else {
             // --- DEFENDING TEAM ---
             if (role == PLAYER_ROLE_GOALKEEPER) {
                  // Defending GK in goal
                  g_Players[i].TargetX = FIELD_POS_X_CENTER;
                  g_Players[i].TargetY = (attackingUp) ? FIELD_POS_Y_TEAM2_GOALKEEPER : FIELD_POS_Y_TEAM1_GOALKEEPER;
             }
             else if (role == PLAYER_ROLE_LEFT_DEFENDER || role == PLAYER_ROLE_RIGHT_DEFENDER) {
                  // Defenders: INSIDE BOX
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_DEFENDER) ? FIELD_POS_X_CENTER - 20 : FIELD_POS_X_CENTER + 20;
                  g_Players[i].TargetY = yBoxInside;
             }
             else if (role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                  // Halffielders: JUST OUTSIDE BOX (Marking distance)
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_HALFFIELDER) ? FIELD_POS_X_CENTER - 40 : FIELD_POS_X_CENTER + 40;
                  g_Players[i].TargetY = yBoxOutside;
             }
             else {
                  // Strikers: NEAR MIDFIELD (Counter)
                  g_Players[i].TargetX = (role == PLAYER_ROLE_LEFT_STRIKER) ? FIELD_POS_X_LEFT + 20 : FIELD_POS_X_RIGHT - 20;
                  g_Players[i].TargetY = yMidfield;
             }
        }
    }
}
// +++ People moving on goal +++
void PeopleMoving(bool isBasicMoving){
    u16 tileId=PUBLIC_TILE_1;
    u8  yPosition=0;
    if(!g_ActiveFieldZone==FIELD_NORTH_ZONE){
        yPosition=62;
    }


    if(!isBasicMoving){
        tileId=PUBLIC_TILE_2;
    }
    for (u8 y=yPosition;y<yPosition+2;y++){
		for (u8 x=0;x<32;x++){
			V9_Poke16(V9_CellAddrP1B(x,y), tileId);
		}
	}
}
// +++ Put Pon Pon Girl Sprite +++
void PutPonPonGirlSprite(u8 ponPonGirlId){
	struct V9_Sprite attr;
	attr.D=!g_PonPonGirlsAreVisible;
	
	attr.SC=0;
    int diffY = (int)g_PonPonGirls[ponPonGirlId].Y - g_FieldCurrentYPosition;
	attr.X=g_PonPonGirls[ponPonGirlId].X;
	if(diffY < -32 || diffY > 212){
		attr.D=1;
        attr.Y=216; // Force off-screen
	} else {
        attr.Y=(u8)diffY;
	}
	attr.Pattern = g_PonPonGirls[ponPonGirlId].PatternId;
	attr.P = 1;
	V9_SetSpriteP1(ponPonGirlId+20, &attr);
}

// +++ Throw in +++
void TickThrowIn() {
    if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;

    static u16 s_Timeout = 0;
    static u8 s_Receivers[2];
    static u8 s_SelectedReceiverIdx = 0;

    u8 throwerId = g_ThrowInPlayerId;
    if (throwerId == NO_VALUE) {
        g_MatchStatus = MATCH_IN_ACTION; // Abort if no thrower
        return;
    }

    bool isLeft = (g_Players[throwerId].X < FIELD_POS_X_CENTER);

    // --- STATE 0: WAIT FOR THROWER ARRIVAL ---
    if (g_CornerKickTargetId == 0) {
        // Force ball to stay at the line until player arrives
        g_Ball.X = g_Players[throwerId].TargetX;
        g_Ball.Y = g_Players[throwerId].TargetY;

        i16 dx = (i16)g_Players[throwerId].X - (i16)g_Players[throwerId].TargetX;
        i16 dy = (i16)g_Players[throwerId].Y - (i16)g_Players[throwerId].TargetY;

        if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
            // Arrived
            g_Players[throwerId].X = g_Players[throwerId].TargetX;
            g_Players[throwerId].Y = g_Players[throwerId].TargetY;
            g_Players[throwerId].Status = PLAYER_STATUS_POSITIONED;
            
            // SELECT PLAYERS (2 Teammates, 2 Opponents)
            u8 t1_p1 = NO_VALUE, t1_p2 = NO_VALUE;
            u8 t2_p1 = NO_VALUE, t2_p2 = NO_VALUE;
            u16 d1_1 = 0xFFFF, d1_2 = 0xFFFF;
            u16 d2_1 = 0xFFFF, d2_2 = 0xFFFF;
            
            u8 throwerTeam = g_Players[throwerId].TeamId;
            
            for(u8 i=0; i<14; i++) {
                if (i == throwerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
                
                u16 d = Math_Abs32((i16)g_Players[i].X - (i16)g_Players[throwerId].X) + 
                        Math_Abs32((i16)g_Players[i].Y - (i16)g_Players[throwerId].Y);
                
                if (g_Players[i].TeamId == throwerTeam) {
                    // Teammate
                    if (d < d1_1) { d1_2 = d1_1; t1_p2 = t1_p1; d1_1 = d; t1_p1 = i; }
                    else if (d < d1_2) { d1_2 = d; t1_p2 = i; }
                } else {
                    // Opponent
                    if (d < d2_1) { d2_2 = d2_1; t2_p2 = t2_p1; d2_1 = d; t2_p1 = i; }
                    else if (d < d2_2) { d2_2 = d; t2_p2 = i; }
                }
            }
            
            // Set Targets
            i16 offsetX = isLeft ? 40 : -40; // Move towards center
            
            // Teammates
            if(t1_p1 != NO_VALUE) { g_Players[t1_p1].TargetX = g_Ball.X + offsetX; g_Players[t1_p1].TargetY = g_Ball.Y - 20; g_Players[t1_p1].Status = PLAYER_STATUS_NONE; }
            if(t1_p2 != NO_VALUE) { g_Players[t1_p2].TargetX = g_Ball.X + offsetX; g_Players[t1_p2].TargetY = g_Ball.Y + 20; g_Players[t1_p2].Status = PLAYER_STATUS_NONE; }
            
            // Opponents (Closer/Marking)
            if(t2_p1 != NO_VALUE) { g_Players[t2_p1].TargetX = g_Ball.X + (offsetX/2); g_Players[t2_p1].TargetY = g_Ball.Y - 10; g_Players[t2_p1].Status = PLAYER_STATUS_NONE; }
            if(t2_p2 != NO_VALUE) { g_Players[t2_p2].TargetX = g_Ball.X + (offsetX/2); g_Players[t2_p2].TargetY = g_Ball.Y + 10; g_Players[t2_p2].Status = PLAYER_STATUS_NONE; }
            
            // Stop others
             for(u8 i=0; i<14; i++) {
                 if (i == throwerId || i == t1_p1 || i == t1_p2 || i == t2_p1 || i == t2_p2) continue;
                 g_Players[i].TargetX = g_Players[i].X;
                 g_Players[i].TargetY = g_Players[i].Y;
                 g_Players[i].Status = PLAYER_STATUS_POSITIONED;
             }

            g_CornerKickTargetId = 1;
            g_Timer = 0;
        }
        return; // Wait for arrival
    }


    // --- STATE 1: WAIT FOR PLAYERS NEARBY ---
    if (g_CornerKickTargetId == 1) {
        g_Timer++;
        
        // Set static "holding ball" pose while waiting
        g_Ball.Y = g_Players[throwerId].Y - 12;
        g_Ball.X = g_Players[throwerId].X;
        g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
        g_Players[throwerId].Direction = isLeft ? DIRECTION_RIGHT : DIRECTION_LEFT;

        // Wait for players to arrive or timeout (2 seconds)
        if (g_Timer > 120) { 
            u16 d1 = 0xFFFF, d2 = 0xFFFF;
            s_Receivers[0] = NO_VALUE; s_Receivers[1] = NO_VALUE;
            for (u8 i = 0; i < 14; i++) {
                if (g_Players[i].TeamId != g_RestartKickTeamId || i == throwerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
                u16 d = Math_Abs32((i16)g_Players[i].X - (i16)g_Players[throwerId].X) + Math_Abs32((i16)g_Players[i].Y - (i16)g_Players[throwerId].Y);
                if (d < d1) { d2 = d1; s_Receivers[1] = s_Receivers[0]; d1 = d; s_Receivers[0] = i; } 
                else if (d < d2) { d2 = d; s_Receivers[1] = i; }
            }

            g_CornerKickTargetId = 2;
            s_Timeout = 0;
            s_SelectedReceiverIdx = 0;
            g_PassTargetPlayer = s_Receivers[0];
            if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = CallFnc_U8_P2(4, GetClosestPlayerToBall, g_RestartKickTeamId, throwerId);
        }
        return;
    }

    // --- STATE 2: AIM & THROW ---
    if (g_CornerKickTargetId == 2) {
        // Set static "aiming" pose (arms back)
        g_Ball.Y = g_Players[throwerId].Y - 12;
        g_Ball.X = g_Players[throwerId].X;
        g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_2 : PLAYER_POSE_THROWIN_RIGHT_2;
        g_Players[throwerId].Direction = isLeft ? DIRECTION_RIGHT : DIRECTION_LEFT;

        bool isHuman = (g_RestartKickTeamId == TEAM_1) || (g_GameWith2Players && g_RestartKickTeamId == TEAM_2);
        
        g_PassTargetPlayer = s_Receivers[s_SelectedReceiverIdx];
        if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = s_Receivers[0];
        if (g_PassTargetPlayer == NO_VALUE) g_PassTargetPlayer = CallFnc_U8_P2(4, GetClosestPlayerToBall, g_RestartKickTeamId, throwerId);

        if (isHuman) {
            s_Timeout++;
            u8 joyDir = CallFnc_U8(4, GetJoystickDirection);
            bool trigger = CallFnc_U8(5,IsJoystickTriggerPressed);
            static bool joyMoved = false;

            if (joyDir != DIRECTION_NONE && !joyMoved) {
                s_SelectedReceiverIdx = 1 - s_SelectedReceiverIdx;
                joyMoved = true;
            } else if (joyDir == DIRECTION_NONE) {
                joyMoved = false;
            }

            if (trigger || s_Timeout > 300) { // 5 seconds
                if (g_PassTargetPlayer != NO_VALUE) {
                    // Set final throw pose (arms forward)
                    g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
                    g_Ball.PossessionPlayerId = throwerId;
                    CallFnc_VOID_P1(5,PerformPass,g_PassTargetPlayer);
                    g_Ball.PossessionPlayerId = NO_VALUE;
                }
                V9990_ClearTextFromLayerA(13, 18, 8);
                g_MatchStatus = MATCH_IN_ACTION;
                g_ThrowInPlayerId = NO_VALUE;
                g_PassTargetPlayer = NO_VALUE;
            }
        } else { // CPU
            s_Timeout++;
            if (s_Timeout > 60) {
                if (g_PassTargetPlayer != NO_VALUE) {
                    // Set final throw pose (arms forward)
                    g_Players[throwerId].PatternId = isLeft ? PLAYER_POSE_THROWIN_LEFT_1 : PLAYER_POSE_THROWIN_RIGHT_1;
                    g_Ball.PossessionPlayerId = throwerId;
                    CallFnc_VOID_P1(5,PerformPass,g_PassTargetPlayer);
                    g_Ball.PossessionPlayerId = NO_VALUE;
                }
                V9990_ClearTextFromLayerA(13, 18, 8);
                g_MatchStatus = MATCH_IN_ACTION;
                g_ThrowInPlayerId = NO_VALUE;
                g_PassTargetPlayer = NO_VALUE;
            }
        }
    }
}
