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

// -----------------
// *** FUNCTIONS ***
// -----------------

void TickReferee(u8 playerId) {
    u16 ballX = g_Ball.X;
    u16 ballY = g_Ball.Y;
    u16 refX = g_Players[playerId].X;
    u16 refY = g_Players[playerId].Y;
    
    u16 targetY = ballY;
    
    // Kick-Off avoidance
    if (ballY > 230 && ballY < 260 && ballX > 110 && ballX < 140) {
         targetY = ballY - 40; 
    } else {
        if (g_Ball.PossessionPlayerId != NO_VALUE) {
            if (g_Players[g_Ball.PossessionPlayerId].TeamId == TEAM_1) targetY = ballY - 20;
            else targetY = ballY + 20;
        }
    }

    u16 targetX = (ballX < 128) ? ballX + 60 : ballX - 60;
    
    if (targetX < FIELD_BOUND_X_LEFT + 10) targetX = FIELD_BOUND_X_LEFT + 10;
    if (targetX > FIELD_BOUND_X_RIGHT - 10) targetX = FIELD_BOUND_X_RIGHT - 10;
    
    u8 moveDir = DIRECTION_NONE;
    i16 diffY = (i16)targetY - (i16)refY;
    i16 diffX = (i16)targetX - (i16)refX;
    
    if (diffY < -8) moveDir = DIRECTION_UP;
    else if (diffY > 8) moveDir = DIRECTION_DOWN;
    
    if (diffX < -16 || diffX > 16) {
        if (moveDir == DIRECTION_UP) moveDir = (diffX > 0) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
        else if (moveDir == DIRECTION_DOWN) moveDir = (diffX > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
        else moveDir = (diffX > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
    }
    
    g_Players[playerId].Direction = moveDir;

    // Semplificazione movimento (riduce il numero di IF nel binario)
    if (moveDir != DIRECTION_NONE) {
        if (moveDir <= DIRECTION_UP_LEFT) g_Players[playerId].Y--;
        if (moveDir >= DIRECTION_DOWN_RIGHT && moveDir <= DIRECTION_DOWN_LEFT) g_Players[playerId].Y++;
        if (moveDir == DIRECTION_LEFT || moveDir == DIRECTION_UP_LEFT || moveDir == DIRECTION_DOWN_LEFT) g_Players[playerId].X--;
        if (moveDir == DIRECTION_RIGHT || moveDir == DIRECTION_UP_RIGHT || moveDir == DIRECTION_DOWN_RIGHT) g_Players[playerId].X++;
        g_Players[playerId].Status = PLAYER_STATUS_NONE;
    } else {
        g_Players[playerId].Status = PLAYER_STATUS_POSITIONED;
    }
     
    // Boundaries
    if(g_Players[playerId].Y < FIELD_BOUND_Y_TOP) g_Players[playerId].Y = FIELD_BOUND_Y_TOP;
    if(g_Players[playerId].Y > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].Y = FIELD_BOUND_Y_BOTTOM;
    if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
    if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
}