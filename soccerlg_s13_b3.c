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
//#include "libs/vgm/vgm_player.h"
#include "libs/yscc/yscc_player.h"
#include "soccerlg_rawdef.h"

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Victory +++
void TeamVictory(u8 teamId) {
    g_MatchStatus = MATCH_VICTORY_LAP;
    g_FieldScrollingActionInProgress = NO_VALUE; // Disable ISR scrolling

    // Target: Ball Position (Celebration Huddle)
    u16 targetX = g_Ball.X;
    u16 targetY = g_Ball.Y;
    
    // Hide Ball (Move offscreen)
    g_Ball.Y = g_FieldCurrentYPosition + 240; 
    
    // Safety: If ball was wildly out of view, center target on screen
    if (targetY < g_FieldCurrentYPosition || targetY > g_FieldCurrentYPosition + 212) {
        targetY = g_FieldCurrentYPosition + 106;
        targetX = 128;
    }

    // 1. Setup All Players (Active)
    for(u8 i=0; i<15; i++) {
        // Referee (14) included in loop to be reset
        g_Players[i].Status = PLAYER_STATUS_NONE; // Active for movement
    }

    u16 timer = 0;
    u16 extraTime = 0;
    if (g_modernAudio)
        YSCC_Play(SCC_MODERN_VICTORY_BIN_SEG, SCC_MODERN_VICTORY_BIN_SIZE);
    else
        YSCC_Play(SCC_VICTORY_BIN_SEG, SCC_VICTORY_BIN_SIZE);
    while (true) { 
        V9990_WaitSynch();
        timer++;
        
        u8 losersOnField = 0;

        for(u8 i=0; i<15; i++) { // Loop 0 to 14 (Includes Referee)
            
            bool isWinner = (g_Players[i].TeamId == teamId);
            if (i == REFEREE) isWinner = false; // Force Referee to be "loser" (exit field)

            if (isWinner) {
                // --- WINNING TEAM (Celebration) ---
                
                // Calculate distance to target
                i16 dx = (i16)targetX - (i16)g_Players[i].X;
                i16 dy = (i16)targetY - (i16)g_Players[i].Y;
                
                // Simple distance check
                u16 dist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
                
                // Stop distance (Airy: Larger radius, 35-105px)
                u8 stopDist = 35 + (i % 7) * 10; 

                if (dist > stopDist) {
                    // Move towards target
                    if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
                    if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
                    
                    // Set Direction for Sprite Animation
                    if (Math_Abs32(dx) > Math_Abs32(dy)) {
                        g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
                    } else {
                        g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
                    }
                    
                    g_Players[i].Status = PLAYER_STATUS_NONE; // Running animation
                    
                } else {
                    // Arrived: Celebrate with Circular Movement!
                    g_Players[i].Status = PLAYER_STATUS_POSITIONED; // Lock pose
                    
                    // Animation cycle (Hands Up)
                    bool animFrame = (timer / 8) % 2 == 0;
                    
                    // Circular Movement Logic (Tangent)
                    if ((timer % 3) == 0) { // Slow speed
                        i8 moveX = 0;
                        i8 moveY = 0;
                        
                        if (dy > 10) moveX = 1; else if (dy < -10) moveX = -1;
                        if (dx > 10) moveY = -1; else if (dx < -10) moveY = 1;
                        
                        g_Players[i].X += moveX;
                        g_Players[i].Y += moveY;
                        
                        // Leash to ring (if drifted too far)
                        u16 currentDist = (u16)(Math_Abs32(dx) + Math_Abs32(dy));
                        if (currentDist > stopDist + 15) {
                             if (dx > 0) g_Players[i].X++; else g_Players[i].X--;
                             if (dy > 0) g_Players[i].Y++; else g_Players[i].Y--;
                        }
                    }

                    // Rotation logic: Show back if moving up, front if moving down
                    bool showBack = ((timer + i * 17) / 60) & 1;

                    if (showBack) {
                        g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_BACK_1 : PLAYER_POSE_CELEBRATION_BACK_2;
                    } else {
                        g_Players[i].PatternId = animFrame ? PLAYER_POSE_CELEBRATION_FRONT_1 : PLAYER_POSE_CELEBRATION_FRONT_2;
                    }
                }
            } else {
                // --- LOSING TEAM & REFEREE (Walk Away) ---
                
                // Check if already exited (X < 8)
                if (g_Players[i].X < 8) {
                    // Hide them
                    g_Players[i].Y = (g_FieldCurrentYPosition > 32) ? g_FieldCurrentYPosition - 32 : 0;
                    continue; // Skip movement, count as exited
                }
                
                losersOnField++;

                // Target: Midfield Left (X=0, Y=Center)
                i16 dx = (i16)0 - (i16)g_Players[i].X;
                i16 dy = (i16)FIELD_POS_Y_CENTER - (i16)g_Players[i].Y;
                
                // Move slower (every 2nd frame)
                if ((timer & 1) == 0) {
                    if (dx > 0) g_Players[i].X++; else if (dx < 0) g_Players[i].X--;
                    if (dy > 0) g_Players[i].Y++; else if (dy < 0) g_Players[i].Y--;
                }
                
                // Set Direction
                if (Math_Abs32(dx) > Math_Abs32(dy)) {
                    g_Players[i].Direction = (dx > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
                } else {
                    g_Players[i].Direction = (dy > 0) ? DIRECTION_DOWN : DIRECTION_UP;
                }
                
                g_Players[i].Status = PLAYER_STATUS_NONE; // Walking animation
            }
        }
        
        CallFnc_VOID(6,UpdateSpritesPositions);
        
        if (losersOnField == 0) {
            extraTime++;
            if (extraTime > 120) break; // 2 seconds after last exit
        }
        
        // Safety timeout (e.g. 20 seconds) in case someone gets stuck
        if (timer > 1200) break;
    }
    
    CallFnc_VOID(8,ShowMenu);
}
