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

    // Target Y: segue direttamente la palla; evita il centro al kick-off
    // L'arbitro non entra nelle aree di rigore: limitato tra PENALTY_BOX_Y_TOP e PENALTY_BOX_Y_BOTTOM
    u16 targetY = ballY;
    if (ballY > 230 && ballY < 260 && ballX > 110 && ballX < 140) {
        targetY = (ballY > 40) ? ballY - 40 : PENALTY_BOX_Y_TOP;
    }
    if (targetY < PENALTY_BOX_Y_TOP) targetY = PENALTY_BOX_Y_TOP;
    if (targetY > PENALTY_BOX_Y_BOTTOM) targetY = PENALTY_BOX_Y_BOTTOM;

    // Target X: si posiziona di lato rispetto alla palla
    u16 targetX = (ballX < 128) ? ballX + 50 : ballX - 50;
    if (targetX < FIELD_BOUND_X_LEFT + 10) targetX = FIELD_BOUND_X_LEFT + 10;
    if (targetX > FIELD_BOUND_X_RIGHT - 10) targetX = FIELD_BOUND_X_RIGHT - 10;

    i16 diffY = (i16)targetY - (i16)g_Players[playerId].Y;
    i16 diffX = (i16)targetX - (i16)g_Players[playerId].X;

    // Velocità proporzionale alla distanza in Y (per non sparire dallo schermo)
    u8 stepY = 1;
    if (diffY > 40 || diffY < -40) stepY = 4;
    else if (diffY > 20 || diffY < -20) stepY = 2;

    u8 moveDir = DIRECTION_NONE;
    if (diffY < -4) moveDir = DIRECTION_UP;
    else if (diffY > 4) moveDir = DIRECTION_DOWN;

    if (diffX < -12 || diffX > 12) {
        if (moveDir == DIRECTION_UP) moveDir = (diffX > 0) ? DIRECTION_UP_RIGHT : DIRECTION_UP_LEFT;
        else if (moveDir == DIRECTION_DOWN) moveDir = (diffX > 0) ? DIRECTION_DOWN_RIGHT : DIRECTION_DOWN_LEFT;
        else moveDir = (diffX > 0) ? DIRECTION_RIGHT : DIRECTION_LEFT;
    }

    g_Players[playerId].Direction = moveDir;

    if (moveDir != DIRECTION_NONE) {
        // Movimento Y corretto con velocità proporzionale
        if (moveDir == DIRECTION_UP || moveDir == DIRECTION_UP_RIGHT || moveDir == DIRECTION_UP_LEFT) {
            if ((i16)g_Players[playerId].Y - (i16)stepY >= (i16)targetY)
                g_Players[playerId].Y -= stepY;
            else
                g_Players[playerId].Y = targetY;
        }
        if (moveDir == DIRECTION_DOWN || moveDir == DIRECTION_DOWN_RIGHT || moveDir == DIRECTION_DOWN_LEFT) {
            if (g_Players[playerId].Y + stepY <= targetY)
                g_Players[playerId].Y += stepY;
            else
                g_Players[playerId].Y = targetY;
        }
        // Movimento X (sempre 1px)
        if (moveDir == DIRECTION_RIGHT || moveDir == DIRECTION_UP_RIGHT || moveDir == DIRECTION_DOWN_RIGHT)
            g_Players[playerId].X++;
        if (moveDir == DIRECTION_LEFT || moveDir == DIRECTION_UP_LEFT || moveDir == DIRECTION_DOWN_LEFT)
            g_Players[playerId].X--;

        g_Players[playerId].Status = PLAYER_STATUS_NONE;
    } else {
        g_Players[playerId].Status = PLAYER_STATUS_POSITIONED;
    }

    // Boundaries (arbitro limitato fuori dalle aree di rigore sull'asse Y)
    if(g_Players[playerId].Y < PENALTY_BOX_Y_TOP) g_Players[playerId].Y = PENALTY_BOX_Y_TOP;
    if(g_Players[playerId].Y > PENALTY_BOX_Y_BOTTOM) g_Players[playerId].Y = PENALTY_BOX_Y_BOTTOM;
    if(g_Players[playerId].X < FIELD_BOUND_X_LEFT) g_Players[playerId].X = FIELD_BOUND_X_LEFT;
    if(g_Players[playerId].X > FIELD_BOUND_X_RIGHT) g_Players[playerId].X = FIELD_BOUND_X_RIGHT;
}