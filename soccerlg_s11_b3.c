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
#include "libs/vgm_player.h"




void TimeUp(){
    V9_SetBackgroundColor(1); // Ensure background is blue
    g_LastTimeCounter=g_TimeCounter;
    if (g_Team1Score == g_Team2Score) {
        g_PonPonGirlsAreVisible=FALSE;
        for(u8 i=0; i<6; i++){
		    CallFnc_VOID_P1(7,PutPonPonGirlSprite,i); 
	    }
        CallFnc_VOID(12,PenaltyShots);
    } else {
        while(g_LastTimeCounter+2<g_TimeCounter){
            V9990_WaitSynch();
        }
		V9990_PrintLayerAStringAtPos(14, 10, "TIME UP");
    	for(u8 w=0; w<120; w++) V9990_WaitSynch();
    	V9990_ClearTextFromLayerA(14, 10, 16);
        u8 winner = (g_Team1Score > g_Team2Score) ? TEAM_1 : TEAM_2;
        CallFnc_VOID_P1(13,TeamVictory,winner);
    }

}

// +++ Get vertical offside +++
u16 GetOffsideLineY(u8 attackingTeamId) {
    u8 defendingTeamId = (attackingTeamId == TEAM_1) ? TEAM_2 : TEAM_1;
    bool findMin = (attackingTeamId == TEAM_1);
    
    // Initialize with worst possible values
    u16 val1 = findMin ? 0xFFFF : 0;
    u16 val2 = val1;

    for(u8 i=0; i<14; i++){
        if(g_Players[i].TeamId != defendingTeamId) continue;
        u16 y = g_Players[i].Y;

        if (findMin) {
            if (y < val1) { val2 = val1; val1 = y; }
            else if (y < val2) { val2 = y; }
        } else {
            if (y > val1) { val2 = val1; val1 = y; }
            else if (y > val2) { val2 = y; }
        }
    }

    if (findMin) return (val2 == 0xFFFF) ? FIELD_BOUND_Y_TOP : val2;
    return (val2 == 0) ? FIELD_BOUND_Y_BOTTOM : val2;
}