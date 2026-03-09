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

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Check joystick triggered +++
bool IsJoystickTriggerPressed(){
		u8 joyStat = Joystick_Read(JOY_PORT_1);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return TRUE;
		}
		
		if(Keyboard_IsKeyPressed(KEY_SPACE))
		{
			return TRUE;
		}		
	return FALSE;
}
// +++ Perform ball pass +++
void PerformPass(u8 toPlayerId) {
	
	u8 fromId = g_Ball.PossessionPlayerId;
    i16 dx, dy, adx, ady; 
    u8 newDir;

    if (fromId == NO_VALUE) return;
    if (toPlayerId == NO_VALUE) return;

    // Prevent passing TO Goalkeeper
    if (g_Players[toPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;

    // OFFSIDE CHECK (Prevent Pass)
    // Ignore offside if passer is Goalkeeper
    if (g_Players[fromId].Role != PLAYER_ROLE_GOALKEEPER) {
        if (IsOffside(toPlayerId)) {
            // Prevent pass to offside player
            return;
        }
    }
    
    // TURN PLAYER TOWARDS TARGET
    dx = (i16)g_Players[toPlayerId].X - (i16)g_Players[fromId].X;
    dy = (i16)g_Players[toPlayerId].Y - (i16)g_Players[fromId].Y;
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

    g_Players[fromId].Status = PLAYER_STATUS_POSITIONED; // Lock pose for this frame
    
    // Stop Player Movement (to preserve pose)
    g_Players[fromId].TargetX = g_Players[fromId].X;
    g_Players[fromId].TargetY = g_Players[fromId].Y;

    // Setup Ball for Pass
	CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE); 
    g_Ball.PossessionPlayerId = NO_VALUE; 
    
	g_Ball.PassTargetPlayerId = toPlayerId;
	g_Ball.ShotActive = 0; // Not a shot

    // GK Pass Fix: Offset ball start to avoid immediate self-collision
    if (g_Players[fromId].Role == PLAYER_ROLE_GOALKEEPER) {
   

        bool applyOffset = true;
        // Disable offset for Goal Kicks / Steals (Ground kicks where RecoilY is 0)
        if (g_GkIsGroundKick) {
            applyOffset = false;
            
            // FORCE RESET BALL POSITION for ground kicks to prevent "dribble" offsets
            // This ensures the ball starts exactly where the GK is holding it (or at feet)
            // without the 30px jump, and without any left/right shift from previous frames.
            // We use the current ball position which is already aligned by PutBallOnPlayerFeet.
            g_Ball.X = g_Ball.X; 
            g_Ball.Y = g_Ball.Y;
        }
        
        // Explicit User Request: Disable offset for Corner/Goal Kicks setup phases
        if (g_MatchStatus == MATCH_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK ||
            g_MatchStatus == MATCH_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK) {
             applyOffset = false;
        }

       

        if (applyOffset) {
            i8 offX = 0; i8 offY = 0;
            switch (newDir) {
                case DIRECTION_UP:        offY = -30; break;
                case DIRECTION_DOWN:      offY = 30; break;
                case DIRECTION_LEFT:      offX = -30; break;
                case DIRECTION_RIGHT:     offX = 30; break;
                case DIRECTION_UP_LEFT:   offX = -21; offY = -21; break;
                case DIRECTION_UP_RIGHT:  offX = 21; offY = -21; break;
                case DIRECTION_DOWN_LEFT: offX = -21; offY = 21; break;
                case DIRECTION_DOWN_RIGHT:offX = 21; offY = 21; break;
            }
            g_Ball.X += offX;
            g_Ball.Y += offY;

        }
      
    }

    g_Ball.PassStartX = g_Ball.X;
    g_Ball.PassStartY = g_Ball.Y;

	// Prevent immediate re-interaction (Steal) and reset dribble state
    g_ActionCooldown = 20;
    g_Ball.KickMoveState = 0;

    dx = (i16)g_Players[toPlayerId].X - (i16)g_Ball.X;
    dy = (i16)g_Players[toPlayerId].Y - (i16)g_Ball.Y;
    g_Ball.PassTotalDist = (u16)((dx<0?-dx:dx) + (dy<0?-dy:dy));

    PlayAyFx(AYFX_BALL);
}
// +++ Check offside position +++
bool IsOffside(u8 playerId) {
    u8 teamId = g_Players[playerId].TeamId;
    u16 playerY = g_Players[playerId].Y;
    u8 opponentCount = 0;
    u8 i;

    // 1. Halfway Line Check
    if (teamId == TEAM_1) {
        if (playerY >= FIELD_POS_Y_CENTER) return FALSE; // Own half
    } else {
        if (playerY <= FIELD_POS_Y_CENTER) return FALSE; // Own half
    }

    // 2. Ball Position Check (Nearer to goal than ball?)
    // Team 1 attacks UP (Small Y). Nearer means Y < Ball.Y
    if (teamId == TEAM_1) {
        if (playerY >= g_Ball.Y) return FALSE; 
    } else {
        if (playerY <= g_Ball.Y) return FALSE;
    }

    // 3. Second Last Opponent Check
    for (i = 0; i < 14; i++) {
        if (g_Players[i].TeamId == teamId) continue;
        
        // Check if opponent is nearer/equal to goal line than player
        if (teamId == TEAM_1) { // Attacking UP
             if (g_Players[i].Y <= playerY) opponentCount++;
        } else { // Attacking DOWN
             if (g_Players[i].Y >= playerY) opponentCount++;
        }
    }

    if (opponentCount < 2) return TRUE;
    return FALSE;
}
// Goal kick +++
void TickGoalKick() {
    if (g_MatchStatus != MATCH_BEFORE_GOAL_KICK) return;
    
    static u16 s_SafetyTimeout = 0;
    static bool s_SetupDone = false;

    // Identify GK
    u8 gkId = NO_VALUE;
    if (g_RestartKickTeamId == TEAM_1) gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,TEAM_1, PLAYER_ROLE_GOALKEEPER);
    else gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,TEAM_2, PLAYER_ROLE_GOALKEEPER);
    
    if (gkId == NO_VALUE) return; 

    // Reset internal state at the beginning of the phase
    if (g_Timer < 10) {
        s_SetupDone = false;
        s_SafetyTimeout = 0;
    }

    // WAITING PHASE (1 Second) to show ball out of bounds
    if (g_Timer < 60) {
        g_Timer++;
        return;
    }
    g_Ball.Size = 1;
    // Phase 1: Setup (First Frame of Action)
    if (!s_SetupDone) {
        s_SetupDone = true;
        s_SafetyTimeout = 0;
        // Coords
        u16 targetX;
        if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
        else targetX = GK_BOX_X_MAX;
        
        u16 ballY;
        if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal
             ballY = GK_BOX_Y_BOTTOM_MIN; 
        } else { // Top Goal
             ballY = GK_BOX_Y_TOP_MAX; 
        }
        
        // Place Ball
        g_Ball.X = targetX;
        g_Ball.Y = ballY;
        g_Ball.PossessionPlayerId = NO_VALUE;
        
        // Set GK Target to RUN START POSITION (Further away for run-up)
        u16 runStartY;
        if (g_RestartKickTeamId == TEAM_1) {
             runStartY = ballY + 32; 
             if(runStartY > FIELD_BOUND_Y_BOTTOM) runStartY = FIELD_BOUND_Y_BOTTOM;
        } else {
             runStartY = ballY - 32;
             if(runStartY < FIELD_BOUND_Y_TOP) runStartY = FIELD_BOUND_Y_TOP;
        }

        g_Players[gkId].TargetX = targetX;
        g_Players[gkId].TargetY = runStartY;
        g_Players[gkId].Status = PLAYER_STATUS_NONE; 
        
        if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
        else g_Players[gkId].Direction = DIRECTION_DOWN;

        if (g_RestartKickTeamId == TEAM_1) g_FieldScrollingActionInProgress=FIELD_SOUTH_ZONE;
        else g_FieldScrollingActionInProgress=FIELD_NORTH_ZONE;
        
        // Position other players (Tactical Movement)
        for(u8 i=0; i<14; i++){
             if(i == gkId) continue;
             if(g_Players[i].TeamId == REFEREE) continue;
             if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
             
             // Unlock status to allow movement
             g_Players[i].Status = PLAYER_STATUS_NONE;
             
             u16 targetY = g_Players[i].Y;
             u16 targetX = g_Players[i].X;
             
             if (g_RestartKickTeamId == TEAM_1) {
                  // TEAM 1 Kicking (Bottom -> Up)
                  if(g_Players[i].TeamId == TEAM_1) {
                        // Move Upfield
                        targetY = 260; // Midfielders (Closer to center)
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 200;
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 320; // Defenders move out of box (Safe < 350)
                  } else { // Team 2 Defending
                       targetY = 250;
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 240; // Keep distance (Safer < 250)
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 150;
                  }
             } else {
                  // TEAM 2 Kicking (Top -> Down)
                  if(g_Players[i].TeamId == TEAM_2) {
                        // Move Downfield
                        targetY = 220; // Midfielders (Closer to center)
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 250;
                        if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 160; // Defenders move out of box (Safe > 130)
                  } else { // Team 1 Defending
                       targetY = 240; // Keep distance (Safer > 230)
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_STRIKER || g_Players[i].Role == PLAYER_ROLE_RIGHT_STRIKER) targetY = 240; // Keep distance
                       if (g_Players[i].Role == PLAYER_ROLE_LEFT_DEFENDER || g_Players[i].Role == PLAYER_ROLE_RIGHT_DEFENDER) targetY = 300;
                  }
             }
             
             // Keep X inside field
             if (targetX < 30) targetX = 30;
             if (targetX > 220) targetX = 220;
             
             g_Players[i].TargetX = targetX;
             g_Players[i].TargetY = targetY;
        }
    }
    
    // FORCE BALL POSITION during setup (60-110) to prevent drift or pickup
    if (g_Timer >= 60 && g_Timer < 115) {
        u16 ballY;
        if (g_RestartKickTeamId == TEAM_1) ballY = GK_BOX_Y_BOTTOM_MIN; 
        else ballY = GK_BOX_Y_TOP_MAX;
        
        u16 targetX;
        if (g_GoalKickSide == CORNER_SIDE_LEFT) targetX = GK_BOX_X_MIN;
        else targetX = GK_BOX_X_MAX;

        g_Ball.X = targetX;
        g_Ball.Y = ballY;
        g_Ball.PossessionPlayerId = NO_VALUE; // Ensure no one grabs it
    }
    
    // Check Arrival
    i16 dx = (i16)g_Players[gkId].X - (i16)g_Players[gkId].TargetX;
    i16 dy = (i16)g_Players[gkId].Y - (i16)g_Players[gkId].TargetY;
    
    bool arrived = (dx >= -4 && dx <= 4 && dy >= -4 && dy <= 4);
    
    if (arrived) {
        g_Players[gkId].X = g_Players[gkId].TargetX;
        g_Players[gkId].Y = g_Players[gkId].TargetY;
        
        if (g_RestartKickTeamId == TEAM_1) g_Players[gkId].Direction = DIRECTION_UP;
        else g_Players[gkId].Direction = DIRECTION_DOWN;
        g_Players[gkId].PatternId = CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,g_Players[gkId].Direction);
        g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;

        // Run-up Logic
        u16 distY = (g_Players[gkId].Y > g_Ball.Y) ? (g_Players[gkId].Y - g_Ball.Y) : (g_Ball.Y - g_Players[gkId].Y);
        
        if (distY > 16) {
             // At Start Position
             
             // WAIT FOR PLAYERS TO REACH SAFE POSITIONS
             bool areaSafe = true;
             for(u8 i=0; i<14; i++) {
                 if (i == gkId) continue;
                 if (g_Players[i].TeamId == REFEREE) continue;
                 
                 u16 py = g_Players[i].Y;
                 
                 if (g_RestartKickTeamId == TEAM_1) { // Bottom Goal (Y=430)
                     // Teammates must be out of box (Y < 350). Opponents further (Y < 250)
                     if (g_Players[i].TeamId == TEAM_1 && py > 350) areaSafe = false;
                      else if (g_Players[i].TeamId != TEAM_1 && py > 280) areaSafe = false; // Relaxed to 280
                 } else { // Top Goal (Y=50)
                     // Teammates must be out of box (Y > 130). Opponents further (Y > 230)
                     if (g_Players[i].TeamId == TEAM_2 && py < 130) areaSafe = false;
                      else if (g_Players[i].TeamId != TEAM_2 && py < 200) areaSafe = false; // Relaxed to 200
                 }
                 if (!areaSafe) break;
             }

             if (areaSafe) {
                 g_Timer++;
             } else {
                 s_SafetyTimeout++;
                 if (s_SafetyTimeout > 240) { // 4 seconds timeout force proceed
                     g_Timer++;
                 } else {
                     if (g_Timer > 90) g_Timer = 90; // Hold timer until safe
                     else g_Timer++; // Allow advancing up to wait point
                 }
             }

             if (g_Timer > 100) {
                 // Start Run
                 u16 kickY;
                 if (g_RestartKickTeamId == TEAM_1) kickY = g_Ball.Y + 4; // Adjusted for perfect foot alignment
                 else kickY = g_Ball.Y - 6;
                 
                 g_Players[gkId].TargetY = kickY;
                 g_Players[gkId].Status = PLAYER_STATUS_NONE;
             }
        } else {
             // At Kick Position
             g_Timer++;
             if (g_Timer > 102) { // Kick immediately upon arrival (was 110)
                  V9990_ClearTextFromLayerA(10, 18, 9); 
                  GoalkeeperWithBall(g_RestartKickTeamId, true); 
                  g_GkRecoilY = 0;
             }
        }
    } else {
         // Moving
         if (g_Timer < 100) g_Timer = 61; // Hold at 61 while moving to start
         else g_Timer = 101; // Hold at 101 while moving to ball
    }
}
// +++ Goalkeeper with ball +++
void GoalkeeperWithBall(u8 teamId, bool isSteal) {
    u8 gkId = CallFnc_U8_P2(4,GetPlayerIdByRole,teamId, PLAYER_ROLE_GOALKEEPER);
    if(gkId == NO_VALUE) return;

    g_GkAnimPlayerId = gkId;
    g_GkAnimTimer = 0;
    
    // Set Pose based on Team
    if (teamId == TEAM_1) {
        if (isSteal) g_Players[gkId].PatternId = PLAYER_POSE_BACK;
        else g_Players[gkId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
        g_Players[gkId].Direction = DIRECTION_UP; // Face Up (Attack Direction)
    }
    else {
        g_Players[gkId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)
        g_Players[gkId].Direction = DIRECTION_DOWN; // Face Down (Attack Direction)
    }
    
    // Lock Pose
    g_Players[gkId].Status = PLAYER_STATUS_POSITIONED;
    
    // Determine Recoil Direction (Same as Shot)
    // Team 1 attacks UP (Shoots UP). Team 2 defends. GK 2 moves UP (-1).
    bool closeToLine = false;
    if (teamId == TEAM_2) { // GK 2 (Top)
        g_GkRecoilY = -1;
        if (g_Players[gkId].Y <= FIELD_BOUND_Y_TOP + 4) closeToLine = true;
    } else { // GK 1 (Bottom)
        g_GkRecoilY = 1;
        if (g_Players[gkId].Y >= FIELD_BOUND_Y_BOTTOM - 4) closeToLine = true;
    }

    if (closeToLine || isSteal) g_GkRecoilY = 0; // No recoil for Steals
    g_GkIsGroundKick = isSteal; // Track if this is a ground kick (no offset needed)
   
    // Take Possession
    CallFnc_VOID_P1(4,SetPlayerBallPossession,gkId);
    g_Ball.PossessionPlayerId = gkId; // Fix: Ensure AI knows GK has ball immediately to prevent chasing
    g_Ball.ShotActive = 0;
    
    g_MatchStatus = MATCH_BALL_ON_GOALKEEPER;

    // TACTICAL MOVEMENT: All players move while GK recoils
    for(u8 i=0; i<14; i++) {
        if(i == gkId) continue;
        if(g_Players[i].TeamId == REFEREE) continue;
        if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
        
           u16 ty;
        // Reset current targets (Only Y, let AI handle X)
        ty = g_Players[i].Y;

        if(g_Players[i].TeamId == teamId) {
             // TEAMMATE (Defending team) -> Advance (Counter-Attack)
             // Move towards center/opponent field
             if(teamId == TEAM_1) { // Moving UP
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 160;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
                  else ty = 350;
             } else { // Moving DOWN
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 320;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 240;
                  else ty = 130;
             }
        } else {
             // OPPONENT (Attacking team) -> Retreat to defense
             // Move towards their own goal
             if(teamId == TEAM_1) { // Opponent is Team 2 (Top) -> Retreat UP? No, Team 2 Defends Top.
                  // Opponent (Team 2) retreats to Top (Move UP).
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243; // Midfield
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 106;
                  else ty = 130;
             } else { // GK is Team 2 (Top Defending). Opponent is Team 1 (Attack Up).
                  // Opponent (Team 1) retreats to Bottom (Move DOWN).
                  if (g_Players[i].Role >= PLAYER_ROLE_LEFT_STRIKER) ty = 243;
                  else if (g_Players[i].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) ty = 318;
                  else ty = 350;
             }
        }

        // Apply Target
        g_Players[i].TargetY = ty;
        g_Players[i].Status = PLAYER_STATUS_NONE; // Unlock movement
    }
}

// +++ Player to own target +++
void TickPlayerToOwnTarget(){
	if(g_MatchStatus!=MATCH_NOT_STARTED){
		bool allPlayersInPosition = true;
		
		static u8 s_GkMoveTick = 0;
		s_GkMoveTick++;
		for(u8 i=0;i<15;i++){
			if (g_MatchStatus == MATCH_IN_ACTION && g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                if (g_Ball.ShotActive) continue; 

				if ((s_GkMoveTick & 1) == 0) { 
					u16 minX = GOAL_X_MIN;
					u16 maxX = GOAL_X_MAX;
					u16 desiredX = g_Ball.X;

                    const TeamStats* stats = GetTeamStats(g_Players[i].TeamId);
                    if (stats->GkSkill >= 15) {
                         desiredX = (g_Ball.X + FIELD_POS_X_CENTER) / 2;
                    }
					
					if (desiredX < minX) desiredX = minX;
					if (desiredX > maxX) desiredX = maxX;
					
					i16 diff = (i16)desiredX - (i16)g_Players[i].X;
					
					// Deadzone di 2px per evitare micro-aggiustamenti continui
					if (diff > 2) g_Players[i].X++;
					else if (diff < -2) g_Players[i].X--;
				}
				// Sincronizza TargetX per evitare conflitti con la logica di movimento generica
				g_Players[i].TargetX = g_Players[i].X;
			}
			
			if(g_MatchStatus == MATCH_AFTER_IN_GOAL) {
				if(i != REFEREE) continue;
				// Force Referee Target to KickOff Position immediately
				g_Players[i].TargetX=FIELD_POS_X_CENTER - 30; 
				g_Players[i].TargetY=FIELD_POS_Y_CENTER - 40; 
			}

			if (i == REFEREE && (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER)) continue;
			
			// SKIP ACTIVE PLAYERS (Controlled by Joystick) - UNLESS performing a set piece setup
			bool isSetPieceSetup = (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN);
			bool isGkRestart = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
			
			if (!isSetPieceSetup && !isGkRestart) {
				if (g_Team1ActivePlayer != NO_VALUE && i == g_Team1ActivePlayer) continue;
				if (g_GameWith2Players && g_Team2ActivePlayer != NO_VALUE && i == g_Team2ActivePlayer) continue;
			}
			
			// Check if this specific player is in position
			bool playerInPosition = (g_Players[i].X == g_Players[i].TargetX && g_Players[i].Y == g_Players[i].TargetY);
            
            // Only care about "in position" for KickOff logic if we are in that phase
            if (g_MatchStatus == MATCH_BEFORE_KICK_OFF && !playerInPosition) {
                 allPlayersInPosition = false;
            }

			u8 step = 1;

			if(g_MatchStatus==MATCH_IN_ACTION){
                u8 countryId = (g_Players[i].TeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
                const TeamStats* stats = GetTeamStats(countryId);
                u8 speed = stats->Speed;
                
                // Speed Logic (Frame Skipping)
                // Human is 1/3 (20fps)
                // Speed 0: 1/4 (15fps) -> Run on 0
                // Speed 1: 1/3 (20fps) -> Run on 0
                // Speed 2: 1/2 (30fps) -> Run on 0, 2
                // Speed 3: 2/3 (40fps) -> Run on 0, 1 (Standard AI)
                // Speed 4: 3/4 (45fps) -> Run on 0, 1, 2
                // Speed 5: 1/1 (60fps) -> Run always
                
                u8 tick = g_FrameCounter % 12; // Common multiple
                bool move = false;
                if (speed == 0) { if ((tick % 4) == 0) move = true; }
                else if (speed == 1) { if ((tick % 3) == 0) move = true; }
                else if (speed == 2) { if ((tick % 2) == 0) move = true; }
                else if (speed == 3) { 
                    // Standard: 1px/frame (Matches player speed, smooth)
                    move = true; 
                    step = 1; 
                }
                else if (speed == 4) { if ((tick % 4) != 3) move = true; }
                else if (speed == 6) {
                    // 1.25 px/frame (5px in 4 frames)
                    move = true;
                    step = ((tick % 4) == 0) ? 2 : 1;
                }
                else if (speed == 7) {
                    // 1.33 px/frame (4px in 3 frames)
                    move = true;
                    step = ((tick % 3) == 0) ? 2 : 1;
                }
				else if (speed >= 8) { 
					// Very Fast: 1.5px/frame (Alternating 1 and 2 pixels)
					move = true;
					step = ((tick % 2) == 0) ? 2 : 1;
				}
                else move = true;
                
                if (!move) continue;
			} else {
				g_Players[i].AiTickCounter=0;
                // Speed up movement during setup phases to prevent stuck goal kicks
                if (g_MatchStatus == MATCH_BEFORE_GOAL_KICK || g_MatchStatus == MATCH_BEFORE_CORNER_KICK || 
                    g_MatchStatus == MATCH_BEFORE_THROW_IN || g_MatchStatus == MATCH_BEFORE_OFFSIDE ||
                    g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
                    step = 2;
                }
			}
			
			if(!playerInPosition){
				g_Players[i].Status=PLAYER_STATUS_NONE;
				
				i16 dx = (i16)g_Players[i].TargetX - (i16)g_Players[i].X;
                i16 dy = (i16)g_Players[i].TargetY - (i16)g_Players[i].Y;

                if (dx > 0) {
                    if (dx < step) g_Players[i].X = g_Players[i].TargetX;
                    else g_Players[i].X += step;
                } else if (dx < 0) {
                    if (-dx < step) g_Players[i].X = g_Players[i].TargetX;
                    else g_Players[i].X -= step;
                }

                if (dy > 0) {
                    if (dy < step) g_Players[i].Y = g_Players[i].TargetY;
                    else g_Players[i].Y += step;
                } else if (dy < 0) {
                    if (-dy < step) g_Players[i].Y = g_Players[i].TargetY;
                    else g_Players[i].Y -= step;
                }

                if(dx > 0 && dy < 0) g_Players[i].Direction=DIRECTION_UP_RIGHT;
				else if(dx < 0 && dy < 0) g_Players[i].Direction=DIRECTION_UP_LEFT;
				else if(dx < 0 && dy > 0) g_Players[i].Direction=DIRECTION_DOWN_LEFT;
				else if(dx > 0 && dy > 0) g_Players[i].Direction=DIRECTION_DOWN_RIGHT;
				else if(dy < 0) g_Players[i].Direction=DIRECTION_UP;
				else if(dy > 0) g_Players[i].Direction=DIRECTION_DOWN;
				else if(dx > 0) g_Players[i].Direction=DIRECTION_RIGHT;
				else if(dx < 0) g_Players[i].Direction=DIRECTION_LEFT;
				
				// Boundaries
                if(g_Players[i].Y < FIELD_BOUND_Y_TOP) g_Players[i].Y = FIELD_BOUND_Y_TOP;
		        if(g_Players[i].Y > FIELD_BOUND_Y_BOTTOM) g_Players[i].Y = FIELD_BOUND_Y_BOTTOM;
                if(g_Players[i].X < FIELD_BOUND_X_LEFT) g_Players[i].X = FIELD_BOUND_X_LEFT;
		        if(g_Players[i].X > FIELD_BOUND_X_RIGHT) g_Players[i].X = FIELD_BOUND_X_RIGHT;
			}
            
            // PutBall Logic (Moved outside to ensure it runs even when stopped)
            if (g_MatchStatus == MATCH_IN_ACTION || (isSetPieceSetup && g_Ball.PossessionPlayerId == i)) {
                if (g_Ball.PossessionPlayerId == i) {
                    // Only animate dribble if actually moving (not in position)
                    if (!playerInPosition && g_MatchStatus == MATCH_IN_ACTION) {
                        if (g_Ball.KickMoveState == NO_VALUE) g_Ball.KickMoveState = 0;
                        g_Ball.KickMoveState++;
                        if (g_Ball.KickMoveState > 3) g_Ball.KickMoveState = 0;
                        if (g_Ball.KickMoveState == 1) PlayAyFx(AYFX_BALL);
                    } else {
                        g_Ball.KickMoveState = 0;
                    }
                    CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
                }
            }

			if (playerInPosition) {
				if (g_MatchStatus == MATCH_BEFORE_CORNER_KICK || g_MatchStatus == MATCH_BEFORE_GOAL_KICK || 
                    g_MatchStatus == MATCH_BEFORE_OFFSIDE || g_MatchStatus == MATCH_BEFORE_THROW_IN) {
					if (g_Players[i].Status != PLAYER_STATUS_POSITIONED) {
                        g_Players[i].Status = PLAYER_STATUS_POSITIONED;
						g_Players[i].Direction = DIRECTION_NONE;
                        u8 useDir = g_Players[i].PreviousDirection;
                        if (useDir == DIRECTION_NONE) {
                             // Fallback direction
                             if(g_MatchStatus == MATCH_BEFORE_THROW_IN) {
                                  // Look at field center
                                  if(g_Ball.X < 128) useDir = DIRECTION_RIGHT; else useDir = DIRECTION_LEFT;
                             } else {
                                  useDir = DIRECTION_DOWN; 
                             }
                        }
						g_Players[i].PatternId =CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,useDir);
					}
				}
                // Not Moving (In Position)
                if(g_MatchStatus==MATCH_IN_ACTION){
				    g_Players[i].Status=PLAYER_STATUS_POSITIONED;
                }

				if (g_Players[i].TeamId == REFEREE) {
                     if(g_MatchStatus == MATCH_BEFORE_KICK_OFF || g_MatchStatus == MATCH_AFTER_IN_GOAL) {
                          g_Players[i].Direction = DIRECTION_DOWN;
                          g_Players[i].PatternId = PLAYER_POSE_FRONT;
                          g_Players[i].Status = PLAYER_STATUS_POSITIONED;
                          CallFnc_VOID_P1(5,PutPlayerSprite,i);
                     }
                }
				
				

				if(g_MatchStatus==MATCH_BEFORE_KICK_OFF){
					
					if(g_Players[i].TeamId!=REFEREE && g_Players[i].PatternId!=PLAYER_POSE_BACK && g_Players[i].PatternId!=PLAYER_POSE_FRONT){
						g_Players[i].Status=PLAYER_STATUS_POSITIONED;
						if (i != g_GoalScorerId) {
							if(g_Players[i].TeamId==TEAM_1){
								g_Players[i].PatternId=PLAYER_POSE_BACK;
								g_Players[i].Direction=DIRECTION_UP;
							}
							else{
								g_Players[i].PatternId=PLAYER_POSE_FRONT;
								g_Players[i].Direction=DIRECTION_DOWN;
							}
						} else {
							if(g_Players[i].TeamId==TEAM_1) g_Players[i].Direction=DIRECTION_UP;
							else g_Players[i].Direction=DIRECTION_DOWN;
						}
						CallFnc_VOID_P1(5,PutPlayerSprite,i);
					}
				}
			}
			
		}

		if(g_MatchStatus==MATCH_BEFORE_KICK_OFF && allPlayersInPosition && g_FieldScrollingActionInProgress==NO_VALUE){
     
            g_Ball.Size=1;
			//VGM_Stop();
			g_FieldScrollSpeed=FIELD_SCROLL_GAME_SPEED;
			g_MatchStatus=MATCH_KICK_OFF;
			
			g_Timer=0;
			g_TimerActive=TRUE;
			g_GoalScorerId = NO_VALUE; 
		}
		
	}
}
// +++ Put player sprite on display +++
void PutPlayerSprite(u8 playerId){
	struct V9_Sprite attr;
	attr.D=0;
	attr.SC=2;
	u16 minY = (g_FieldCurrentYPosition > 32) ? (u16)(g_FieldCurrentYPosition - 32) : 0;
	u16 maxY = g_FieldCurrentYPosition + 244;

	attr.Y = g_Players[playerId].Y-g_FieldCurrentYPosition;
	if(g_Players[playerId].TeamId==TEAM_2){
		attr.SC=3;
	}
	  
	if(g_Players[playerId].TeamId==REFEREE){
		attr.SC=1;
	}
	
	if(g_Players[playerId].Y>maxY){
		attr.D=1;
	}
	if(g_Players[playerId].Y<minY){
		attr.D=1;
	}
	if(g_MatchStatus!=MATCH_NOT_STARTED && g_MatchStatus!=MATCH_KICK_OFF){
		if(g_Players[playerId].Role!=PLAYER_ROLE_GOALKEEPER){
			CallFnc_VOID_P1(5,UpdatePlayerPatternByDirection,playerId);
		}
	}
	if(g_Players[playerId].Role==PLAYER_ROLE_GOALKEEPER){
			   attr.SC=0;
			// --- Goalkeeper horizontal movement animation logic ---
			// Only animate during match in action
			if (g_MatchStatus == MATCH_IN_ACTION || g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
				g_Players[playerId].Status=PLAYER_STATUS_POSITIONED;
				u8 team = g_Players[playerId].TeamId;
				// Horizontal movement (right/left)
				if(g_Players[playerId].OldX!=g_Players[playerId].X || g_Players[playerId].OldY!=g_Players[playerId].Y){
					if(g_Players[playerId].LastPose==0){
						g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_1 : PLAYER_POSE_GK_H_MOVE_FRONT_1;
						g_Players[playerId].LastPose=1;
					}
					else{
						g_Players[playerId].PatternId = (team == TEAM_1) ? PLAYER_POSE_GK_H_MOVE_BACK_2 : PLAYER_POSE_GK_H_MOVE_FRONT_2;
						g_Players[playerId].LastPose=0;
					}		
					g_Players[playerId].OldX=g_Players[playerId].X;
					g_Players[playerId].OldY=g_Players[playerId].Y;	
				}

			}
			else{
				CallFnc_VOID_P1(5,UpdatePlayerPatternByDirection,playerId);
			}
	}
	attr.Pattern = g_Players[playerId].PatternId;
	
	// Highlight logic (Human Only)
	if(g_Players[playerId].TeamId != REFEREE && g_MatchStatus != MATCH_PENALTY_SHOOTOUT && g_MatchStatus != MATCH_PENALTY_SETUP && g_MatchStatus != MATCH_VICTORY_LAP)
	{
		bool isHumanTeam = (g_Players[playerId].TeamId == TEAM_1) || (g_GameWith2Players && g_Players[playerId].TeamId == TEAM_2);
		
		if (isHumanTeam) {
			// NEVER HIGHLIGHT GOALKEEPER
			if (g_Players[playerId].Role != PLAYER_ROLE_GOALKEEPER) {
				if (playerId==g_Team1ActivePlayer || (g_GameWith2Players && playerId==g_Team2ActivePlayer)) {
					// Ensure we are not highlighting REFEREE even if logic fails (safety check)
					attr.Pattern=(u8)(attr.Pattern+64);

				}
			}
			// Highlight Pass Target if team has ball
			if (playerId == g_PassTargetPlayer) {
				attr.Pattern=(u8)(attr.Pattern+64);

			}
		}
	}
	
	attr.X = g_Players[playerId].X;
	attr.P = 1;
	V9_SetSpriteP1(playerId, &attr);

}
// +++ Uppdate player pattern by direction +++
void UpdatePlayerPatternByDirection(u8 playerId){
	if(g_Players[playerId].Status==PLAYER_STATUS_POSITIONED){
		return;
	}
	
	//u8 pose=g_Players[playerId].LastPose;
	if(g_Players[playerId].Direction!=g_Players[playerId].PreviousDirection){
		if(g_Players[playerId].Direction==DIRECTION_NONE){
			g_Players[playerId].PatternId=CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,g_Players[playerId].PreviousDirection); 
			g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
		}
		else{
			g_Players[playerId].PreviousDirection=g_Players[playerId].Direction;
			g_Players[playerId].LastPose=0;
			//pose=GetNewPoseByDirection(g_Players[playerId].Direction);
		}

	}
	else{
		if(g_Players[playerId].Direction!=DIRECTION_NONE){
			if(g_Players[playerId].LastPose==1){
				g_Players[playerId].LastPose=0;
			}
			else{
				g_Players[playerId].LastPose=1;
			}
		}
		
	}

	if(g_Players[playerId].TeamId==REFEREE && g_MatchStatus==MATCH_BEFORE_KICK_OFF ){
		// DISABLED: Allow REFEREE to animate during return phase
		// g_Players[playerId].PatternId=PLAYER_POSE_RIGHT;
        if(g_Players[playerId].Direction!=DIRECTION_NONE){
			g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
		}
	}
	else{
		if(g_Players[playerId].Direction!=DIRECTION_NONE){
			g_Players[playerId].PatternId=GetPatternIdByPoseAndDirection(playerId);
		}
	}
}
// +++ Get pattern id by pose and direction +++
u8 GetPatternIdByPoseAndDirection(u8 playerId){
	u8 pose = g_Players[playerId].LastPose;
	u8 dir = g_Players[playerId].Direction;
    
    // Safety
    if (dir > 8) dir = DIRECTION_NONE;

    if (dir == DIRECTION_NONE) {
        return CallFnc_U8_P1(8,GetNoMovingPlayerPatternId,dir); // Assuming logic for NONE inside
    }
    
    // Lookup table for moving patterns (Pose 0, Pose 1)
    // Indexes: NONE, UP, UR, RI, DR, DO, DL, LE, UL
    // Note: NONE is handled above or uses index 0 (if valid)
    static const u8 k_MovePats[] = { 
        0, 0, // NONE
        PLAYER_POSE_MOVE_UP_1,          PLAYER_POSE_MOVE_UP_2,
        PLAYER_POSE_MOVE_UP_RIGHT_1,    PLAYER_POSE_MOVE_UP_RIGHT_2,
        PLAYER_POSE_MOVE_RIGHT_1,       PLAYER_POSE_MOVE_RIGHT_2,
        PLAYER_POSE_MOVE_DOWN_RIGHT_1,  PLAYER_POSE_MOVE_DOWN_RIGHT_2,
        PLAYER_POSE_MOVE_DOWN_1,        PLAYER_POSE_MOVE_DOWN_2,
        PLAYER_POSE_MOVE_DOWN_LEFT_1,   PLAYER_POSE_MOVE_DOWN_LEFT_2,
        PLAYER_POSE_MOVE_LEFT_1,        PLAYER_POSE_MOVE_LEFT_2,
        PLAYER_POSE_MOVE_UP_LEFT_1,     PLAYER_POSE_MOVE_UP_LEFT_2
    };

    return k_MovePats[dir * 2 + (pose ? 1 : 0)];
}
