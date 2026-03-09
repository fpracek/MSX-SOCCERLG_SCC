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

// -----------------
// *** FUNCTIONS ***
// -----------------

// Defensive support logic extracted from TickAI to keep segment 10 within 8K.
// Called via CallFnc_VOID_P1(15, TickAIDefensiveSupport, playerId) when the
// player is NOT the effective chaser (amIEffectiveChaser == false).
void TickAIDefensiveSupport(u8 playerId) {
	u8 playerTeamId = g_Players[playerId].TeamId;
	u8 countryId = (playerTeamId == TEAM_1) ? g_Team1PaletteId : g_Team2PaletteId;
	const TeamStats* stats = GetTeamStats(countryId);
	u8 playerClosesestToBallId = CallFnc_U8_P2(4, GetClosestPlayerToBall, playerTeamId, NO_VALUE);

	// DEFENSIVE SUPPORT / RETREAT
	u16 defGoalY = (playerTeamId == TEAM_1) ? FIELD_BOUND_Y_BOTTOM : FIELD_BOUND_Y_TOP;
	bool chaserBeaten = false;
	bool opponentHasBall = (g_Ball.PossessionPlayerId != NO_VALUE && g_Players[g_Ball.PossessionPlayerId].TeamId != playerTeamId);

	bool forceRetreat = (g_MatchStatus == MATCH_BALL_ON_GOALKEEPER);
	if (opponentHasBall && playerClosesestToBallId != NO_VALUE && !forceRetreat) {
		u16 chaserY = g_Players[playerClosesestToBallId].Y;
		if (playerTeamId == TEAM_1) { if (g_Ball.Y > chaserY) chaserBeaten = true; }
		else { if (g_Ball.Y < chaserY) chaserBeaten = true; }
	}

	if (opponentHasBall && chaserBeaten && !forceRetreat) {
		g_Players[playerId].TargetX = g_Ball.X;
		if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Ball.Y + 15;
		else g_Players[playerId].TargetY = g_Ball.Y - 15;
	} else {
		// FORMATION RETREAT
		if (playerTeamId == TEAM_1) { // Defend Bottom (High Y)
			if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
				// Strikers -> Midfield
				g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
			}
			else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
				// Mids -> Half of Own Half
				g_Players[playerId].TargetY = 318;
			}
			else {
				// Defs -> Dynamic Defensive Line
				// Default: Edge of penalty area context (~350)
				u16 defenseLineY = 350;

				// Check if I am the last line of defense before GK
				// Count teammates with Y < Me (closer to midfield)
				u8 teammatesAhead = 0;
				for(u8 k=0; k<14; k++) {
					if (k==playerId) continue;
					if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
						if (g_Players[k].Y < g_Players[playerId].Y) teammatesAhead++;
					}
				}

				// If few teammates ahead, or Ball is dangerously close, Step Up
				if (teammatesAhead < 2 || g_Ball.Y > 280) {
					// If ball is threateningly close to our line
					if (g_Ball.Y > defenseLineY - 40) {
						// Position between ball and goal (Goal is 430)
						defenseLineY = g_Ball.Y + 15;
						if (defenseLineY > FIELD_BOUND_Y_BOTTOM - 10) defenseLineY = FIELD_BOUND_Y_BOTTOM - 10;
					}
				}
				g_Players[playerId].TargetY = defenseLineY;
			}

		} else { // Defend Top (Low Y)
			if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_STRIKER) {
				// Strikers -> Midfield
				g_Players[playerId].TargetY = FIELD_POS_Y_CENTER;
			}
			else if (g_Players[playerId].Role >= PLAYER_ROLE_LEFT_HALFFIELDER) {
				// Mids -> Half of Own Half
				g_Players[playerId].TargetY = 106;
			}
			else {
				// Defs -> Dynamic Defensive Line
				// Default: Edge of penalty area context (~130)
				u16 defenseLineY = 130;

				// Count teammates with Y > Me (closer to midfield)
				u8 teammatesAhead = 0;
				for(u8 k=0; k<14; k++) {
					if (k==playerId) continue;
					if (g_Players[k].TeamId == playerTeamId && g_Players[k].Role != PLAYER_ROLE_GOALKEEPER) {
						if (g_Players[k].Y > g_Players[playerId].Y) teammatesAhead++;
					}
				}

				if (teammatesAhead < 2 || g_Ball.Y < 200) {
					// If ball is threateningly close to our line
					if (g_Ball.Y < defenseLineY + 40) {
						defenseLineY = g_Ball.Y - 15;
						if (defenseLineY < FIELD_BOUND_Y_TOP + 10) defenseLineY = FIELD_BOUND_Y_TOP + 10;
					}
				}
				g_Players[playerId].TargetY = defenseLineY;
			}
		}

		if (g_Players[playerId].Role % 2 != 0) {
			// LEFT SIDE PLAYER
			// Ensure we don't drift too far Right
			u16 intendedX = g_Ball.X - 40;
			if (g_Ball.X > FIELD_POS_X_CENTER && intendedX > FIELD_POS_X_CENTER + 20) {
				intendedX = FIELD_POS_X_CENTER + 20; // Stay central
			}
			g_Players[playerId].TargetX = intendedX;
		}
		else {
			// RIGHT SIDE PLAYER
			// Ensure we don't drift too far Left
			u16 intendedX = g_Ball.X + 40;
			if (g_Ball.X < FIELD_POS_X_CENTER && intendedX < FIELD_POS_X_CENTER - 20) {
				intendedX = FIELD_POS_X_CENTER - 20; // Stay central
			}
			g_Players[playerId].TargetX = intendedX;
		}

		if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT + 20) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT + 20;
		if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT - 20) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT - 20;
	}

	// MARKING (High Aggression Teams - Man Marking)
	// Note: amIEffectiveChaser is always false when this function is called
	if (stats->Aggression >= 15 && g_MatchStatus != MATCH_BALL_ON_GOALKEEPER) {
		u8 bestMark = NO_VALUE;
		u16 minD = 120; // Look for opponents within this range

		for(u8 m=0; m<14; m++) {
			if (g_Players[m].TeamId == playerTeamId) continue;
			if (m == g_Ball.PossessionPlayerId) continue; // Don't mark ball carrier (chaser handles it)
			if (g_Players[m].Role == PLAYER_ROLE_GOALKEEPER) continue;

			// CHECK: Is opponent inside my penalty box? If so, ignore marking (switch to ball chase)
			bool inBox = false;
			if (playerTeamId == TEAM_1) { // Defending Bottom
				if (g_Players[m].Y > PENALTY_BOX_Y_BOTTOM) inBox = true;
			} else { // Defending Top
				if (g_Players[m].Y < PENALTY_BOX_Y_TOP) inBox = true;
			}
			if (inBox) continue;

			i16 mdx = (i16)g_Players[m].X - (i16)g_Players[playerId].X;
			i16 mdy = (i16)g_Players[m].Y - (i16)g_Players[playerId].Y;
			u16 dist = (u16)(Math_Abs32(mdx) + Math_Abs32(mdy));

			if (dist < minD) {
				minD = dist;
				bestMark = m;
			}
		}

		if (bestMark != NO_VALUE) {
			// Stick to opponent (Marking)
			g_Players[playerId].TargetX = g_Players[bestMark].X;
			// Stay goal-side (between player and goal)
			if (playerTeamId == TEAM_1) g_Players[playerId].TargetY = g_Players[bestMark].Y + 12;
			else g_Players[playerId].TargetY = g_Players[bestMark].Y - 12;
		} else {
			// If no one to mark (e.g. everyone is deep in box), target the ball to crowd defense
			bool deepDefense = false;
			if (playerTeamId == TEAM_1 && g_Ball.Y > PENALTY_BOX_Y_BOTTOM) deepDefense = true;
			if (playerTeamId == TEAM_2 && g_Ball.Y < PENALTY_BOX_Y_TOP) deepDefense = true;

			if (deepDefense) {
				g_Players[playerId].TargetX = g_Ball.X;
				g_Players[playerId].TargetY = g_Ball.Y;
			}
		}
	}

	// SEPARATION (DEFENSE)
	for(u8 i=0; i<14; i++) {
		if (i == playerId) continue;
		if (g_Players[i].TeamId != playerTeamId) continue;
		if (g_Players[i].Role == PLAYER_ROLE_GOALKEEPER) continue;
		i16 dx = (i16)g_Players[playerId].TargetX - (i16)g_Players[i].X;
		i16 dy = (i16)g_Players[playerId].TargetY - (i16)g_Players[i].Y;
		if (dx > -60 && dx < 60 && dy > -60 && dy < 60) {
			if (dx >= 0) g_Players[playerId].TargetX += 12; else g_Players[playerId].TargetX -= 12;
			if (dy >= 0) g_Players[playerId].TargetY += 12; else g_Players[playerId].TargetY -= 12;
		}
	}

	// GLOBAL TARGET CLAMP (Prevent running out of field)
	if (g_Players[playerId].TargetY < FIELD_BOUND_Y_TOP) g_Players[playerId].TargetY = FIELD_BOUND_Y_TOP;
	if (g_Players[playerId].TargetY > FIELD_BOUND_Y_BOTTOM) g_Players[playerId].TargetY = FIELD_BOUND_Y_BOTTOM;
	if (g_Players[playerId].TargetX < FIELD_BOUND_X_LEFT) g_Players[playerId].TargetX = FIELD_BOUND_X_LEFT;
	if (g_Players[playerId].TargetX > FIELD_BOUND_X_RIGHT) g_Players[playerId].TargetX = FIELD_BOUND_X_RIGHT;

	(void)defGoalY; // suppress unused warning
}
