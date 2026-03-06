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
#include "libs/vgm_player.h"


// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Goal kick +++
void GoalKick(u8 teamId){
	g_VblankSuspended=TRUE; 
	g_Ball.Size=1;
	// Placeholder for Goal Kick Logic
	V9990_PrintLayerAStringAtPos(10,18,"GOAL KICK");
	PlayPCM(PCM_REFEREER);
    PlayPCM(PCM_GOALKICK);
	g_MatchStatus=MATCH_BEFORE_GOAL_KICK;
	g_RestartKickTeamId = teamId;
	g_Timer = 0;
    
    // Clear possession immediately to stop ball sticking to GK during setup
    CallFnc_VOID_P1(4,SetPlayerBallPossession,NO_VALUE);
    g_Ball.PossessionPlayerId = NO_VALUE;

    // Detect Side based on Ball Position
    if (g_Ball.X < FIELD_POS_X_CENTER) g_GoalKickSide = CORNER_SIDE_LEFT;
    else g_GoalKickSide = CORNER_SIDE_RIGHT;
	g_VblankSuspended=FALSE;
}
// +++ Throw in +++
void BallThrowIn(u8 teamId){
	
	// Placeholder for Throw-in Logic
	V9990_PrintLayerAStringAtPos(13,18,"THROW IN");
	PlayPCM(PCM_REFEREER);
    PlayPCM(PCM_THROWIN);
	g_MatchStatus=MATCH_BEFORE_THROW_IN;
	g_RestartKickTeamId = teamId;
	g_Timer = 0;
	
	// STOP ALL BALL PHYSICS
	g_Ball.ShotActive = 0;
	g_Ball.PassTargetPlayerId = NO_VALUE;
	g_Ball.PossessionPlayerId = NO_VALUE;
	
	// FIX: Freeze all players at current positions to prevent walking to old targets
	for(u8 i=0; i<14; i++) {
		g_Players[i].TargetX = g_Players[i].X;
		g_Players[i].TargetY = g_Players[i].Y;
		// If outside bounds, clamp targets so they move to the line and stop
		if (g_Players[i].TargetX < FIELD_BOUND_X_LEFT) g_Players[i].TargetX = FIELD_BOUND_X_LEFT;
		if (g_Players[i].TargetX > FIELD_BOUND_X_RIGHT) g_Players[i].TargetX = FIELD_BOUND_X_RIGHT;
		if (g_Players[i].TargetY < FIELD_BOUND_Y_TOP) g_Players[i].TargetY = FIELD_BOUND_Y_TOP;
		if (g_Players[i].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[i].TargetY = FIELD_BOUND_Y_BOTTOM;
		
		g_Players[i].Status = PLAYER_STATUS_NONE;
	}
}
// +++ Check ball boundaries +++
void TickCheckBallBoundaries(){
	if(g_MatchStatus!=MATCH_IN_ACTION){
		return;
	}
    // Prevent Goal/Corner checks if the ball is currently held by the Goalkeeper
    // (This state can sometimes overlap with boundary positions during recoil animation)
    if(g_MatchStatus == MATCH_BALL_ON_GOALKEEPER || g_Ball.PossessionPlayerId != NO_VALUE) {
        if(g_Ball.PossessionPlayerId != NO_VALUE) {
            if(g_Players[g_Ball.PossessionPlayerId].Role == PLAYER_ROLE_GOALKEEPER) return;
        }
    }
    
    // IGNORE BOUNDARIES IF BALL IS MOVING BACK INTO FIELD (e.g. GK Kick)
    if (g_Ball.ShotActive != 0 || g_Ball.PassTargetPlayerId != NO_VALUE) {
        
        u16 destY = g_Ball.TargetY;
        u16 destX = g_Ball.TargetX;

        if (g_Ball.PassTargetPlayerId != NO_VALUE) {
            destY = g_Players[g_Ball.PassTargetPlayerId].Y;
            destX = g_Players[g_Ball.PassTargetPlayerId].X;
        }
        
        // If Ball is ABOVE Top Line
        if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
             // If destination is below current position (moving Down), it is returning.
             if(destY > g_Ball.Y) return;
        }
        
        // If Ball is BELOW Bottom Line
        if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
             // If destination is above current position (moving Up), it is returning.
             if(destY < g_Ball.Y) return;
        }
    }
   
    // We need to ensure ball starts INSIDE the field when kicked by GK.
    
    // Let's fix it in PerformPass / PerformShot (or TickGoalkeeperAnimation) instead of here.
    // But as a failsafe here: If Ball is ShotActive and LastTouch was Goalkeeper?
    // We don't track who touched last beyond Team.
    
    // Valid Check: If ball is "Out" but moving INWARDS to the field, ignore it.
    
    i16 relY_Top = (i16)g_Ball.Y - FIELD_BOUND_Y_TOP;
    i16 relY_Bottom = (i16)g_Ball.Y - FIELD_BOUND_Y_BOTTOM;
    
    // If Ball is ABOVE Top Line (relY_Top < 0)
    if (g_Ball.Y < FIELD_BOUND_Y_TOP) {
         // If moving DOWN (Direction is DOWN, DOWN_LEFT, DOWN_RIGHT), it is returning to field.
         if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_DOWN || g_Ball.Direction == DIRECTION_DOWN_LEFT || g_Ball.Direction == DIRECTION_DOWN_RIGHT)) {
             return; 
         }
    }
    
    // If Ball is BELOW Bottom Line
    if (g_Ball.Y > FIELD_BOUND_Y_BOTTOM) {
         // If moving UP, it is returning to field.
         if (g_Ball.ShotActive && (g_Ball.Direction == DIRECTION_UP || g_Ball.Direction == DIRECTION_UP_LEFT || g_Ball.Direction == DIRECTION_UP_RIGHT)) {
             return;
         }
    }

    // GLOBAL VISIBILITY CHECK
    // Only process boundaries if ball is roughly visible on screen.
    // This prevents false positives when the ball is far off-screen (e.g. during scrolling or glitch).
    i16 screenRelY = (i16)g_Ball.Y - (i16)g_FieldCurrentYPosition;
    if (screenRelY < -30 || screenRelY > 242) return; // Screen height 212 + 30px margin

	u8 teamId = g_Ball.LastTouchTeamId;
	if(teamId==NO_VALUE){
		teamId=TEAM_1; // Default
	}
	u8 opponentTeamId = (teamId == TEAM_1) ? TEAM_2 : TEAM_1;

    
    // DEBUG: Force Team 2 Throw-in (User Request: "se la rimessa viene portata dal team 2 assegnale al team 2")
    // Note: If Team 1 takes it out, it goes to Team 2 normally.
    // If Team 2 takes it out, normally it goes to Team 1. We override this to Team 2.
    //if (teamId == TEAM_1) opponentTeamId = TEAM_1; //GP_USER

	// Check Side Lines (Throw-in)

	if((i16)g_Ball.X < (i16)FIELD_BOUND_X_LEFT || (i16)g_Ball.X > (i16)FIELD_BOUND_X_RIGHT){
		BallThrowIn(opponentTeamId); //GP_USER
		//BallThrowIn(teamId); // GP_USER
		return;
	}

	// Check Top Line (Goal of Team 2)
	if((i16)g_Ball.Y < (i16)FIELD_BOUND_Y_TOP){
        // Safety: Don't check Top Goal if we are definitely in South Zone
        if (g_ActiveFieldZone == FIELD_SOUTH_ZONE) return;

		// Check Goal (Significantly widened tolerance to prevent false negatives)
		// Tolerance +/- 8 pixels (approx ball width)
		if((i16)g_Ball.X > (i16)(GOAL_X_MIN - 8) && (i16)g_Ball.X < (i16)(GOAL_X_MAX + 8)){
			CallFnc_VOID_P1(8,BallInGoal,TEAM_1); // Team 1 attacked up and scored
		}
		else{
			if(teamId == TEAM_1){ // Attacker touched last
				GoalKick(TEAM_2);
			}
			else{ // Defender touched last
				CallFnc_VOID_P1(7,CornerKick,TEAM_1);
			}
		}
		return;
	}

	// Check Bottom Line (Goal of Team 1)
	if((i16)g_Ball.Y > (i16)FIELD_BOUND_Y_BOTTOM){
        // Safety: Don't check Bottom Goal if we are definitely in North Zone
        if (g_ActiveFieldZone == FIELD_NORTH_ZONE) return;

		// Check Goal
		if((i16)g_Ball.X > (i16)(GOAL_X_MIN - 8) && (i16)g_Ball.X < (i16)(GOAL_X_MAX + 8)){
			BallInGoal(TEAM_2); // Team 2 attacked down and scored
		}
		else{
			if(teamId == TEAM_2){ // Attacker touched last (Team 2 attacking down)
				GoalKick(TEAM_1);
			}
			else{ // Defender touched last (Team 1 defending)
				CallFnc_VOID_P1(7,CornerKick,TEAM_2);
			}
		}
		return;
	}
}
// +++ Goalkeeper animation +++
void TickGoalkeeperAnimation() {
    if (g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) return;
    if (g_GkAnimPlayerId == NO_VALUE) return;
	
	// Ensure status is locked so main loop doesn't override PatternId
	g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
    
    g_GkAnimTimer++;
    
    u8 kickTime = 60; // 1 Second delay for all (was 30)
    if (g_GkIsGroundKick) kickTime = 6; // Immediate kick for ground kicks

    // Recoil Animation (First 30 frames)
    if (g_GkAnimTimer < kickTime) {
        if (g_GkAnimTimer < 30 && (g_GkAnimTimer % 2) == 0 && g_GkRecoilY != 0) { // Faster movement (every 2 frames)
            g_Players[g_GkAnimPlayerId].Y += g_GkRecoilY;
            
            // Safety Clamp
           if(g_Players[g_GkAnimPlayerId].Y < FIELD_BOUND_Y_TOP) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_TOP;
           if(g_Players[g_GkAnimPlayerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[g_GkAnimPlayerId].Y = FIELD_BOUND_Y_BOTTOM;

            g_Players[g_GkAnimPlayerId].TargetY = g_Players[g_GkAnimPlayerId].Y; // Sync target
        }
        // Force Pose again
        if (g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) {
             if (g_GkIsGroundKick) g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_BACK;
             else g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_TEAM1_GK_BALL_FRONT;
        }
        else g_Players[g_GkAnimPlayerId].PatternId = PLAYER_POSE_FRONT; // Team 2 GK plays like a player (feet)

        CallFnc_VOID_P1(4, PutBallOnPlayerFeet,g_GkAnimPlayerId);
        
    } else if (g_GkAnimTimer >= kickTime) {
        
        // WAIT LOGIC (Don't kick until safe or timeout)
        bool safeToKick = false;
        
        // 1. Timeout (Force kick after 2 seconds waiting)
        if (g_GkAnimTimer > (kickTime + 90)) safeToKick = true; // Wait up to 1.5 seconds for team to move up
        
        // 2. Check Teammates Position (Wait for them to move out)
        u8 targetId = GetBestPassTarget(g_GkAnimPlayerId); 
        if (!safeToKick && targetId != NO_VALUE) {
             u16 dist = (u16)(Math_Abs32((i16)g_Players[targetId].X - (i16)g_Players[g_GkAnimPlayerId].X) + 
                              Math_Abs32((i16)g_Players[targetId].Y - (i16)g_Players[g_GkAnimPlayerId].Y));
             if (dist > 60) safeToKick = true;
        }
        
        // 3. Panic Check (Opponent too close)
        if (!safeToKick) {
             u8 closestOpp = CallFnc_U8_P2(4,GetClosestPlayerToBall,(g_Players[g_GkAnimPlayerId].TeamId == TEAM_1) ? TEAM_2 : TEAM_1, NO_VALUE);
             if (closestOpp != NO_VALUE) {
                 // If opponent is within 40px, kick immediately
                 // (Distance check logic simplified here as we don't have direct access to opponent dist in this scope easily without recalc)
                 // But GetClosestPlayerToBall uses global ball, which is at GK feet.
                 u16 edist = (u16)(Math_Abs32((i16)g_Players[closestOpp].X - (i16)g_Ball.X) + 
                                   Math_Abs32((i16)g_Players[closestOpp].Y - (i16)g_Ball.Y));
                 if (edist < 40) safeToKick = true;
             }
        }
        
        // For Ground Kicks (Goal Kick), assume safety was checked before run-up to ensure fluid animation
        if (g_GkIsGroundKick) safeToKick = true;
        
        // 4. AREA CLEARANCE CHECK (User Request)
        // Wait if players are too close to goal area
        if (!safeToKick) {
            bool areaClear = true;
            u8 gkTeam = g_Players[g_GkAnimPlayerId].TeamId;
            
            for(u8 i=0; i<14; i++) {
                if (i == g_GkAnimPlayerId) continue;
                u16 py = g_Players[i].Y;
                
                if (gkTeam == TEAM_1) { // Bottom Goal (Y=430)
                    // Teammates must be out of box (Y < 350)
                    if (g_Players[i].TeamId == TEAM_1 && py > 350) areaClear = false;
                    // Opponents must be further (Y < 360) - Relaxed to allow standing on box line (350)
                    else if (g_Players[i].TeamId != TEAM_1 && py > 360) areaClear = false;
                } else { // Top Goal (Y=50)
                    // Teammates must be out of box (Y > 130)
                    if (g_Players[i].TeamId == TEAM_2 && py < 130) areaClear = false;
                    // Opponents must be further (Y > 120) - Relaxed to allow standing on box line (130)
                    else if (g_Players[i].TeamId != TEAM_2 && py < 120) areaClear = false;
                }
                if (!areaClear) break;
            }
            if (!areaClear) return; // Wait!
            safeToKick = true;
        }

        if (safeToKick) {
            // KICK!
                 u8 team = g_Players[g_GkAnimPlayerId].TeamId;
            u16 tx, ty;
            
            // Randomize length and direction slightly (Variable Lengths)
            u8 rnd = (g_FrameCounter * 17 + g_Ball.X * 3) % 64; // 0-63
            
            if (targetId != NO_VALUE) {
                 tx = g_Players[targetId].X;
                 ty = g_Players[targetId].Y;
                 // Add jitter
                 if (rnd & 1) tx += (rnd >> 2); else tx -= (rnd >> 2);
                 if (rnd & 2) ty += (rnd >> 2); else ty -= (rnd >> 2);
				 // Centralize kick if too wide (Avoid touchlines)
                 if (tx < 60) tx = 60 + (rnd % 10);
                 if (tx > 180) tx = 180 - (rnd % 10);
            } else {
                 // Fallback Area (Midfield)
                 tx = FIELD_POS_X_CENTER + (rnd - 32);
                    u8 dist = 10 + (rnd * 3) / 2; // Variable length (10-105px from center)
                 if (team == TEAM_1) ty = FIELD_POS_Y_CENTER + dist;
                 else ty = FIELD_POS_Y_CENTER - dist;
            }

           // CONSTRAINT: Never cross midfield
            if (team == TEAM_1) {
                // Attack UP. Opponent Box Top is 130. Keep Y > 130.
                // Attack UP. Keep Y >= Center
                if (ty < FIELD_POS_Y_CENTER) ty = FIELD_POS_Y_CENTER + (rnd % 30);
            } else {
                 // Attack DOWN. Keep Y <= Center
                if (ty > FIELD_POS_Y_CENTER) ty = FIELD_POS_Y_CENTER - (rnd % 30);
            }
            
            // Clamp X
            if (tx < FIELD_BOUND_X_LEFT) tx = FIELD_BOUND_X_LEFT;
            if (tx > FIELD_BOUND_X_RIGHT) tx = FIELD_BOUND_X_RIGHT;

            // Execute Kick (Use PerformShot for clearance style)
            CallFnc_VOID_16_P2(8, PerformShot, tx, ty);
            
            // Update Sprite for Kick
            u8 dir = g_Players[g_GkAnimPlayerId].Direction;
            u8 pose;
            
            if (dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) 
               pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_RIGHT : PLAYER_POSE_TEAM2_RESTART_RIGHT;
            else if (dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT)
               pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_LEFT : PLAYER_POSE_TEAM2_RESTART_LEFT;
            else 
               pose = (team == TEAM_1) ? PLAYER_POSE_TEAM1_RESTART_FRONT : PLAYER_POSE_TEAM2_RESTART_FRONT;
            
            g_Players[g_GkAnimPlayerId].PatternId = pose;
            g_Players[g_GkAnimPlayerId].Status = PLAYER_STATUS_POSITIONED;
            
            g_Ball.StealCooldown = 30; 
            g_MatchStatus = MATCH_IN_ACTION;
        }
        // If not safe, do nothing (wait for next frame)
    }
}
// +++ Update pass target +++
void UpdatePassTarget() {
    // Skip auto-targeting during set pieces (Manual selection rules)
    if (g_MatchStatus != MATCH_IN_ACTION && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
        return; 
    }

	u8 carrier = g_Ball.PossessionPlayerId;
    
	if (g_Ball.PossessionPlayerId == NO_VALUE) {
		g_PassTargetPlayer = NO_VALUE;
		return;
	}
    
    // Update every 2 frames (30fps) for responsiveness without killing CPU
    if (g_FrameCounter & 1) return;

    if (carrier != NO_VALUE) {
        g_PassTargetPlayer = GetBestPassTarget(carrier);
    } else {
		if (g_Ball.PassTargetPlayerId == NO_VALUE) g_PassTargetPlayer = NO_VALUE;
    }
}
// +++ Get best pass target +++
u8 GetBestPassTarget(u8 passerId) {
	u8 bestTarget = NO_VALUE;
	i32 bestScore = 0;//-2100000000;
	u8 teamId = g_Players[passerId].TeamId;
	u8 dir = g_Players[passerId].Direction;
    i16 px = (i16)g_Players[passerId].X;
    i16 py = (i16)g_Players[passerId].Y;
    bool isGK = (g_Players[passerId].Role == PLAYER_ROLE_GOALKEEPER);
    
	// Vector for direction
	i16 dirX = 0, dirY = 0;
	u8 i; 

	if (dir == DIRECTION_NONE) dir = g_Players[passerId].PreviousDirection;

    if (dir == DIRECTION_UP) dirY = -100;
    else if (dir == DIRECTION_DOWN) dirY = 100;
    else if (dir == DIRECTION_LEFT) dirX = -100;
    else if (dir == DIRECTION_RIGHT) dirX = 100;
    else if (dir == DIRECTION_UP_RIGHT) { dirX = 70; dirY = -70; }
    else if (dir == DIRECTION_UP_LEFT) { dirX = -70; dirY = -70; }
    else if (dir == DIRECTION_DOWN_RIGHT) { dirX = 70; dirY = 70; }
    else if (dir == DIRECTION_DOWN_LEFT) { dirX = -70; dirY = 70; }
    else {
        if (teamId == TEAM_1) dirY = -100; 
        else dirY = 100; 
    }

	for(i=0; i<14; i++) {
        // Optimized variables
        i16 dx, dy, adx, ady;
        i32 dot, score;

		if(g_Players[i].TeamId != teamId) continue;
		if(i == passerId) continue;
        // if(g_Players[i].Status == PLAYER_STATUS_NONE) continue; // Allow passing to moving players!
		if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue; 
		
        // VISIBILITY CHECK (Moved up for optimization)
        if (g_Players[i].Y < g_FieldCurrentYPosition || g_Players[i].Y > (g_FieldCurrentYPosition + 220)) {
            continue;
        }

		dx = (i16)g_Players[i].X - px;
		dy = (i16)g_Players[i].Y - py;
        
        // MINIMUM DISTANCE CHECK (Box check is lighter than distSq)
        // Reduced to ~30px to improve responsiveness for short passes
        adx = (dx < 0) ? -dx : dx;
        ady = (dy < 0) ? -dy : dy;
        if (adx < 32 && ady < 32) continue;
        
        // GK Specific: Don't pass to players who are too close (risk of interception)
        if (isGK && (adx + ady) < 160) continue; // Increased min distance (force long ball)

		// GK RESTRICTED KICK DISTANCE
		if (g_Players[passerId].Role == PLAYER_ROLE_GOALKEEPER) {
			// Limit to ~250px (reach midfield/strikers). 
			if (((i32)dx*(i32)dx + (i32)dy*(i32)dy) > 62500) continue;
		}

        dot = ((i32)dx * dirX) + ((i32)dy * dirY);
		
		// DIRECTION CHECK
		if (dot <= 0) {
            // RELAXED CHECK: Allow slight backward passes if very close?
            // Or just allow wider cone (dot > -0.2?)
            // Let's stick to 90 degrees but check if vector calculation is correct.
            // If stopped, dirX/dirY might be tricky.
            continue; 
        }

        // Heuristic
        // Simplified scoring: Dot Product (Alignment) - Linear Distance Penalty
        // Avoids expensive squares and divisions.
        score = dot - ((i32)(adx + ady) * 60); 
        
        if (isGK) {
             // GK Strategy: Reward distance (Long balls) instead of penalizing it
             score = dot + ((i32)(adx + ady) * 10); 
        }
		
        if (score > bestScore) {
            bestScore = score;
            bestTarget = i;
        }
	}
    
    // --- FALLBACK ---
    // If no target found with strict direction, try finding ANY closest teammate
    // regardless of direction, but within reasonable distance (e.g. 80px)
    //if (bestTarget == NO_VALUE) {
    //    for(i=0; i<14; i++) {
    //         if(g_Players[i].TeamId != teamId) continue;
    //         if(i == passerId) continue;
    //         // if(g_Players[i].Status == PLAYER_STATUS_NONE) continue; // Allow passing to moving players!
    //         if(g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
    //         
    //         // Visibility
    //         if (g_Players[i].Y < g_FieldCurrentYPosition || g_Players[i].Y > (g_FieldCurrentYPosition + 220)) continue;
//
    //         i16 dx = (i16)g_Players[i].X - px;
    //         i16 dy = (i16)g_Players[i].Y - py;
    //         
    //         // Ignore min distance check here?
    //         
    //         // Max Distance for fallback
    //         i16 adx = (dx < 0) ? -dx : dx;
    //         i16 ady = (dy < 0) ? -dy : dy;
    //         if (adx + ady > 100) continue; // Only close teammates
    //         
    //         // Simple closeness score
    //         i32 score = 1000 - (adx + ady);
    //         if (score > bestScore) {
    //             bestScore = score;
    //             bestTarget = i;
    //         }
    //    }
    //}
    
	return bestTarget;
}
// +++ Tick ball collision +++
void TickBallCollision(){
	if(g_MatchStatus!=MATCH_IN_ACTION){
		return;
	}

    // DISABLE COLLISION DURING GK KICK (Prevent Steal Loop)
    if (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER) {
        return;
    }

	// Increment Hold Timer if someone has the ball
	if (g_Ball.PossessionPlayerId != NO_VALUE) {
		if (g_Ball.PossessionTimer < 255) g_Ball.PossessionTimer++;
	}
	
	// Decrement Steal Protection
	if (g_Ball.StealCooldown > 0) {
		g_Ball.StealCooldown--;
	}

	// PASSING HEIGHT CHECK
    bool impossibleToReach = false;
	if (g_Ball.PossessionPlayerId == NO_VALUE) { // Ball in air
		if (g_Ball.Size >= 5) impossibleToReach = true;
        // If High Shot (Kick), prevent interception at strict launch
        if (g_Ball.ShotActive == 1) {
             i16 diffStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX; 
             if (diffStart < 0) diffStart = -diffStart;
             if (diffStart < 20) impossibleToReach = true;
        }
	}
	
	for(u8 i=0; i<14; i++){
		if(g_Players[i].Status == PLAYER_STATUS_NONE) continue;
		if(g_Ball.PossessionPlayerId == i) continue; // Skip self

        // Determine effective hit distance
        // Normal players: 14px radius (20x20 box)
        // GK: 14px radius (28x28 box) -> INCREASED FOR DIVING
        u8 hitDist = 14;
        if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
             u8 countryId = (g_Players[i].TeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
             const TeamStats* stats = GetTeamStats(countryId);
             if (g_Ball.ShotActive) hitDist = stats->GkSkill; 
             else hitDist = 14; 
        }

        // Check proximity
		u16 diffX = (g_Ball.X > g_Players[i].X) ? (g_Ball.X - g_Players[i].X) : (g_Players[i].X - g_Ball.X);
		u16 diffY = (g_Ball.Y > g_Players[i].Y) ? (g_Ball.Y - g_Players[i].Y) : (g_Players[i].Y - g_Ball.Y);

		if(diffX < hitDist && diffY < hitDist){ 
			if (g_Ball.PossessionPlayerId == NO_VALUE) {
                // --- BALL IS FREE ---

      

                // 1. Check if unreachable (height or just kicked)
                // if (impossibleToReach) continue; // MOVED check inside specific blocks (GK ignores height on shots)
                
                // bool impossibleForPlayer = impossibleToReach;
                // if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER && g_Ball.ShotActive) impossibleForPlayer = false; // GK catches shots always
                
                // if (impossibleForPlayer) continue; 

                // if (g_Ball.Size >= 4 && g_Players[i].Role != PLAYER_ROLE_GOALKEEPER) continue;

                // 2. Ignore Launcher (Double check distance from current shot start to prevent self-collision)
                // Only apply this check during INITIAL HIGH SHOT/PASS phase (ShotActive == 1 or Pass Active).
                // Once ball bounces or rolls (States 2, 3), the "Start" resets to the bounce point,
                // so we must NOT enforce distance checks there (otherwise ball is un-pickupable at bounce spots).
                if (g_Ball.ShotActive == 1 || g_Ball.PassTargetPlayerId != NO_VALUE) {
                    i16 dxStart = (i16)g_Ball.X - (i16)g_Ball.PassStartX;
                    i16 dyStart = (i16)g_Ball.Y - (i16)g_Ball.PassStartY;
                    if (dxStart < 0) dxStart = -dxStart;
                    if (dyStart < 0) dyStart = -dyStart;
                    if ((dxStart + dyStart) < 24) continue; 
                }

                // 3. GK Interception Logic
                if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                     
                     bool wasShot = (g_Ball.ShotActive != 0);

                     // DIVING LOGIC
                     if (g_Ball.ShotActive) {
                          i16 signedDiffX = (i16)g_Ball.X - (i16)g_Players[i].X;
                          
                          // Central Save (tolerance 5px)
                          if (signedDiffX >= -5 && signedDiffX <= 5) {
                               // Standard Catch
                               // (Pose handles in GoalkeeperWithBall)
                          } 
                          else {
                               // Diving Save (6px to 15px+)
                               // Use Diving Poses
                               u8 team = g_Players[i].TeamId;
                               u8 divePose = 0;
                               
                               if (signedDiffX > 5) { // Ball to Right
                                   if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_RIGHT;
                                   else divePose = PLAYER_POSE_TEAM2_GK_DOWN_RIGHT;
                               } else { // Ball to Left
                                   if (team == TEAM_1) divePose = PLAYER_POSE_TEAM1_GK_DOWN_LEFT;
                                   else divePose = PLAYER_POSE_TEAM2_GK_DOWN_LEFT;
                               }
                               
                               g_Players[i].PatternId = divePose;
                               g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock it
                          }
                     }

                     CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
                     CallFnc_VOID_P2(5,GoalkeeperWithBall,g_Players[i].TeamId, !wasShot); 
                     if (!wasShot) g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
                     
                     // Reset Ball State
                     g_Ball.PassTargetPlayerId = NO_VALUE;
                     g_Ball.ShotActive = 0;
                     g_Ball.Size = 2;
                     
                     return; // Stop checking
                }

                // 4. Normal Player Logic
				g_Ball.PassTargetPlayerId = NO_VALUE; 
                g_Ball.ShotActive = 0; 
                g_Ball.KickMoveState = 3; // Force ball to snap to feet immediately (No visual lag)
				g_Ball.Size = 1; // On feet = small
				CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
				g_Players[i].Status = PLAYER_STATUS_HAS_BALL;
				return; // Stop checking

            } else {
                // --- BALL IS OWNED (STEAL) ---
				
				// If protected (just stolen), ignore collision
				if (g_Ball.StealCooldown > 0) continue;

				u8 currentOwner = g_Ball.PossessionPlayerId;

				// GK takes ball from anyone (Teammate or Opponent)
				if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) {
                    CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
                    CallFnc_VOID_P2(5,GoalkeeperWithBall,g_Players[i].TeamId, 1); 
                    g_GkIsGroundKick = false; // Force Slow/Hand mode for Steals
					
					// Reset Ball State
					g_Ball.PassTargetPlayerId = NO_VALUE;
					g_Ball.ShotActive = 0;
					g_Ball.Size = 2;
					return;
				}

				if (g_Players[i].TeamId != g_Players[currentOwner].TeamId) {
					// Opponent detected close to ball carrier -> Steal!
                    CallFnc_VOID_P1(4,PutBallOnPlayerFeet,i);
                    // Reset ball state just in case
                    g_Ball.PassTargetPlayerId = NO_VALUE;
                    g_Ball.ShotActive = 0;
					return;
				}
            }
		}
	}
}
// +++ Print team name +++
void PrintTeamName(u8 x, u8 teamPaletteId) {

    const char* pName = 0;

    if (!pName) {
        switch (teamPaletteId) {

            case TEAM_AUS: pName = "AUS"; break;
            case TEAM_BRA: pName = "BRA"; break;
            case TEAM_ITA: pName = "ITA"; break;
            case TEAM_FRA: pName = "FRA"; break;
            case TEAM_GBR: pName = "GBR"; break;
            case TEAM_GER: pName = "GER"; break;
            default:       pName = "   "; break;
        }
    }
    V9990_PrintLayerAStringAtPos(x, 0, pName);
	if(x==0){
		g_History1[0] = pName[0];
		g_History1[1] = pName[1];
		g_History1[2] = pName[2];
		g_History1[3] = ':';
		g_History1[4] = ' ';
		g_History1[5] = ' ';
		g_History1[6] = ' ';
		g_History1[7] = ' ';
		g_History1[8] = ' ';
		g_History1[9] = ' ';
		g_History1[10] = '\0';
	}
	else{
		g_History2[0] = pName[0];
		g_History2[1] = pName[1];
		g_History2[2] = pName[2];
		g_History2[3] = ':';
		g_History2[4] = ' ';
		g_History2[5] = ' ';
		g_History2[6] = ' ';
		g_History2[7] = ' ';
		g_History2[8] = ' ';
		g_History2[9] = ' ';
		g_History2[10] = '\0';
	}
}
// +++ Get number string +++
char *GetNumberString(u16 value)
{
    static char str[5];

    if (value < 10) {
        str[0] = '0' + value;
        str[1] = '\0';
    } else {
        str[0] = '0' + (value / 10);
        str[1] = '0' + (value % 10);
        str[2] = '\0';
    }

    return str;
}
// +++ Show match header info +++
void ShowHeaderInfo(){

    
	u8 pos1 = (g_Team1Score >= 10) ? 4 : 5;
	u8 pos2 = (g_Team2Score >= 10) ? 9 : 10;
    
    PrintTeamName(0, g_Team1PaletteId);

	V9990_PrintLayerAStringAtPos(pos1, 0, GetNumberString(g_Team1Score));
	V9990_PrintLayerAStringAtPos(7, 0, "-");
	V9990_PrintLayerAStringAtPos(pos2, 0, GetNumberString(g_Team2Score));

    PrintTeamName(12, g_Team2PaletteId);
	u8 minutes=g_SecondsToEndOfMatch / 60;
	u8 seconds=g_SecondsToEndOfMatch - minutes*60;
	V9990_PrintLayerAStringAtPos(28,0,GetNumberString(minutes));
	V9990_PrintLayerAStringAtPos(29,0,":");
	if(seconds>=10){
		V9990_PrintLayerAStringAtPos(30,0,GetNumberString(seconds));
	}
	else{
		V9990_PrintLayerAStringAtPos(30,0,"0");
		V9990_PrintLayerAStringAtPos(31,0,GetNumberString(seconds));
	}
}
// +++ Set teams position on new match presentation +++
void SetTeamsPresentationSpritesPosition(){
	g_MatchStatus=MATCH_NOT_STARTED;
	for(u8 i=0;i<7;i++){
		g_Players[i].Y=230;
		g_Players[i].X=72+i*20;
		g_Players[i].PatternId=PLAYER_POSE_FRONT;
		g_Players[i].TeamId=TEAM_2;

	}
	for(u8 i=7;i<14;i++){
		g_Players[i].Y=250;
		g_Players[i].X=72+(i-7)*20;
		g_Players[i].PatternId=PLAYER_POSE_BACK;
		g_Players[i].TeamId=TEAM_1;
	}
	g_Players[REFEREE].Y=FIELD_POS_Y_CENTER;
	g_Players[REFEREE].X=30;
	g_Players[REFEREE].PatternId=PLAYER_POSE_RIGHT;
	g_Players[REFEREE].TeamId=REFEREE;
	g_Players[REFEREE].LastPose=0;
	g_Players[REFEREE].Direction=DIRECTION_RIGHT;
	g_Players[REFEREE].Role=NO_VALUE;
	g_Players[REFEREE].Status=PLAYER_STATUS_NONE;
	CallFnc_VOID(8,ResetPlayersInfo);
	SetPlayerTarget(REFEREE); 

    static const u8 k_PlayerRoles[] = { 
        PLAYER_ROLE_GOALKEEPER, PLAYER_ROLE_LEFT_DEFENDER, PLAYER_ROLE_RIGHT_HALFFIELDER, 
        PLAYER_ROLE_LEFT_HALFFIELDER, PLAYER_ROLE_RIGHT_DEFENDER, PLAYER_ROLE_LEFT_STRIKER, 
        PLAYER_ROLE_RIGHT_STRIKER 
    };

	for(u8 i=0;i<14;i++){
		g_Players[i].AiTickCounter=0;
        g_Players[i].Role = k_PlayerRoles[i % 7];
	}
	g_Ball.X=FIELD_POS_X_CENTER;
	g_Ball.Y=FIELD_POS_Y_CENTER;
	g_Ball.PreviousY=g_Ball.Y;
	ResetBallInfo(true);
}
// +++ Reset ball info +++
void ResetBallInfo(bool resetPossessionPlayer){
	g_Ball.PreviousY=g_Ball.Y;
	g_Ball.KickMoveState=NO_VALUE;
	g_Ball.Size=1;
	g_Ball.Direction=DIRECTION_NONE;
	if(resetPossessionPlayer){
		g_Ball.PossessionPlayerId=NO_VALUE;
	}
}
// +++ Set player target +++
void SetPlayerTarget(u8 playerId){
	if(g_FieldScrollingActionInProgress!=NO_VALUE && g_MatchStatus!=MATCH_BEFORE_KICK_OFF){
		return;
	}
	switch(g_MatchStatus){
		case MATCH_BEFORE_KICK_OFF:
        {
            static const u8 k_KO_X[] = { 
                FIELD_POS_X_CENTER, 
                FIELD_POS_X_LEFT, FIELD_POS_X_RIGHT,
                FIELD_POS_X_LEFT+100, FIELD_POS_X_RIGHT-100, 
                FIELD_POS_X_LEFT, FIELD_POS_X_RIGHT 
            };
            static const u16 k_KO_Y_T1[] = {
                FIELD_POS_Y_TEAM1_GOALKEEPER,
                FIELD_POS_Y_TEAM1_DEFENDERS, FIELD_POS_Y_TEAM1_DEFENDERS,
                FIELD_POS_Y_TEAM1_HALFFIELDERS+40, FIELD_POS_Y_TEAM1_HALFFIELDERS+40,
                FIELD_POS_Y_TEAM1_HALFFIELDERS, FIELD_POS_Y_TEAM1_HALFFIELDERS
            };
            static const u16 k_KO_Y_T2[] = {
                FIELD_POS_Y_TEAM2_GOALKEEPER,
                FIELD_POS_Y_TEAM2_DEFENDERS, FIELD_POS_Y_TEAM2_DEFENDERS,
                FIELD_POS_Y_TEAM2_HALFFIELDERS-40, FIELD_POS_Y_TEAM2_HALFFIELDERS-40,
                FIELD_POS_Y_TEAM2_HALFFIELDERS, FIELD_POS_Y_TEAM2_HALFFIELDERS
            };

			if(g_Players[playerId].TeamId==REFEREE){
				// Position near center but slightly offset to avoid overlapping ball/players
				g_Players[playerId].TargetX=FIELD_POS_X_CENTER - 30; 
				g_Players[playerId].TargetY=FIELD_POS_Y_CENTER - 40; 
			}
			else{
                u8 role = g_Players[playerId].Role;
                if (role > 6) role = 0; // Safety
                
                bool isTeam1 = (g_Players[playerId].TeamId == TEAM_1);
                
                // Base coordinates from tables
                u16 tx = k_KO_X[role];
                u16 ty = isTeam1 ? k_KO_Y_T1[role] : k_KO_Y_T2[role];

                // Special handling for Team 2 X mirroring if needed
                if (!isTeam1 && role == PLAYER_ROLE_RIGHT_HALFFIELDER) {
                     tx = FIELD_POS_X_RIGHT - 116; 
                }

                // Special handling for Kickoff taking team Halffielders
                if ((role == PLAYER_ROLE_LEFT_HALFFIELDER || role == PLAYER_ROLE_RIGHT_HALFFIELDER) &&
                    g_RestartKickTeamId == g_Players[playerId].TeamId) 
                {
                     ty = isTeam1 ? FIELD_POS_Y_CENTER : (FIELD_POS_Y_CENTER - 10);
                     if (role == PLAYER_ROLE_LEFT_HALFFIELDER) tx = FIELD_POS_X_CENTER - 7;
                     else tx = FIELD_POS_X_CENTER + 7;
                }

                g_Players[playerId].TargetX = tx;
                g_Players[playerId].TargetY = ty;
			}
        }
			break;
	}
}
// +++ Show game field +++
void ShowField(){
    
    u16 tileId=0;
    
    for (u8 y=0;y<64;y++){
		for (u8 x=0;x<32;x++){
	        V9_Poke16(V9_CellAddrP1B(x,y), tileId++);
		}
	}
    
    for (u8 y=0;y<64;y++){
		for (u8 x=0;x<32;x++){
            V9_Poke16(V9_CellAddrP1A(x,y), 0);
		}
	}
    for (u8 x=0;x<64;x++){
        V9_Poke16(V9_CellAddrP1A(x,0), 32);
	}
}