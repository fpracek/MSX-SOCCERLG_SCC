
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
// +++ Kick off +++
void TickThrowIn() {
    if (g_MatchStatus != MATCH_BEFORE_THROW_IN) return;
    
    // Internal State vars
    static u8 s_ThrowTargetId = NO_VALUE;
    static bool s_JoyMoved = false;
    static u16 s_ForceThrowTimer = 0;

    if (g_Timer == 0) {
        s_ThrowTargetId = NO_VALUE;
        s_JoyMoved = false;
        s_ForceThrowTimer = 0;

		// 1. Clamp Ball Position to bounds (Leave it where it crossed, just ensure on line)
		if (g_Ball.X < FIELD_POS_X_CENTER) {
			g_Ball.X = FIELD_BOUND_X_LEFT;
		} else {
			g_Ball.X = FIELD_BOUND_X_RIGHT;
		}
		
		// Clamp Y
		if (g_Ball.Y < FIELD_BOUND_Y_TOP) g_Ball.Y = FIELD_BOUND_Y_TOP;
		if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) g_Ball.Y = FIELD_BOUND_Y_BOTTOM;
		
		g_Ball.PossessionPlayerId = NO_VALUE;

		// 2. Identify Thrower (Closest Teammate)
		u8 bestId = NO_VALUE;
		u16 minDist = 65535;
		
		// Helpers for crowd participants (2 nearest teammates, 2 nearest opponents)
		u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
		u8 o1=NO_VALUE, o2=NO_VALUE; u16 do1=65535, do2=65535;

		for(u8 i=0; i<14; i++) {
			 // Calculate Distance to Ball
			 u16 dist = 0;
			 if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
			 if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);

			 // Thrower Logic (RestartTeam only, No GK)
			 if(g_Players[i].TeamId == g_RestartKickTeamId && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) {
				  if(dist < minDist) { minDist = dist; bestId = i; }
			 }
		}
		g_ThrowInPlayerId = bestId;
		
		// 3. Find Crowd Participants (Excluding Thrower)
		for(u8 i=0; i<14; i++) {
			 if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;

			 u16 dist = 0;
			 if(g_Players[i].X > g_Ball.X) dist += (g_Players[i].X - g_Ball.X); else dist += (g_Ball.X - g_Players[i].X);
			 if(g_Players[i].Y > g_Ball.Y) dist += (g_Players[i].Y - g_Ball.Y); else dist += (g_Ball.Y - g_Players[i].Y);

			 if (g_Players[i].TeamId == g_RestartKickTeamId) {
				  // Teammate
				  if (dist < dt1) { dt2=dt1; t2=t1; dt1=dist; t1=i; }
				  else if (dist < dt2) { dt2=dist; t2=i; }
			 } else {
				  // Opponent
				  if (dist < do1) { do2=do1; o2=o1; do1=dist; o1=i; }
				  else if (dist < do2) { do2=dist; o2=i; }
			 }
		}
		
		// 4. Set Targets
		if (g_ThrowInPlayerId != NO_VALUE) {
			g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
			g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
			g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_NONE;
			if (g_Ball.X < FIELD_POS_X_CENTER) g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
			else g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
		}

		// Crowd Positioning: 50x100 Rect
		// Y Range: [BallY-50, BallY+50]. X Range: 50px inward.
		bool isLeft = (g_Ball.X < FIELD_POS_X_CENTER);
		u8 crowdIds[4] = {t1, t2, o1, o2};
		
		// Fixed offsets to distribute players in the 50x100 area
		i16 yOffsets[4] = {-30, 20, -15, 35}; 
		u16 xOffsets[4] = {15, 35, 25, 45}; 
		
		for(u8 k=0; k<4; k++) {
			u8 pid = crowdIds[k];
			if(pid != NO_VALUE) {
				g_Players[pid].Status = PLAYER_STATUS_NONE;
				
				// Y Position (BallY +/- 50 range)
				i16 ty = (i16)g_Ball.Y + yOffsets[k];
				// Clamp Y
				if(ty < FIELD_BOUND_Y_TOP) ty = FIELD_BOUND_Y_TOP;
				if(ty > FIELD_BOUND_Y_BOTTOM) ty = FIELD_BOUND_Y_BOTTOM;
				g_Players[pid].TargetY = (u16)ty;
				
				// X Position (50 px inward)
				if (isLeft) {
					g_Players[pid].TargetX = g_Ball.X + xOffsets[k];
					g_Players[pid].Direction = DIRECTION_LEFT; // Look at thrower
				} else {
					g_Players[pid].TargetX = g_Ball.X - xOffsets[k];
					g_Players[pid].Direction = DIRECTION_RIGHT; // Look at thrower
				}
			}
		}

        // --- NEW: Identify Backup Thrower IF the designated thrower was somehow part of the crowd 
        // (Logic above excludes Thrower from crowd search, so they are distinct)
        // But let's verify if user wants a CHANGE: "fai arrivare un altro giocatore (diverso da quelli che hai portato li)"
        
        // My code ALREADY picks Thrower FIRST (closest), and THEN picks crowd (closest remaining).
        // So they are distinct.
        // However, if the user means: "Pick a NEW thrower that is NOT the one currently closest"
        // I will assume the current logic is fine as long as they are distinct.
        // The user said: "arriva un altro giocatore (diverso da quelli che hai portato li)... sia targhetizzato sulla palla"
        
        // To be safe: Force Thrower target again here.
         if (g_ThrowInPlayerId != NO_VALUE) {
            g_Players[g_ThrowInPlayerId].TargetX = g_Ball.X;
            g_Players[g_ThrowInPlayerId].TargetY = g_Ball.Y;
         }

        // Show Zone
        if (g_Ball.Y < 140) g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
        else if (g_Ball.Y > 280) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
        else g_FieldScrollingActionInProgress=FIELD_CENTRAL_ZONE;
    }
    
    // Check Thrower Arrival
    if (g_ThrowInPlayerId != NO_VALUE) {
        i16 dx = (i16)g_Players[g_ThrowInPlayerId].X - (i16)g_Players[g_ThrowInPlayerId].TargetX;
        i16 dy = (i16)g_Players[g_ThrowInPlayerId].Y - (i16)g_Players[g_ThrowInPlayerId].TargetY;
        
        if (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4) {
             g_Players[g_ThrowInPlayerId].X = g_Players[g_ThrowInPlayerId].TargetX;
             g_Players[g_ThrowInPlayerId].Y = g_Players[g_ThrowInPlayerId].TargetY;
             g_Players[g_ThrowInPlayerId].Status = PLAYER_STATUS_POSITIONED;

             // Set Sprite for Throw In
             if(g_Ball.X < FIELD_POS_X_CENTER) {
                 g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_LEFT_1;
                 g_Players[g_ThrowInPlayerId].Direction = DIRECTION_RIGHT;
             } else {
                 g_Players[g_ThrowInPlayerId].PatternId = PLAYER_POSE_THROWIN_RIGHT_1;
                 g_Players[g_ThrowInPlayerId].Direction = DIRECTION_LEFT;
             }
             
             // Set Ball Over Head
             g_Ball.X = g_Players[g_ThrowInPlayerId].X;
             // Adjust Height: Right side lower by 2 px (Y-12 instead of Y-14)
             if(g_Ball.X < FIELD_POS_X_CENTER) g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 14; 
             else g_Ball.Y = g_Players[g_ThrowInPlayerId].Y - 12;
             
             g_Ball.Size = 1;

             // Ensure Crowd is also ready (Wait for everyone near ball to stop moving)
             {
                 u8 crowdReady = 1;
                 u8 i; // Declare outside for-loop for C89/SDCC compat
                 for(i=0; i<14; i++) {
                     // Check if player target is near Ball (Crowd Zone approx 100px)
                     u16 tdx = (g_Players[i].TargetX > g_Ball.X) ? (g_Players[i].TargetX - g_Ball.X) : (g_Ball.X - g_Players[i].TargetX);
                     u16 tdy = (g_Players[i].TargetY > g_Ball.Y) ? (g_Players[i].TargetY - g_Ball.Y) : (g_Ball.Y - g_Players[i].TargetY);
                     
                     if (tdx < 100 && tdy < 100) {
                          // If target is in zone, are they there?
                          if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                               // SNAPPING LOGIC: If very close, force positioned
                               i16 pdx = (i16)g_Players[i].X - (i16)g_Players[i].TargetX;
                               i16 pdy = (i16)g_Players[i].Y - (i16)g_Players[i].TargetY;
                               if (pdx >= -4 && pdx <= 4 && pdy >= -4 && pdy <= 4) {
                                    g_Players[i].X = g_Players[i].TargetX;
                                    g_Players[i].Y = g_Players[i].TargetY;
                                    g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                               } else {
                                    crowdReady = 0;
                                    break;
                               }
                          }
                     }
                 }

                 if (crowdReady) {
                     g_Timer++;
                 } else {
                     g_Timer = 1; // Wait
                 }
             }

             if (g_Timer > 60) {
                  // Ready for Action (Interactive / CPU Phase)

                  // 1. Identify Candidates (Teammates near ball - INCREASE SEARCH RANGE)
                  u8 c1=NO_VALUE, c2=NO_VALUE;
                  {
                      u8 t1=NO_VALUE, t2=NO_VALUE; u16 dt1=65535, dt2=65535;
                      u8 i;
                      for(i=0; i<14; i++) {
                         if(i == g_ThrowInPlayerId || g_Players[i].Role == PLAYER_ROLE_GOALKEEPER || g_Players[i].TeamId == REFEREE) continue;
                         
                         if (g_Players[i].TeamId == g_RestartKickTeamId) {
                              u16 dx = (g_Players[i].X > g_Ball.X) ? (g_Players[i].X - g_Ball.X) : (g_Ball.X - g_Players[i].X);
                              u16 dy = (g_Players[i].Y > g_Ball.Y) ? (g_Players[i].Y - g_Ball.Y) : (g_Ball.Y - g_Players[i].Y);
                              u16 d = dx+dy;
                              // Increased search range confirmation
                              if (d < 200) { // Safety check
                                  if (d < dt1) { dt2=dt1; t2=t1; dt1=d; t1=i; }
                                  else if (d < dt2) { dt2=d; t2=i; }
                              }
                         }
                      }
                      c1 = t1; c2 = t2;
                  }

                  // 2. Default Target
                  if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1;
                  // FALLBACK: If still no target, pick ANY teammate (excluding GK/Thrower)
                  if (s_ThrowTargetId == NO_VALUE) {
                       s_ThrowTargetId = CallFnc_U8_P2(4,GetClosestPlayerToBall,g_RestartKickTeamId, g_ThrowInPlayerId);
                  }
                  
                  // 3. Determine Control Type
                  bool isHuman = (g_RestartKickTeamId == TEAM_1);
                  if (g_GameWith2Players) isHuman = true; 
                  if (g_RestartKickTeamId == TEAM_2 && !g_GameWith2Players) isHuman = false;

                  if (isHuman) {
                       // --- HUMAN LOGIC ---
                       u8 joy = CallFnc_U8(4,GetJoystickDirection);
                       bool trig = CallFnc_BOOL(5,IsJoystickTriggerPressed);

                       // Toggle Target
                       if (joy != DIRECTION_NONE && !s_JoyMoved) {
                            // If we have both candidates
                            if (c1 != NO_VALUE && c2 != NO_VALUE) {
                                if (s_ThrowTargetId == c1) s_ThrowTargetId = c2;
                                else s_ThrowTargetId = c1;
                            }
                            s_JoyMoved = true;
                       } else if (joy == DIRECTION_NONE) {
                            s_JoyMoved = false;
                       }
                       
                       // Visualize Target
                       g_PassTargetPlayer = s_ThrowTargetId; 
                       
                       // Timeout Logic (4 seconds = 240 frames)
                       s_ForceThrowTimer++;

                       // Execute
                       if ((trig || s_ForceThrowTimer > 240) && s_ThrowTargetId != NO_VALUE) {
                            g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
                            CallFnc_VOID_P1(4,SetPlayerBallPossession,g_ThrowInPlayerId);
                            g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; // Reset to feet
                            CallFnc_VOID_P1(5,PerformPass,s_ThrowTargetId);
                            g_MatchStatus = MATCH_IN_ACTION;
                            V9990_ClearTextFromLayerA(13, 18, 9); // Correct coords: 10, 18 (len 9 is enough for "THROW IN")
                            g_Ball.ShotActive = 1; // High Arc for throw
                            g_Ball.Size = 1;
                       }
                  } else {
                       // --- CPU LOGIC ---
                       if (g_Timer > 100) {
                            if (s_ThrowTargetId == NO_VALUE && c1 != NO_VALUE) s_ThrowTargetId = c1; 
                            if (s_ThrowTargetId == NO_VALUE) s_ThrowTargetId = CallFnc_U8_P2(4,GetClosestPlayerToBall,g_RestartKickTeamId, g_ThrowInPlayerId);

                            // Throw after delay
                            if (g_Timer > 120) {
                                g_Ball.PossessionPlayerId = g_ThrowInPlayerId;
                                CallFnc_VOID_P1(4,SetPlayerBallPossession,g_ThrowInPlayerId);
                                g_Ball.Y = g_Players[g_ThrowInPlayerId].Y; 
                                CallFnc_VOID_P1(5,PerformPass,s_ThrowTargetId);
                                g_MatchStatus = MATCH_IN_ACTION; 
                                V9990_ClearTextFromLayerA(13, 18, 9);
                                g_Ball.ShotActive = 1; 
                                g_Ball.Size = 1;
                            } else {
                                g_Timer++;
                            }
                       } else {
                            g_Timer++;
                       }
                  }
             }
        } else {
            g_Timer = 1; 
        }
    }
}